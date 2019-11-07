
try:
    fin = open("font3.txt","r")
    lc = 1
    moveOn=1
    while (moveOn==1):
        for line in fin:
            c = line[-1]
            if lc==3:
                print(line)
                moveOn = 0
                
            lc=lc+1

    fin.close()

except:
    print("file now found")
