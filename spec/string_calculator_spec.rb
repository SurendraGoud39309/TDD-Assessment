
require "string_calculator"

describe StringCalculator do

  describe '.add' do

    context "given an empty string" do
       it "return 0" do
          expect(StringCalculator.add("")).to eq(0)
       end
    end

    context "given '2'" do
      it "returns 2" do
        expect(StringCalculator.add("2")).to eql(2)
      end
    end

    context "given '7'" do
      it "returns 7" do
        expect(StringCalculator.add("7")).to eql(7)
      end
    end
    
    context "two numbers" do
      context "given '1,6'" do
        it "returns 7" do
          expect(StringCalculator.add("1,1,5")).to eql(7)
        end
      end
    end

    context "three numbers" do
      context "given '1\n1,6'" do
        it "returns 8" do
          expect(StringCalculator.add("1\n1,6")).to eql(8)
        end
      end
    end

    context "beginning of the string will contain a separate line //[delimiter]\n[numbers…] " do 
      context "given '//;\n1;2'" do
        it "returns 8" do
          expect(StringCalculator.add("//;\n1;2")).to eql(3)
        end
      end
    end

  end

end