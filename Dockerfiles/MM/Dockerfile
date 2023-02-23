#Standard stuff
FROM ubuntu:18.04
ENV TZ="America/New_York"
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && echo $TZ > /etc/timezone
RUN date

#Dependecies based on project
RUN apt update -y && apt install -y python-pip git curl nano net-tools
RUN python -m pip install --upgrade pip
RUN python -m pip install numpy scikit-image scipy pillow cython h5py tensorflow keras
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list'
RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -
RUN apt update
RUN apt install -y ros-melodic-desktop-full
RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
RUN apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
RUN echo "GAZEBO_MODEL_DATABASE_URI='http://models.gazebosim.org/'" >> ~/.bashrc
