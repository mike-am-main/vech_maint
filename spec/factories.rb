# revised factories
# created the associations from the join table only

FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}   
    password "foobar"
    password_confirmation "foobar"

    factory :non_admin do
      admin false
    end
    factory :admin do
      admin true
    end
  end

  Factory.define(:vehicle) do |vehicle|
    vehicle.license_plate "TEST"
    vehicle.model "Ford"
    vehicle.make "F250"
  end

  # join table factory - :uservehicle
  Factory.define(:uservehicle) do |uservehicle|
    uservehicle.association :user
    uservehicle.association :vehicle
  end 
end
