import requests

url = 'https://gobustme.ctflearn.com/'
for line in open('D:\\Desktop\\Side Goods\\CTF\\wordlist.txt','r').readlines():
  line = line.strip()
  if (len(line)>0):
    r = requests.get(url+line)
    print(url+line)
    if (r.status_code!=404):
      open('D:\\Desktop\\Side Goods\\CTF\\CTFLearn\\Gobustme\\'+line,'w',encoding='utf-8').write(r.text)