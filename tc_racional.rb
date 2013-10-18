# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
 def test_simple
    assert_equal("2/3", Fraccion.new(2,3).to_s )
    assert_equal("3/4", Fraccion.new(3,4).to_s )
    assert_not_equal("7,6",Fraccion.new(1,2).to_s) 
    assert_not_equal("4,3",Fraccion.new(5,2).to_s) 
 end
end
