import os

os.system("echo hello > myfile.txt")
for i in range(10000):
  os.system("ln -sf myfile.txt link.txt")
  os.system("ln -sf /home/blase/plants.txt link.txt")
