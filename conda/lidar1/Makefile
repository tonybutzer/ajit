cat:
	echo hi tony
	cat Makefile

#build:
	#conda create -y --name lidar1 python==3.8.0
	#conda config --add channels conda-forge --force
	#(source activate base; conda install mamba -y ; mamba env update -n lidar1  -f lidar1_env.yml)


try2:
	conda create -y --name lidar1 python==3.7.0
	conda config --add channels conda-forge --force

mamba1:
	conda config --add channels open3d-admin --force
	(conda install mamba -y ; mamba install -n lidar1 --file lidar1.txt)


remove:
	conda env remove -n lidar1


