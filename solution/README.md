# Solution
Crack the password with a dictionary attack using `rockyou.txt` (hinted at wordlist).

## PoC: Using `fcrackzip`
```
# Get fcrackzip
apt update 
apt install fcrackzip

# Get rockyou.txt
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt

# Start cracking
fcrackzip -u -D -p rockyou.txt flag.zip
```