
desc "Arrancar la aplicacion"
task :run do
	sh "ruby twitter.rb"
end

desc "Testing Sinatra"
task :default do
	sh "ruby ./test/test.rb"
end

desc "Instalar las gemas necesarias para la aplicacion"
task :install do
	sh "bundle install"
end
