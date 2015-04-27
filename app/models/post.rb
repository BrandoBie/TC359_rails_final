class Post < ActiveRecord::Base
  self.per_page = 10
  
  def self.search(search, page)
    if search
      paginate :conditions => ['body LIKE ?', "%#{search}%"],
      :per_page => 10,
      :order => 'created_at',
      :page => page,
      :total_entries => 10
      
      #find(:all, :conditions => ['body LIKE ?', "%#{search}%"])
    else
      paginate :conditions => ['body LIKE ?', "% %"],
      :per_page => 10,
      :order => 'created_at',
      :page => page,
      :total_entries => 10
    
      #find(:all)
    end
  end
end
