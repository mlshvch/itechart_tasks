
# task 1
def only_odd(array)
    pp "task #1 result: ", array.select { |number| number.odd? == false }
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
    string.gsub(/[[:punct:]]/, '').downcase.split().sort.map {|word| result.push(word.concat(": ", string.count(word).to_s))}
    pp result.uniq.join(", ")
end

def phone_number(string)
    pp string.match?(/^\+375\((17|29|33|44|25)\)[\d]{7}$/)
end

times = [['10:00', '10:20'], ['10:40', '11:00'], ["10:50", "12:00"], ["12:00", "13:00"], ['10:00', '10:20']]

def merge_time(times)
    times = times.uniq.sort
    i = 1
    while i > 0 do

        if times[i - 1][1] >= times[i][0] then
            times[i - 1] += times[i]
        end

        i += 1

        pp times

        if i == times.length then
            i = 1
        end
        times = times.uniq
    end

end

substr("a b c a d d d b, d")
