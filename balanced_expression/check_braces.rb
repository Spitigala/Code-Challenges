def check_braces(expressions)
  stack = []
  counter = 0
  array = Array.new
  
  expressions.each do |expression|
    array.push(expression.split(""))
  end
    
  array.each do |symbols|
    symbols.each do |symbol|
      if symbol.match(/[{,(,\[]/)
        stack << symbol
        counter +=1
      elsif symbol == "}"
        if stack.pop == "{"
          counter -=1
        else 
          counter +=1
        end
      elsif symbol == ")" 
        if stack.pop == "("
          counter -=1
        else
          counter +=1
        end
      elsif symbol == "]"
        if stack.pop == "["
          counter -=1
        else counter +=1
        end
      else 
        counter +=1
      end
    end
    
    if counter == 0
      p "balanced!"
    else 
      p "unbalanced!"
    end

    stack.clear
    counter = 0
  end

end