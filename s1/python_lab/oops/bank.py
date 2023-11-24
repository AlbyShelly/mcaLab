class bank_acc :

    def __init__ (self , acc_no, acc_name, acc_type, bal=0.0):

        self.account_no. = acc_no
        self.account_type = acc_type
        self.account_holder_name= acc_type
        self.balance = bal

    def deposit(self,amount):

        if amount > 0:

            self.balance += amount
           
