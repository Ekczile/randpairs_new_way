def create_random_pairs(pairs)
    random_pairs = pairs.shuffle
    cfi = 0
    cfp = 0
    arr = Array.new
    arr[cfi] = Array.new
    random_pairs.each do |v|
        if random_pairs.length % 2 != 0 && cfp < 3
            arr[cfi] << v
            cfp += 1
            bool = false
            if cfp == 3
                bool = true
            end
        else  arr[cfi].length < 2
            arr[cfi].push(v)
            if arr[cfi].length == 2
                bool = true
            end
        end
        if bool == true && v != random_pairs.last
            cfi += 1
            arr[cfi] = Array.new
            bool = false
        end
    end
    p arr
    return arr
end    

