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
In case of windows machine install Docker Desktop. To install see https://docs.docker.com/engine/install/

#### Step 1


Build the docker image using

_Linux (Recommended)_

``` $ sudo docker build -t nvidia_anaconda_torch:v1 . ```

_Windows_

``` $ docker build -t nvidia_anaconda_torch:v1 . ```


#### Step 2

Before bringing the docker env edit the .sh(linux) or .bat(windows) file and replace **home/username** with your folder path you like to use for the development. The objective is to provide persistence to your work by using volume mount to the container environment, ensure you make this change otherwise **you will loose your files every time the container restarts**

Bring the docker environment by running the script

_Linux (Recommended)_

``` $ sh ./bring_env.sh ```

_Windows_

``` $ bring_env.bat ``` or just double-click the batch file

_run the above command every time you reboot. Similar to activating virtual environment in this case it Containerized!_

### Step 3

Access your jupyter environment in _localhost:8091_

**Enjoy your development!!**
