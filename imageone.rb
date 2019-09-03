class Image
  attr_accessor :my_display
  
  def initialize(display)
   @my_display = display
  end
  
  def output_image
    @my_display.each_with_index do | row, index |

      # HINT: you can also use row.each_with_index....this will help in Image Blur 2
      row.each_with_index do | pixel, x |
        print "#{@my_display[index][x]} "
      end

      # print new line after each row
      print "\n" 

    end
  end
end

image = Image.new([
  [0, 0, 0, 0], 
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image()