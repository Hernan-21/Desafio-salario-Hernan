def nuevo_salario(salario, incremento)
  nuevo_salario = salario + (salario * (incremento.to_f / 100))
  nuevo_salario
end

# Ejemplo de uso
salario_actual = 50000
incremento = 5
puts "El nuevo salario es: #{nuevo_salario(salario_actual, incremento)}"


def adivina_el_numero(n)
  numero_computador = rand(1..n)
  intentos = 0
  loop do
    puts "Adivina un número entre 1 y #{n}:"
    numero_jugador = gets.to_i
    intentos += 1
    if numero_jugador == numero_computador
      puts "¡Felicidades! Adivinaste el número en #{intentos} intentos."
      break
    else
      puts "Número incorrecto. Intenta nuevamente."
    end
  end
end

# Ejemplo de uso
adivina_el_numero(10)


def calcular_imc(peso, altura)
  imc = peso / (altura ** 2)
  case imc
  when 0..18.4
    "Bajo peso"
  when 18.5..24.9
    "Normal"
  when 25..29.9
    "Sobrepeso"
  when 30..34.9
    "Obesidad grado I (Moderado)"
  when 35..39.9
    "Obesidad grado II (Severo)"
  else
    "Obesidad grado III (Muy severo)"
  end
end

# Ejemplo de uso
peso = 85
altura = 1.75
puts "Tu IMC es: #{calcular_imc(peso, altura)}"
