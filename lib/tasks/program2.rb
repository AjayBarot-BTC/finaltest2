def printPartitions(target,maxValue,suffix)
  if target == 0
        print "#{suffix}\n"
    else 
        if maxValue > 1
            printPartitions(target, maxValue-1, suffix)
        end
        if maxValue <= target
            printPartitions(target-maxValue, maxValue, maxValue.to_s + "+" + suffix)
        end
  end
end

require './modulefile'
Reuse.fortarget()
n = gets.chomp()
Reuse.formaxvalue()
n2 = gets.chomp()
puts printPartitions(n.to_i,n2.to_i,"")