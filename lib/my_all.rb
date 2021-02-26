# require 'pry'
a = [1,2,3,4]

def my_all?(collection)
    if block_given?
        i=0
        values_returned = []
        while i < collection.length
            values_returned << yield(collection[i])
            i += 1
        end
        # p values_returned

        if values_returned.include?(false)
            false
        else
            true
        end
    else
        puts 'No block given!'
    end
end

my_all?(a) {|x| x < 2}