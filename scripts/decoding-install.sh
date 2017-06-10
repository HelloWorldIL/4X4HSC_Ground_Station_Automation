#!/bin/bash

sudo add-apt-repository -y ppa:bladerf/bladerf
sudo add-apt-repository -y ppa:ettusresearch/uhd
sudo add-apt-repository -y ppa:myriadrf/drivers
sudo add-apt-repository -y ppa:myriadrf/gnuradio
sudo add-apt-repository -y ppa:gqrx/gqrx-sdr

sudo apt update

sudo apt install git -y

sudo apt install cmake -y

sudo apt install python-pip -y

sudo add-apt-repository -y ppa:gpredict-team/daily
sudo apt update
sudo apt install gpredict -y

sudo apt install gnuradio -y

sudo apt install gqrx-sdr -y

git clone https://github.com/quiet/libfec.git
cd libfec
./configure
make
sudo make install

pip install construct


git clone https://github.com/daniestevez/gr-satellites.git
cd gr-satellites
mkdir build
cd build
cmake ..
make
sudo make install

sudo apt install libhamlib-dev -y
sudo apt install libhamlib-utils -y