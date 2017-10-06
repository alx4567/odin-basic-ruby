module Enumerable
    def my_each
        index = 0 
        length = self.length

        length.times do
            yield(self[index])
            index += 1
        end
    end

    def my_each_with_index
        index = 0 
        length = self.length

        length.times do
            yield(self[index], index)
            index += 1
        end
    end

    def my_select
        my_array = []
        index = 0 
        length = self.length

        length.times do
            if yield(self[index]) == true
                my_array << self[index]
            end
            index += 1
        end
        puts my_array
    end

    def my_select
        my_array = []
        index = 0 
        length = self.length

        length.times do
            if yield(self[index])
                my_array << self[index]
            end
            index += 1
        end
        my_array
        # just for testing
        # puts my_array
    end

    def my_all?
        index = 0 
        length = self.length

        if block_given?
            length.times do
                if yield(self[index])
                    true
                else
                    false
                end
                index += 1
            end
        else
            false
        end
    end

    def my_any?
        index = 0 
        length = self.length

        if block_given?
            length.times do
                if yield(self[index])
                    true
                else
                    false
                end
                index += 1
            end
        else
            false
        end
    end

    def my_none?
        index = 0 
        length = self.length
        status = true

        if block_given?
            length.times do
                if yield(self[index])
                    status = false
                    break
                end
                index += 1
            end

            status
        else
            status
        end
    end

    def my_count
        index = 0
        length = self.length
        y = 0;

        if block_given?
            length.times do
                if yield(self[index])
                    y += 1
                end
                index += 1
            end
            y
        else
            length
        end
    end

    def my_map (&new_proc)
        index = 0
        length = self.length
        enum = self.to_a
        map_array = []

        if block_given?
            length.times do 
                map_array << yield(self[index])
                index += 1
            end
            map_array
        elsif new_proc
            map_array << new_proc(self[index])
            index += 1
        else
            puts "#<Enumerator:0x007fd6d1927908>"
        end
    end

    def my_inject(arg=nil)
		memo = memo || shift
		if !arg.nil? 
			if !arg.is_a? Symbol
				"#{arg} is not a symbol"
			else
				my_each { |i| memo = memo.send(arg, i) }
			end
		else
			if block_given?
				my_each { |i| memo = yield(memo,i) }
			else
				"no block given"
			end
		end
		memo
	end
end