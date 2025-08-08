
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使ってPHOTO内の画像を隠すためにオーバーレイを追加"
head_description: "GroupDocs.Redaction for .NETを使用すれば、PHOTOファイル内の機密画像をオーバーレイで貫通し、文書のレイアウトを intactに保ちながらプライベートデータを守ります。"

############################# Header ############################
title: ".NETを使用してPHOTOファイル内の画像コンテンツを隠す" 
description: "C#を使用して、PHOTOファイルの個人および会社の画像を保護します。効果的なコンテンツ保護のためのシンプルなツールです。"
subtitle: "GroupDocs.Redaction for .NETの主要功能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETについて"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETは、C#開発者にPHOTOファイル内のコンテンツを隠したり削除したりするための強力なツールを提供します。プライベートなテキスト、画像、メタデータを保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Photoファイル内のコンテンツを安全に保護"
    content: |
      GroupDocs.Redaction for .NETは、あなたの.NETアプリですばやくコンテンツを隠すのを助けます。
      
      1. Redactorオブジェクトを作成し、Photoファイルを指定します。
      2. 赤action設定を必要に応じて調整します。
      3. 画像エリアを選択し、オーバーレイの色を選びます。
      4. 赤actionを適用し、保護されたファイルを保存します。
   
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
        // PHOTO内の画像コンテンツを保護

        // Redactorを使用してファイルを開く
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // オーバーレイのサイズと色を定義
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 隠したいエリアを選択
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // オーバーレイを適用し、結果を保存
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "簡単に機密コンテンツを赤action"
  description: "GroupDocs.Redaction for .NETは、多くのファイルタイプの機密コンテンツを隠したり削除したりします。文書をきれいで読みやすく保ちながらプライベートデータを守ります。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "オールインワン赤actionツール"
  features:
    # feature loop
    - title: "文書内のテキストを編集"
      content: "プライベートテキストを検索し、置き換えることで機密情報を保護します。"

    # feature loop
    - title: "画像エリアを隠す"
      content: "画像または選択された部分にオーバーレイを追加して、プライベートビジュアルを隠します。"

    # feature loop
    - title: "メタデータをクリーンアップ"
      content: "隠れたメタデータを削除して、事故的なデータ漏洩を避けます。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイで画像コンテンツを隠す"
      content: |
        このコード例は、機密の画像コンテンツを隠すためにオーバーレイを適用する方法を示しています。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  赤action用にファイルを読み込む
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // オーバーレイのサイズ、色、および位置を設定
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // ページ1の画像エリアを選択
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // オーバーレイを使用して画像を隠し
              redactor.Apply(redaction);

              // 更新したファイルを保存
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
    title: ".NETを使ったPHOTOファイルのコンテンツを隠す"
    exclude: "PHOTO"
    description: ".NETを利用して、PHOTOファイル内の機密データを隠したり削除したりします。公式なファイルのセキュリティを確保するための信頼できる手段です。"
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