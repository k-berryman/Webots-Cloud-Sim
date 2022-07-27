FROM cyberbotics/webots.cloud:R2022a
ARG PROJECT_PATH
RUN mkdir -p $PROJECT_PATH
COPY . $PROJECT_PATH
RUN cd $PROJECT_PATH/plugins/robot_windows/ned_window && make clean && make
