
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: ja
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C# を使用して WORD からメタデータを削除する"
head_description: "GroupDocs.Redaction for .NET を使用して、WORD ファイル内の隠れたメタデータを見つけて削除します。プライベートで機密なデータを明らかにさせないために、ドキュメントを保護します。"

############################# Header ############################
title: ".NET を使用して WORD ファイル内のメタデータを削除する" 
description: "C# を使用して WORD ファイル内の個人および企業データを保護します。信頼性の高いファイルプライバシーのためのシンプルなツール。"
subtitle: "GroupDocs.Redaction for .NET でできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET について"
    link: "/redaction/net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction は C# 開発者が WORD ファイル内の内容を保護するのを支援します。テキスト、画像、およびメタデータを迅速かつ容易にクリーンアップします。

############################# Steps ############################
steps:
    enable: true
    title: "Word ファイルからメタデータを削除する"
    content: |
      GroupDocs.Redaction を用いれば、あなたの .NET 環境で、ドキュメントのメタデータを簡単にクリーンアップすることができます。
      
      1. Redactor オブジェクトを初期化し、Word ドキュメントを開きます。
      2. すべての隠れたメタデータを消去するためのルールを設定します。
      3. 敏感なタグを削除するために修正を実行します。
      4. クリーンされたドキュメントを保存します。
   
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
        // WORD ファイルからメタデータを消去する

        // Redactor を使用してドキュメントを開きます
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // メタデータ削除のオプションを設定します
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 修正を適用してクリーンなファイルを保存します
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書から機密データを修正する"
  description: "GroupDocs.Redaction for .NET を使用すれば、さまざまな形式からプライベートコンテンツを削除できます。ファイルの構造を維持しつつ、安全に保護します。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "メタデータとコンテンツ修正ツール"
  features:
    # feature loop
    - title: "機密テキストを置き換える"
      content: "ドキュメント内のテキストを見つけて安全に削除または変更し、プライベート情報を保護します。"

    # feature loop
    - title: "画像にマスクをかける"
      content: "視覚データを隠すために画像の敏感な領域を覆います。"

    # feature loop
    - title: "メタデータを消去する"
      content: "情報漏えいを避けるために隠れたデータを見つけてクリーンアップします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "隠れたメタデータを編集または削除する"
      content: |
        この例では、WORD ドキュメント内のメタデータエントリをターゲットにしてクリーンアップする方法を示します。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  修正のためにファイルを読み込みます
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Author メタデータを削除します
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Title メタデータを削除します
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 修正プロセスを実行します
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // クリーンなドキュメントをエクスポートします
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
    title: ".NET による WORD のメタデータ修正"
    exclude: "WORD"
    description: ".NET を使用して WORD ファイルから隠れたメタデータをクリーンアップします。機密情報を安全に保ち、シンプルなツールで保護します。"
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