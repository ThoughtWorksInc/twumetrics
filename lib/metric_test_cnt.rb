class MetricTestCnt

  attr_reader :header

  def initialize header, test_path
    @header = header
    @test_path = test_path
  end

  def cmd path, date
    return "grep -r --exclude=\"*\.svn*\" @Ignore #{path}/src/test/java/* | wc -l" if @test_path.eql?("test")
    
    "grep -r --exclude=\"*\.svn*\" @Test #{path}/src/test/java/#{@test_path}/* | wc -l"
  end

end