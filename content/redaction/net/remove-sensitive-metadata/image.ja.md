
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ja
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C# を使用して IMAGE 内の隠れたメタデータを削除する"
head_description: "GroupDocs.Redaction for .NET を使用して IMAGE ファイルのメタデータをクリーンアップします。プライベートな詳細が保持されるようにします。"

############################# Header ############################
title: ".NET を通じて IMAGE ファイルのメタデータを消去する" 
description: "C# を使用して IMAGE ファイルを安全に保ちます。ビジネスおよび個人のデータを容易に保護します。"
subtitle: "GroupDocs.Redaction for .NET による提供内容" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET について"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction は C# ユーザーが IMAGE ファイル内の不要なテキスト、画像部分、メタデータを削除するのを支援します。

############################# Steps ############################
steps:
    enable: true
    title: "Image ファイルのメタデータをクリーンアップする"
    content: |
      GroupDocs.Redaction を使用して、あなたの .NET アプリ内でファイルメタデータをクリーンにします。
      
      1. Redactor を作成し、Image ファイルを開きます。
      2. 隠れたメタデータエントリを削除するオプションを選択します。
      3. 修正設定を適用します。
      4. 結果を保存します。
   
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
        // IMAGE ファイルから隠れたメタデータを削除する

        // Redactor でファイルを開きます
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // メタデータに対する修正ルールを追加します
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 処理し、保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "任意のドキュメントでコンテンツをクリーンアップする"
  description: "GroupDocs.Redaction for .NET はプライベートなテキスト、画像の部分、または隠れたフィールドを除去します。文書を安全に共有できるようにします。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "主要機能"
  features:
    # feature loop
    - title: "テキストの修正"
      content: "プライベートな単語や数値を見つけて削除します。"

    # feature loop
    - title: "画像を隠す"
      content: "視覚情報を隠すために画像マスクを追加します。"

    # feature loop
    - title: "メタデータの修正"
      content: "情報漏えいの可能性があるメタデータフィールドをクリアします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "センシティブデータを消去する"
      content: |
        このサンプルでは、IMAGE ドキュメントの特定のメタデータフィールドを削除する方法を説明します。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  修正ツールで IMAGE をオープンします
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Author フィールドをターゲットにします
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Title フィールドをターゲットにします
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // フィールドを修正します
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // ドキュメントを保存します
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
    title: ".NET を使用して IMAGE からメタデータを削除する"
    exclude: "IMAGE"
    description: ".NET 修正を使って IMAGE ファイルの機密データを消去します。共有または保存するためにファイルを安全に保つための方法です。"
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