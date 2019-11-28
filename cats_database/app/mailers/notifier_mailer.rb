class NotifierMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier_mailer.kittens.subject
  #

  def kittens()
    mail to: params[:cat].fans
  end
end
