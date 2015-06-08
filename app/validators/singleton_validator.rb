class SingletonValidator < ActiveModel::Validator

  def validate(record)
    if record.class.count > 0
      record.errors.add(:id, "there can be only one #{record.class}")
    end
  end

end
