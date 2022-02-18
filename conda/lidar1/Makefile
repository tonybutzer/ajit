cat:
	echo hi tony
	cat Makefile

build:
	conda config --add channels conda-forge --force
	(source activate base; conda install mamba -y ; mamba env create -f lidar1_env.yml)

