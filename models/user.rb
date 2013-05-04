class User
  attr_accessor :id, :name
  @@mock_users = []

  def initialize (id, name)
    @id = id
    @name = name
  end

  class << self
    def all
      @@mock_users
    end

    def find_by_id (id)
      @@mock_users.each do |user|
        return user if user.id = id
      end
    end
  end

  def to_json(*a)
    {'id' => @id, 'name' => @name}.to_json(*a)
  end

end


##### creation of mock users #####
userA = User.new(1, 'Edmund')
userB = User.new(2, 'Sarah')
User.all << userA << userB
