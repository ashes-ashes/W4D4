class Array

  def my_uniq 
    hash = Hash.new(0)
    self.each { |el| hash[el] = true  }
    hash.keys
  end

  def two_sum
    pairs = []
    (0...length-1).each do |idx1|
      (idx1+1...length).each do |idx2|
        pairs << [idx1, idx2] if self[idx1] + self[idx2] == 0
      end
    end
    pairs
  end

  def my_transpose
    rows = self.length
    columns = self[0].length
    transposed = Array.new(columns) { [] }
    (0...columns).each do |column_index|
      (0...rows).each do |row_index|
        transposed[column_index] << self[row_index][column_index]
      end
    end
    transposed
  end

  def stock_picker
    hash = {}
    (0...length-1).each do |idx1|
      (idx1+1...length).each do |idx2|
        difference = self[idx2] - self[idx1]
        pair = [idx1, idx2]
        hash[difference] = pair if difference > 0
      end
    end
    hash[hash.keys.max] 
  end

end