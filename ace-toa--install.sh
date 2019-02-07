#!/bin/bash

if [ $MSYSTEM != 'MINGW32' ]
then
	echo "This is a MING32 installer"
else

	#install dlfcn-win32

	git clone https://github.com/dlfcn-win32/dlfcn-win32.git
	cd dlfcn-win32
	./configure
	make
	make install
	#exit dlfcn-win32
	cp libdl.a /usr/lib
	cd ..

	#install mpc	
	git clone https://github.com/DOCGroup/MPC.git
	
	#install ACE_TAO
	
	#source the env
	source setenv
	

	git clone https://github.com/matthew-renodin/ACE_TAO.git
	
	
	cp platform_mingw32.GNU ACE_TAO/ACE/include/makeinclude/
	cp platform_macros.GNU ACE_TAO/ACE/include/makeinclude/
	cp config.h ACE_TAO/ACE/ace
	cp drv_args.cpp ACE_TAO/TAO/TAO_IDL/drivers
	cp rTAO.mwc ACE_TAO/TAO


	cd ACE_TAO 

	cd ACE

	$ACE_ROOT/bin/mwc.pl ACE.mwc -type gnuace
	make all -j8

	#exiting ACE
	cd ..


	cd TAO

	$ACE_ROOT/bin/mwc.pl rTAO.mwc -type gnuace

	make all -j8
	#exiting TAO
	cd ..
	
	#exiting ACE_TAO
	cd ..
	
	
	echo $ACE_ROOT
	echo $TAO_ROOT
	echo $MPC
fi





