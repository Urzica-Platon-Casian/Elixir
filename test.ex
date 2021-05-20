defmodule M do
  def coffee do
    IO.puts "  Welcome to the MagicCoffeMachine"
    IO.puts " Coffee recipies available: "
    IO.puts " Latte"
    IO.puts " Cappucino"
    IO.puts " Expresso"

    latte_price = 8
    cappucino_price = 7
    expresso_price = 6

    coffeeChosen = IO.gets "Write your choice: "

    if (String.equivalent?(String.trim(coffeeChosen),"Latte") == true) do
      IO.puts "You chose, #{String.trim(coffeeChosen)} and it will cost #{latte_price} lei!"
    end
    if (String.equivalent?(String.trim(coffeeChosen),"Cappucino") == true) do
      IO.puts "You chose, #{String.trim(coffeeChosen)} and it will cost #{cappucino_price} lei!"
    end
    if (String.equivalent?(String.trim(coffeeChosen),"Expresso") == true) do
      IO.puts "You chose, #{String.trim(coffeeChosen)} and it will cost #{expresso_price} lei!"
    end


    IO.puts "Extra Milk: Small - 1ml  Medium - 3ml  Grande - 5ml  No"
    milk_qnt = IO.gets "Choose ammount of milk: "
    milk_cost = cond do
      String.equivalent?(String.trim(milk_qnt),"Small") == true -> {:ok, "1"}
      String.equivalent?(String.trim(milk_qnt),"Medium") == true -> {:ok, "3"}
      String.equivalent?(String.trim(milk_qnt),"Grande") == true -> {:ok, "5"}
      String.equivalent?(String.trim(milk_qnt),"No") == true -> {:ok, "0"}
    end

    x = elem(milk_cost,1)
    {milk,a} = Integer.parse(x)

    IO.puts "Extra Coffee: Small - 1ml  Medium - 3ml  Grande - 5ml  No"
    coffee_qnt = IO.gets "Choose ammount of coffee: "
    coffee_cost = cond do
      String.equivalent?(String.trim(coffee_qnt),"Small") == true -> {:ok, "1"}
      String.equivalent?(String.trim(coffee_qnt),"Medium") == true -> {:ok, "3"}
      String.equivalent?(String.trim(coffee_qnt),"Grande") == true -> {:ok, "5"}
      String.equivalent?(String.trim(coffee_qnt),"No") == true -> {:ok, "0"}
    end

    y = elem(coffee_cost,1)
    {coffee,b} = Integer.parse(y)

    if ((String.equivalent?(String.trim(coffeeChosen),"Latte") == true) && (milk == 0 && coffee == 0)) do
      IO.puts "Your coffee will cost: #{coffee+milk+latte_price} lei, is that okay?"
    end

    if ((String.equivalent?(String.trim(coffeeChosen),"Latte") == true) && (milk != 0 || coffee != 0)) do
        IO.puts "Your coffee will cost: #{coffee+milk+latte_price} lei, is that okay?"
    end

    if ((String.equivalent?(String.trim(coffeeChosen),"Cappucino") == true) && (milk == 0 && coffee == 0)) do
      IO.puts "Your coffee will cost: #{coffee+milk+cappucino_price} lei, is that okay?"
    end

    if ((String.equivalent?(String.trim(coffeeChosen),"Cappucino") == true) && (milk != 0 || coffee != 0)) do
        IO.puts "Your coffee will cost: #{coffee+milk+cappucino_price} lei, is that okay?"
    end

    if ((String.equivalent?(String.trim(coffeeChosen),"Expresso") == true) && (milk == 0 && coffee == 0)) do
      IO.puts "Your coffee will cost: #{coffee+milk+expresso_price} lei, is that okay?"
    end

    if ((String.equivalent?(String.trim(coffeeChosen),"Expresso") == true) && (milk != 0 || coffee != 0)) do
        IO.puts "Your coffee will cost: #{coffee+milk+expresso_price} lei, is that okay?"
    end

    confirmOrder = IO.gets "Y/N: "
    if (String.equivalent?(String.trim(confirmOrder),"Y") == true) do
      IO.puts "Your order of #{String.trim(coffeeChosen)} will be served!"
    else
      IO.puts "Your order of #{String.trim(coffeeChosen)} was canceled!"
    end

  end
end
