require 'rspec'

class Bubble
  def initialize(array)
    @array = array

  end

  def sort
    p "Starting Sort"
    length = @array.length
    p "Array length: #{@array.length}"
    loop do
      p "Loop Started"
      is_swapped = false # assume we need no swap yet
      p "Is Swapped? #{is_swapped}"
      (length-1).times do |i|
        p "Interior Loops inside of loop has started"
        p "incrementor: #{i}"
        # keep looping through the elements
        if (@array[i] > @array[i+1]) # compare pairs
          # if so, we just swap values
          @array[i], @array[i+1] = @array[i+1], @array[i]
          # and let ourselves know
          is_swapped = true
          p "Swapped pair #{@array[i]} with #{@array[i+1]}"
        end
      end
      break if not is_swapped # break the loop if is_swapped == false
    end
    return @array # return our slowly sorted array
  end
end

nums = [6, 42, 13, 1, 409]

sorted_nums = Bubble.new(nums).sort
# sorted_nums = 1, 6, 13, 42, 409


describe Bubble do
  it "should be sorted" do
    sorted_nums = [1, 6, 13, 42, 409]
  end
end
