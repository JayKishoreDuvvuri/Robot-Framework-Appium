import random
import string


def get_random_string(length, prefix="TEST"):
    letters = string.ascii_lowercase
    final_str = ''.join(random.choice(letters) for i in range(int(length)))
    final_str = prefix + "_" + final_str
    return final_str
