# def bruteforce():
#     result = set()

#     for i in range(2, 100 + 1):
#         result.update([i**j for j in range(2, 100 + 1)])

#     print(len(result))


def fast():
    max = 100 # upper limit of b (2 ≤ b ≤ 100)

    # returns the set of all possible exponents
    # equivalent to all unique exponents of {(n^1)^2..max, (n^2)^2..max, ... (n^max_exp)^2..max}
    def outcomes(max_exp):
        # uses Python set for unique elements
        s = set()

        # loop for n^1, n^2, ... n^max_exp
        for k in range(1, max_exp + 1):
            # loop for 1*[2..max], 2*[2..max], max_exp*[2..max]
            s.update(list([n*k for n in range(2, max + 1)])) # add exponents to the set
        return s

    #            for base of 2      for base of 3      for base of 5, 6, 7, 10
    duplicates = len(outcomes(6)) + len(outcomes(4)) + len(outcomes(2)) * 4

    # 81 other cases * 99 exponents + edge cases
    print(81 * 99 + duplicates)
