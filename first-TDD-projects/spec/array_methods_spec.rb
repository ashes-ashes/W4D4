require "array_methods"

RSpec.describe Array do
  
  describe "#my_uniq" do
    subject(:array) { [ 3, 3 ,1, 2, 1] }

    it "returns only uniq elements" do
      expect(array.my_uniq).to contain_exactly(1,2,3)
    end

    it "returns all elements in the original order" do
      expect(array.my_uniq).to eq([3,1,2])
    end
  end

  describe "#two_sum" do
    subject(:array) { [ -1, 0, 2, -2, 1] }

    it "returns a 2D array with pairs of indices that sum to zero" do
      expect(array.two_sum).to contain_exactly([0, 4], [2, 3])
    end

    it "returns pairs in dictionary order" do
      expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end

  end

  describe "#my_transpose" do
    subject(:array) { [[0, 1, 2],[3, 4, 5],[6, 7, 8]] }
    subject(:transposed_array) { [[0, 3, 6],[1, 4, 7],[2, 5, 8]] }

    it "returns a transposed array" do
      expect(array.my_transpose).to eq(transposed_array)
    end

  end

  describe "#stock_picker" do
    subject(:prices) { [232, 737, 828, 123, 282, 93] }

    it "returns a pair of days" do
      expect(prices.stock_picker.length).to eq(2)
      # expect(prices.stock_picker.length).to eq(2)      
    end

    it "returns the most profitbale pair" do
      expect(prices.stock_picker).to eq([0, 2])
    end

    it "returns sell date that is after the buy date" do
      expect(prices.stock_picker[0]).to be < prices.stock_picker[1]
    end
  end

end

