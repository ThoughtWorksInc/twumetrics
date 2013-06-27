class MetricTestCnt

  attr_reader :header

  def initialize header, test_path
    @header = header
    @test_path = test_path
  end

  def cmd path, date
    grepCmd = "grep -r --exclude=\"*\.svn*\""
    
    return grepCmd +" @Ignore #{path}/src/test/java/* | wc -l" if @test_path.eql?("test")
    grepCmd + " @Test #{path}/src/test/java/#{@test_path}/* | wc -l"
  end

end