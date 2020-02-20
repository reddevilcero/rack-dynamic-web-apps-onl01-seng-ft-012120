class Application

  def call(env)
    resp = Rack::Response.new
    resp.write self.slot_machine
    resp.finish
  end

  def slot_machine
    num1 = Kernel.rand(1..2)
    num2 = Kernel.rand(1..2)
    num3 = Kernel.rand(1..2)
  
    if num1 == num2 && num2 == num3
      "#{num1} - #{num2} - #{num3} 'You Win.'"
    else
      "#{num1} - #{num2} - #{num3} 'You Lose.'"
    end
  end

end
