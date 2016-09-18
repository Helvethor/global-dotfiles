# Paths, includes /opt/xxx/bin

PATH=/bin:/sbin/:/usr/bin:/usr/sbin:/usr/bin/core_perl:/usr/local/bin:/usr/local/sbin:~/src/script

for optPath in $(find /opt/ -maxdepth 2 -name bin); do 
	PATH=$PATH:$optPath;
done

export PATH
