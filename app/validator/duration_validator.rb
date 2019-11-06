class DurationValidator < ActiveModel::Validator
    def validate(record)
        if record.duration % 5 != 0
            record.errors.add( :duration, "duration non accepter , Mettez un chifre mutiple de 5")
        end
    end
end