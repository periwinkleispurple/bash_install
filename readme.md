#### Periwinkle is purple / bash install
_____________________________________________________________________________________________________________________

Summary <br/>
1. How to 
2. GLPI MariaDB Database connection 
<br/><br/>
All bash here are fully fonctionnal on **< debian-10.0.0-amd64 >**. Every source code are listed above !
<br/>
_____________________________________________________________________________________________________________________
#### 1. How to 

> Open terminal 

> Main command model
```
wget -q -O - url | sudo bash
```
> If sudo is not installed, just install it and redo the command :
```
apt-get install sudo
```

> Main command example :
```
wget -q -O - (url)/glpi_standalone_v-1-7-19.sh | sudo bash

So :

wget -q -O - https://github.com/periwinkleispurple/bash_install/releases/download/untagged-221cccad24048ec0204b/glpi_fusioninventory_v1-7-19.sh | sudo bash

Or wget -q -O - sewesty.com/_github/glpi_standalone_v-1-7-19.sh | sudo bash
```

Get url from releases section. You can also get link from here  [sewesty/github](https://sewesty.com/_github).

_____________________________________________________________________________________________________________________
 ❝ I might be using a lot of unnecessary "sudo" but! I want to ensure that the commands goes well.
 
 I got a lot of stuff like "unknown command" while performing all my tests, and using sudo help fix some lines. ❞
 
- Periwinkle
_____________________________________________________________________________________________________________________

#### 2. GLPI MariaDB Database connection 

```
Server name : localhost

Database name : glpi

Username : glpibdd

Password : glpibddpass 
```


