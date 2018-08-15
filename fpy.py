from functools import partial
def teststr():
    print("aaa")

def squarez(num):
    return num*num


testlamb = lambda x: list(map(square,x))

def testprint(x):
    print(list(map(lambda num: num*num,x)))


def prod(xs):
    print(reduce(lambda x,y : x*y,xs))

def fltminzero(xs):
    return list(filter(lambda num: num<0,xs))
# execfile("/home/pioters/ws/prj/haskell/fpy.py")


def summa(xs):
    return sum(xs)

def act(func,xs):
    return func(xs)

#print(act(summa,x))
power = lambda x,exp: x ** exp
square = partial(power,exp=2)

powers = []
for i in range(2,50):
    powers.append(partial(power,exp=i))


