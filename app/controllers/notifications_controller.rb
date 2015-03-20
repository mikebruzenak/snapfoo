class NotificationsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def notify
    client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid,
        Rails.application.secrets.twilio_auth_token,
        media_url: 'http://linode.rabasa.com/yoda.gif',
        status_callback: request.base_url + '/twilio/status'

#    client = Twilio::REST::Client.new 'AC0f08216568569704eb4b1afd89ac65e6','9c19e60878b214c61636063d11c3583e'
    message = client.messages.create from: '17634003859', to: '19522707011', body: 'Learning to send SMS you are.'
    render plain: message.status
  end

end

