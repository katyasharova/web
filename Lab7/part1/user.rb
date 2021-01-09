# frozen_string_literal: true

require './main'

Files.generate_file('F.txt')
puts 'file F.txt was created, its content is:'
Files.print_content('F.txt')

Files.remove_duplicate_numbers('F.txt', 'G.txt')
puts "\nfile G.txt was created, its content is:"
Files.print_content('G.txt')
