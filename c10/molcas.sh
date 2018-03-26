ulimit -s unlimited

source /home/tccm1/source/molcas-extra/build/vars
export PATH=/home/tccm1/source/CheMPS2/build-node87/CheMPS2:$PATH
export LD_LIBRARY_PATH=/home/tccm1/source/CheMPS2/build-node87/CheMPS2:$LD_LIBRARY_PATH
export PATH=/home/tccm1/bin:$PATH

export MOLCAS_PROJECT="polyene" # use input as project name
export MOLCAS_MEM=5000 # set memory size
export MOLCAS_NPROCS=1
export OMP_NUM_THREADS=1

export CurrDir=$HOME/polyene/c10
export WorkDir=/temp0/$USER/$MOLCAS_PROJECT.work
export Project=$MOLCAS_PROJECT


#### start the calculation ####
rm -r $WorkDir

cd $CurrDir

#molcas c10.input > c10.log
molcas c10.loc.input > c10.loc.log

