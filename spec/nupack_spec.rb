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
    context "given flat rate of '$10,000.00' and '1 person'" do
      it "should return 1.2% markup on new flat markup of 10500.00" do
        expect(Nupack::Markup.total("$10,000.00","1 person","food")).to eql(10626.0)
      end
    end

    context "given flat rate of '$1,299.99' and '80 aliens'" do
      it "should return 96% markup on new flat markup of 1364.99" do
        expect(Nupack::Markup.total("$1,299.99","80 aliens","food")).to eql(2675.38)
      end
    end

  end
end
