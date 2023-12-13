
cur = 1
next = 1
res = 0
while cur < 4000000:
    sum = cur + next
    cur = next
    next = sum
    if cur % 2 == 0:
        res += cur
print(res)
