
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ja
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C# を使用して PDF のメタデータを修正する"
head_description: "GroupDocs.Redaction for .NET を使用すると、PDF ファイルのメタデータを削除または更新できます。プライベート情報が漏れる可能性のある隠れたデータをクリーンアップしません。"

############################# Header ############################
title: ".NET を使って PDF ファイルのメタデータをクリーンアップする" 
description: "C# を使用して PDF ファイルの機密ビジネス情報と個人情報を保護します。信頼できるデータ保護のための使いやすいツール。"
subtitle: "GroupDocs.Redaction for .NET の主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET について"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction は、C# 開発者に PDF ファイル内のコンテンツを修正するための使いやすいツールを提供します。テキスト、画像、メタデータを複数の形式にわたってマスクします。

############################# Steps ############################
steps:
    enable: true
    title: "Pdf ドキュメントのメタデータを削除する"
    content: |
      GroupDocs.Redaction を使用して、あなたの .NET アプリにおけるドキュメントのメタデータを迅速に保護します。
      
      1. Redactor インスタンスを作成し、Pdf ファイルを読み込みます。
      2. すべての隠れたメタデータを削除するための修正を設定します。
      3. ドキュメントをクリーンアップするために修正を適用します。
      4. 更新されたファイルを保存します。
   
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
        // PDF ファイルからメタデータを消去する

        // Redactor でファイルを読み込みます
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // メタデータ削除の修正を設定します
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 変更を適用してファイルを保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ドキュメント内の機密データを修正する"
  description: "GroupDocs.Redaction for .NET は、さまざまなファイル形式で機密コンテンツを隠すまたは消去するのに役立ちます。プライベートデータを安全に保ち、ドキュメントを明確かつプロフェッショナルに保ちます。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "強力な修正機能"
  features:
    # feature loop
    - title: "テキストの検索と置換"
      content: "ドキュメント内の機密テキストを検索し、プライバシーを保護するために置き換えたり削除したりします。"

    # feature loop
    - title: "画像コンテンツを隠す"
      content: "敏感なビジュアルをカバーするために、画像や特定の領域にオーバーレイを追加します。"

    # feature loop
    - title: "メタデータをクリーンアップする"
      content: "不要なデータ漏れを防ぐために、隠れたメタデータを削除または編集します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "隠れたメタデータエントリを削除する"
      content: |
        この例では、PDF ファイルのメタデータを変更する方法を示します。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  修正ツールに PDF ファイルを読み込みます
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Author プロパティの修正を設定します
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Title プロパティの修正を設定します
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // ドキュメントで修正を実行します
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // クリーンしたファイルを保存します
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
    title: ".NET メタデータ修正による PDF ファイルの保護"
    exclude: "PDF"
    description: ".NET を使用して PDF ファイルから隠れたデータを消去します。ドキュメント内の機密情報を保護するためのシンプルで効果的な方法です。"
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