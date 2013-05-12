class TimerController < UIViewController
  attr_reader :timer

  def viewDidLoad 
    margin = 20
    @dogshit = "poo"

    @state = UILabel.new
    @state.font = UIFont.systemFontOfSize(20)
    @state.text = 'Tap to Play'
    @state.textColor = UIColor(233,233,123)
    @state.backgroundColor = UIColor.clearColor
    @state.frame = [[margin,200], [view.frame.size.width - margin * 2, 40]]
    view.addSubview(@state)

    @action = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @action.setTitle('Start', forState:UIControlStateNormal)
    @action.setTitle('Stop', forState:UIControlStateSelected)
    @action.addTarget(self, action:'actionTapped', forControlEvents:UIControlEventTouchUpInside)
    @action.frame = [[margin, 260], [view.frame.size.width - margin * 2, 40]] 
    view.addSubview(@action)

    def actionTapped
      if @timer
        @timer.invalidate
        @timer = nil
      else
        @duration = 0
        @timer = NSTimer.scheduledTimerWithTimeInterval(0.10, target:self, selector:'timerFired', userInfo:nil, repeats:true)
      end
      @action.selected = !@action.selected?
    end
  end

  def timerFired 
    @state.text = @dogshit
  end
end
