class Mensagem < ApplicationRecord
  belongs_to :usuario
  belongs_to :sala_bate_papo
end
