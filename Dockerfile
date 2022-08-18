FROM python:3.10
FROM jupyter/minimal-notebook

USER root

# Installing geopandas and dependencies
RUN conda install -c conda-forge movingpandas && \
    conda clean --all -f -y && \
    rm -rf /home/${NB_USER}/.cache/yarn 

RUN conda install -c conda-forge shapely