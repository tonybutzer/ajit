:
	echo hi tony
	cat Makefile

build:
	conda config --add channels conda-forge --force
	(source activate base; conda install mamba -y ; mamba env create -f lidarV3_env.yml)

addpip:
	echo YOU should conda activate LidarV2 - before doing this
	pip install pypotree
	# pip install pptk ## only 3.7

development:
	sudo yum groupinstall "Development Tools"
