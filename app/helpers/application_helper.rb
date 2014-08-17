# -*- coding: utf-8 -*-
#
module ApplicationHelper
  def with_references(content)
    content.gsub(/\[([^\]]+)\]/) do
      if (definition = Definition.where(term: $1).first)
        link_to definition.term, definition
      else
        link_to $1, new_named_definition_path($1)
      end
    end
  end
end
