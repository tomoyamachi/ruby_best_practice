require "rspec"

class ParseLine
  def parse_inline_style(text)
    [text]
  end
end

describe ParseLine do
  before do
    @parse = ParseLine.new
  end
  it "#parse_inline_style return plain text" do
    @parse.parse_inline_style("Hello World").should == ["Hello World"]
  end

  it "#parse_inline_style return <bi> text" do
    @parse.parse_inline_style("Hello <b>Fine</b> World").should == ["Hello ","<b>","Fine","</b>"," World"]
  end
end

