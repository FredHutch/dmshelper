FROM fredhutch/r-shiny-server-base:4.5.1
RUN apt-get update
RUN apt-get install -y pandoc

# Devtools dependencies
RUN apt-get install -y libfontconfig1-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev curl libxml2 libxml2-dev libcurl4-openssl-dev libssl-dev r-cran-openssl  libgit2-dev
RUN Rscript -e "install.packages(c('systemfonts', 'textshaping',  'ragg', 'devtools', 'shinydashboard', 'yaml', 'googlesheets4'))"


# install dmshelper package
ADD . /src/dmshelper
WORKDIR /src/dmshelper
RUN R CMD INSTALL .
WORKDIR /srv/shiny-server/
RUN rm -rf /src/dmshelper

RUN rm -rf /srv/shiny-server/
RUN mkdir -p /src/shiny-server/
COPY app/start.R /srv/shiny-server/app.R
COPY doc /srv/shiny-server/doc/
COPY template /srv/shiny-server/template/

RUN chown -R shiny:shiny /srv/shiny-server/
EXPOSE 3838
WORKDIR /srv/shiny-server/

ADD .secrets /srv/shiny-server/.secrets
RUN chown -R shiny:shiny .secrets

CMD /usr/bin/shiny-server
