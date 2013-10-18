#! usr/bin/ruby
# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"
require "./minimo.rb"


class Fraccion
attr_reader :x, :y
 def initialize(x,y)#x=numerador, y=denominador
  @x,@y=x, y
 end
 def to_s
  "#{@x}/#{@y}"
 end
 def *(obj)
  mul=Fraccion.new(@x*obj.x, @y*obj.y)
  simp(mul) 
 end

 def /(obj)
  div=Fraccion.new(@x*obj.y, @y*obj.x) 
  simp(div)
 end
 
 def +(obj)
  min=minimo(@y,obj.y)
  suma=Fraccion.new(((min/@y)*@x+(min/obj.y)*obj.x),min) 
  simp(suma)
 end


 def -(obj)
  min=minimo(@y,obj.y)
  res=Fraccion.new(((min/@y)*@x-(min/obj.y)*obj.x),min) 
  simp(res)
 end

 def simp(obj)
  max=gcd(obj.x,obj.y)
  Fraccion.new(obj.x/max,obj.y/max)

 end

end

a= Fraccion.new(2,5)
puts "#{a}"

b= Fraccion.new(8,2)
puts "#{b}"

c= a* b
puts "#{c}"

c= a/ b
puts "#{c}"

c= a+ b
puts "#{c}"

c= a- b
puts "#{c}"


