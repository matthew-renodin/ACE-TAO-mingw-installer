#!/bin/bash

#if [ $MSYSTEM != 'MINGW32' ]
#then
#	echo "This is a MING32 installer"
#else

	#install dlfcn-win32

	git clone https://github.com/dlfcn-win32/dlfcn-win32.git dlfcn-win32
	cd dlfcn-win32
	./configure
	make
	make install
	#exit dlfcn-win32
	cp libdl.a /usr/lib
	cd ..

	#install mpc	
	git clone https://github.com/DOCGroup/MPC.git mpc
	
	#install ACE_TAO
	
	#source the env
	source setenv
	

	git clone https://github.com/matthew-renodin/ACE_TAO.git ACE_TAO
	
	
	cp platform_mingw32.GNU ACE_TAO/ACE/include/makeinclude/
	cp platform_macros.GNU ACE_TAO/ACE/include/makeinclude/
	cp config.h ACE_TAO/ACE/ace
	cp drv_args.cpp ACE_TAO/TAO/TAO_IDL/driver
	cp rTAO.mwc ACE_TAO/TAO
	cp rACE.mwc ACE_TAO/ACE
	cp mtao_idl ACE_TAO/ACE/bin

	cd ACE_TAO 

#	cd ACE

#	$ACE_ROOT/bin/mwc.pl rACE.mwc -type gnuace
#	make all 

	#exiting ACE
#	cd ..


	cd TAO

	$ACE_ROOT/bin/mwc.pl rTAO.mwc -type gnuace

	make all 
	#exiting TAO
	cd ..
	
	#exiting ACE_TAO
	cd ..
	
	
	echo $ACE_ROOT
	echo $TAO_ROOT
	echo $MPC
#fi





