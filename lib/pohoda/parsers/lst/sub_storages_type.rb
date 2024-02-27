module Pohoda
  module Parsers
    module Lst
      class SubStoragesType
        include ParserCore::BaseParser

        def item_storage
          array_of_at(Lst::ItemStorageType, ['lst:itemStorage'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_storage] = item_storage.map(&:to_h) if has? 'lst:itemStorage'

          hash
        end
      end
    end
  end
end