# サービス名

...次、どこ行く？（仮）

## サービス概要

「...次、どこ行く？」は、ドライブ中に次の行き先決めに困った際、その場の気分に近い行き先を短時間で決めるお手伝いをするサービスです。

## 想定されるユーザー層
- ドライブ中に次の行き先探しに困る人
- 短時間でその場の気分に近い行き先を決めたい人
- 行き先探しが面倒で、結局いつも似たような場所に行きがちな人 
  
## サービスコンセプト
### なぜこのサービスを作ろうと思ったのか

私はドライブが好きで、家族や友人とよく出かけています。

特に、事前に調べたり1日の計画をしっかり立てるよりも、その場の気分で行き先を決めて自由に移動することが好きで、その点がドライブの醍醐味だとも感じています。

しかし、いざ出先で「その場の気分」に近い行き先を短時間で探すことはなかなか難しく、気分の上がる場所がうまく見つかるとドライブが更に盛り上がりますが、思うように見つからず妥協して決めると「決して楽しくないわけではないけど、ちょっとドライブのテンションが落ち着いちゃったな、まあいいか」という微妙な気分や雰囲気になることがあります。せっかく楽しくドライブをしていたのに、これは少しもったいないです。

このような背景から、その場の気分になるべく近い行き先を短時間で決められるアプリがあれば、ドライブ全体がより楽しいものになると感じ、開発しようと考えました。

行き先決めに手間取ってせっかくの時間をロスしてしまう非効率さを解決することで、より楽しいドライブ時間を過ごす手助けとなる、そんなアプリにしていきたいと思っています。

### 実際の利用イメージ
【ログイン状態を問わない利用イメージ】

- ユーザーは、画面に表示される以下の項目を選択していくことで、今の気分に近い「次の行き先候補」を得られる。
    1. 今日何をしていたか
        - 「動物園」「温泉」などカテゴリを選択するか、入力欄に施設名を入力(オートコンプリートによる入力補完あり)する。
        - 次の行き先を探す検索実行時には、選択または入力した場所のカテゴリは除外される
    2. 今の気分
        - 「自然」「芸術」「運動」「歴史」など大まかな分類を提示
    3. 現在地からの走行時間
    
- 行き先候補はリスト形式で表示される。Googleマップの評価 × 口コミ数のポイントが高い順に5件ずつ表示。リストは画面に表示されたGoogleマップ上のピンと連動しており、クリックするとピンがピックアップ表示される。
    - 候補の一つを選択すると、詳細情報の閲覧ができる。到着時間の現地の天気情報も得られる
    - そのまま経路案内を開始することもできる
    - 同じ条件で次の5件を表示することもできる
      
- 提示された候補の閲覧時には、以下のように検索条件を絞り込むこともできる
    - 口コミ数の上限設定（口コミ数はそれほど多くないが評価が高いところを探せる）
    - 気になったカテゴリあれば、そのカテゴリのみで再検索

【ログイン後の利用イメージ】

- 自分がよく行くカテゴリをユーザー情報として設定できる
    - 検索時に、「そのカテゴリに絞り込む」「条件から除外する」といった選択ができる
- 検索時に帰宅予定時間を入力することで、表示される行き先候補それぞれの滞在可能時間を得られる
    - 最寄駅をあらかじめ登録しておく必要あり
- 条件を設定して検索しなくても、現在地付近のおすすめスポットを得られる
    - アプリの利用履歴に応じて、行き先として選択する頻度の高いカテゴリで周辺検索した結果が表示される。より短時間で次の行き先を探せる。
- 行き先候補をブックマークできる
    - 行き先候補のうち、最終的に選ばなかったが気になった場所があれば、別のドライブの際にすぐナビを起動できる形で控えておける。

### 類似サービスとの差別化ポイント
類似サービスや次の行き先を探す別の手段としては、以下が挙げられます。

- Googleマップ
- [ここより -レジャー・旅行・ドライブに- ](https://apps.apple.com/jp/app/%E3%81%93%E3%81%93%E3%82%88%E3%82%8A-%E3%83%AC%E3%82%B8%E3%83%A3%E3%83%BC-%E6%97%85%E8%A1%8C-%E3%83%89%E3%83%A9%E3%82%A4%E3%83%96%E3%81%AB/id1619728475)
- Instagram
- ネットで検索

対して、本サービスの差別化ポイントは以下のとおりです。

- 複数カテゴリを指定したマップ検索
    - 気になるカテゴリ(「水族館」「博物館」などの大まかな分類)を複数指定して検索し、マップ上ですぐに確認できます。特に行き先の目処が立っていないユーザーの心理に合わせ、関心のあるものを広く調べられるようにします。
- 条件に合致する行き先候補を絞り込んで表示
    - 検索から目的地決定までにユーザーに生じる選択の手間を軽減するため、表示する選択肢を絞り込みます。具体的には、「Googleマップの評価 × 口コミ数」のポイントが高い順に5件ずつ表示します。
- 「今日行った場所」の指定
    - その日既に行った場所に該当するカテゴリは、次の行き先を決める検索の条件から自動的に除外されます。
- 走行時間を指定した検索
    - 現在地からの走行時間を指定して次の行き先を探すことができます。「今から1時間前後走った後に寄れそうな目的地を探したい」などの気分に対応した検索ができます。
- 口コミ数の上限設定による検索結果の絞り込み
    - 有名な場所や少し調べれば情報を得られる場所ではなく、あまり有名ではないが評価が高い場所を探すことができます。
- 天気予報情報の提供
    - 表示される行き先候補を閲覧する際に、到着時刻周辺の現地の天気情報を確認することができます。
- 利用履歴に基づくおすすめスポットの表示
    - アプリの利用履歴に応じて、行き先として選択する頻度の高いカテゴリで周辺検索した結果が表示されます。より短時間で次の行き先を探すことを可能にします。
- 滞在可能時間の表示
    - 帰宅予定時刻から逆算し、検討している行き先候補にどのくらいの時間滞在できるのかを表示します。

## 実装を予定している機能

### MVP

- ユーザー登録機能（Googleでのソーシャルログインも実装）
- ログイン機能
- プロフィール機能
- 行き先検索, マップ表示, 経路案内機能(Google Maps APIを利用)
- オートコンプリート機能
- ブックマーク機能
- 滞在可能時間表示機能
- パスワードリセット機能

### その後の機能

- 付近のおすすめ表示機能
- PWA化(ネイティブアプリに近い感覚で利用できるよう実装)
- テスト（RSpec）
- 管理者機能
    
※ 分類としてはツール系に該当するものと考えており、単に行き先の候補を検索して経路案内をするだけでは機能として弱いと感じため、上述の機能のうち以下を+@の拡張機能として検討いたしました。

- 付近のおすすめ表示機能
- 滞在可能時間表示機能

### 現在検討している追加サービス, 追加機能の案
- ドライブのルート履歴表示機能
  - [Google Maps PlatformのRoads API](https://developers.google.com/maps/documentation/roads?_gl=1*4d0y1p*_ga*Mjg1MzE2ODE1OC4xNjk1NzEzMzY0*_ga_NRWSTWS78N*MTY5OTI3MzMzNS4xMy4xLjE2OTkyNzMzNTEuMC4wLjA.&hl=ja)を用いて、アプリを利用したドライブのルート履歴を作成
  - 検索実行後に行き先候補がリストとマップで表示される画面において、マップ上にルート履歴を表示する選択肢を用意。履歴表示を選択すると、行き先候補が表示された状態でルート履歴も表示されるマップ画面に切り替わる。よく走っているエリアと行ったことのないエリアが視覚的にわかる。
  - 行き先検索の条件に方角(東側, 西側, 南側, 北側など)を追加し、あまり行ったことのないエリアに絞り込んだ検索を可能にする。
  - ルート履歴はマイページでも閲覧できる
- 過去に行ったスポットの検索, 共有機能
  - 目的地を設定して経路案内を開始後、到着して経路案内を終了したタイミングで、出発地や到着地(Google Places APIで取得できる詳細情報を含む)、走ったルートのログなどを有するドライブ記録を、ユーザー固有のレコードとして自動で保存する。
  - マイページから各ドライブ記録を閲覧でき、日付、エリア（県, 市など）、カテゴリなどで絞り込んで検索もできる(マルチ検索、オートコンプリート機能を実装)
  - もう一度行きたい場合はその画面から経路案内を開始できる。また、人に共有したい場合は、Google Places APIから提供される詳細情報をLINEでシェアできる。

## 画面遷移図
[画面遷移図](https://www.figma.com/file/iU0kAQMW4nNlqC3HHIdpRf/画面遷移図?type=design&node-id=0-1&mode=design&t=AhLcQdSYLoVKUOHp-0)

## ER図
[![Image from Gyazo](https://i.gyazo.com/8033a6cd04d0b7342d8a7d3ec2d525d1.png)](https://gyazo.com/8033a6cd04d0b7342d8a7d3ec2d525d1)