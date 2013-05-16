class FirstViewController < ContentViewController
  
  def loadView
     self.view = UIView.alloc.init
     self.title = 'First Controller'
     
     navigationItem.leftBarButtonItem = UIBarButtonItem.alloc.initWithTitle("Menu", style:UIBarButtonItemStylePlain, target:self, action:"slideMenuButtonTouched")
     navigationItem.rightBarButtonItem = UIBarButtonItem.alloc.initWithTitle("Push", style:UIBarButtonItemStylePlain, target:self, action:"pushThird")

  end

  def viewDidLoad
    view.backgroundColor = UIColor.whiteColor

    @location = 90210
    @result = 'test'  
    posLeft = 20 
    width = (self.view.size.width - (posLeft*2))

    @text_field = UITextField.alloc.initWithFrame([[90,50], [width, 80]])
    @text_field.placeholder = "#abcabc"
    @text_field.textAlignment = UITextAlignmentCenter
    @text_field.autocapitalizationType = UITextAutocapitalizationTypeNone
    @text_field.borderStyle = UITextBorderStyleRoundedRect
    self.view.addSubview(@text_field)

    Square.get_geo()

    Square.find(@location) do |color|
      if color.nil?
        @result = color
      else
        @result = color
      end
    end
    
    label = UILabel.alloc.initWithFrame([[20,0],[150,50]])
    label.text = @result
    self.view.addSubview(label)
  end
  
  
  def pushThird
    third = ThirdViewController.alloc.init if @third == nil
    navigationController.pushViewController(third, animated:true)    
  end

end
