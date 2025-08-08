
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ja
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C# を使用して DOCX からメタデータを削除する"
head_description: "GroupDocs.Redaction for .NET を使って DOCX ファイルの隠れたメタデータを削除または変更します。プライベートな詳細が漏れないようにドキュメントを保護します。"

############################# Header ############################
title: ".NET を使用して DOCX ファイル内のメタデータを削除する" 
description: "C# を使用して DOCX ファイルから機密メタデータをクリーンアップします。ビジネスおよび個人データを保護します。"
subtitle: "GroupDocs.Redaction for .NET の主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET とは？"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction は、C# 開発者が DOCX ファイル内のコンテンツを隠すまたは削除するためのツールを提供します。テキスト、画像、およびメタデータを迅速にクリーンアップします。

############################# Steps ############################
steps:
    enable: true
    title: "Docx ファイルの隠れたデータをクリーンアップする"
    content: |
      GroupDocs.Redaction は、あなたの .NET プロジェクトが不要なメタデータを迅速に削除するのを支援します。
      
      1. Redactor インスタンスを作成し、Docx ファイルを開きます。
      2. メタデータエントリをターゲットにした修正を設定します。
      3. ドキュメントをクリーンアップするために変更を適用します。
      4. クリーンしたファイルを保存します。
   
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
        // DOCX ドキュメントからメタデータを消去する

        // Redactor を使用してファイルを読み込みます
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // メタデータ削除の設定を行います
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 変更を適用してファイルを保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "任意のドキュメントで機密情報を隠す"
  description: "GroupDocs.Redaction for .NET を使用して、さまざまなファイル形式で機密内容をクリーンアップします。文書を安全に共有または保存できるようにします。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "賢い修正オプション"
  features:
    # feature loop
    - title: "プライベートテキストを削除する"
      content: "ファイルから個人またはビジネスのテキストを探して消去します。"

    # feature loop
    - title: "画像にマスクをかける"
      content: "機密情報を隠すために画像または選択した領域を覆います。"

    # feature loop
    - title: "メタデータを消去する"
      content: "隠れたメタデータエントリをクリアして、背景の詳細が漏れないようにします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "メタデータフィールドをクリーンアップする"
      content: |
        この例では、DOCX ファイルから隠れたデータを削除する方法を示します。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  DOCX ファイルを読み込みます
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // 削除を対象とする Author フィールドを設定します
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 削除を対象とする Title フィールドを設定します
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 修正プロセスを実行します
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 更新されたファイルを保存します
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
    title: ".NET を使用して DOCX 内のメタデータを削除する"
    exclude: "DOCX"
    description: ".NET を使用して DOCX ファイル内の不要なメタデータを削除します。ファイル内の隠れた詳細を保護するためのシンプルな方法です。"
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