#!/usr/bin/ruby
require 'open3'


def partial_print(pos)
    if pos == 0
        print "H"
    elsif pos == 1
        print "e"
    elsif pos == 2
        print "l"
    elsif pos == 3
        print "l"
    elsif pos == 4
        print "o"
    elsif pos == 5
        print " "
    elsif pos == 6
        print "W"
    elsif pos == 7
        print "o"
    elsif pos == 8
        print "r"
    elsif pos == 9
        print "l"
    elsif pos == 10
        print "d"
    elsif pos == 11
        print "!"
    elsif pos == 12
        print "\n"
    end
    $stdout.flush
end

def notify(pos, nlangs)
    if pos >= 0 and pos < 12
        splitted = nlangs.split(" ")
        target = splitted[0]
        executors = "\""
        for index in 1 ... splitted.size
              executors << splitted[index].inspect.to_s.gsub('"','') + " "
        end
        executors << "\""
        executors.lstrip
        if pos == 10
            system("./controller.sh #{target} #{(pos+1).to_s} #{target}")
        else 
            system("./controller.sh #{target} #{(pos+1).to_s} #{executors}")
        end
    end
end


args = ARGV

if args.length > 1
    pos = Integer(args[0])
    nlangs = args[1]
    partial_print(pos)
    notify(pos, nlangs)
end
