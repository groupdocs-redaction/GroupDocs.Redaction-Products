
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: ja
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C#を使用してPDF内の画像をオーバーレイで隠す"
head_description: "GroupDocs.Redaction for .NETを使用すると、PDFファイル内の機密画像をカラフルなオーバーレイで保護できます。文書のレイアウトを変更することなく、プライベート情報を安全に保ちます。"

############################# Header ############################
title: ".NETを使用してPDF文書内の機密画像をオーバーレイで保護" 
description: "C#を使用してPDFファイル内のビジネス及び個人データを安全に保つ。私たちのツールは、強力なデータ保護を実現します。"
subtitle: "GroupDocs.Redaction for .NETの機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETについて"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NETは、C#開発者にPDFファイル内のコンテンツを隠したり削除したりするための強力なツールを提供します。複数の形式でテキスト、画像、メタデータを覆い、文書を保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Pdf文書内のビジネスデータを保護"
    content: |
      GroupDocs.Redaction for .NET: .NETアプリが文書を保護するために設計されています。プライベート情報を迅速に隠します。
      
      1. Redactorインスタンスを作成し、保護したいPdfファイルへのパスを提供します。
      2. 必要な結果を得るために赤action設定を調整します。
      3. 画像領域を選択し、オーバーレイの色を設定します。
      4. ファイルを処理し、赤action済みの文書を保存します。
   
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
        // PDF内の機密画像コンテンツを隠す

        // Redactorコンストラクターを使用してファイルをロード
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // オーバーレイの色とサイズを設定
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 赤actionする領域を選択
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 画像にオーバーレイを適用し、ファイルを保存
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書内のコンテンツを赤action"
  description: "GroupDocs.Redaction for .NETを使用すると、さまざまなファイル形式のコンテンツを隠したり削除したりできます。簡単に読み取りやすく共有できる形で機密情報を保護します。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "高度な赤action機能"
  features:
    # feature loop
    - title: "どこでもテキストを編集"
      content: "文書全体の機密テキストを検索して置き換え、プライベートデータを保護します。"

    # feature loop
    - title: "画像を覆う"
      content: "機密ビジュアルを隠すために、全画像または選択した領域にオーバーレイを適用します。"

    # feature loop
    - title: "メタデータを処理"
      content: "事故によるデータ漏洩を防ぐために、隠れたメタデータを削除または修正します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを使用して画像データを隠す"
      content: |
        この例は、文書の画像内の機密情報を覆う方法を示しています。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  赤action用に文書をロード
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // オーバーレイ設定：サイズ、位置、色を設定
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 1ページ目の特定の画像領域を対象とする
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 画像を隠すためにオーバーレイを適用
              redactor.Apply(redaction);

              // 赤action済み文書を保存
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
    title: ".NET赤actionでPDFコンテンツを保護"
    exclude: "PDF"
    description: ".NETを使用してPDFファイル内の機密コンテンツを隠したり削除したりします。公式および機密文書を保護するための効果的なソリューションです。"
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