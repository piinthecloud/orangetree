# class OrangeGrove
#   attr_accessor :orangetree

  # def initialize
  #   @orangetree = orangetree
  # end

  class OrangeTree
    attr_accessor :age, :orangecount, :finalcount

    def initialize
      @age = 0
      @orangecount = 0
    end

    def height
      @height = 10
      puts "Your tree is now #{@height} feet tall"
    end

    def one_year_passes
      if @age <= 13
        @age = @age + 1
        @height = @height + 2
        puts "A year has passed. Your tree is #{age} years old and #{@height} feet tall."
      else
        puts "Your tree is too old do anything"
      end
    end

    def count_the_oranges
      if @age <= 5
        @orangecount = 100
      elsif @age > 5
        @orangecount = 200
      end
      if @age >= 13
        @orangecount = 0
      end
      puts "=>It has #{@orangecount} oranges."
    end

    def pickanorange
      if @age >= 1 && @age < 13
        @orangecount = @orangecount - rand(100)
        puts "  =>Those were some great oranges. You have now #{@orangecount}"
        if @orangecount < 0
          puts "Sorry, you're out of oranges."
        end
      end
    end
  end
#end

o = OrangeTree.new
o.height


while o.age < 14
  o.one_year_passes
  o.count_the_oranges
  o.pickanorange
end


if o.one_year_passes == true
  o.orangecount = 0
end
