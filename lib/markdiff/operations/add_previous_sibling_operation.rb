require "markdiff/operations/base"

module Markdiff
  module Operations
    class AddPreviousSiblingOperation < Base
      # @return [String]
      def inserted_node
        if @inserted_node.name == "li"
          node = @inserted_node.clone
          node["class"] = "added"
          node.inner_html = "<ins>#{@inserted_node.inner_html}</ins>"
          node
        else
          "<ins>#{@inserted_node}</ins>"
        end
      end
    end
  end
end
