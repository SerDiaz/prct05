#! usr/bin/ruby
# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
attr_reader :x, :y
 def initialize(x,y)#x=numerador, y=denominador
  @x,@y=x, y
 end
 def to_s
  "#{@x}/#{@y}"
 end
 def *(obj)
  Fraccion.new(@x*obj.x, @y*obj.y) 
 end

 def /(obj)
  Fraccion.new(@x*obj.y, @y*obj.x) 
 end
end

a= Fraccion.new(1,2)
puts "#{a}"

b= Fraccion.new(5,3)
puts "#{b}"

c= a* b
puts "#{c}"

c= a/ b
puts "#{c}"
