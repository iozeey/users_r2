json.extract! user, :id, :username,:description, :firstName, :lastName, :maidenName, :age, :gender, :email, :phone, :username, :password, :birthDate, :image, :bloodGroup, :height, :weight, :eyeColor, :domain, :ip, :macAddress, :university, :ein, :ssn, :userAgent,:hair, :address, :bank, :company,  :created_at, :updated_at
json.url user_url(user, format: :json)
 
