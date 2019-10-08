def three_even?(list)
    z = 0
    (list.size-1).times do |n|
        if list[z] % 2 == 0 && list[z + 1] % 2 == 0 && list[z - 1] % 2 == 0
            return true
        end
        z += 1
    end
end

