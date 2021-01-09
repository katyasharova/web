#!/usr/bin/ruby
# frozen_string_literal: true

module Files
  def self.print_content(file_name)
    File.open(file_name) do |f|
      puts f.read
    end
  end

  def self.generate_file(file_name)
    File.open(file_name, 'w') do |f|
      f.print 20.times.map { rand(20).to_s }.join(' ')
    end
  end

  def self.remove_duplicate_numbers(src_file_name, dest_file_name)
    raise ArgumentError, "Файл #{src_file_name} не существует." unless File.exist?(src_file_name)

    File.open(src_file_name) do |src|
      File.open(dest_file_name, 'w') do |dest|
        dest.print src.read.split(' ').uniq.join(' ')
      end
    end
  end
end
