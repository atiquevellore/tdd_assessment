class StringCalculator
    def self.add(numbers)
       sum = 0;
       if numbers.strip.empty?
            0
       else
            numbers.split(/(,|\n)/).map{ |num| num.to_i == 0 ? next : sum+=num.to_i}
            sum
       end

    end
end