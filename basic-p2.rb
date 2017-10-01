def stock_picker(x)
    price = [0, 0]
    days = [0,0]

    # Compares buy values with sell values that come after buy index
    x[0..-2].each_with_index do |buy|
        x[0..-1].each_with_index do |sell|
            if sell - buy > price[1] - price[0]
                price[0] = buy
                price[1] = sell
                days[0] = x.index(buy)
                days[1] = x.index(sell)
            end
        end
    end

    # Converts days of integers to days of week
    weekdays = []
    days.each do |i|
        if i == 0
            i = "Sunday"
        elsif i == 1
            i = "Monday"
        elsif i == 2
            i = "Tueday"
        elsif i == 3
            i = "Wednesday"
        elsif i == 4
            i = "Thurday"
        elsif i == 5
            i = "Friday"
        else i == 6
            i = "Saturday"
        end
        weekdays << i
    end

    puts "Buy on #{weekdays[0]}"
    puts "Sell on #{weekdays[1]}"
end

stocks = [4, 2, 12, 56, 78, 12, 1]

stock_picker(stocks)