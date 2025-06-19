require 'socket'

print "Enter server IP (default: 127.0.0.1): "
ip = gets.chomp.strip
ip = '127.0.0.1' if ip.empty?

print "Enter server port (default: 3000): "
port = gets.chomp.strip
port = port.empty? ? 3000 : port.to_i

print "Enter your name: "
name = gets.chomp.strip
name = 'Anonymous' if name.empty?

begin
  socket = TCPSocket.new(ip, port)
rescue
  puts "Could not connect to server!"
  exit
end

puts socket.gets # Welcome message
socket.puts name

# Thread to listen for messages from server
Thread.new do
  loop do
    msg = socket.gets
    break if msg.nil?
    puts msg
  end
end

# Main loop to send messages
loop do
  text = gets.chomp
  break if text.downcase == '/exit'
  socket.puts text
end

puts "Disconnected."
socket.close 