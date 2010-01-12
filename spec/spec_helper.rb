require 'rubygems'
require 'spec'
require 'active_support'
require 'active_record'
# require 'action_controller'
# require 'action_view'
require File.dirname(__FILE__) + '/../lib/misc_validators.rb'
 
# ActiveRecord setup ===========================================================

ActiveRecord::Base.establish_connection({
    :adapter => 'sqlite3',
    :dbfile => 'test.db'
})

ActiveRecord::Schema.define do
  create_table "users", :force => true do |t|
    t.column "email", :string
  end
  
  create_table "bookmarks", :force => true do |t|
    t.column "url", :string
  end
end

# Utils models =================================================================

class User < ActiveRecord::Base  
  validates_email :email
end

class Bookmark < ActiveRecord::Base  
  validates_url :url
end
