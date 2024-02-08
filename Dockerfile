# syntax=docker/dockerfile:1

FROM rocker/tidyverse:4.3
RUN mkdir /root/rpkg
COPY . /root/rpkg

RUN R -e "devtools::install('/root/rpkg', dependencies=T)"
