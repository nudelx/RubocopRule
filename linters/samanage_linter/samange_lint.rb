# frozen_string_literal: true

module RuboCop
  module Cop
    module SamanageLint
      class HtmlSave < Cop
        MSG = '⚠️   Using html_safe is dangerous and requires additional approval'.freeze
        def on_def(node)
          puts node.to_s
          return unless node.to_s =~ /[html_safe|:html_safe]/
          add_offense(node, location: :name)
        end

        def on_class(node)
          return unless node.to_s =~ /[html_safe|:html_safe]/
          add_offense(node, location: :name)
        end
        alias on_module on_class
        alias on_defs on_def
      end
    end
  end
end
