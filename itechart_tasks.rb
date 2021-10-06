
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

times = [['10:00', '10:20'], ['10:40', '11:00'], ["10:50", "12:00"], ["12:00", "13:00"], ['10:00', '10:20']]

def merge_time(times)
    times = times.uniq.sort
    len = times.length
    result = []
    while true do
        (0..times.length - 2).each { |i|
            if (times[i][1] >= times[i+1][0])
                result << [(times[i] + times[i+1]).sort.min, (times[i] + times[i+1]).sort.max]
                len -= 1
                i += 1
            else
                result << times[i]
            end
        }
        break if (result.flatten.max != times.flatten.max)
        
        pp result
        
    merge_time(result)
    end
end


substr("I love love you Ruby Ruby")