class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :role
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :assing_role

  def is_admin?
    self.role.name == 'Administrador'
  end

  def is_client? 
    self.role.name == 'Cliente'
  end

  def is_restaurant?
    self.role.name == 'Restaurantero'
  end

  private
  def assing_role
  	self.role = Role.find_by(name: 'Cliente')
  	self.save
  end
end
