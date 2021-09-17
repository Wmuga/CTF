#post to / with expression  Example: 8 5 + 9
import requests

url = 'https://web.ctflearn.com/web7/'

data = {
  "expression": "return 5+5"
}

r = requests.post(url,data=data)
print(r.text)