require 'minitest/autorun'

class FileIOPlayground < Minitest::Test

	def test_write_and_delete_file
		File.open('testfile.txt', 'w') do |fw|
			fw.puts 'Created by FileIOPlayground'
		end
		assert File.exist?('testfile.txt')

		File.delete('testfile.txt')
		assert false == File.exist?('testfile.txt')
	end

	def test_read_file
		fileContent = File.read('reading_and_writing_files.rb')
		assert fileContent.size > 300
	end
end
