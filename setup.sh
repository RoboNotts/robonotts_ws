wstool update -t src

# Build ROS KORTEX
sudo python3 -m pip install conan==1.59
conan config set general.revisions_enabled=1
conan profile new default --detect > /dev/null
conan profile update settings.compiler.libcxx=libstdc++11 default

# Update APT
apt-get update

rosdep update
rosdep install --from-paths src --ignore-src -y