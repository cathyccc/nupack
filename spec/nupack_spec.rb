require "spec_helper"

describe Nupack::Markup do
  describe ".total" do
    # convert "$100,000.00" to float for calculation
    context "given '$100.00','1 person','food'" do
      it "should return '100.0'" do
        expect(Nupack::Markup.total('$100.00','1 person','food')).to eql(100.0)
      end
    end
  end
end
