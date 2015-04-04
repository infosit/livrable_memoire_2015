# Ubuntu

Fixer IP serveur local?

autoriser root à de conneter en ssh:    
Edit /etc/ssh/sshd_config   
' # Authentication:   
LoginGraceTime 120    
' #PermitRootLogin without-password   
PermitRootLogin yes   
StrictModes yes   
service ssh restart   

REF:  http://www.ehowstuff.com/how-to-allow-root-to-use-ssh-on-ubuntu-14-04   

