require "spec_helper"

describe Nupack::Markup do
  describe ".total" do
    # convert "$100,000.00" to float for calculation
    # context "given '$100.00'" do
    #   it "should return '100.0'" do
    #     expect(Nupack::Markup.total('$100.00','1 person','food')).to eql(100.0)
    #   end
    # end

    # new flat markup = base price times 5%
    # for each person that needs to work on the job, there is a markup of 1.2%
    # material markup: pharmaceuticals = 7.5%, food = 13%, electronics = 2%, else = 0%
    context "given flat rate of '$10,000.00','1 person' and 'food'" do
      it "should return 1.2% markup and 13% markup on new flat markup of 10500.00" do
        expect(Nupack::Markup.total("$10,000.00","1 person","food")).to eql(11991.0)
      end
    end

    context "given flat rate of '$1,299.99','80 aliens' and 'electronics'" do
      it "should return 96% markup and 2% markup on new flat markup of 1364.99" do
        expect(Nupack::Markup.total("$1,299.99","80 aliens","electronics")).to eql(2702.68)
      end
    end

    context "given input '$1,299.99','3 people','food'" do
      it "should return '1591.58'" do
        expect(Nupack::Markup.total("$1,299.99","3 people","food")).to eql(1591.58)
      end
    end

    context "given input '$5,432.00','1 person','drugs'" do
      it "should return '6199.81'" do
        expect(Nupack::Markup.total("$5,432.00","1 person","drugs")).to eql(6199.81)
      end
    end
  end
end
