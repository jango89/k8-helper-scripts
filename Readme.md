# How to make it effective using bash#

Add `alias kl="{path to the script}` to either .bash or .zshrc.   
Add `alias kc="{path to the script}` to either .bash or .zshrc.   
Add `alias kd="{path to the script}` to either .bash or .zshrc.   
Add `alias ki="{path to the script}` to either .bash or .zshrc.   
Add `alias klf="{path to the script}` to either .bash or .zshrc.
Run  `source .bash or source .zshrc`.


## Prints logs in console

### Switch contexts in k8

#kc {environment}

### Switch namespace in k8

#kc {environment} {namespace}

### Prints logs live from pod

#klf {deployment-name}
#kl {servicename} {last n lines from logs} {search by this word in logs}.   
#kl {servicename} 0 {search by this word in whole logs}.

### Prints ingress details in console

#kl {servicename}

### Prints deployment details in console

#kd {servicename}
