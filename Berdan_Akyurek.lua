number = 30
tries = 0
math.randomseed(os.time())
repeat
    assumption = math.random(0,100)
    tries = tries + 1 
    print(assumption)
until(assumption == number)
print(tries, " tries")