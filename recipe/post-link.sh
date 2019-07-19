# SP_DIR is complicated because it is trying to find the python version specific site packages directory
SP_DIR=$("${PREFIX}/bin/python" -c 'import sys, site; sys.stdout.write(site.getsitepackages()[0])')
{
    ${PREFIX}/bin/jupyter-serverextension enable sparkmagic --py --sys-prefix
    ${PREFIX}/bin/jupyter-kernelspec install $SP_DIR/sparkmagic/kernels/sparkkernel --sys-prefix
    ${PREFIX}/bin/jupyter-kernelspec install $SP_DIR/sparkmagic/kernels/pysparkkernel --sys-prefix
    ${PREFIX}/bin/jupyter-kernelspec install $SP_DIR/sparkmagic/kernels/pyspark3kernel --sys-prefix
    ${PREFIX}/bin/jupyter-kernelspec install $SP_DIR/sparkmagic/kernels/sparkrkernel --sys-prefix
} >> "${PREFIX}/.messages.txt" 2>&1
