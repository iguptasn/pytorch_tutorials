FROM pytorch/pytorch

WORKDIR /workdir

RUN conda install jupyterlab pandas numpy scikit-learn scikit-image holoviews matplotlib

EXPOSE 8888

ENTRYPOINT [ "jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser" ]