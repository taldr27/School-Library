require_relative './cases'
require_relative './interface'
class Main
  app = Cases.new
  app.run
end

main
