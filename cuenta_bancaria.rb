def encuentra_numero_cuenta?(string)
  expresion = /(\d{4})-(\d{3})-(\d{3})/
  m = expresion.match(string)
  if m
    true
  end
end

def regresa_numero(string)
  expresion = /(\d{4})-(\d{3})-(\d{3})/
  m = expresion.match(string)
  if m
    m[0]
  end
end

def regresa_array(string)
  m = string.scan(/\d{4}-\d{3}-\d{3}/)
end

def remplaza_x(string)
  expresion = /(\d{4})-(\d{3})-(\d{3})/
  m = expresion.match(string)
  if m
    string.gsub /(\d{4})-(\d{3})-/, "XXXX-XXX-"
  end
end

def formateado(string)
  if /(\d{4}).(\d{3}).(\d{3})/.match(string)
      string.gsub /(\d{4}).(\d{3}).(\d{3})/, '\1-\2-\3'
  elsif /(\d{10})/.match(string)
    
      string.gsub /(\d{4})(\d{3})(\d{3})/, '\1-\2-\3'
  else
  "Invalid"
  end
end

p encuentra_numero_cuenta?("1234-345-678") == true

p regresa_numero("cuenta 1: cuenta2: 1234-456-789") == "1234-456-789"

p regresa_array("cuenta 1: cuenta2: 1234-456-789") == ["1234-456-789"]

p remplaza_x("cuenta 1: cuenta2: 1234-456-789") == "cuenta 1: cuenta2: XXXX-XXX-789"

p formateado("1234345678") == "1234-345-678"

p formateado("1234.567.897") == "1234-567-897"

p formateado("23423456") == "Invalid"

