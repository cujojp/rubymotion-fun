module SquareDataController 

  #define some defaults
  class JSONStream
    DEFAULTS = {
      :path => '/venus/explore',
      :host => 'https://api.foursquare.com/v2/',
      :token => 'Q0NVZFNCP2R4I2KAPUR1LOL2SVJGKRSICZJEBQ5FT5REYB2Y'
    }

    def initialize options = {}
      @options = DEFAULT_OPTIONS.merge(options)
    end

     def twitter_search_results
      query = @twitter_accounts.map{ |account| "from:#{account}" }.join(" OR ")
      query = 'near=94103'
      url_string = @options[:host], @options[:path], query
      #url_string_escaped = url_string.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
      #url = NSURL.URLWithString(url_string_escaped)
      #request = NSURLRequest.requestWithURL(url)
      #response = nil
      #error = nil
      #data = NSURLConnection.sendSynchronousRequest(request, returningResponse: response, error: error)
      ###raise "BOOM!" unless (data.length > 0 && error.nil?)
      #json = NSString.alloc.initWithData(data, encoding: NSUTF8StringEncoding)
    end

    def self.get_locations options = {}

      #json_string = twitter_search_results.dataUsingEncoding(NSUTF8StringEncoding)
      #e = Pointer.new(:object)
      #json_hash = NSJSONSerialization.JSONObjectWithData(json_string, options:0, error: e)
      #json_hash["results"].each do |result|
        #@tweets << Tweet.new(result)
      #end

    end

  end

end
