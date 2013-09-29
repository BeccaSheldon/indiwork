class BankAccount
  attr_accessor :user_name, :bank_balance, :credit_debt

  def balance_total(bank_balance = 0, deposit, withdrawl)
    @deposit = deposit
    @withdrawl = withdrawl
    @bank_balance = bank_balance + deposit.to_i - withdrawl.to_i
    puts "Your new balance is $#{@bank_balance}."
  end

  def credit(credit_debt = 0, credit_purchase, credit_payment)
    @credit_purchase = credit_purchase.to_i
    @credit_payment = credit_payment.to_i
    @credit_debt = credit_debt + credit_purchase - credit_payment
    puts "Your credit card balance is $#{@credit_debt}."
  end

  def statement(user_name)
    @user_name = user_name
    puts "#{@user_name}, your bank account balance is $#{@bank_balance} and your credit card total is -$#{@credit_debt}."
  end
end

a = BankAccount.new
a.balance_total(20, 10, 5)
a.credit(100, 30, 50)
a.statement("Becca Sheldon")
