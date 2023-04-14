class Fruit:
    def __init__(self, color, weight):
        self.color = color
        self.weight = weight

    def isfresh(self):
        if self.color == "green" or self.color == "yellow":
            return True
        else:
            return False



class Apple(Fruit):
    def __init__(self):
        super().__init__("color: red",1.1)


class Banana(Fruit):
    def __init__(self):
        super().__init__("color: yellow",0.5)


class Orange(Fruit):
    def __init__(self):
        super().__init__("color: orange", 0.8)


apple = Apple()
banana = Banana()
orange = Orange()
print(apple.color)
print(banana.isfresh())
print(orange.weight)


class Account:
    def __init__(self, balance):
        self.balance = balance

    def deposit(self, amount):
        self.balance += amount

    def withdraw(self, amount):
        if self.balance >= amount:
            self.balance -= amount
        else:
            print("Insufficient balance")

    def transfer(self, account, amount):
        if self.balance >= amount:
            account.deposit(amount)
            self.withdraw(amount)
        else:
            print("Insufficient balance")

class PrivateAccount(Account):
    def __init__(self, balance, salary):
        super().__init__(balance)
        self.salary = salary

    def receive_salary(self):
        self.balance += self.salary

class FirmAccount(Account):
    def __init__(self, balance, taxid):
        super().__init__(balance)
        self.taxid = taxid

    def pay_taxes(self, amount):
        if self.balance >= amount:
            self.balance -= amount
            print("Taxes paid successfully")
        else:
            print("Insufficient balance to pay taxes")

account1 = Account(1000)
account3 = FirmAccount(30000, "69469401")
account2 = PrivateAccount(200, 500)

account2.receive_salary()
account2.transfer(account1, 500)
account3.pay_taxes(500)

print("Account1 balance:", account1.balance)
print("Account2 balance:", account2.balance)
print("Account3 balance:", account3.balance)


class RomanNumeral:
    def __init__(self, value):
        self.value = value


    def __repr__(self):
        return self.to_roman()


    def __add__(self, other):
        if isinstance(other, int):
            return RomanNumeral(self.value + other)
        elif isinstance(other, RomanNumeral):
            return RomanNumeral(self.value + other.value)

    def __sub__(self, other):
        if isinstance(other, int):
            return RomanNumeral(self.value - other)
        elif isinstance(other, int):
            return RomanNumeral(self.value - other.value)


    def __mul__(self, other):
        if isinstance(other, int):
            return RomanNumeral(self.value * other)
        elif isinstance(other,int):
            return RomanNumeral(self.value * other.value)


    def __len__(self):
        return len(self. to_roman())


    def __floordiv__(self, other):
        if isinstance(other, int):
            return RomanNumeral(self.value // other)
        elif isinstance(other, RomanNumeral):
            return RomanNumeral(self.value // other.value)


    def to_roman(self):
        roman_numerals = {1000: 'M', 900: 'CM', 500: 'D', 400: 'CD', 100: 'C', 90: 'XC', 50: 'L', 40:'XL', 10:'X',9: 'IX', 5:'V',4: 'IV', 1:'I'}
        result = ''
        for value, numeral in roman_numerals.items():
            while self.value >= value:
                result += numeral
                self.value -= value

        return result

rn = RomanNumeral(10)
print(
