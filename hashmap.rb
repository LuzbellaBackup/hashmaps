# frozen_string_literal: true

# Hashmap

# Class Hashtest || Create and Modify Hash tables
class HashTest
  attr_reader :hash_table

  def initialize
    @hash_table = []
    @hash_table[15] = nil
  end

  def self.introductory_message
    print('Unit testing Starting')
    gets
  end

  def gather_data(table)
    key = gets
    value = gets
    variable = hash(key)
    table[variable] = value
  end

  def string_to_integers(string = 'Test')
    hash_code = 0
    prime_number = 7

    string.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code
  end

  def hash(code)
    # index for hashtable

    pre_module = string_to_integers(code)
    pre_module % 16
  end

  def get(key)
    index = hash key
    @hash_table[index]
  end

  def has?(key)
    !@hash_table[hash(key)].nil?
  end

  def remove(key)
    @hash_table[hash(key)] = nil
  end

  def length
    @hash_table.length
  end

  def clear
    @hash_table.clear
    @hash_table[15] = nil
  end

  def keys
    keys = []
    @hash_table.each_index { |index| keys.push(index) unless @hash_table[index].nil? }
    keys
  end

  def values
    keys = []
    @hash_table.each { |value| keys.push(value) unless value.nil? }
    keys
  end

  def entries
    group = []
    @hash_table.each_with_index { |value, index| group.push([index, value]) unless @hash_table[index].nil? }
    group
  end

  def load_factor(table)
    ratio = 0.0
    table.each { |element| ratio += 1 unless element.nil? }

    ratio / 16
  end

  def print_load_factor(table)
    print("\n \n use ratio = #{load_factor(table) * 100}%")
  end
end

def breakline
  print "\n"
end

# HashTest.introductory_message
hashmap = HashTest.new
hashmap.gather_data(hashmap.hash_table)
hashmap.gather_data(hashmap.hash_table)
breakline
print hashmap.get('k')
breakline
print hashmap.has?('j')
breakline
print hashmap.remove('k')
breakline
print hashmap.has?('k')
breakline
print hashmap.length
breakline
print hashmap.clear
hashmap.gather_data(hashmap.hash_table)
hashmap.gather_data(hashmap.hash_table)
print hashmap.keys
breakline
print hashmap.values
breakline
print hashmap.entries
breakline
print("\n \n#{hashmap.hash_table}")
breakline
print("\n \n use ratio = #{hashmap.load_factor(hashmap.hash_table)}%")
breakline
