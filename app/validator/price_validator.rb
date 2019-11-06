class PriceValidator < ActiveModel::Validator
    def validate(record)
        if record.price < 1 && record.price > 1000
            record.errors.add( :price, "le Prix n'est pas acceptable, mettez entre 1 et 1000 $")
        end
    end
end