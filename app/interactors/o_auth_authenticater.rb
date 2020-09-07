class OAuthAuthenticater
  include Interactor

  #
  # 認証データに対応するSNS_authが存在するか確認し、なければ新規作成。
  # すでにUserがついていればあるものを返す。
  # Userがなければ新規で作りつつSNS_authとひもづける
  #
  # @param [Hash] authentication hash
  #
  # @return [User]
  #
  def call
    raise "authentication not found" unless context.provider == "twitter"

    # SNSにすでにユーザーがあればそれを返す
    sns_auth = find_sns_auth
    return context.user = sns_auth.user if sns_auth.user

    # Userがない場合は作り、SNSとひもづける
    create_user_with(sns_auth)
  end

  private

    def find_sns_auth
      User::TwitterAuthentication.find_or_initialize_by(uid: context.uid) do |auth|
        auth.name = context.info.name
        auth.email = context.info.email
        auth.url = context.info.urls.Twitter
        auth.image_url = context.info.image_url
      end
    end

    def create_user_with(sns_auth)
      ActiveRecord::Base.transaction do
        user = User.create!(nickname: sns_auth.name)
        sns_auth.update!(user: user)
        context.user = user
      end
    end
end
