## Numeros arabigos a romanos
## Fase 1 Lunes 6 de Junio 2016
## HSP y MRM

def to_roman(num)
  string = ""
  while num > 0
    case true
    when num % 1000 < num
      q = num.divmod(1000)[0]
      r = num.divmod(1000)[1]
      string << "M" * q
      num = r

     when num % 900 < num
      q = num.divmod(900)[0]
      r = num.divmod(900)[1]
      string << "CM" * q
      num = r

    when num % 500 < num
      q = num.divmod(500)[0]
      r = num.divmod(500)[1]
      string << "D" * q
      num = r

    when num % 400 < num
      q = num.divmod(400)[0]
      r = num.divmod(400)[1]
      string << "CD" * q
      num = r

    when num % 100 < num
      q = num.divmod(100)[0]
      r = num.divmod(100)[1]
      string << "C" * q
      num = r

    when num % 90 < num
      q = num.divmod(90)[0]
      r = num.divmod(90)[1]
      string << "XC" * q
      num = r

    when num % 50 < num
      q = num.divmod(50)[0]
      r = num.divmod(50)[1]
      string << "L" * q
      num = r

    when num % 40 < num
      q = num.divmod(40)[0]
      r = num.divmod(40)[1]
      string << "XL" * q
      num = r

    when num % 10 < num
      q = num.divmod(10)[0]
      r = num.divmod(10)[1]
      string << "X" * q
      num = r

    when num % 9 < num
      q = num.divmod(9)[0]
      r = num.divmod(9)[1]
      string << "IX" * q
      num = r
    
    when num % 5 < num
      q = num.divmod(5)[0]
      r = num.divmod(5)[1]
      string << "V" * q
      num = r

    when num % 4 < num
      q = num.divmod(4)[0]
      r = num.divmod(4)[1]
      string << "IV" * q
      num = r

    when num % 1 < num
      q = num.divmod(1)[0]
      r = num.divmod(1)[1]
      string << "I" * q
      num = r
    end   
  
  end
  string 
end


p a = to_roman(1) == "I"
p b = to_roman(3) == "III"  
p c = to_roman(4) == "IV"
p d = to_roman(9) == "IX"
p e = to_roman(13) == "XIII"
p f = to_roman(14) == "XIV"
p g = to_roman(944) == "CMXLIV"
p h = to_roman(1453) == "MCDLIII"
p i = to_roman(1646) == "MDCXLVI"


puts "|valid |input | expected | actual"
puts "|------|------|----------|-------"
puts "| #{a} |1     | I        | #{to_roman(1)}"
puts "| #{b} |3     | III      | #{to_roman(3)}"
puts "| #{c} |4     | IV       | #{to_roman(4)}"
puts "| #{d} |9     | IX       | #{to_roman(9)}"
puts "| #{e} |13    | XIII     | #{to_roman(13)}"
puts "| #{f} |14    | XIV      | #{to_roman(14)}"
puts "| #{g} |944   | CMXLIV   | #{to_roman(944)}"
puts "| #{h} |1453  | MCDLIII  | #{to_roman(1453)}"
puts "| #{i} |1646  | MDCXLVI  | #{to_roman(1646)}" 