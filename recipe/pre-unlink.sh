{
    ${PREFIX}/bin/jupyter-serverextension  disable sparkmagic --py --sys-prefix
    ${PREFIX}/bin/jupyter-kernelspec uninstall $SP_DIR/sparkmagic/kernels/sparkkernel --sys-prefix
    ${PREFIX}/bin/jupyter-kernelspec uninstall $SP_DIR/sparkmagic/kernels/pysparkkernel --sys-prefix
    ${PREFIX}/bin/jupyter-kernelspec uninstall $SP_DIR/sparkmagic/kernels/pyspark3kernel --sys-prefix
    ${PREFIX}/bin/jupyter-kernelspec uninstall $SP_DIR/sparkmagic/kernels/sparkrkernel --sys-prefix
} >> "${PREFIX}/.messages.txt" 2>&1
