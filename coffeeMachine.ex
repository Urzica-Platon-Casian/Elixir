defmodule CoffeeMachine do
  defmodule ChoiceOfCoffee do
    def chooseCoffeeRecipie() do
          latteBasePrice = 8
          cappucinoBasePrice = 7
          expressoBasePrice = 6
          coffeeRecipieType = IO.gets "Write your choice: "
          if (String.equivalent?(String.trim(coffeeRecipieType),"Latte") == true) do
            IO.puts "You chose, #{String.trim(coffeeRecipieType)} and it will cost #{latteBasePrice} lei!"
          end
          if (String.equivalent?(String.trim(coffeeRecipieType),"Cappucino") == true) do
            IO.puts "You chose, #{String.trim(coffeeRecipieType)} and it will cost #{cappucinoBasePrice} lei!"
          end
          if (String.equivalent?(String.trim(coffeeRecipieType),"Expresso") == true) do
            IO.puts "You chose, #{String.trim(coffeeRecipieType)} and it will cost #{expressoBasePrice} lei!"
          end
    end
  end
  # defmodule AddMilkToRecipie do
        def addMoreMilk() do
          IO.puts "Extra Milk: Small - 1ml  Medium - 3ml  Grande - 5ml  No"
          milkQuantity = IO.gets "Choose ammount of milk: "
          milkPrice = cond do
            String.equivalent?(String.trim(milkQuantity),"Small") == true -> {:ok, "1"}
            String.equivalent?(String.trim(milkQuantity),"Medium") == true -> {:ok, "3"}
            String.equivalent?(String.trim(milkQuantity),"Grande") == true -> {:ok, "5"}
            String.equivalent?(String.trim(milkQuantity),"No") == true -> {:ok, "0"}
          end
          getAmmountOfExtraMilk = elem(milkPrice,1)
          {milk,a} = Integer.parse(getAmmountOfExtraMilk)
        end
      # end
  # defmodule AddCoffeeToRecipie do
        def addMoreCoffee() do
          IO.puts "Extra Coffee: Small - 1ml  Medium - 3ml  Grande - 5ml  No"
          coffeeQuantity = IO.gets "Choose ammount of coffee: "
          coffeePrice = cond do
            String.equivalent?(String.trim(coffeeQuantity),"Small") == true -> {:ok, "1"}
            String.equivalent?(String.trim(coffeeQuantity),"Medium") == true -> {:ok, "3"}
            String.equivalent?(String.trim(coffeeQuantity),"Grande") == true -> {:ok, "5"}
            String.equivalent?(String.trim(coffeeQuantity),"No") == true -> {:ok, "0"}
          end

          getAmmountOfExtraCoffee = elem(coffeePrice,1)
          {coffee,b} = Integer.parse(getAmmountOfExtraCoffee)
        end
      # end
  # defmodule ShowThePriceToTheCostumer do
    def showCustomerThePrice() do
      if ((String.equivalent?(String.trim(coffeeRecipieType),"Latte") == true) && (milk == 0 && coffee == 0)) do
        IO.puts "Your coffee will cost: #{coffee+milk+latteBasePrice} lei, is that okay?"
      end

      if ((String.equivalent?(String.trim(coffeeRecipieType),"Latte") == true) && (milk != 0 || coffee != 0)) do
          IO.puts "Your coffee will cost: #{coffee+milk+latteBasePrice} lei, is that okay?"
      end

      if ((String.equivalent?(String.trim(coffeeRecipieType),"Cappucino") == true) && (milk == 0 && coffee == 0)) do
        IO.puts "Your coffee will cost: #{coffee+milk+cappucinoBasePrice} lei, is that okay?"
      end

      if ((String.equivalent?(String.trim(coffeeRecipieType),"Cappucino") == true) && (milk != 0 || coffee != 0)) do
          IO.puts "Your coffee will cost: #{coffee+milk+cappucinoBasePrice} lei, is that okay?"
      end

      if ((String.equivalent?(String.trim(coffeeRecipieType),"Expresso") == true) && (milk == 0 && coffee == 0)) do
        IO.puts "Your coffee will cost: #{coffee+milk+expressoBasePrice} lei, is that okay?"
      end

      if ((String.equivalent?(String.trim(coffeeRecipieType),"Expresso") == true) && (milk != 0 || coffee != 0)) do
          IO.puts "Your coffee will cost: #{coffee+milk+expressoBasePrice} lei, is that okay?"
      end
    end
  # end
  # defmodule AcceptOrDeclineCoffee do
    def acceptOrDecline() do
      confirmOrder = IO.gets "Y/N: "
      if (String.equivalent?(String.trim(confirmOrder),"Y") == true) do
        IO.puts "Your order of #{String.trim(coffeeRecipieType)} will be served!"
      else
        IO.puts "Your order of #{String.trim(coffeeRecipieType)} was canceled!"
      end
    end
  # end

  IO.puts "  Welcome to the MagicCoffeMachine"
  IO.puts " Coffee recipies available: "
  IO.puts " Latte"
  IO.puts " Cappucino"
  IO.puts " Expresso"
  ChoiceOfCoffee.chooseCoffeeRecipie()
  CoffeeMachine.addMoreMilk()
  CoffeeMachine.addMoreCoffee()
  CoffeeMachine.showCustomerThePrice()
  CoffeeMachine.acceptOrDecline()
end
