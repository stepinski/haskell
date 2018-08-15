def teststr():
    print("aaa")

def squarez(num):
    return num*num


testlamb = lambda x: list(map(square,x))

def testprint(x):
    print(list(map(lambda num: num*num,x)))


# execfile("/home/pioters/ws/prj/haskell/fpy.py")
