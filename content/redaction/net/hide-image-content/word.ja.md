
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使ってWORD内の画像をオーバーレイで覆う"
head_description: "GroupDocs.Redaction for .NETを使って、WORDファイル内の機密画像領域を隠します。プライベートデータを保護しながら文書のオリジナルレイアウトを保持します。"

############################# Header ############################
title: ".NETを使ってWORDファイル内のプライベート画像を隠す" 
description: "C#を用いてWORD文書内の個人およびビジネスデータを守ります。信頼できるコンテンツ保護を実現する簡単なツールです。"
subtitle: "GroupDocs.Redaction for .NETの主要な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETについて"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETは、C#開発者にWORDファイル内のコンテンツを隠したり削除したりするためのツールを提供します。テキスト、画像、メタデータを覆って文書を保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Wordファイル内の機密データを保護"
    content: |
      GroupDocs.Redaction for .NETは、あなたの.NETアプリが迅速にプライベートコンテンツを隠すのを手助けします。
      
      1. Redactorオブジェクトを作成し、Wordファイルのパスを指定します。
      2. ニーズに合った赤actionパラメータを設定します。
      3. 画像エリアをマークし、オーバーレイの色を定義します。
      4. 処理を行い、赤action済みのファイルを保存します。
   
    code:
      platform: "net"
      copy_title: "コピー"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "サンプルのマスキング"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "クリックしてコピー"
        copy_done: "コピーしました"
      links:
        #  loop
        - title: "さらに多くの例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "ドキュメンテーション"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // WORD内の機密画像を覆う

        // Redactorコンストラクターを介してファイルをロード
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // オーバーレイの色とサイズを選択
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 赤actionする画像エリアを選択
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // オーバーレイを適用して文書を保存
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ドキュメントのコンテンツを隠すまたは削除"
  description: "GroupDocs.Redaction for .NETを使用すると、さまざまなファイル形式でデータを簡単に隠したり削除したりできます。データを保護しつつ、文書をきれいで読みやすく保ちます。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "詳細な赤actionツール"
  features:
    # feature loop
    - title: "どこでもテキストを置き換え"
      content: "文書全体で機密テキストを検索して修正し、プライベートデータを保護します。"

    # feature loop
    - title: "画像をマスク"
      content: "特定の画像領域または全体にオーバーレイを追加して、プライベートなビジュアルを隠します。"

    # feature loop
    - title: "メタデータをクリーンアップ"
      content: "事故を避けるために隠されたメタデータを削除または修正します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを追加して画像コンテンツを隠す"
      content: |
        この例は、オーバーレイを使って文書の画像データを保護する方法を示しています。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  編集用に文書をロード
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // オーバーレイのサイズ、位置、色を設定
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // ページ1の特定の画像エリアに焦点を当てる
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // オーバーレイを適用する
              redactor.Apply(redaction);

              // ファイルの変更を保存
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
          }
          ```
        platform: "net"
        copy_title: "コピー"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "クリックしてコピー"
          copy_done: "コピーしました"
        top_links:
          #  loop
          - title: "結果をダウンロード"
            icon: "download"
            link: "/examples/redaction/formats/hide-image-content.pdf"
        links:
          #  loop
          - title: "さらに多くの例"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "ドキュメンテーション"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "始める準備はできましたか？"
  description: "GroupDocs.Redactionの機能を無料で試すか、ライセンスをリクエストしてください"
  items:
    #  loop
    - title: "Nugetをダウンロード"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "ライセンス"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: ".NET赤actionでWORDコンテンツを保護"
    exclude: "WORD"
    description: ".NETを使って機密コンテンツをWORDファイル内で隠したり削除したりします。機密および公式文書の保護に信頼できる方法です。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "画像のマスキング"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "一般的な画像フォーマット"

        # format loop 6
        - name: "写真のマスキング"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "写真フォーマット"

        # format loop 7
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 8
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 9
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"

        # format loop 10
        - name: "JPEGのマスキング"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "JPEG画像"


---