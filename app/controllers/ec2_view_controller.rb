class Ec2ViewController < ApplicationController
  before_filter :authenticate_user! if config[:login_required]

  def index
    @account_list = AwsAccount.all
    account = @account_list.first
    @account_name = params[:account_name]
    @default_account_name = (account && account.name).to_s
  end
end
