class SVG
  @@config = {}

  def self.add(key,value = {})
    @@config[key] = value
  end

  def self.addd(key, width, height, whiteicon = false)
    whiteicon = false if whiteicon.nil?
    self.add(key, {width: width, height: height, whiteicon: whiteicon})
  end

  def self.add_array(array)
    array.each do |a|
      self.addd(a[0],a[1],a[2],a[3])
    end
  end  

  def self.config
    @@config
  end
end


SVG.add_array([
  ['sliders',-1,30],
  ['sale',-1,30],
  ['stats-message', -1, 30],
  ['message',35,30],
  ['new-message',35,30],
  ['upload-photo', -1, 35]
])