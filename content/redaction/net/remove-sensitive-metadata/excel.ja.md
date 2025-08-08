
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ja
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C# による EXCEL でのメタデータの編集と削除"
head_description: "GroupDocs.Redaction for .NET を使用し、メタデータを削除することで EXCEL ドキュメントを保護します。プライバシーを損なう可能性のある隠れたデータを排除します。"

############################# Header ############################
title: ".NET による EXCEL ファイルのメタデータ保護" 
description: "C# を使用して EXCEL ファイルから機密データをクリーンアップします。情報保護のために設計されたツール。"
subtitle: "GroupDocs.Redaction for .NET の主な利点" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET とは？"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction は C# 開発者に、EXCEL ファイルで修正を管理する信頼性の高い方法を提供します。テキスト、画像、そしてメタデータと連携します。

############################# Steps ############################
steps:
    enable: true
    title: "Excel ファイルのメタデータをクリアする"
    content: |
      GroupDocs.Redaction をあなたの .NET プロジェクトで使用して、ドキュメントのメタデータを安全に処理します。
      
      1. Redactor オブジェクトを作成し、対象の Excel ファイルを読み込みます。
      2. 隠れたメタデータをクリアするために修正を設定します。
      3. クリーンアッププロセスを実行します。
      4. 最終バージョンを保存します。
   
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
        // EXCEL からメタデータを消去する

        // 修正ツールを初期化し、ファイルを読み込みます
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // メタデータの削除オプションを設定します
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 修正を行い、結果を保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "あなたのファイル内のプライベートデータを消去する"
  description: "GroupDocs.Redaction for .NET を使用すると、複数の形式でテキスト、画像、メタデータをクリーンアップできます。個人、法的、および企業文書に最適です。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "メタデータ除去ツール"
  features:
    # feature loop
    - title: "テキストを検索して削除する"
      content: "ドキュメント内の個人情報や機密テキストを見つけて安全に削除します。"

    # feature loop
    - title: "視覚要素を隠す"
      content: "可視化を防ぐために画像の敏感な部分にオーバーレイを追加します。"

    # feature loop
    - title: "メタデータを削除する"
      content: "漏洩する可能性のある埋め込まれたデータを消去します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "修正対象のメタデータをターゲットにする"
      content: |
        EXCEL ドキュメント内の Author や Title などのメタデータを見つけて削除する方法を学びます。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  ドキュメントを修正ツールにインポートします
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

              // 変更を適用します
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 更新したドキュメントを保存します
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
    title: ".NET を使用して EXCEL 内のメタデータを削除する"
    exclude: "EXCEL"
    description: ".NET を使用して EXCEL ファイルからプライベートメタデータを排除します。ドキュメントをクリーンで安全に保ちます。"
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