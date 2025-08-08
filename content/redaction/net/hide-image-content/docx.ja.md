
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使ってDOCXの画像をオーバーレイで覆う"
head_description: "GroupDocs.Redaction for .NETを使用して、DOCXファイル内の機密画像をカラフルなオーバーレイで覆います。文書のレイアウトを変えずにプライベートデータを保護します。"

############################# Header ############################
title: ".NETを使用してDOCX文書内の機密画像を覆う" 
description: "C#を使用してDOCXファイル内の個人情報やビジネス情報を安全に保つ。私たちのツールはデータ保護をシンプルで信頼性の高いものにします。"
subtitle: "GroupDocs.Redaction for .NETの機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETについて"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETは、C#開発者にDOCXファイル内のコンテンツを隠したり削除したりするためのツールを提供します。さまざまな形式でテキスト、画像、メタデータを赤actionして文書を保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Docxファイル内のデータを保護"
    content: |
      GroupDocs.Redaction for .NET: .NETアプリが文書を保護するために構築されています。数ステップで機密情報を赤actionします。
      
      1. Redactorを初期化し、Docxファイルへのパスを提供します。
      2. ニーズに応じて赤actionオプションを構成します。
      3. 画像領域を選択し、オーバーレイの色を選びます。
      4. 赤actionを実行し、ファイルを保存します。
   
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
        // DOCX内の機密画像領域を覆う

        // Redactorコンストラクターを介してファイルをロード
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // オーバーレイの色とサイズを設定
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 赤action領域を定義
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
  title: "ファイル内のコンテンツを赤action"
  description: "GroupDocs.Redaction for .NETを使用すると、多くのファイルタイプの機密コンテンツを隠したり削除できます。文書を安全に保ちながら、可読性を維持します。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "柔軟な赤actionオプション"
  features:
    # feature loop
    - title: "テキストを簡単に編集"
      content: "プライベートテキストを文書全体で検索し、より良いデータセキュリティを提供します。"

    # feature loop
    - title: "画像領域を覆う"
      content: "ビジュアル情報を保護するために全画像または特定の部分にオーバーレイを適用します。"

    # feature loop
    - title: "メタデータをクリーンアップ"
      content: "事故によるデータ漏洩を避けるために、隠れたメタデータを削除または変更します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを適用して画像の詳細を隠す"
      content: |
        この例は、文書内の機密エリアを隠す方法を示しています。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  赤action用に文書をロード
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // オーバーレイのパラメータ：サイズ、位置、色を指定
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 特定の領域を1ページ目で対象とする
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 画像にオーバーレイを置く
              redactor.Apply(redaction);

              // 更新されたファイルを保存
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
    title: ".NET赤actionでDOCXファイルを保護"
    exclude: "DOCX"
    description: ".NETを使用してDOCXファイル内の機密データを覆ったり削除したりします。機密文書を安全に保つために理想的です。"
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