#### Periwinkle is purple / bash install
_____________________________________________________________________________________________________________________

Summary <br/>
1. How to 
2. GLPI MariaDB Database connection 
3. _Zero (coming soon)_
<br/><br/>
All bash here are fully fonctionnal on **< debian-10.0.0-amd64 and Mint 'Sarah' >**. Every source code are listed above !
<br/>
Make sure your OS has a web and SSH server. 
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

Or wget -q -O – periwinkle.ovh/library/glpi/glpi.sh | sudo bash
Or wget -q -O – periwinkle.ovh/library/glpi/fusioninventory.sh | sudo bash
Or wget -q -O – periwinkle.ovh/library/glpi/glpiandfusioninventory.sh | sudo bash
```


puTTy Issues #1 : If wget is not working for some reason, use curl instead : 
```
apt-get install curl 
&
curl periwinkle.ovh/library/glpi/glpiandfusioninventory.sh | sudo bash
```
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


