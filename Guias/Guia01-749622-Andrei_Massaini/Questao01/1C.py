# 749622 - Andrei_Massaini
dec2bin = lambda n: n>1 and dec2bin(n//2) + str(n%2) or str(n)
dec2bin(10) # 1010
dec2bin(20) # 10100
dec2bin(30) # 11110


