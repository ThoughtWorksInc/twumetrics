module SvnHelper

  def self.revertTo path, date
    "svn update #{path} -r {#{date}}"
  end


end