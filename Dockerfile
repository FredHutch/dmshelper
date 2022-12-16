FROM fredhutch/r-shiny-server-base:4.2.0
RUN apt-get update -y
RUN apt-get install -y pandoc software-properties-common

RUN add-apt-repository -y ppa:cran/poppler

# Devtools dependencies
RUN apt-get install -y libfontconfig1-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev curl libxml2 libxml2-dev libcurl4-openssl-dev libssl-dev r-cran-openssl  libgit2-dev
RUN Rscript -e "install.packages('systemfonts')"
RUN Rscript -e "install.packages('textshaping')"
RUN Rscript -e "install.packages('ragg')"

# Devtools and custom package
RUN Rscript -e "install.packages('devtools', dependencies=T)"
RUN Rscript -e "install.packages(c('shinydashboard', 'pdftools'))"
# RUN Rscript -e "library(devtools);install_github('FredHutch/dsmphelper')"

# install dsmphelper package
ADD . /src/dsmphelper
WORKDIR /src/dsmphelper
RUN R CMD INSTALL .
WORKDIR /srv/shiny-server/
RUN rm -rf /src/dsmphelper

RUN rm -rf /srv/shiny-server/
RUN mkdir -p /src/shiny-server/
COPY app/start.R /srv/shiny-server/app.R
COPY doc /srv/shiny-server/doc/

RUN chown -R shiny:shiny /srv/shiny-server/
EXPOSE 3838
WORKDIR /srv/shiny-server/
CMD /usr/bin/shiny-server
