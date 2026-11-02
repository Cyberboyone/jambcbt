"""The 120-question master bank, assembled from three blocks of forty."""

from bank_lit2_d1 import BANK_1
from bank_lit2_d2 import BANK_2
from bank_lit2_d3 import BANK_3

BANK = BANK_1 + BANK_2 + BANK_3

if __name__ == "__main__":
    print(len(BANK), "items")
