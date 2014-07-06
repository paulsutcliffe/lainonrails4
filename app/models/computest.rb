# coding: utf-8
class Computest < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :phone, :gender, :height, :weight
  validates :email, email: true

  validates :first_name, :length => { :maximum => 50 }
  validates :last_name, :length => { :maximum => 50 }
  validates :phone, :length => { :maximum => 20 }
  validates :email, :length => { :maximum => 100 }

  validates :height, :numericality => { :greater_than => 1, :less_than => 3 }
  validates :height, :format => { :with => /\d{1,2}\.\d{1,2}/,
      :message => "tiene que ser en metros, por ejemplo: 1.76" }

  validates :weight, :numericality => { :greater_than => 25, :less_than => 210 }
  validates :weight, :format => { :with => /\d{2,3}/,
          :message => "tiene que ser en kilos, por ejemplo: 75" }

  before_save  :process_information

  belongs_to :country

  def process_information
    self.bmi          = calculate_bmi.round
    self.state        = calculate_state calculate_bmi
    self.ideal_weight = calculate_ideal_weight
  end

  def calculate_bmi
    weight / (height ** 2)
  end

  def calculate_state bmi
    case
    when bmi < 18.5             then "Bajo Peso"
    when bmi.between?(18.5,25)  then "Normal"
    when bmi.between?(25,30)    then "Con Sobrepeso"
    when bmi.between?(30,35)    then "Obeso Clase I"
    when bmi.between?(35,40)    then "Obeso Clase II"
    when bmi > 40               then "Obeso Clase III"
    end
  end

  def calculate_ideal_weight
    prime = (calculate_bmi / 25).round(2)
    if prime < 1
      prcnt = (1 - prime) * 100
      "Estás #{prcnt.round}% debajo de tu peso ideal."
    elsif prime > 1
      prcnt = (prime - 1) * 100
      "Estás #{prcnt.round}% sobre tu peso ideal."
    else
      "Tienes un peso ideal."
    end
  end
end
