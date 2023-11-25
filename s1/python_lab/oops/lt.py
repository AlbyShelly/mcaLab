class bank_acc :

    def __init__ (self , acc_no, acc_name, acc_type, bal=0.0):

        self.account_no = acc_no
        self.account_type = acc_type
        self.account_holder_name= acc_name
        self.balance = bal

    def deposit(self,amount):

        if amount > 0:

            self.balance += amount

            print("Deposit of  ${0} successfull. New balance: {1}".format(amount, self.balance))

        else: print("Invalid deposit amount. Please enter a positive value.")



    def withdraw(self, amount):

        if 0 < amount <= self.balance:

            self.balance -= amount

        else: 
            
            print("Invalid withdrawal amount or insuffecient funds.")

    def display_account_info(self):

        print("Account number: {0} ".format(self.account_no))
        print("Account type: {0} ".format(self.account_type))
        print("Account holder: {0} ".format(self.account_holder_name)) 
        print("Balance: {0} ".format(self.balance)) 

    def __lt__(self, obj):

        if self.balance < obj.balance:

            return "{0} does not have a lesser balance than {1}".format(self.account_holder_name,obj.account_holder_name)


acc1=bank_acc("1234","alby","savings",0)



acc1.display_account_info()

acc1.withdraw(1000)

acc1.deposit(1000)

acc1.display_account_info()

acc1.withdraw(500)

acc2 = bank_acc("1223","josin","current",0)

print(acc1 < acc2)

print("acc1 balance: ",acc1.balance)
print("acc2 balance: ",acc2.balance)

print(acc2 < acc1)
