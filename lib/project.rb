class Project
  
  attr_reader :title
  attr_accessor :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def backers
    @backers 
  end
  
  def add_backer(backer)
    @backers << backer
    if ! backer.backed_projects.include?(self) 
      backer.backed_projects(self)
    end
  end
end