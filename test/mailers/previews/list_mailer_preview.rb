# Preview all emails at http://localhost:3000/rails/mailers/list_mailer
class ListMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/list_mailer/new_order
  def new_order
    list = List.last
    ListMailer.new_order(list)
  end

end
