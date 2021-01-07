class Contact < ApplicationRecord
    belongs_to :kind #optional: true

    # def author
    #     "Mihael Guedes"
    # end
    # def kind_description
    #     self.kind.description
    # end

    # def as_json(options={})
    #     super(
    #         methods: [:kind_description, :author], except: [:kind_id],
    #     )
    # end
end
