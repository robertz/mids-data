# mids-data

Process Mids Reborn json data and save it to MariaDB

## How it works (for me)
* In my development folder I cloned imaginary-hero-designer: `git clone https://github.com/ImaginaryDevelopment/imaginary-hero-designer.git`
* In my development folder I cloned mids-data: `git clone https://github.com/robertz/mids-data.git`
* Run cpdata.sh to copy the required json files: `bash cpdata.sh`
* Start the commandbox embedded server `box server start`
* When the server comes up click on the Mids data importer link which will populate the database

## The `resources` table structure 
```sql
CREATE TABLE `resources` (
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```
The `identifier` value will match the json file name minus the file extension

## Acknowledgements
This wouldn't be possible without the Mids Reborn development team: https://github.com/ImaginaryDevelopment/imaginary-hero-designer