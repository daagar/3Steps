# TinTin++
## General Getting Started Guide

git clone https://github.com/wstutt/tintin.git

yum install mariadb mariadb-server
systemctl enable mariadb
systemctl start mariadb

ln -s tintin .tt

vi .tt/.pass

contents of .pass:
	#send {mypassword}

cd .tt
 
edit menu.tin

Make menu.tin match your characters instead of mine and then for each character in menu.tin create 
.tt/char/<charname3s>.tin

Edit rc.tin and change 
#var {logpath}{/tintin/logs}
 to wherever you want your logs to go

Edit mysql.tin
 and change your mysql database password to whatever you want your passwords to be

Log in to mysql and create the tintin database:

mysql -u root

 and then 

*create database tintin

*create user 'tintin'@localhost identified by 'whateveryourpassis'; 

*grant all on tintin.* to tintin identified by 'whateveryourpassis';

and then control-d
 to exit mysql.. then 

gunzip tintin.sql.gz

mysql -u root tintin < tintin.sql

and then edit your .profile to include 
alias tt='tt++ ~/.tt/.tinrc'

## Required Version
* TinTin++ version 2.01.90 or higher required

    Certain aspects are not backwards compatible with older versions of TinTin++ due to syntax changes within the client.  Notably, the #map and #showme commands.

## Highlited features:

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

### Aardwolf:

#### map/AWmap.tin
* Additional mapping features not included in the gmcp module
* Data captures for longdesc
* Aliases for easier map movement and mob hunting
* Capture of AW mini-map
* Auto saves map on disconnect

#### AW/gmcp.tin
* Modified from TheIxle's original script.
* Chat monitor for all lines
* Status updates integrated with graph function
* Auto-mapping with exit-stubs
* Terrain mapping to set roomsymbol to Aardwolf style terrain on adding new rooms

#### AW/terrain.tin
* Set rooms currently in your map to Aardwolf style terrain

#### AW/snd.tin
* Search and Destroy style mob hunting for TinTin
