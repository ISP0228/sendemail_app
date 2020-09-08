class Admin::InformMailerController < Admin::ApplicationController
  def update
   contact = Inform.find(params[:id]) #contact_mailer.rbの引数を指定
   contact.update(contact_params)
   user = contact.user
   InformMailer.send_when_admin_reply(user, contact).deliver
  end
end