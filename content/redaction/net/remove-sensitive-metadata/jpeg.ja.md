
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ja
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C# を使用して JPEG のメタデータを編集する"
head_description: "GroupDocs.Redaction for .NET を使用すると、JPEG ファイルのメタデータをクリーンまたは変更できます。プライベートデータが含まれている可能性のある隠れた詳細を削除します。"

############################# Header ############################
title: ".NET を使用して JPEG ファイルからメタデータを削除する" 
description: "C# を使用して、JPEG ファイル内のプライベートな詳細を保護します。より良いドキュメントセキュリティのためのシンプルなツール。"
subtitle: "GroupDocs.Redaction for .NET の主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NETについて"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction は C# 開発者が JPEG ファイル内のテキスト、画像、およびメタデータを削除するのを支援します。シンプルなツールで作業します。

############################# Steps ############################
steps:
    enable: true
    title: "Jpeg ドキュメントのメタデータをクリーンアップする"
    content: |
      GroupDocs.Redaction により、あなたの .NET アプリケーション内でメタデータを削除することが容易になります。
      
      1. Redactor を設定し、クリーンにしたい Jpeg ファイルを読み込みます。
      2. すべてのメタデータを消去する設定を選択します。
      3. ファイルをクリーンにするために修正を実行します。
      4. クリーンアップされたメタデータを持つファイルを保存します。
   
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
        // JPEG ファイルからメタデータを削除する

        // Redactor を使ってファイルを読み込みます
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // メタデータの修正を設定します
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 適用して保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ドキュメントから機密データを削除する"
  description: "GroupDocs.Redaction for .NET は多くの形式にわたってプライベートなテキスト、画像部分、または隠れたフィールドを除去します。敏感なデータを保護しながら、ファイルを役立つ姿に保ちます。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "主要な修正機能"
  features:
    # feature loop
    - title: "テキストを検索して削除する"
      content: "ファイル内の敏感な言葉やフレーズを見つけて消去します。"

    # feature loop
    - title: "画像領域を覆う"
      content: "プライベートな部分を隠すためにオーバーレイを使用します。"

    # feature loop
    - title: "メタデータを編集する"
      content: "プライベートなデータを共有しないようにメタデータを削除または変更します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "隠れたメタデータフィールドをクリーンアップする"
      content: |
        この例では、JPEG ドキュメント内の隠れたメタデータを削除または編集する方法を示します。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  修正ツールで JPEG ファイルを開きます
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Author フィールドに修正を追加します
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Title フィールドに修正を追加します
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 修正プロセスを実行します
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // クリーンなドキュメントを保存します
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
    title: ".NET による JPEG メタデータのクリア"
    exclude: "JPEG"
    description: ".NET を使用して JPEG ドキュメントから隠れたデータを削除します。敏感な詳細を保護するための素晴らしい方法です。"
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