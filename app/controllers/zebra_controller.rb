class ZebraController < ApplicationController
  def giraffe_1
    render ({ :template =>"game_templates/square"})
  end

  def giraffe_2
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2
    render ({ :template =>"game_templates/square_results"})
  end

  def elephant_1
    render ({ :template =>"game_templates/square_root"})
  end

  def elephant_2
    @the_num = params.fetch("users_number").to_f
    @the_result = Math.sqrt(@the_num) 
    render ({ :template =>"game_templates/square_root_results"})
  end

  def lion_1
    render ({ :template =>"game_templates/payment"})
  end

  def lion_2
    @the_APR= params.fetch("users_APR").to_f
    r = @the_APR/1200
    @the_year= params.fetch("users_year").to_i 
    n = @the_year * 12
    @the_principal= params.fetch("users_principal").to_f
    @the_payment = (r * @the_principal)/(1-(1+r)**(-n))
    render ({ :template =>"game_templates/payment_results"})
  end

  def panther_1
    render ({ :template =>"game_templates/random"})
  end

  def panther_2
    @the_min = params.fetch("users_min").to_f
    @the_max = params.fetch("users_max").to_f
    @the_result = rand(@the_min..@the_max)
    render ({ :template =>"game_templates/random_results"})
  end

  def home
    render ({ :template =>"game_templates/square"})
  end

end
