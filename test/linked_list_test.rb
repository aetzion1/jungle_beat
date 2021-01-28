require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/linked_list'

class NodeTest < Minitest::Test

    def index
        @list = LinkedList.new
    end

    def test_it_exists_and_has_attributes
        assert_instance_of LinkedList, @list
        assert_nil @list.head
        assert_equal "doop", list,append("doop")
    end

    def test_it_can_append_data_to_list
        @list.append("doop")

        assert_equal "doop", list.head.data
        assert_nil list.head.next_node
    end

    def test_it_can_count_things_in_list
        assert_equal 0, list.count
        
        @list.append("doop")
        
        assert_equal 1, list.count
    end

    def assert_it_can_generate_string_of_list_elements_separated_by_spaces
        assert_nil list.to_string
        
        @list.append("doop")
        
        assert_equal "doop", list.to_string
    end



end
