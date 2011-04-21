import sys, os, subprocess
cmd = ''.join(sys.argv);
popen_obj = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, bufsize=0)
(stdout, stderr) = popen_obj.communicate()

print stdout , stderr
