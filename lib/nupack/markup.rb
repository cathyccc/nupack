module Nupack
  class Markup
    def self.total(base_price,workers,type)
      total = 0
      new_price = base_price.delete("$,").to_f
      new_markup = (new_price*1.05).round(2)
      total = new_markup

      # regular expression to grab first character that matches "1-9" followed by infinite
      # characters(*) from "0-9"
      regex=/[1-9][0-9]*/
      num_workers = workers.scan(regex)[0].to_i
      total += (new_markup * (0.012 * num_workers)).round(2)
    end
  end
end
