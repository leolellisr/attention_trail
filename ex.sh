# FAQ

# make executable
# chmod +x script1.sh

# CST

# download cst to opt/cst (or tmp/cst) and build - Tutorial script

mkdir ~/git/test/opt
# OUT_DIR = "~/git/test/opt"
git clone https://github.com/CST-Group/cst.git ~/git/test/opt
cd ~/git/test/opt
./gradlew --no-daemon clean build

# Copy JARs produced by CST to libs
# LIB_DIR="~/git/test/libs"
mkdir ~/git/test/libs
cp -v ~/git/test/opt/build/libs/*.jar ~/git/test/libs/ || { log "No CST jars found"; exit 1; }


# Coppelia 

# copy libremoteApiJava.so to usr/lib
