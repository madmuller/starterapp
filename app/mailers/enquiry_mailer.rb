class EnquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.response.subject
  #
  def response(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)

    mail to: @enquiry.email, subject: "Hi " + @enquiry.name + " , your enquiry has been receieved :)"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.received.subject
  #
  def received(enquiry_id)
      @enquiry = Enquiry.find(enquiry_id)
      mail to: "carale.ahmed@hotmail.com" , subject: "Hey! An enquiry ha been received!"



  end
end
