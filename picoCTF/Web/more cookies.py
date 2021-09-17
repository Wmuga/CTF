from base64 import b64encode, b64decode
import requests

url = "http://mercury.picoctf.net:43275"
auth = "eVVuaUFHMlpDQWppeFFrTWpPL3ZxWDlIUnp0ZW1GN20wWmcydjVhQ1plYVNCcHdJVkZzNXBTY3JjQUFhb0dGMzhSNEIrRlhjMFczSEpVTUNCUm9BaUdnQXc3Rk04a0NWWDJsQzYybVY0R2tJcUNJc3NzaEZDU2V5QUpsMWxpZTc="
def flip(auth,pos,bit):
    raw = b64decode(auth)
    l = [chr(i) for i in list(raw)]
    l[pos] = chr(ord(l[pos])^bit)
    raw = ''.join(l)
    return {"auth_name":b64encode(raw.encode()).decode()}


for i in range(128):
    for j in range(128):
        r = requests.get(url,cookies=flip(auth,i,j))
        if "picoCTF{" in r.text:
            print(r.text)
