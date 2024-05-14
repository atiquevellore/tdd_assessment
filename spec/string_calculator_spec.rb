require "string_calculator"
describe StringCalculator do
    context "add method can take up to two numbers separated by commas" do
        it "returns their sum" do
            expect(StringCalculator.add("1,2")).to eq(3)  
        end

        it "returns 0 if the numbers is an empty string" do 
            expect(StringCalculator.add("    ")).to eq(0)
        end

        it "returns their sum with unknown amount of numbers" do
            expect(StringCalculator.add("1,2,3,4" * 500)).to eq(22964)
        end
    end

    context "add method to handle new lines between numbers" do
        it "returns their sum" do
            expect(StringCalculator.add("1\n2,3")).to eq(6)
        end

        it "support multiple delimeters and return their sum" do
            expect(StringCalculator.add("//;\n1;2")).to eq(3)
        end
    end

    
end
