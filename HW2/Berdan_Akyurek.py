import random
number = 30
tries = 0
assumption = -1
while(assumption != number):
    assumption = random.randint(0,100)
    print(assumption)
    tries += 1
print(tries, " tries.")