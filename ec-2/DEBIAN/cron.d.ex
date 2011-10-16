#
# Regular cron jobs for the ec package
#
0 4	* * *	root	[ -x /usr/bin/ec_maintenance ] && /usr/bin/ec_maintenance
