# Paths, includes /opt/xxx/bin

PATH=/bin:/sbin/:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/src/misc

for optPath in $(find /opt/ -maxdepth 3 -name bin); do 
	PATH=$PATH:$optPath;
done

export PATH
