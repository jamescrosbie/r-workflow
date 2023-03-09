FROM rocker/r-ver:3.4.4

# add non-root user
RUN groupadd -g 999 ruser && \
    useradd -r -u 999 -g ruser R

# make working dir, change ownership and copy files
WORKDIR /home/analysis
RUN chown ruser:ruser /home/analysis
COPY . .

# install packages
RUN Rscript -e 'install.packages("renv")' && \
    Rscript -e 'renv::restore()'

#swithch to user and run file
USER 999
CMD ["R", "-e", "source('/home/analysis/R/my_functions.R')"]
