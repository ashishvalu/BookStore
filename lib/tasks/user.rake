namespace :user do
  desc "email"
  task names: :environment do
    User.all.each do |user|
      puts user.email
      puts '---'
    end
  end
end
