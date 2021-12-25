# Example:
# rake "currency:create[Egyptian Pound, EGP]"

namespace :currency do
  desc "Create currency with name and code"
  task :create, [:name, :code] => [:environment] do |task, args|
    Currency.create(name: args[:name], code: args[:code])
  end
end
