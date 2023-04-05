umask 022

export CHARSET=UTF-8
export LANG=C.UTF-8
export PAGER=less

UserID=$(id -u)
if [ ${UserID} = 0 ]; then
        export PS1='\[\033[01;31m\][\h\[\033[01;36m\] \W\[\033[01;31m\]]\$\[\033[00m\] '
else
        export PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
fi

for script in /etc/profile.d/*.sh ; do
        if [ -r $script ] ; then
                . $script
        fi
done
