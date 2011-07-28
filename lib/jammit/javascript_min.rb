require 'jsmin'

class Jammit::JavascriptMin
  def compress(args)
    return JSMin.minify(args)
  end
end