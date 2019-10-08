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
    currentvalue = 1
    currentstep = 1
    endlist = []
    sum = n*(n+1)/2
    (sum).times do |x|
        if currentvalue <= currentstep
            endlist.push(currentvalue)
            currentvalue += 1
        end
        if currentvalue = currentstep
            currentstep += 1
            currentvalue = 1
        end
    end
    return endlist
end


  puts series_up(4)