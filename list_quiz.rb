def three_even?(list)
     z = 0
     (list.size-1).times do |n|
         if list[z] % 2 == 0 && list[z + 1] % 2 == 0 && list[z - 1] % 2 == 0
             return true
         end
         z += 1
     end
     return false
end

puts three_even?([2, 3, 2])

def bigger_two(nums1, nums2)
     returnlist = []
     if (nums1[0] + nums1[1]) > (nums2[0] + nums2[1])
         returnlist.push(nums1[0])
         returnlist.push(nums1[1])
     elsif (nums1[0] + nums1[1]) < (nums2[0] + nums2[1])
         returnlist.push(nums2[0])
         returnlist.push(nums2[1])
     else
         returnlist.push(nums1[0])
         returnlist.push(nums1[1])
     end
     return returnlist
end

print bigger_two([1, 2], [2, 4])

def series_up(n)
    # added size value
    size = n
    currentvalue = 1
    currentstep = 1
    endlist = []
    # deleted sum formula
    size.times do |x|
        currentvalue = 1
        #replaced if statement with while statement to increase and push currentvalues
        while currentvalue <= currentstep
            endlist.push(currentvalue)
            currentvalue += 1
            #deleted if statement that would set currentvalue to 1, as it is now outside of the while loop
        end
        currentstep += 1
    end
    return endlist
end

# the issue with this loop was that I was using an if statement instead of a while statement. Once the loop ran once, it would return '1' and then end.
  
print series_up(4)