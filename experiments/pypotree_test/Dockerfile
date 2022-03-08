from continuumio/miniconda3

workdir /home

copy lidar37.txt /home


run conda create -y --name lidar37 python==3.7.0 \
	&& conda config --add channels conda-forge --force \
	&& (conda install mamba -y ; mamba install -n lidar37 --file lidar37.txt) \
	&& pip install pypotree

