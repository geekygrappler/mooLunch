class Lunch < ActiveRecord::Base
    has_many :options
    has_many :orders
end
