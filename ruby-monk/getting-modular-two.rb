module Dojo
  A = 4
  module Kata
  	B = 8
    module Roulette
      class ScopeIn
        def push
          15
        end
      end
    end
  end
end

A = 16
B = 23
C = 42

puts "A - #{A}"
puts "Dojo::A - #{Dojo::A}"

puts

puts "B - #{B}"
puts "Dojo::Kata::B - #{Dojo::Kata::B}"

puts

puts "C - #{C}"
puts "Dojo::Kata::Roulette::ScopeIn.new.push - #{Dojo::Kata::Roulette::ScopeIn.new.push}"

module RubyMonk
  module Parser
    class TextParser
      def self.parse(text)
        # define method
        a = text.upcase.split("")
      end
    end
  end
end

module Kata
  A = 5
  module Dojo
    B = 9
    A = 10
    
    class ScopeIn
      def push
        A
      end
    end
  end
end

A = 10

p Kata::Dojo::ScopeIn.new.push