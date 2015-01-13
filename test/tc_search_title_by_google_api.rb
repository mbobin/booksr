#encoding: utf-8

require 'test/unit'
require 'booksr'

class TestSearchTitleByGoogleApi1 < Test::Unit::TestCase
	def setup	# will be called before run each member function
		@books = Booksr.search("時間簡史", :title)
	end

	def test_result_count
		assert_operator(9, :<=, @books.size)
	end
end

class TestSearchTitleByGoogleApi2 < Test::Unit::TestCase
	def setup
		@books = Booksr.search("Ruby on Rails", :title)
	end

	def test_result_count_when_over_40
		assert_operator(160, :<=, @books.size)
	end
end