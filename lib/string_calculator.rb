class StringCalculator
    def self.add(numbers)
       sum = 0;
       if numbers.strip.empty?
            0
       else
            numbers.split(",").map{|num| sum+=num.to_i}
            sum
       end

    end
end