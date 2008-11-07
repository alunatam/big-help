class Ticket < ActiveRecord::Base
  TOKEN_LENGTH = 8
  
  validates_presence_of     :email, :name, :body
  
  before_create :generate_token
  
  
  
  private
  
    def generate_token
      if (temp_token = random_token) and self.class.find_by_token(temp_token).nil?
        self.token = temp_token
      else
        generate_token
      end
    end
    
    def random_token
      characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890'
      temp_token = ''
      srand
      TOKEN_LENGTH.times do
        pos = rand(characters.length)
        temp_token += characters[pos..pos]
      end
      temp_token.upcase
    end
  
end
