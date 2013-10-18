#! usr/bin/ruby
# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
 def initialize(x,y)#x=numerador, y=denominador
  @x,@y=x, y
 end
 def to_s
  "#{@x}/#{@y}"
 end
end

a= Fraccion.new(1,2)
puts "#{a}"
