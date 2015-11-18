class Usuario < ActiveRecord::Base
	validates :nome, length: { maximum:45 }, :presence => true
	validates :email, length: { maximum:80 }, :presence => true
	validates :login, length: { in: 4..25 }, :presence => true
	validates :senha, length: { in: 4..10 }, :presence => true
end
