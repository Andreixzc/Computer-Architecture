dec2bin = lambda n: n > 1 and dec2bin(n // 2) + str(n % 2) or str(n)

def test_dec2bin():
    test_cases = [
        (0, '0'),
        (1, '1'),
        (2, '10'),
        (3, '11'),
        (4, '100'),
        (5, '101'),
        (7, '111'),
        (8, '1000'),
        (10, '1010'),
        (12, '1100'),
        (15, '1111'),
        (16, '10000'),
        (17, '10001'),
        (25, '11001'),
        (31, '11111'),
        (32, '100000'),
    ]

    for decimal, expected_binary in test_cases:
        result = dec2bin(decimal)
        print(f"Decimal: {decimal}, Expected Binary: {expected_binary}, Result: {result}")
        assert result == expected_binary, f"Expected {expected_binary}, but got {result} for {decimal}"

    print("All test cases pass!")

if __name__ == "__main__":
    test_dec2bin()
