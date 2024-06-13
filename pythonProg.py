
def is_prime(n):
    # n = int(n)
    # if n <= 1:
    #     return False
    # elif n <= 3:
    #     return True
    # elif n % 2 == 0 or n % 3 == 0:
    #     return False
    # i = 5
    # while i * i <= n:
    #     if n % i == 0 or n % (i + 2) == 0:
    #         return False
    #     i += 6
    # return True

    if n <= 1:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True


#############
def generate_fibonacci_series(n):
    #sys.set_int_max_str_digits()
    n = int(n)
    fibonacci_series = [0, 1]
    for i in range(2, n):
        fibonacci_series.append(fibonacci_series[-1] + fibonacci_series[-2])
    return fibonacci_series


def generate_fibonacci_seriesI(n):
    a = 0
    b = 1
    if n < 0:
        print("Incorrect input")
    elif n == 0:
        return a
    elif n == 1:
        return b
    else:
        for i in range(2, n+1):
            c = a + b
            a = b
            b = c
        return b
################

def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)

def factorials(n):
    fact = 1
    for num in range(2, n + 1):
        fact *= num
    return fact

##############