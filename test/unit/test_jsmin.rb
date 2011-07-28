require 'test_helper'

class JsminText < Test::Unit::TestCase

  def setup
    Jammit.load_configuration('test/config/assets-jsmin.yml').reload!
    @compressor = Compressor.new
  end

  def teardown
    Jammit.load_configuration('test/config/assets.yml').reload!
  end

  def test_javascript_compression
    packed = @compressor.compress_js(glob('test/fixtures/src/*.js'))
    assert packed.strip == File.read('test/fixtures/jammed/js_test-jsmin.js').strip
  end

  def test_jst_compilation
    packed = @compressor.compile_jst(glob('test/fixtures/src/*.jst'))
    assert packed == File.read('test/fixtures/jammed/jst_test.js')
  end

end