require "spec_helper"

describe Nupack::Markup do
  describe ".total" do
    # convert "$100,000.00" to float for calculation
    # context "given '$100.00'" do
    #   it "should return '100.0'" do
    #     expect(Nupack::Markup.total('$100.00','1 person','food')).to eql(100.0)
    #   end
    # end

    # markup flat rate by 5%
    context "given flat rate of '$10,000.00'" do
      it "should return '10500.00'" do
        expect(Nupack::Markup.total("$10,000.00","1 person","food")).to eql(10500.0)
      end
    end

    context "given flat rate of '$1,299.99'" do
      it "should return '1364.99'" do
        expect(Nupack::Markup.total("$1,299.99","1 person","food")).to eql(1364.99)
      end
    end

  end
end
