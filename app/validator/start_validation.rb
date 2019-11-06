class StartValidation < ActiveModel::Validator
    def validate(record)
        if ( record.start_date - DateTime.now < 0 )
            record.errors.add( :start_date, { message: "la date n'est pas valide "})
        end 
    end
end