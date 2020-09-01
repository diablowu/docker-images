FROM centos:centos7



RUN yum install libreoffice-ure-common \
    libreoffice-filters \
    libreoffice-ure \
    libreoffice-writer \
    libreoffice-langpack-zh-Hans \
    libreoffice-opensymbol-fonts \
    libreoffice-core \
    libreoffice-data \
    libreoffice-bsh -y

RUN yum clean all -y