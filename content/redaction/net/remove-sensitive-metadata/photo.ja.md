
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ja
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C# を使用して PHOTO のメタデータを削除する"
head_description: "GroupDocs.Redaction for .NET を使って、個人またはビジネス情報が開示される可能性のある PHOTO ファイル内の隠れたデータを削除します。"

############################# Header ############################
title: ".NET を使った PHOTO ファイルのメタデータ削除" 
description: "C# を使用して、PHOTO ファイルから隠れた情報を簡単に保護します。"
subtitle: "GroupDocs.Redaction for .NET の特徴" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET について"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction は C# 開発者が PHOTO ファイルのプライベートコンテンツを隠すのを支援します。テキスト、画像パーツ、メタデータを含めて、簡単に作業を行えます。

############################# Steps ############################
steps:
    enable: true
    title: "Photo ファイルのメタデータを消去する"
    content: |
      GroupDocs.Redaction を使用して、あなたの .NET プロジェクトにおいてドキュメントメタデータをクリーンアップします。
      
      1. Redactor を開始し、Photo ファイルを開きます。
      2. メタデータを削除するルールを設定します。
      3. 修正を適用してファイルをクリーンにします。
      4. 結果ファイルを保存します。
   
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
        // PHOTO ドキュメントからメタデータを削除する

        // Redactor を使用してドキュメントをロードします
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // メタデータフィールドを修正するために設定します
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // ドキュメントをクリーンし、保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ファイルからプライベート情報を消去する"
  description: "GroupDocs.Redaction for .NET によって、テキスト、画像、およびファイル詳細から個人データを消去できます。データセキュリティに最適です。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "便利な修正機能"
  features:
    # feature loop
    - title: "テキストをクリアする"
      content: "共有すべきでないテキストをスキャンして削除します。"

    # feature loop
    - title: "画像領域を覆う"
      content: "画像のプライベートな詳細を覆い隠すためにカバーを追加します。"

    # feature loop
    - title: "メタデータを削除する"
      content: "公開や共有の前に隠れたファイルデータを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "隠れたメタデータフィールドの削除"
      content: |
        この例では、PHOTO ドキュメントのメタデータを削除する手順を示します。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  修正ツールで PHOTO ファイルを読み込みます
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Author フィールドを修正します
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Title フィールドを修正します
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // ドキュメントを処理します
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // クリーンバージョンを保存します
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: ".NET による PHOTO メタデータの修正に使う"
    exclude: "PHOTO"
    description: ".NET ツールを使用して、PHOTO ドキュメントの隠れたデータを排除します。機密的な情報を安全に保つために理想的です。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "画像のマスキング"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "一般的な画像フォーマット"

        # format loop 6
        - name: "写真のマスキング"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "写真フォーマット"

        # format loop 7
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 8
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 9
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"

        # format loop 10
        - name: "JPEGのマスキング"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "JPEG画像"


---