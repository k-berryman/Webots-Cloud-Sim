FROM cyberbotics/webots.cloud:R2022a
ARG ~/Desktop/webots-cloud
RUN mkdir -p $PROJECT_PATH
COPY . ~/Desktop/webots-cloud
RUN cd ~/Desktop/webots-cloud/plugins/robot_windows/ned && make clean && make
