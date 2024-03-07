def bin2dec(binary_str):
    decimal = 0
    power = len(binary_str) - 1 

    for digit in binary_str:
        if digit == '1':
            decimal += 2 ** power
        power -= 1

    return decimal

def test_bin2dec():
    test_cases = [
        ('0', 0),
        ('1', 1),
        ('10', 2),
        ('11', 3),
        ('100', 4),
        ('101', 5),
        ('111', 7),
        ('1000', 8),
        ('1010', 10),
        ('1100', 12),
        ('1111', 15),
        ('10000', 16),
        ('10001', 17),
        ('11001', 25),
        ('11111', 31),
        ('100000', 32),
    ]

    for binary_str, expected_decimal in test_cases:
        result = bin2dec(binary_str)
        print(f"Binary: {binary_str}, Expected Decimal: {expected_decimal}, Result: {result}")
        assert result == expected_decimal, f"Expected {expected_decimal}, but got {result} for {binary_str}"

    print("All test cases pass!")

if __name__ == "__main__":
    test_bin2dec()
