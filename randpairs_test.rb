require_relative "randpairs.rb"
require "minitest/autorun"

class Test_random < Minitest::Test
      def test_1
        assert_equal(1,1)
    end
    def test_pairing
        pairs = create_random_pairs(["steven", "sam"])
        assert_equal(1, pairs.count)
    end
    def test_single
        pairs = create_random_pairs(["steven"])
        assert_equal(1, pairs.count)
    end
    def test_three
        pairs = create_random_pairs(["steven","sam", "tracy"])
        assert_equal(1, pairs.count)
    end
    def test_two_pairs
        pairs = create_random_pairs(["steven", "sam", "tracy", "jeremy"])
        assert_equal(2, pairs.count)
    end
    def test_nothing
        pairs = create_random_pairs([])
        assert_equal(1, pairs.count)
    end
    def test_four_pairs
        pairs = create_random_pairs(["steven", "sam", "tracy", "jeremy", "reptar", "tommy", "chucky", "angelica"])
        assert_equal(4, pairs.count)
    end
    def test_five_plus_pairs
        pairs = create_random_pairs(["steven", "sam", "tracy", "jeremy", "reptar", "tommy", "chucky", "angelica", "kahn", "kayne", "gary"])
        assert_equal(5, pairs.count)
    end
    def test_six_pairs
        pairs = create_random_pairs(["steven", "sam", "tracy", "jeremy", "reptar", "tommy", "chucky", "angelica", "kahn", "kayne", "gary", "parker"])
        assert_equal(6, pairs.count)
    end
    def test_same_names
        pairs = create_random_pairs(["steven", "steven", "steven", "jeremy", "reptar", "tommy", "chucky", "angelica", "kahn", "kayne", "gary", "parker"])
        assert_equal(6, pairs.count)
    end
    def test_seven
        pairs = create_random_pairs(["steven", "sam", "tracy", "jeremy", "reptar", "tommy", "chucky", "angelica", "kahn", "kayne", "gary", "parker", "harry", "billy"])
        assert_equal(7, pairs.count)
    end
    def test_seven
        pairs = create_random_pairs(["steven", "sam", "tracy", "jeremy", "reptar", "tommy", "chucky", "angelica", "kahn", "kayne", "gary", "parker", "harry", "billy", "jack"])
        assert_equal(7, pairs.count)
    end

end