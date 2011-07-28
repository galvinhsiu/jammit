class Jammit::JSMin
  def compile(args)
    return ::JSMin.minify(args)
  end
end