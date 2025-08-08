
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ja
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C# を使用して XLSX ファイルのメタデータをクリーンアップする"
head_description: "GroupDocs.Redaction for .NET を使用すると、XLSX ファイルからメタデータを安全に削除できます。プライベートデータが明らかになる可能性のある隠れた情報をクリアします。"

############################# Header ############################
title: ".NET を使って XLSX ファイルからメタデータを消去する" 
description: "C# を使用して XLSX ファイルの機密詳細を保護します。個人およびビジネス文書のための簡単な修正。"
subtitle: "GroupDocs.Redaction for .NET の機能を探る" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET について学ぶ"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction は、C# 開発者が XLSX ドキュメント内のコンテンツをクリーンに保つためのツールを提供します。テキスト、画像、およびメタデータをマスクまたは削除します。

############################# Steps ############################
steps:
    enable: true
    title: "Xlsx ファイルのメタデータをクリアする"
    content: |
      GroupDocs.Redaction を使用すれば、あなたの .NET アプリは迅速に隠れたデータを削除できます。
      
      1. Redactor を設定し、Xlsx ファイルを開きます。
      2. 削除したいメタデータを定義します。
      3. 修正ルールを適用します。
      4. 最終ファイルを保存します。
   
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
        // XLSX 内の隠れたメタデータをクリアします

        // Redactor を使用してファイルを開きます
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // 削除するメタデータを設定します
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 修正を適用して保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書内の機密情報を保護する"
  description: "GroupDocs.Redaction for .NET を使用して、さまざまなファイル形式でコンテンツを消去または隠します。ファイルをプライベートのままにし、共有可能にします。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "すべてを一つにした修正機能"
  features:
    # feature loop
    - title: "テキストを置き換えるまたは削除する"
      content: "機密のテキストを見つけて削除し、個人データを保護します。"

    # feature loop
    - title: "画像セクションを隠す"
      content: "プライベートなビジュアルである必要のある画像エリアを覆うためにオーバーレイを使用します。"

    # feature loop
    - title: "メタデータを削除する"
      content: "個人情報やビジネスの詳細が含まれている可能性のある隠れたメタデータフィールドをクリアします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "メタデータを削除する方法"
      content: |
        このサンプルコードは、XLSX ドキュメント内のメタデータプロパティを削除します。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  ドキュメントを開きます
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Author メタデータをターゲットにします
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Title メタデータをターゲットにします
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
    title: ".NET を使用して XLSX のメタデータを削除する"
    exclude: "XLSX"
    description: ".NET を使用して XLSX ファイルからプライベートメタデータを排除します。ドキュメントをクリーンで安全に保ちます。"
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