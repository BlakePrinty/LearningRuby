class SavingsAccount
    attr_accessor :balance, :accountNum, :interestRate

    def initialize(balance, accountNum, interestRate)
        @balance = balance
        @accountNum = accountNum
        @interestRate = interestRate
    end

    def deposit(amount)
        @balance += amount
        puts "Deposited: $#{amount}"
    end

    def withdraw(amount)
        if @balance-amount < 0
            puts "Insufficient funds to withdraw"
        else
            @balance -= amount
            puts "Withdrew $#{amount}"
        end
    end

    def accrueInterest
        @balance *= (@interestRate)
    end

end

firstAccount = SavingsAccount.new(100.0, 1, 1.03)

firstAccount.withdraw(120)
firstAccount.deposit(25)
firstAccount.withdraw(120)
firstAccount.accrueInterest

puts "Balance: #{firstAccount.balance}"
puts "Account Number: #{firstAccount.accountNum}"
puts "Interest Rate: #{firstAccount.interestRate}"

