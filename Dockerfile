FROM darribas/gds_py:8.0

# Local docs
RUN rm -R work/
COPY ./README.md ${HOME}/README.md
COPY ./*.ipynb ${HOME}/
COPY ./img ${HOME}/img
# Fix permissions
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

