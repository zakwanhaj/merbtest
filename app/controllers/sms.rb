class Sms < Application

  # ...and remember, everything returned from an action
  # goes to the client...
  def index
    render
  end
  
  def sent
    render
  end

  def scheduled
    render
  end

  def change_number
    render
  end

end
