# 3Steps

## General Getting Started Guide

* Acquire:
		git clone https://github.com/daagar/3Steps.git

* Optionally, install mariadb
	#### RedHat/CentOS
		yum install mariadb mariadb-server
		systemctl enable mariadb
		systemctl start mariadb

	#### Ubuntu
		TBD

* Linux users will commonly store their config in a .tt folder

		ln -s tintin .tt

* Wintin++ users:  
	Edit main.tin and put this inside ->

		#read .tt/loader.tin

* Linux Users:
	Edit your .profile and put the following:

		alias tt='tt++ ~/.tt/loader.tin'

* Make a copy of .tt/profiles/rc.tin.sample and copy it to .tt/profiles/rc.tin

* Edit .tt/profiles/rc.tin and change the following line:

		#var {myprofile}{floobity};
	to be
		
		#var {myprofile}{<your name>};

* Create a new folder called .tt/profiles/<your name>
(you can copy the contents of floobity for examples)

	This folder should contain the following .tin files (personal setup above and beyond the defaults):  
 			- aliases.tin  
 			- macros.tin  
 			- menu.tin  
 			- triggers.tin  vars.tin

	and the following folders:  
 		- chars  
 		- logs

* Edit your .tt/profiles/<your name>/menu.tin file and put the following for each of your characters (increment the number):

		#echo {1) <your character>(<your guild>)};
		#var {my[alts][1][name]} {<your character>3s};
		#var {my[alts][1][guild]} {<your guild>};

		#echo {};
		#echo {con <number>:};

		#line oneshot #alias {^%d$} {con %1};

		#line oneshot #alias {con} {
			connect ${my[alts][%1][name]};
			#unvar {my[alts]};
			#unalias {con}
		};

* In the .tt/profiles/<your name>/chars folder create the following files (character specific files):  
 	- aliases.tin  
 	- char.tin  
 	- macros.tin  
 	- triggers.tin  
 	- vars.tin 
 	- .pass

* Edit the contents of .pass:

		#send {mypassword}


	and create the following folder

		vars

* Make menu.tin match your characters instead of mine and then for each character in menu.tin create a character folder in .tt/profiles/<your name>/char/<charname>

* Edit rc.tin and change: 
		#var {logpath}{/tintin/logs}
 	to wherever you want your logs to go

* Rename mysql.tin.sample in .tt/profiles to mysql.tin and change your mysql database password to whatever you want your passwords to be

* Log in to mysql and create the tintin database:

		mysql -u root

 	and then 

		create database tintin
		create user 'tintin'@localhost identified by 'whateveryourpassis'; 
		grant all on tintin.* to tintin identified by 'whateveryourpassis';

	and then control-d
 	to exit mysql.. then 

		gunzip tintin.sql.gz
		mysql -u root tintin < tintin.sql

## Required Version
* TinTin++ version 2.02.02 or higher required

    Certain aspects are not backwards compatible with older versions of TinTin++ due to syntax changes within the client.  Notably, the #map and #showme commands.

## Highlighted features:

#### graph.tin
* Graphical status bars function

### 3k/3s:
#### 3k/mapper.tin
* Mapper setup to automap for 3K or 3S  
* Autoadds exit-stubs and colors them red to see rooms you haven't visted yet  
* Data capture for room short, long desc, area name  
* Map follow on following others  
* Transports for uncommon exits / moving areas  

#### 3k/killer.tin
* Floobity Alternative to bot.tin
		  
#### 3k/mip.tin
* Modified from Balthus' original script.
* Chat monitor for all lines and tells/souls.
* Status updates for character, even out of combat
* Mob health in percentage, regardless of mob or mskills
* Caption updating (top TinTin split) with Uptime, Reboot, Lag, and Idle timer

#### 3k/assemble.tin
* Craft satchel auto-assembler

#### 3k/mysql.tin
* Database integration with mysql/mariadb

## CREDITS
* Balthus - Originator of most of the MIP code
* Inix - The original codebase on which this is all based
* Sock - I believe the original stepper was largely based on his work
* Floobity - Addition of the other mapping modes, general restructure