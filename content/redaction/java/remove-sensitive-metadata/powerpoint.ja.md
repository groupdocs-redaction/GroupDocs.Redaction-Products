
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ja
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用したPOWERPOINTファイルのメタデータ削除"
head_description: "GroupDocs.Redaction for Javaを使用してPOWERPOINTファイルの隠れたメタデータをクリーンアップし、文書をプライベートかつ安全に保ちます。"

############################# Header ############################
title: "Javaを使用してPOWERPOINTでメタデータを削除" 
description: "Java用に作られた使いやすいツールでファイルを保護します。数ステップでメタデータを削除できます。"
subtitle: "GroupDocs.Redaction for Javaで得られるもの" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaとは何ですか？"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.RedactionはJava開発者向けの赤塗りツールです。POWERPOINTファイルのテキスト、画像、メタデータをクリーンアップします。

############################# Steps ############################
steps:
    enable: true
    title: "Powerpointファイルのメタデータをクリーンアップする方法"
    content: |
      GroupDocs.Redactionを使用すると、Javaアプリで文書のメタデータをすばやくクリーンアップできます。
      
      1. Redactorオブジェクトを作成し、文書を読み込みます。
      2. 削除したいメタデータフィールドを選択します。
      3. 赤塗り設定を適用します。
      4. 隠れたデータなしで文書をエクスポートします。
   
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
        // POWERPOINTファイルからメタデータを削除

        // 赤塗りを使用してファイルを開きます
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 削除するメタデータを設定します
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // ファイルをクリーンアップして保存します
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "赤塗りでファイルを安全に保つ"
  description: "GroupDocs.Redaction for Javaはプライベートまたは隠れたコンテンツをきれいにするのを助け、文書を安全に共有できるようにします。多くのファイルタイプをサポートしています。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "赤塗り機能"
  features:
    # feature loop
    - title: "敏感なテキストを削除"
      content: "ファイルから個人または機密の単語を見つけて削除します。"

    # feature loop
    - title: "画像の一部を隠す"
      content: "見られたくない画像を覆うためのオーバーレイを追加します。"

    # feature loop
    - title: "メタデータのクリア"
      content: "隠れた詳細を明らかにする可能性のあるフィールドを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "隠れたメタデータフィールドを削除する例"
      content: |
        このサンプルは、POWERPOINT文書から著者やタイトルのようなメタデータを削除する方法を示します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  赤塗りでファイルを開きます
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // 著者フィールドを削除します
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // タイトルフィールドを削除します
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 赤塗りを適用します
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // 更新された文書を保存します
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
    title: "Javaを使用したPOWERPOINTメタデータクリーニング"
    exclude: "POWERPOINT"
    description: "Javaを使用してPOWERPOINTファイルからプライベートデータを削除します。機密文書を整理し、共有する前に安全に保つのに最適です。"
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