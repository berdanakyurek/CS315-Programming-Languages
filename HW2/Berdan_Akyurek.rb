number = 30
tries = 0
assumption = -1
until assumption == number do
    assumption = rand(1..100)
    tries += 1
    print(assumption, "\n")
end
print(tries, " tries\n")