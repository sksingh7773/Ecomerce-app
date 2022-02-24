class ListMailer < ApplicationMailer

  def send_order_mail(list)
    @list = List
    mail(to: "shisingh@bestpeers.com",
         subject: "Order Successfully generated!")
  end
  def send_order(contact)
    @contact = Contact
    mail(to: "shisingh@bestpeers.com",
         subject: "new contact")
  end

  def send_ap
    mail(to: "shisingh@bestpeers.com",
         subject: "order conformation")
  end

  def send_db
    mail(to: "shisingh@bestpeers.com",
         subject: "order conformation")
  end
end
