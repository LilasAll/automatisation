
def check_folder_name
  abort("No folder name, please write the command like that : ruby ruby.rb FOLDER_NAME") if ARGV.empty?
 end

def create_file_ARGV 
	Dir.mkdir("#{ARGV.first}")
end

def create_Gemfile
	file = File.open("#{ARGV.first}/Gemfile", "w")
	file.puts("https://rubygems.org")
	file.puts("ruby '2.5.1'")
	file.puts("gem 'rspec'")
	file.puts("gem 'rubygems'")
	file.puts("gem 'git'")
end

def git_init
	Dir.chdir(ARGV.first){system('git init')}
end

def create_env
	file = File.open("#{ARGV.first}/.env", "w")
end

def create_gitignore
	file = File.open("#{ARGV.first}/.gitignore", "w")
	file.puts(".env")
end

def create_lib
	Dir.mkdir("#{ARGV.first}/lib")
end

def rspec_init
	Dir.chdir(ARGV.first){system('rspec --init')}
end

def read_me
	file = File.open("#{ARGV.first}/README", "w")
	file.puts("A Ruby program is a powerfull tool for developpers")
end

check_folder_name
create_file_ARGV
create_Gemfile
git_init
create_env
create_gitignore
create_lib
rspec_init
read_me

