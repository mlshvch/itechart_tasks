
# task 1
def only_odd(array)
    pp "task #1 result: ", array.select { |number| number.odd? == true }
end

# task 2

def average(array)
    pp "task #2 result: ", array.sum / array.count
end

def acronym(string)
    pp string.split().map {|word| word[0].upcase}.join
end

def substr(string)
    result = []
    string = string.gsub(/[[:punct:]]/, '').downcase.split().sort
    string.uniq.map {|word| result.push(word.concat(": ", string.count(word).to_s))}
    pp result.join(", ")
end



def phone_number(string)
    pp string.match?(/^\+375\((17|29|33|44|25)\)[\d]{7}$/)
end


def merge_time(times)
    times = times.sort.uniq 
    count = times.length + 1
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
            pp merge(times[0], times[1])
            return 
        end

    end
    pp times
end

times = [['10:00', '10:20'], ['10:40', '11:00'], ["10:50", "12:00"], ["12:00", "13:00"], ['10:00', '10:20']]

merge_time(times)