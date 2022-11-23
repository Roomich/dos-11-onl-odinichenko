from random import randint

print("Generation of random number in progress...")
gen_number = randint(1, 10)
print("Done!")
attempts = 3

print("Try to guess the number. ")


def check_numbers (a):
    b = int(input("Enter your number: "))
    if a < b:
        print("Nope, the number is lower")
    elif a > b:
        print("Nope, the number is greater")
    else:
        print("Congrats, you won!!!")
    return b


while True:

    while attempts > 0:
        print(f"Attempts left: {attempts}")
        my_number = check_numbers(gen_number)
        attempts -= 1
        if gen_number == my_number:
            break
        elif attempts == 0:
            print(f"Out of attempts. The number was {gen_number}")

    i = input("Would you like to play one more time ? Print \"yes\" or \"no\"""\n")
    match i:
        case "yes":
            attempts = 3
            continue
        case "no":
            break
