class Pass

  def lencheck
    target = File.open("newpasslist.txt", "w")

    File.open("realhuman_phill.txt", "r") do |file_handle|
      file_handle.each_line do |line|

        if line.length == 9
          target.write(line)
        end

      end
    end

    target.close
    puts "FINISHED!"
  end
  
  def lencheck_two
    File.open("password.txt", "r") do |file_handle|
      file_handle.each_line do |line|

        puts "PASSWORD: #{line}, LENGTH: #{line.length}"

      end
    end
  end
	
  def replace_colon
    target = File.open("passwords.broken", "w")

    File.open("john.pot", "r") do |file_handle|
      file_handle.each_line do |line|

        line[34] = " "
        target.write(line)

      end
    end

    target.close
    puts "FINISHED!"
  end

end
