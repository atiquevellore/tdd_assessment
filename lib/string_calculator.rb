class StringCalculator
    def self.add(numbers)
       sum = 0;
       if numbers.strip.empty?
            0
       elsif numbers.split(',').any? {|num| num.to_i.negative?}
            raise StandardError,"negative numbers not allowed #{numbers}"
       else
            numbers.split(/(,|\n|;)/).map  do  |num| 
            if num.to_i == 0 
                next 
            elsif num.to_i > 1000
               next
            else
               sum+=num.to_i
            end
          end
            sum
       end
    end
end