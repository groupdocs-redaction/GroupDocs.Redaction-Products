
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ja
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用したPDFのメタデータクリーンアップ"
head_description: "GroupDocs.Redaction for Javaを使用してPDFファイルの隠れたメタデータを削除または更新します。文書を共有する前にプライベート情報を除去します。"

############################# Header ############################
title: "Javaを使用したPDFファイルのメタデータ削除" 
description: "Javaを使用してPDFファイルの個人情報やビジネス情報を安全に保ちましょう。データを保護するためのシンプルなツールです。"
subtitle: "GroupDocs.Redaction for Javaの主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.RedactionはJava開発者に、PDF文書内のテキスト、画像コンテンツ、およびメタデータを隠すためのツールを提供します。

############################# Steps ############################
steps:
    enable: true
    title: "Pdf文書のメタデータクリーンアップ"
    content: |
      GroupDocs.Redactionを使用して、あなたのJavaプロジェクトのメタデータを保護しましょう。
      
      1. Redactorを設定し、Pdfファイルを開きます。
      2. すべてのメタデータフィールドを削除するオプションを選択します。
      3. 赤塗りを実行して、隠れたデータをクリアします。
      4. メタデータを削除してファイルを保存します。
   
    code:
      platform: "java"
      copy_title: "コピー"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "サンプルのマスキング"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "クリックしてコピー"
        copy_done: "コピーしました"
      links:
        #  loop
        - title: "さらに多くの例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "ドキュメンテーション"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // PDFファイルのメタデータをクリーンアップ

        // Redactorを使用してファイルを開きます
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // メタデータの赤塗り設定をします
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // 変更を適用して保存します
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ファイルから機密情報を削除"
  description: "GroupDocs.Redaction for Javaを使って様々な文書フォーマットからプライベートコンテンツをクリーンアップします。ファイルを安全に保ち、簡単に共有できます。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "コア赤塗り機能"
  features:
    # feature loop
    - title: "テキスト赤塗り"
      content: "文書内の個人または機密の単語を見つけて削除します。"

    # feature loop
    - title: "画像をカバー"
      content: "私的なビジュアルを隠すために画像にオーバーレイを置きます。"

    # feature loop
    - title: "メタデータ削除"
      content: "プライベート情報が漏れる危険性のある隠れたメタデータを消去します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "隠れたメタデータをクリア"
      content: |
        この例では、PDFファイルのメタデータを変更または削除する方法を示します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  PDFファイルを赤塗りで開きます
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // 著者メタデータフィールドをターゲットにします
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // タイトルメタデータフィールドをターゲットにします
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // メタデータクリーンアップを実行します
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // 最終ファイルを保存します
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "コピー"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "ドキュメンテーション"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "始める準備はできましたか？"
  description: "GroupDocs.Redactionの機能を無料で試すか、ライセンスをリクエストしてください"
  items:
    #  loop
    - title: "Mavenをダウンロード"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "ライセンス"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Javaメタデータ赤塗りによるPDFファイルのセキュア"
    exclude: "PDF"
    description: "Javaを使用してPDFファイルの隠れたフィールドを消去します。シンプルなメタデータクリーンアップツールでプライバシーを保護します。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "画像のマスキング"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "一般的な画像フォーマット"

        # format loop 6
        - name: "写真のマスキング"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "写真フォーマット"

        # format loop 7
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 8
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 9
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"

        # format loop 10
        - name: "JPEGのマスキング"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "JPEG画像"


---