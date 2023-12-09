class UserSelectionForm
  include ActiveModel::Model
  include ActiveModel::Attributes
  attr_reader :drive_time_options
  
  # このFormオブジェクトの各属性はPlaces APIへのリクエストに用いる値(及びその生成元になる値)を扱うため、予期せぬエラーを防ぐ意味でも型は固定されている方がより望ましい。
  # カスタム型のStringArrayを別途定義してtype属性の型として指定することで、type属性を配列形式に限定したかったが、実装中のエラーを解決できなかったので後に対応する。
  attribute :type
  attribute :feeling, :integer
  attribute :drive_time, :integer

  with_options presence: true do
    validates :type
    validates :feeling
    validates :drive_time
  end

  def initialize(attributes = {})
    super(attributes)
    # 走行時間と走行距離の組み合わせは開発段階で変更する可能性があるため、現状では変数として定義している。キーとバリューの組み合わせが固まって更新不要になったら、定数として定義し直す。
    @drive_time_options = {
      '15分〜30分' => 14000,
      '30分〜1時間' => 28000,
      '1時間〜1.5時間' => 42000,
      '1.5時間〜2時間' => 56000,
      '2時間〜2.5時間' => 70000
    }
  end

  # 定数として定義し直す際は、上記のinitializeメソッドを削除して以下のコメントアウトを外す。
  #  DRIVE_TIME_OPTIONS = {
  #    '15分〜30分' => 14,
  #    '30分〜1時間' => 28,
  #    '1時間〜1.5時間' => 42,
  #    '1.5時間〜2時間' => 56,
  #    '2時間〜2.5時間' => 70
  #  }.freeze
  # 定数を外部(viewファイルなど)から呼び出せるように、呼び出し用のメソッドも定義する。

  def to_request_params
    params_hash = {}
    params_hash[:included_types] = to_types(self.feeling)
    params_hash[:excluded_primary_types] = self.type
    params_hash[:radius] = self.drive_time
    params_hash
  end

  private
    def to_types(feeling_id)
      GooglePlacesApiType.by_feeling(feeling_id).pluck(:name)
    end
end