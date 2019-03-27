# ACE-TAO-mingw-installer


How to use this project

Open a MINGW64 console using MSYS2

# Set up MINGW64

pacman -S python mingw-w64-x86_64-python2 mingw-w64-x86_64-gcc bison cvs diffutils git make patch tar texinfo unzip

pacman -S --needed base-devel mingw-w64-i686-toolchain mingw-w64-x86_64-toolchain

# Set your PATH

export PATH=/mingw32/bin:$PATH

# Download the project

git clone https://github.com/matthew-renodin/ACE-TAO-mingw-installer.git ace-tao-mingw


# Build the project

cd ace-tao-mingw

./ace-tao--install.sh
