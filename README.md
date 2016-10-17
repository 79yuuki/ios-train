# NatibootCAMP iOS

### 概要

* mixiの[iOSTraining](https://github.com/mixi-inc/iOSTraining)とSB Creativeで出版されている[本気ではじめるiPhoneアプリ作り](http://www.sbcr.jp/products/4797384512.html)を基にして必要そうな部分を抜き出し短期間で要点だけを身につけるものにしています。
* 課題によって、実装前と実装後（それぞれbefore, after）のプロジェクトを用意しています。
* このリポジトリをForkしてプロジェクトを改変してください。
* 宿題用ブランチを常にmasterから作って欲しいので、作業用ブランチ（workなど）を適宜作ってください。
* 実装後のものは、復習用として使用するなどしてください。

### 宿題について

* Forkしたリポジトリでブランチを切って（homework/1など）masterにPull Requestを送ってください。
* 宿題毎に別にブランチを切るようにしてください。
* 宿題は[`homeworks/dayX/your_name`](./homeworks)のように、homeworksディレクトリの各dayごとのディレクトリの下に自分の名前のディレクトリを作成してそこに宿題のプロジェクトを置いてください。

### 流れ

##### upstreamにこのリポジトリを追加

```
git clone 'Forkしたリポジトリ'
git remote add upstream git@ghe.ca-tools.org:natibootcamp/natibootcamp-ios.git
git fetch upstream
git checkout -b work
```

##### 宿題用ブランチを切る

作業用ブランチ（workなど）で作業中の場合

```
git stash
git checkout master
git checkout -b homework/1
git push origin homework/1
```

Pull Request送信後

```
git checkout work
git stash pop
```

##### 宿題中にFork元に修正が入った

```
git stash
git checkout master
git pull upstream master
git checkout homework/1
git merge master
git stash pop
```

##### Pull Requestを送る

* ForkしたリポジトリのページでPull Requestを押す
* 適宜コメントを入れる
* Fork元のmasterブランチに向けて、提出するブランチを送る


## 1日目（2016年10月17日）

目安 `105min`

#### 項目

1. 導入

 1. 基礎知識（実演&実装）`50min`  
 課題 [1.1 Swiftの基礎](./pages/day1/1-1_swift-basics.md)  
 プロジェクト [day1/1.1](../../tree/master/before/day1/1.1)  

 2. プロパティの属性、メモリ（実演）`10min`  
 課題 [1.2 メモリ管理](./pages/day1/1-2_memory-management.md)  
 プロジェクト [day1/1.2](../../tree/master/before/day1/1.2)

 3. ビューコントローラ（実演&実装）`20min`  
 課題 [1.3.1 UIViewControllerのカスタマイズ（stroyboard）](./pages/day1/1-3-1_UIViewController-customization-storyboard.md)  
 補足 [1.3.2 UIViewControllerのカスタマイズ（xib）](./pages/day1/1-3-2_UIViewController-customization-xib.md)  
 プロジェクト [day1/1.3](../../tree/master/before/day1/1.3)

 4. モーダル（実演&実装）`20min`  
 課題 [1.4.1 UIViewControllerのModalViewController（storyboard）](./pages/day1/1-4-1_ModalViewController-storyboard.md)  
 補足 [1.4.2 UIViewControllerのModalViewController（xib）](./pages/day1/1-4-2_ModalViewController-xib.md)  
 プロジェクト [day1/1.4](../../tree/master/before/day1/1.4)

 5. ライフサイクル（実演&実装）`5min`  
 課題 [1.5 UIViewControllerのライフサイクル](./pages/day1/1-5_UIViewController-lifecycle.md)  

#### 宿題

- 課題 [HomeWork 1.2 UIViewControllerとModalViewController](https://github.com/mixi-inc/iOSTraining/wiki/HomeWork-1.2-UIViewController%E3%81%A8ModalViewController)  
 プロジェクト [day1/homework](../../tree/master/before/day1/homework)

# 以下内容未fix（各講義の前日には確定予定）

## 2日目（2016年10月25日）

目安 `120min`

#### 項目

1. UIKit 1 - container, rotate-

 1. ナビゲーション（実演）`10min`  
 課題 [2.1 UINavigationController](https://github.com/mixi-inc/iOSTraining/wiki/2.1-UINavigationController)  
 プロジェクト [day2/1.1](../../tree/master/before/day2/1.1)

 2. タブ（実演&実装）`15min`  
 課題 [2.2 UITabController](https://github.com/mixi-inc/iOSTraining/wiki/2.2-UITabController)  
 プロジェクト [day2/1.2](../../tree/master/before/day2/1.2)

 3. 回転（説明）`2min`  
 課題 [2.4 Supporting Multiple Interface Orientations](https://github.com/mixi-inc/iOSTraining/wiki/2.4-Supporting-Multiple-Interface-Orientations)

2. UIKit 2- UIView -

 1. ビュー1（実演）`10min`  
 課題 [3.1 UIView](https://github.com/mixi-inc/iOSTraining/wiki/3.1-UIView)  
 プロジェクト [day2/2.1](../../tree/master/before/day2/2.1)

 2. ビュー2（説明）`5min`  
 課題 [3.2 UIView のカスタマイズ](https://github.com/mixi-inc/iOSTraining/wiki/3.2-UIView-%E3%81%AE%E3%82%AB%E3%82%B9%E3%82%BF%E3%83%9E%E3%82%A4%E3%82%BA)

 3. アニメーション（実演&実装） `15min`  
 課題 [3.3 UIView Animation](https://github.com/mixi-inc/iOSTraining/wiki/3.3-UIView-Animation)  
 プロジェクト [day2/2.3](../../tree/master/before/day2/2.3)

 4. Auto Layout（実演&実装） `15min`

3. UIKit 3 - table view -

 1. テーブル1（実演&実装）`20min`  
 課題 [4.1 UITableView について](https://github.com/mixi-inc/iOSTraining/wiki/4.1-UITableView%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6)  
 プロジェクト [day2/3.1](../../tree/master/before/day2/3.1)

 2. テーブル2（実演&実装）`10min`  
 課題 [4.2 UITableViewとNavigationController](https://github.com/mixi-inc/iOSTraining/wiki/4.2-uitableview%E3%81%A8navigationcontroller)  
 参考 [2.1 UINavigationController](https://github.com/mixi-inc/iOSTraining/wiki/2.1-UINavigationController)  
 プロジェクト [day2/3.2](../../tree/master/before/day2/3.2)

 3. セル（説明）`3min`  
 課題 [4.3 custom UITableViewCell の作成](https://github.com/mixi-inc/iOSTraining/wiki/4.3-%E3%82%BB%E3%83%AB%E3%81%AE%E3%82%AB%E3%82%B9%E3%82%BF%E3%83%9E%E3%82%A4%E3%82%BA)

 4. テーブルのカスタマイズ（説明、headerだけ実演&実装）`15min`  
 課題 [4.4 UITableViewのその他のオプション、カスタマイズ](https://github.com/mixi-inc/iOSTraining/wiki/4.4-UITableView%E3%81%AE%E3%81%9D%E3%81%AE%E4%BB%96%E3%81%AE%E3%82%AA%E3%83%97%E3%82%B7%E3%83%A7%E3%83%B3%E3%80%81%E3%82%AB%E3%82%B9%E3%82%BF%E3%83%9E%E3%82%A4%E3%82%BA)  
 参考 [4.1 uitableviewについて](https://github.com/mixi-inc/iOSTraining/wiki/4.1-UITableView%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6#wiki-tableview%E3%81%AEdatasource-delegate%E3%83%A1%E3%82%BD%E3%83%83%E3%83%89%E3%81%AE%E8%BF%BD%E5%8A%A0)  
 プロジェクト [day2/3.4](../../tree/master/before/day2/3.4)

 5. セルの高さ（説明）`2min`  
 課題 [HomeWork 4.1 Dynamic height with a custom uitableviewcell](https://github.com/mixi-inc/iOSTraining/wiki/HomeWork-4.1-Dynamic-height-with-a-custom-uitableviewcell)

#### 宿題

* 課題 [HomeWork 3.1 UIScrollView](https://github.com/mixi-inc/iOSTraining/wiki/HomeWork-3.1-UIScrollView)  
プロジェクト [day2/homework](../../tree/master/before/day2/homework)

#### 補講

1. タブ、モーダル  
課題 [HomeWork 2.1 タブバーからモーダルビューを表示する](https://github.com/mixi-inc/iOSTraining/wiki/HomeWork-2.1-%E3%82%BF%E3%83%96%E3%83%90%E3%83%BC%E3%81%8B%E3%82%89%E3%83%A2%E3%83%BC%E3%83%80%E3%83%AB%E3%83%93%E3%83%A5%E3%83%BC%E3%82%92%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B)  
プロジェクト [day2/extra.1](../../tree/master/before/day2/extra.1)


## 3日目（2016年11月01日）

目安 `105min`

#### 項目

1. Blocks, GCD

 1. Blocks（実演&実装）`20min`  
 課題 [8.1 Blocks](https://github.com/mixi-inc/iOSTraining/wiki/8.1-Blocks)  
 プロジェクト [day3/1.1](../../tree/master/before/day3/1.1)

 2. GCD（説明）`2min`  
 課題 [8.2 Grand Central Dispatch](https://github.com/mixi-inc/iOSTraining/wiki/8.2-Grand-Central-Dispatch)

2. UIKit 4 - image and text -

 1. 画像1（実演&実装）`15min`  
 課題 [5.1 UIImagePickerController](https://github.com/mixi-inc/iOSTraining/wiki/5.1-UIImagePickerController)  
 プロジェクト [day3/2.1](../../tree/master/before/day3/2.1)

 2. 画像2（説明）`1min`  
 課題 [5.2 Assets Library](https://github.com/mixi-inc/iOSTraining/wiki/5.2-Assets-Library)

 3. テキスト（実演&実装）`15min`  
 課題 [5.4 KeyboardNotification](https://github.com/mixi-inc/iOSTraining/wiki/5.4-KeyboardNotification)  
 参考 [5.3 UITextFiled, UITextView](https://github.com/mixi-inc/iOSTraining/wiki/5.3-UITextFiled,-UITextView)  
 プロジェクト [day3/2.3](../../tree/master/before/day3/2.3)

3. ローカルキャッシュと通知

 1. 設定（実演&実装）`10min`  
 課題 [7.1 NSUserDefaults, Settings Bundle](https://github.com/mixi-inc/iOSTraining/wiki/7.1-NSUserDefaults,-Settings-Bundle)  
 プロジェクト [day3/3.1](../../tree/master/before/day3/3.1)

 2. ファイル（実演&実装）`10min`  
 課題 [7.2 NSFileManager](https://github.com/mixi-inc/iOSTraining/wiki/7.2-NSFileManager)  
 プロジェクト [day3/3.2](../../tree/master/before/day3/3.2)

 3. オブザーバ（説明）`2min`  
 課題 [7.3 Key Value Observing](https://github.com/mixi-inc/iOSTraining/wiki/7.3-Key-Value-Observing)

 4. 通知（説明）`1min`  
 課題 [7.4 NSNotification、NSNotificationCenter を用いた通知](https://github.com/mixi-inc/iOSTraining/wiki/7.4-NSNotification%E3%80%81NSNotificationCenter-%E3%82%92%E7%94%A8%E3%81%84%E3%81%9F%E9%80%9A%E7%9F%A5)  
 参考 [5.4 KeyboardNotification](https://github.com/mixi-inc/iOSTraining/wiki/5.4-KeyboardNotification)

4. ネットワーク処理

 1. JSON（説明）`2min`  
 課題 [6.2 JSONのシリアライズとデシリアライズ](https://github.com/mixi-inc/iOSTraining/wiki/6.2-JSON%E3%81%AE%E3%82%B7%E3%83%AA%E3%82%A2%E3%83%A9%E3%82%A4%E3%82%BA%E3%81%A8%E3%83%87%E3%82%B7%E3%83%AA%E3%82%A2%E3%83%A9%E3%82%A4%E3%82%BA)

 2. 通信（説明）`10min`  
 課題 [6.1 HTTPリクエストの基礎](https://github.com/mixi-inc/iOSTraining/wiki/6.1-HTTP%E3%83%AA%E3%82%AF%E3%82%A8%E3%82%B9%E3%83%88%E3%81%AE%E5%9F%BA%E7%A4%8E)  
 参考 [App Transport Security](http://developer.hatenastaff.com/entry/2016/06/16/165924)  
 参考 [NSURLSessionで非同期通信](http://qiita.com/corona6@github/items/c06045810cd484a5c070)  
 参考 [AlamofireでHTTPリクエスト](http://blogios.stack3.net/archives/826)

 3. ウェブビュー（実演）`15min`  
 課題 [6.3 WKWebView](https://github.com/mixi-inc/iOSTraining/wiki/6.3-UIWebView)  
 プロジェクト [day3/3.3](../../tree/master/before/day3/3.3)

#### 宿題

* 課題 [6.3 WKWebView](https://github.com/mixi-inc/iOSTraining/wiki/6.3-UIWebView)  
 プロジェクト [day3/homework](../../tree/master/before/day3/homework)


## 4日目（2016年11月10日）

1. 開発ツール

 1. デバッグ（実演）`10min`  
 課題 [10.1 開発ツール](https://github.com/mixi-inc/iOSTraining/wiki/10.1-%E9%96%8B%E7%99%BA%E3%83%84%E3%83%BC%E3%83%AB)  
 プロジェクト [day4/1.1](../../tree/master/before/day4/1.1)

 2. CocoaPods（実演）`10min`  
 課題 [10.2 CocoaPods](https://github.com/mixi-inc/iOSTraining/wiki/10.2-CocoaPods)  
 参考 [開発レシピ：Objective-Cのライブラリ管理ツール ](http://www.iosjp.com/dev/archives/451)  
 プロジェクト [day4/1.2](../../tree/master/before/day4/1.2)

 3. Carthage (実演) `10min`

2. 設計とデザインパターン

 1. クラス設計1（説明）`5min`  
 課題 [9.1 クラス設計 1](https://github.com/mixi-inc/iOSTraining/wiki/9.1-%E3%82%AF%E3%83%A9%E3%82%B9%E8%A8%AD%E8%A8%88-1)

 2. クラス設計2（説明）`15min`  
 課題 [9.2 クラス設計 2](https://github.com/mixi-inc/iOSTraining/wiki/9.2-%E3%82%AF%E3%83%A9%E3%82%B9%E8%A8%AD%E8%A8%88-2)  
 プロジェクト [day4/2.2](../../tree/master/before/day4/2.2)

 3. クラス設計3（実装&質問）  
 課題 [9.3 クラス設計演習](https://github.com/mixi-inc/iOSTraining/wiki/9.3-%E3%82%AF%E3%83%A9%E3%82%B9%E8%A8%AD%E8%A8%88%E6%BC%94%E7%BF%92)  
 プロジェクト [day4/2.3](../../tree/master/before/day4/2.3)
