def create_random_pairs(pairs)
    #making variable with pair shuffled
    random_pairs = pairs.shuffle
    #making counter for index of array
    cfi = 0
    #making counter for pairs
    cfp = 0
    #making arr an array
    arr = Array.new
    #making new array at cfi index of arr (multidemi array)
    arr[cfi] = Array.new
    random_pairs.each do |v|
        # conditional for the length is odd and pair is less than 3
        if random_pairs.length % 2 != 0 && cfp < 3
            # shoving v into cfi index of arr
            arr[cfi] << v
            # pair + 1
            cfp += 1
            #making a variable set to false when array isnt full
            array_full = false
            # nested conditional when pair is equal to 3
                if cfp == 3
                    #array is now full
                    array_full = true
                end
            #
        else  arr[cfi].length < 2
            arr[cfi].push(v)
            if arr[cfi].length == 2
                array_full = true
            end
        end
        if array_full == true && v != random_pairs.last
            cfi += 1
            arr[cfi] = Array.new
            array_full = false
        end
    end
    p arr
    return arr
end

