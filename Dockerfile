FROM jupyter/minimal-notebook:x86_64-python-3.11.6

USER root

RUN apt-get update --yes && \
	apt-get install --yes --no-install-recommends tree && \
	# pip install -i https://pypi.tuna.tsinghua.edu.cn/simple "black[jupyter]" tensorboard visdom && \
	pip install "black[jupyter]" tensorboard visdom && \
	pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

USER ${NB_UID}
