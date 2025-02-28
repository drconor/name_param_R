# hash:sha256:5e84c1c95e099124102171e356fd0db5e3b172d983670e14c1c2d062d139affa
ARG REGISTRY_HOST
FROM $REGISTRY_HOST/codeocean/r:4.4

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

ARG RCACHE_OPTIONS
RUN echo $RCACHE_OPTIONS >> $(Rscript -e 'cat(R.home())')/etc/Rprofile.site \
    && Rscript -e 'options(warn=2); install.packages("remotes")'
RUN Rscript -e 'remotes::install_version("optparse", "1.7.5")'
