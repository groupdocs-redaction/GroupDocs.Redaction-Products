
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使用してIMAGE内の画像を保護するためにオーバーレイを追加"
head_description: "GroupDocs.Redaction for .NETを使用すれば、IMAGEファイル内の機密の画像データを隠すためにカラフルなオーバーレイを使用できます。ファイルの元々のデザインを維持しながら重要な情報を守ります。"

############################# Header ############################
title: ".NETを使用してIMAGEファイル内のプライベート画像を隠す" 
description: "C#を使用して、IMAGEファイル内の機密ビジネスと個人の画像を安全に保つ。迅速かつ効果的なコンテンツ保護のためのシンプルなツールです。"
subtitle: "GroupDocs.Redaction for .NETの重要な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETについて"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETは、C#開発者にIMAGEファイル内のコンテンツを隠したり削除したりするための強力なツールを提供します。テキスト、画像、メタデータをマスクして文書を保護します。

############################# Steps ############################
steps:
    enable: true
    title: "オーバーレイを使用してImageファイル内のデータを保護"
    content: |
      GroupDocs.Redaction for .NETを使用して、あなたの.NETアプリですぐにプライベートコンテンツを隠すことができます。
      
      1. Redactorインスタンスを作成し、Imageファイルへのパスを提供します。
      2. 赤action設定を必要に応じて調整します。
      3. 画像領域を選択し、オーバーレイの色を選びます。
      4. ファイルを処理し、安全なバージョンを保存します。
   
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
        // IMAGE内の画像コンテンツを保護

        // Redactorを使用してファイルを開く
        using (Redactor redactor  = new Redactor("input.png"))
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
  title: "さまざまなファイル形式のコンテンツを赤action"
  description: "GroupDocs.Redaction for .NETを使用して、異なるファイル形式でコンテンツを隠したり削除したりします。機密データを保護しながらきれいで読みやすいフォーマットを維持します。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "赤actionの完全な制御"
  features:
    # feature loop
    - title: "テキストを検索して置き換え"
      content: "文書を検索し、機密テキストを置き換えてプライベート情報を守ります。"

    # feature loop
    - title: "画像をオーバーレイ"
      content: "全画像または選択された部分にオーバーレイを適用して、機密ビジュアルを隠します。"

    # feature loop
    - title: "メタデータを編集"
      content: "隠されたメタデータフィールドを削除または変更し、データの漏洩を防ぎます。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを使って画像コンテンツを覆う"
      content: |
        このコード例は、機密の画像コンテンツを隠すためにオーバーレイを適用する方法を示しています。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  赤action用にファイルを読み込む
          using (Redactor redactor  = new Redactor("source.png"))
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

              // 画像コンテンツを隠すためにオーバーレイを追加
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
    title: ".NETを使用してIMAGEファイルのコンテンツを隠す"
    exclude: "IMAGE"
    description: ".NETを利用して、IMAGEファイル内の機密データを隠したり削除したりします。公式ファイルのセキュリティを強化するための信頼できる方法です。"
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