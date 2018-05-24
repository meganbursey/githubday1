class Employee
    attr_accessor :name, :role, :location
    def initialize(name, role, location)
        @name, @role, @location = name, role, location
    end
end
def create_employee
    @current_employee = ""
    puts "What is your role?"
    @role = gets.chomp
    puts "What is your location?"
    @location = gets.chomp
    @current_employee = Employee.new(@name, @role, @location)
    @employees.push(@current_employee)
    puts "Welcome #{@current_employee.name}. Your account has been created.\n\n"
    edit_menu
end
def sign_in
    @current_employee = ""
    puts "To sign in, please provide your Last Name: "    
    name = gets.chomp.downcase
    employee_exits = false
    @employees.each do |employee|
        if name == employee.name
            employee_exits = true
            @current_employee = employee                
        end
    end
        
    if employee_exits
        edit_menu
    else
        puts "I'm sorry, but you are not in our records. Please create an account.\n"
        main_menu   
    end     
end
def view_employee
    puts "Your employee record:\n"
    puts "Employee Last Name:".ljust(20) + @current_employee.name
    puts "Employee Role:".ljust(20) + @current_employee.role
    puts "Employee Location:".ljust(20) + @current_employee.location
    puts "-"*40
    edit_menu
end
def edit_employee
    puts "Please select what you would like to change:"
    puts "1. Change my name"
    puts "2. Change my role"
    puts "3. Change my location"
    choice = gets.chomp.to_i
    case choice
    when 1
        puts "What is the new Last Name?"
        new_name = gets.chomp.downcase
        @current_employee.name =  new_name
        puts "Your new employee last name is #{new_name}.\n"
        edit_menu
    when 2
        puts "What is your new role?"
        new_role = gets.chomp.downcase
        @current_employee.role = new_role
        puts "Your new role is #{new_role}.\n"
        edit_menu
    when 3
        puts "What is your new location?"
        new_loc = gets.chomp.downcase
        @current_employee.location = new_loc
        puts "Your new location is #{@current_employee.location}.\n"
        edit_menu
    else
        puts "Invalid Choice. Please try again. \n\n"
        edit_employee
    end
end
def main_menu
    puts "Campwell Communications Employee System"
    puts "-"*20
    puts "Please select and option:"
    puts "1. Sign in to your employee record"
    puts "2. Create my employee record"
    choice = gets.chomp.to_i
    case choice
        when 1
            sign_in
        when 2
            puts "Please provide your Last Name: "    
            @name = gets.chomp.downcase     
            if @employees.empty?
                create_employee
            else
                employee_exits = false
                @employees.each do |employee|
                    if @name == employee.name
                        employee_exits = true
                        puts "There is already an account with that name. Please sign in."    
                        sign_in         
                    else
                        create_employee
                    end
                end
            end
        else
            puts "Invalid option. Please try again.\n"
            main_menu
    end
        
    if employee_exits
        edit_menu
    else
        puts "I'm sorry, but you are not in our records. Please create an account.\n"
        main_menu   
    end 
end
def edit_menu
    puts "Welcome to your employee system. What would you like to do?"
    puts "1.  Reveiw My Employee Record"
    puts "2.  Edit My Employee Record"
    puts "3.  Change my job location"
    puts "4.  Sign Out"
    choice = gets.chomp.to_i
    case choice
        when 1
            view_employee
        when 2
            edit_employee
        when 3
            edit_employee
        when 4
            puts "Make it a great day!  Goodbye.\n\n"
            main_menu
        else
            puts "Invalid Option. Please try again.\n\n"
            edit_menu
    end
end
@employees = []
main_menu

	