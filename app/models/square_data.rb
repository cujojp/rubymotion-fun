class Square

  #define some defaults
  DEFAULTS = {
    :path => 'venus/explore',
    :host => 'https://api.foursquare.com/v2/',
    :token => ''
  }

  PROPERTIES = [:timestamp, :hex, :id, :tags]
  PROPERTIES.each { |prop|
    attr_accessor prop
  }      

  def initialize(hash = {})
    hash.each { |key, value|
      if PROPERTIES.member? key.to_sym
        self.send((key.to_s + "="), value)
      end
    }
  end

  def self.get_geo()

    BW::Location.get do |result|
      BW::Location.stop
      @latitude = result[:to].latitude
      @longitude = result[:to].longitude

      @@geolocation = {
        :lattitude => @latitude, 
        :@longitude => @longitude
      }
    end
  end


  def self.find(query, &block)

    if @latitude && @longitude
      query = "?ll=#{@latitude},#{@longitude}"
    end

    puts "#{@geolocation}".green

    @host = DEFAULTS[:host]
    @path = DEFAULTS[:path]
    @token = DEFAULTS[:token]

    BW::HTTP.get("http://www.colr.org/json/color/#{query}") do |response|
      result_data = BW::JSON.parse(response.body.to_str)
      color_data = result_data["colors"][0]
      puts "#{@host}#{@path}".red

      color = Square.new(color_data)
      block.call(color)
    end #end BW

    return

  end # endfind

end
