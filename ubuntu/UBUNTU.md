# Ubuntu

autoriser root à de conneter en ssh:    
Edit /etc/ssh/sshd_config   
# Authentication:   
LoginGraceTime 120    
#PermitRootLogin without-password   
PermitRootLogin yes   
StrictModes yes   
service ssh restart   
