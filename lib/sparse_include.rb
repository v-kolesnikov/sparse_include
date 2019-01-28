# frozen_string_literal: true

require 'sparse_include/version'

module SparseInclude
  def self.[](mod, methods_map)
    Module.new do |new_module|
      methods_map.each do |original_name, alias_name|
        new_module.send(
          :define_method,
          alias_name,
          mod.instance_method(original_name)
        )
      end
    end
  end
end
