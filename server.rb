require 'socket'

# Ask user for port
print "Enter port to host the server (default: 3000): "
port = gets.chomp.strip
port = port.empty? ? 3000 : port.to_i

puts "[INFO] If you want people to connect from the internet, forward this port on your router."
puts "[INFO] To find your public IP, visit: https://icanhazip.com/ or similar."

# Array to store all connected clients
clients = []

# Start TCP server on port 3000
server = TCPServer.new(port)
puts "[Server] Chat server started on port #{port}. Waiting for clients..."

loop do
  # Accept new client
  client = server.accept
  clients << client
  Thread.new(client) do |conn|
    conn.puts "Welcome to ChatMD! Enter your name:"
    name = conn.gets.chomp.strip
    broadcast = "[Server] #{name} joined the chat."
    puts broadcast
    clients.each { |c| c.puts broadcast unless c == conn }
    begin
      loop do
        msg = conn.gets
        break if msg.nil?
        msg = msg.chomp
        full_msg = "[#{Time.now.strftime('%H:%M')}] #{name}: #{msg}"
        puts full_msg
        clients.each { |c| c.puts full_msg unless c == conn }
      end
    rescue
      # Ignore errors
    ensure
      clients.delete(conn)
      left_msg = "[Server] #{name} left the chat."
      puts left_msg
      clients.each { |c| c.puts left_msg }
      conn.close
    end
  end
end 