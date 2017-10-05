# Part 1
def bubble_sort(array)
    num = array.length - 1

    loop do
        swap = false

        num.times do |x|
            if array[x] > array[x+1]
                array[x], array[x+1] = array[x+1], array[x]
                swap = true
            end
        end

        break if swap == false
    end
    array
end

x = [4,3,78,2,0,2]
bubble_sort(x)


# Part 2
def bubble_sort_by(array)
    num = array.length - 1

    loop do
        swap = false

        num.times do |x|
            if yield(array[x], array[x+1]) > 0
                array[x], array[x+1] = array[x+1], array[x]
                swap = true
            end
        end

        break if swap == false
    end
    array
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
 end