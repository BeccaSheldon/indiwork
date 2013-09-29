class BankAccount
  attr_accessor :user_name, :bank_balance, :new_bank_balance, :new_credit_balance, :credit_debt, :deposit, :withdrawl, :credit_payment, :purchase_amount, :overdraft_fee, :interest_rate, :interest_charge

  def balance_total(bank_balance = 0, deposit, withdrawl)
    @deposit = deposit
    @withdrawl = withdrawl
    @bank_balance = bank_balance + deposit.to_i - withdrawl.to_i
    puts "Your current balance is $#{@bank_balance}."
  end

  def overdraft(purchase_amount)
    @overdraft_fee = 10 
    @purchase_amount = purchase_amount
    if @purchase_amount <= bank_balance
      @new_bank_balance = bank_balance - purchase_amount
      puts "Transaction Approved for $#{@purchase_amount}. New balance is $#{@new_bank_balance}."
    else
      @new_bank_balance = bank_balance - overdraft_fee
      puts "Transaction Denied. Overdraft Fee is $#{@overdraft_fee}. New balance is $#{@new_bank_balance}."
    end
  end

  def credit(credit_debt = 0, credit_purchase)
    @credit_purchase = credit_purchase
    @credit_payment = new_bank_balance / 4
    @credit_debt = credit_debt + credit_purchase - credit_payment
    @interest_rate = 0.015
    @interest_charge = credit_debt * interest_rate
    @new_credit_balance = interest_charge + credit_debt
    puts "Your previous balance was $100. Purchases came to $#{@credit_purchase}, payments came to $#{@credit_payment}, interest charged was $#{@interest_charge}."
  end

  def statement(user_name)
    @user_name = user_name
    puts "#{@user_name}, your bank account balance is $#{@new_bank_balance} and your credit card total is $#{@new_credit_balance}."
  end
end

a = BankAccount.new
a.balance_total(20, 10, 5)
a.overdraft(500)
a.credit(100, 50)
a.statement("Becca Sheldon")
