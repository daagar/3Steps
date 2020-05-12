# TinTin++

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

#### 3k/draw.tin
* Modified to contain space for damage tracker and biome

#### 3k/damagetracker.tin
* Gives the ability to count rounds and if mysql is being used, read and write damage and kills directly from the database

#### 3k/mysql.tin
* Database integration with mysql/mariadb

#### Dirs/*.tin
* Repository for area load and unload actions - currently being loaded when entering an area via #room {exit}{exit}{command}
