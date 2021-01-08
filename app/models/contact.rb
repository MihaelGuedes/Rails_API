class Contact < ApplicationRecord
    #Associations
    belongs_to :kind #optional: true
    has_many :phones

    accepts_nested_attributes_for :phones, allow_destroy: true

    def as_json(options={})
        h = super(options)
        h[:birthdate] = (I18n.l(self.birthdate) unless self.birthdate.blank?)
        h
    end
    

# Código comentado é para eventuais consultas de funcionamento de certas ferramentas
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
    # def tradução
    #     I18n.default_locale
    # end
    # def hello
    #     I18n.t('hello')
    # end
    # def birthdate_br
    #     I18n.l(self.birthdate) unless self.birthdate.blank? # o unless faz com que traduza a data a não ser que esteja vazia
    # end

    ################
    # Esse modo abaixo é apenas uma demonstração futuramente usaremos um gem que facilitará esse trabalho
    # def to_br
    # {
    #     name: self.name,
    #     email: self.email,
    #     birthdate: (I18n.l(self.birthdate) unless self.birthdate.blank?),
    #     kind_id: self.kind_id
    # }
    # end
    
end
