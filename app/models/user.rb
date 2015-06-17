class User < ActiveRecord::Base
  rolify :role_cname => 'Roler'
  after_create :default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         private
       	def default_role
       	    self.add_role "admin"
       	    self.save
        end
end
