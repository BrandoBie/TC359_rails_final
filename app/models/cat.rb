class Cat < ActiveRecord::Base
validates_presence_of :name
validates_format_of :age, with: /\A\d{1,2}\z/, message: "Incorrect age", allow_blank: true
validates_format_of :breed, with: /\D/, message: "Not a breed", allow_blank: true
end
