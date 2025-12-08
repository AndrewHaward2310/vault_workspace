Tags: [[mir100]] [[docker]] [[ROS]]
 
 ## 0) Cài đúng Docker Engine (không cần Docker Desktop)
## chuẩn bị repo chính thức của Docker
sudo apt update
sudo apt install -y ca-certificates curl gnupg lsb-release
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
  sudo gpg --dearmor -o /etc/apt/keyrings/docker.asc
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] \
https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo $VERSION_CODENAME) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

## cài Docker Engine
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

## cho phép chạy docker không cần sudo
sudo usermod -aG docker $USER
newgrp docker

## kiểm tra
docker run --rm hello-world

# 1) Lấy mã `mir_robot` và build image Docker
## lấy mã nhánh noetic
git clone -b noetic https://github.com/DFKI-NI/mir_robot.git
cd mir_robot

## build image
docker build -f Dockerfile-noetic -t mir_robot:noetic .

# 2) Chạy container có GUI (Gazebo/RViz) trên Ubuntu 24.04
## Cho phép container hiển thị lên X server
xhost +si:localuser:root

## chạy container (kết nối mạng host để ROS dễ giao tiếp)
docker run --rm -it \
  --name mir100 \
  --net=host --ipc=host \
  -e DISPLAY=$DISPLAY \
  -e QT_X11_NO_MITSHM=1 \
  -e QT_QPA_PLATFORM=xcb \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  -v /dev/dri:/dev/dri \
  mir_robot:noetic bash