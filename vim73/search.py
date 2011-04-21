#coding=utf-8

from ctypes import *
import sys,os

if __name__ == '__main__':
	if len(sys.argv)>1:
		superSearch=windll.LoadLibrary("everything.dll")
		strBuff=create_unicode_buffer(255)
		superSearch.Everything_SetSearchW(c_wchar_p(sys.argv[1]))
		try:
			superSearch.Everything_QueryW()
		except:
			superSearch.Everything_QueryW(0)

		rsNum=superSearch.Everything_GetNumResults()
		if rsNum==0:
			print "Everthing not started or files not found!"
		
		for index in xrange(rsNum):
			superSearch.Everything_GetResultFullPathNameW(index,byref(strBuff),len(strBuff))
			try:
				print strBuff.value.encode("gbk")
			except:
				pass
				
		del superSearch
		del strBuff
	else:
		print "parameters error!"



