continue = true
developers = Array.new
while continue == true
    puts "Good day, please enter your name:"
    name = gets.strip
    puts "Please enter your age:"
    age = gets.strip

    puts "Now, it's time to enter your skills:"    
    continue_skills_loop = true
    skills_array = Array.new    
    while continue_skills_loop == true
        puts "Please type the skill:"
        skill = gets.strip
        skills_array << skill

        puts "Do you want to add another skill? (y/n)"
        continue_loop = gets.strip
        if continue_loop == 'n' || continue_loop == 'N'
            continue_skills_loop = false
        elsif continue_loop != 'y' && continue_loop != 'Y' && continue_loop != 'n' && continue_loop != 'N'
            puts "Wrong answer, record insert will terminate."
            break
        end
        
    end


    puts "Now, it's time to enter your friends:"
    friends = Array.new
    friends_continue = true
    while friends_continue == true
        puts "Please your friend's name:"
        friend = gets.strip
        friends << friend

        puts "Do you want to add another friend? (y/n)"
        continue_loop = gets.strip
        if continue_loop == 'n' || continue_loop == 'N'
            friends_continue = false
        elsif continue_loop != 'y' && continue_loop != 'Y' && continue_loop != 'n' && continue_loop != 'N'
            puts "Wrong answer, record insert will terminate."
            break
        end
        
    end

    
    developers << {name: name, age: age.to_i, skills: skills_array, friends: friends}    
    puts "Do you want to add another developer? (y/n)"
    continue_response = gets.strip
    if continue_response == 'n' || continue_response == 'N'
        continue = false
    end
end

developers.each do |developer|
    puts "#{developer[:name]} is a developer of #{developer[:age]} years old with #{developer[:friends].count} friends and is able to #{developer[:friends]}"
end