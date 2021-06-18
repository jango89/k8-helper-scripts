# How to make it effective using bash#

Add `alias kl="{path to the script}` to either .bash or .zshrc.   
Add `alias kc="{path to the script}` to either .bash or .zshrc.   
Add `alias kd="{path to the script}` to either .bash or .zshrc.   
Add `alias ki="{path to the script}` to either .bash or .zshrc.   
Add `alias klf="{path to the script}` to either .bash or .zshrc.
Run  `source .bash or source .zshrc`.


## Prints logs in console

# Usage#

#kl {servicename} {last n lines from logs} {search by this word in logs}.   
#kl {servicename} 0 {search by this word in whole logs}.    

## Prints logs live from pod

# Usage#

#klf {deployment-name} {environment} .  
#klf {deployment-name}


## Prints ingress details in console

# Usage#

#ki {servicename} {environment}
#kl {servicename}


## Prints deployment details in console

# Usage#

#kd {servicename} {environment}
#kd {servicename}

## Switch contexts in k8

# Usage#

#kc {environment}


