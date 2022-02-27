cat:
	echo hi tony
	cat Makefile
	echo make b37 and make mamba1

#build:
	#conda create -y --name lidar1 python==3.8.0
	#conda config --add channels conda-forge --force
	#(source activate base; conda install mamba -y ; mamba env update -n lidar1  -f lidar1_env.yml)


b37:
	conda create -y --name lidar37 python==3.7.0
	conda config --add channels conda-forge --force

mamba1:
	conda config --add channels open3d-admin --force
	(conda install mamba -y ; mamba install -n lidar37 --file lidar37.txt)

addpip:
	echo conda activate lidar37 PLEASE
	pip install pptk
	pip install pypotree


remove:
	conda env remove -n lidar37


