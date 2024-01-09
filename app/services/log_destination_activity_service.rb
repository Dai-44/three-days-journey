class LogDestinationActivityService
  def initialize(user_id, destination_info, record_type:) # drive_recordsコントローラでこのサービスオブジェクトを呼び出す際に、引数の示す内容が不明瞭にならないようにする意図で、record_typeをキーワード引数(デフォルト値は無し)として定義している。
    @user = User.find(user_id)
    @destination_info = destination_info
    @record_type = record_type
  end

  # 目的地となる場所の特定と、その場所へのユーザーのドライブ履歴を生成する処理
  def call
    type = GooglePlacesApiType.find_by(name: @destination_info[:type])
    destination = Destination.find_or_create_by(name: @destination_info[:name], address: @destination_info[:address], latitude: @destination_info[:latitude], longitude: @destination_info[:longitude], google_places_api_type: type)
    create_drive_record(destination)
  end

  private

  def create_drive_record(destination)
    @user.drive_records.create(destination: destination) # 基本的にはdrive_recordsレコードの保存処理の失敗は想定されないが、予期せぬ原因で失敗した場合の対応も追って記述しておく。
  end
end
