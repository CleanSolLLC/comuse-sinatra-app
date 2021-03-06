require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

#allows for patch and delete
use Rack::MethodOverride

use UsersController
run ApplicationController
