# coding=gbk
import json
import urllib
import vim

try:
  proxies = {}
  word = vim.eval('expand("<cword>")')
  file = urllib.urlopen("http://dict.qq.com/dict?" + urllib.urlencode({ "f": "client", "v": "142", "q": word }), proxies=proxies)
  result = json.loads(file.read())
  file.close()

  print "[" + word + "]"
  try:
    for k, v in result["local"][0].iteritems():
      if k == 'des':
        for kk in v:
          try:
            print "    " + kk["p"] + '  ' + kk["d"].encode('gb2312')
          except:
            print "    " + kk["d"].encode('gb2312')
  except:
    print

  print "网络解释:"
  for k, v in result["netdes"][0].iteritems():
    if k == 'des':
      for kk in v:
        if kk["f"] != 1:
          print "    " + kk["d"].encode('gb2312')

except:
    print "translate error"
# vim:tabstop=2 expandtab shiftwidth=2 softtabstop=2
