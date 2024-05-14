require "string_calculator"
describe StringCalculator do
    context "add method can take up to two numbers" do
        it "returns their sum" do
            expect(StringCalculator.add("1,2")).to eq(3)  
        end

        it "returns 0 if the numbers is an empty string" do 
            expect(StringCalculator.add("    ")).to eq(0)
        end
    end

    
end
