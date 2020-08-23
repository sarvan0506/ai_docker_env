# ai_docker_env

This is a docker container environment for GPU enabled development of AI applications. This helps isolate your machine from the AI development environment and provides flexibility to work with multiple environments for different type applications like nlp, vision, RL etc and makes expermentation with different DL libraries easier with containerization.

- The Dockerfile has all necessary libraries build from image **nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04**.
- This also provides a jupyter dev environment.
- Libraries included
  - python3.6
  - jupyterlab==2.2.0
  - torchsummary==1.5.1
  - tqdm==4.48.0
  - torch==1.5.1
  - torchvision==0.6.1
  - ipywidgets==7.5.1
  - matplotlib==3.3.0
  - albumentations==0.4.6
  - pandas==1.0.5
  - scikit-learn==0.23.1
- Add/Modify libraries based on your requirement


#### Requirements

Docker needs to be installed first, recommended docker version 19.03.xx or higher.
In case of windows machine install Docker Desktop.

#### Step 1


Build the docker image using

__Linux__

``` $ sudo docker build -t nvidia_anaconda:v1 . ```

__Windows__

``` $ docker build -t nvidia_anaconda:v1 . ```


#### Step 2

Before bringing the docker env edit the .sh(linux) or .bat(windows) file and replace "home/username" with your folder path you like to use for your development. The objective is to provide persistence to your work, ensure you make this change otherwise **you will loose your files every time the container restarts**

Bring the docker environment by running the script

__Linux__

``` $ ./bring_env.sh ```

__Windows__

``` $ bring_env.bat ```

### Step 3

Access your jupyter environment in __localhost:8091__
