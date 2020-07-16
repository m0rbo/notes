rsync -a /home root@openleap.suse:/nfsexport/sles12smt
rsync -a /root root@openleap.suse:/nfsexport/sles12smt
#rsync -a --exclude /srv root@openleap.suse:/nfsexport/sles12smt
#rsync -an --exclude '/install/' /srv/ root@openleap.suse:/nfsexport/sles12smt
#rsync -a --exclude '/install/' /srv/ root@openleap.suse:/nfsexport/sles12smt  > /root/synclog.txt
rsync -a --log-file=/root/rsynclog.log --exclude '/srv/install/' /srv root@openleap.suse:/nfsexport/sles12smt 
#test code change