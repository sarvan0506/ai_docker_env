
sudo docker rm cuda_torch -f
sudo docker run --gpus all -p 8091:8091 -it -d --ipc=host --volume-driver=nfs -v /home/username:/src --restart always --name cuda_torch nvidia_anaconda_pytorch:v1
