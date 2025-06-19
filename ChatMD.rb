def run_local_chat
  messages = []
  print "Enter your name: "
  name = gets.chomp.strip
  name = 'Anonymous' if name.empty?
  loop do
    puts "\n--- Local Chat Menu (#{name}) ---"
    puts "1. View messages"
    puts "2. Send message"
    puts "3. Change name"
    puts "4. Exit"
    print "Choose what you want: "
    choice = gets.chomp
    case choice
    when "1"
      if messages.empty?
        puts "\nNo messages!"
      else
        puts "\n--- Message history ---"
        messages.each { |msg| puts msg }
      end
    when "2"
      print "Enter the text of the message: "
      text = gets.chomp
      messages << "[#{Time.now.strftime('%H:%M')}] #{name}: #{text}"
      puts "The message has been sent!"
    when "3"
      print "Enter a new name: "
      new_name = gets.chomp.strip
      name = new_name unless new_name.empty?
      puts "Name changed to #{name}!"
    when "4"
      puts "Goodbye!"
      break
    else
      puts "Wrong choice! Try again."
    end
  end
end

loop do
  puts "\n--- ChatMD Main Menu ---"
  puts "1. Host a server (create your own chat room)"
  puts "2. Connect as client (join a chat room)"
  puts "3. Local chat (offline mode)"
  puts "4. Exit"
  print "Choose mode: "
  mode = gets.chomp
  case mode
  when "1"
    exec('ruby', 'server.rb')
  when "2"
    exec('ruby', 'client.rb')
  when "3"
    run_local_chat
  when "4"
    puts "Goodbye!"
    break
  else
    puts "Wrong choice! Try again."
  end
end