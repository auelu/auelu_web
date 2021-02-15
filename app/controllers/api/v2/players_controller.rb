class Api::V2::PlayersController < ApiController

  def index
    players = User.all.order("number")
    render json: players
  end

  def show
    @player = User.find(params[:id])
    render json: @player
  end

  private
  def s3 
      s3 = Aws::S3::Resource.new(
      region: ap-northeast-1, # 1. 利用しているリージョン
      credentials: Aws::Credentials.new(
        AKIAWRRXXN77NI4VSEEN, # 2. プログラムからアクセスできるユーザのアクセスキー
        yPNVZDsasYqu6EZoUmySNooyOPOLvwlTSod0CUcA # 3. プログラムからアクセスできるユーザのシークレットキー
      )
    )
    signer = Aws::S3::Presigner.new(client: s3.client)
    return presigned_url = signer.presigned_url(:get_object,
        bucket: bucket_name, key: key, expires_in: 60)
  end
end