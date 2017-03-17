module Nupack
  class Markup
    def self.total(base_price,workers,type)
      # flat markup price
      total = 0
      new_price = base_price.delete("$,").to_f
      new_markup = (new_price*1.05).round(2)
      total = new_markup

      # markup for number of workers involved
      # regular expression to grab first character that matches "1-9" followed by infinite
      # characters(*) from "0-9"
      regex=/[1-9][0-9]*/
      num_workers = workers.scan(regex)[0].to_i
      total += (new_markup * (0.012 * num_workers)).round(2)

      # markup for type of material involved
      if type == "food"
        type_percentage = 0.13
      elsif type == "electronics"
        type_percentage = 0.02
      elsif type == "drugs" || type == "medicine"
        type_percentage = 0.075
      else
        type_percentage = 0
      end
      (total += (new_markup * type_percentage)).round(2)
    end
  end
end
