# GOG Tomb Raider extractor
This tool will extract data from GOG's Tomb Raider trilogy setup executable.
Obtained files can be used with opensource engines like OpenTomb or OpenLara.

## How to use
Run the extraction script in a terminal
```
./extract.sh name_of_your_gog_tomb_raider_setup.exe
```
The "data" folder from the different games should be extracted in `data/tr*`
To play OpenLara, copy the content of `data/tr1/data` in your `OpenLara` folder.
For OpenTomb, copy the whole `data` folder (the first one, containing the `tr*` folders) in your `OpenTomb` folder

## OpenTomb additionnal content
OpenTomb provides sound and loading screen packages you can install by running the `bonus.sh` script

## Dependencies
To use this script, you need to install and configure the following packages:
 - innoextract
 - bchunk
 - curl
 - unzip
 - cat
 - head
 - sudo
