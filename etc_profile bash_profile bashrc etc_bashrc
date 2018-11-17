Order in which profiles are applied when user logs in 
=====================================================
1) First /etc/profile is read
2) Second /home/user/.bash_profile is read
3) Thrid /home/user/.bashrc is read
4) Fourth /etc/barsh is read
5) Firth if usesr logs out /home/user/.bash_logout is read

[root@client ~]# grep echo /etc/profile
echo "/etc/profile running"
[root@client ~]#

[root@client ~]# grep echo /home/student/.bash_profile
echo "bash_profile student is runinng"
[root@client ~]#

[root@client ~]# grep -i echo /home/student/.bashrc
echo "bashrc is starting running"

[root@client ~]# grep -i echo /etc/bashrc
echo "/etc/bashrc running"
[root@client ~]#

[root@client ~]# grep -i echo /home/student/.bash_logout
echo "bash logout is running"


[root@client ~]# su - student
Last login: Fri Nov 16 14:52:10 EST 2018 on pts/3
/etc/profile running
bash_profile student is runinng
bashrc under student is running
/etc/bashrc running
[student@client ~]$ exit
logout
bash logout is running
[root@client ~]#
