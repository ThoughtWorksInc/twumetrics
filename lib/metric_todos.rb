class MetricTodos

  attr_reader :header

  def initialize header, sub_path
    @header = header
    @sub_path = sub_path
  end

  def cmd path, date
    "find #{path}/#{@sub_path} -name '*.java' | xargs grep '//TODO' | wc -l"
  end

end