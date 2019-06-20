t = File.read("source.txt")
lines = t.split("\n")
blocked = []
passed = []
lines.each do |line|
    if line.end_with? "Proxy"
       l = line.sub(',Proxy', '') 
       l = l.sub(',', ' ') 
       blocked << l
    elsif 
        l = line.sub(',DIRECT', '')
        l = l.sub(',', ' ') 
        passed << l
    end
end

File.write("gwf.txt", blocked.join("\n") )
File.write("good.txt", passed.join("\n") )
