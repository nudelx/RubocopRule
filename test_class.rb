class Test
  def initialize
    @html = 'Empty'
  end

  def print
    @html = '<script> alert("test")</script>'.html_safe
    puts @html
  end

  def oopsBlya
    @html = '<script> alert("test")</script>'.html_safe
    puts @html
  end
end

Test.new.print
