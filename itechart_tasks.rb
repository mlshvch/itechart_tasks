
# task 1
def only_odd(array)
    array.select { |number| number.odd? }
end

# task 2

def average(array)
    array.sum / array.count
end

# task 3

def acronym(string)
    string.split().map {|word| word[0].upcase}.join
end

#task 4

def substr(string)
    result = []
    string = string.gsub(/[[:punct:]]/, '').downcase.split().sort
    string.uniq.map {|word| result.push(word.concat(": ", string.count(word).to_s))}
    result.join(", ")
end


#task 5
def phone_number(string)
    string.match?(/(^\+375\((17|29|33|44|25)\)|^80(17|29|33|44|25))[\d]{7}$/)
end

#task 6

def intersect(array1, array2)
    if array1[1] >= array2[0] then
        true
    else
        false
    end
end


def merge(array1, array2)
    if array1[1] >= array2[0] then
        array1 += array2
        [array1.min, array1.max]
    else
        [array1, array2]
    end
end


def merge_time(times)
    times = times.sort.uniq 
    count = 1
    while times.length > 1 && count > 0 do
        i = 1
        while i < times.length - 1 do
            if intersect(times[-i - 1], times[-i]) then
                times[-i - 1] = merge(times[-i - 1], times[-i])
                times.delete_at(-i)
                i += 2
                count += 1
            else 
                i += 1
                count -= 1
            end
        end

        if times.length == 2 then
            return merge(times[0], times[1]) 
        end

    end
    times
end

times = [['10:00', '10:20'], ['14:00', '15:00'], ['10:40', '11:00'], ["10:50", "12:00"], ["12:00", "13:00"], ['10:00', '10:20']]

pp phone_number("+375(29)1234567")
