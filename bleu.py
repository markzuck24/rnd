import os
import time


# print("Type the filename")
# file_again = raw_input("> ")

with open('/var/www/html/rnd/fname.txt' , 'r') as f:
    lines = f.readline()
    #print lines
file_names=lines.split(",")
for names in file_names:
    # if (line !="\n"):
    #     print "asodha"+line
    #     print "adi"
    print(names)
    os.system("perl blu.pl %s < /var/www/html/rnd/h.txt" % (names))
    # time.sleep(1)


