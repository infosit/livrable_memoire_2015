# Ubuntu

#### Comment fixer IP serveur local?:

#### Comment autoriser root à se conneter en ssh:    
Edit /etc/ssh/sshd_config   
' # Authentication:   
LoginGraceTime 120    
' #PermitRootLogin without-password   
PermitRootLogin yes   
StrictModes yes   
service ssh restart   

REF:  http://www.ehowstuff.com/how-to-allow-root-to-use-ssh-on-ubuntu-14-04   

