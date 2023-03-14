def balanced(str)
  stack = []
  pair = { '(' => ')', '[' => ']', '{' => '}' }
  str.chars.each do |char| #Каждый символ в строке перебирается в цикле
  if pair.keys.include?(char)
      stack.push(char) #Если символ является открывающей скобкой, он помещается в стек с помощью метода
    elsif pair.values.include?(char)
      if pair[stack.last] == char
        stack.pop # если соответствует закрывающей скобке, программа удаляет открывающую скобку из стека с помощью метода
      else
        return false # если значение pairs[stack.last] не соответствует закрывающей скобке, программа возвращает false
      end
    end
  end
  stack.empty? # в конце проверяем пустой ли наш стек и если да то значит последовательность скобок сбалансированная
end
# пример работы программы
puts balanced("(){}[]")     # true
puts balanced("([{}])")     # true
puts balanced("(}")         # false
puts balanced("[(])")       # false
puts balanced("[({})](]")   # false