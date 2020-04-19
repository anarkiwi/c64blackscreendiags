# sudo apt-get xa65 vice

all: cpuvicblink.crt hiresmem.crt

cpuvicblink.bin: cpuvicblink.s
	xa cpuvicblink.s -o cpuvicblink.bin

cpuvicblink.crt: cpuvicblink.bin
	cartconv -t normal -i cpuvicblink.bin -o cpuvicblink.crt

hiresmem.bin: hiresmem.s
	xa hiresmem.s -o hiresmem.bin

hiresmem.crt: hiresmem.bin
	cartconv -t normal -i hiresmem.bin -o hiresmem.crt
