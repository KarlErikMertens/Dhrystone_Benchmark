EHLIP=192.168.10.91
echo ${EHLIP}

rm gcc_dry2
rm gcc_dry2reg

make

ssh root@${EHLIP} 'rm /home/root/gcc_dry2'
ssh root@${EHLIP} 'rm /home/root/gcc_dry2reg'

scp gcc_dry2 root@${EHLIP}:/home/root/gcc_dry2 # Karl 
scp gcc_dry2reg root@${EHLIP}:/home/root/gcc_dry2reg # Karl 
