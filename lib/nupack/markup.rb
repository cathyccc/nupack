module Nupack
  class Markup
    def self.total(base_price,workers,type)
      new_price = base_price.delete("$,").to_f
    end
  end
end
