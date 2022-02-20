cat:
	echo hi tony
	cat Makefile

build:
	conda config --add channels conda-forge --force
	(source activate base; conda install mamba -y ; mamba env create -f eiarpa_environment.yml)

