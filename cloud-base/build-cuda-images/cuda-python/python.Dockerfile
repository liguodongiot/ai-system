ARG PY_IMAGE
ARG BASE_IMAGE

FROM $PY_IMAGE 

FROM $BASE_IMAGE

ENV CONDA_DIR=/usr/local/conda

COPY --from=0 $CONDA_DIR $CONDA_DIR
COPY --from=0 /etc/pip.conf /etc/pip.conf

ENV PATH=$CONDA_DIR/bin:$PATH
