# sudo apt-get xa65 vice

all: cpuvicblink.crt

cpuvicblink.bin: cpuvicblink.s
	xa cpuvicblink.s -o cpuvicblink.bin

cpuvicblink.crt: cpuvicblink.bin
	cartconv -t normal -i cpuvicblink.bin -o cpuvicblink.crt
