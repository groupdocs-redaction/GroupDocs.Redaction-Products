
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ja
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用したDOCXのメタデータ削除"
head_description: "GroupDocs.Redaction for Javaを使用してDOCXファイルの隠れたメタデータをクリーンアップします。文書がプライベート情報を明らかにしないようにします。"

############################# Header ############################
title: "Javaを使用したDOCX文書のメタデータクリーンアップ" 
description: "Javaを使用してDOCXファイルから不要なメタデータを削除します。共有や保存用にファイルをプライベートかつ安全に保ちます。"
subtitle: "GroupDocs.Redaction for Javaの主要ツール" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaとは？"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.RedactionはJava開発者がDOCXファイルからプライベートコンテンツを削除できるようにします。テキスト、画像、メタデータを簡単に赤塗りします。

############################# Steps ############################
steps:
    enable: true
    title: "Docxファイルから隠れた情報を消去"
    content: |
      GroupDocs.Redactionを使用すれば、Javaアプリで簡単にメタデータを削除できます。
      
      1. Redactorを初期化し、Docxファイルを読み込みます。
      2. 特定のメタデータフィールドを削除するよう設定します。
      3. 赤塗りを適用して隠れた情報を削除します。
      4. 更新されたファイルを保存します。
   
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
        // DOCXファイルからメタデータを削除

        // Redactorでファイルを開きます
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 削除するメタデータを選択します
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
  title: "文書内の機密データを保護"
  description: "GroupDocs.Redaction for Javaを使用すると、すべての種類のファイルからプライベートコンテンツを隠すことができます。隠れたデータが共有されないようにしましょう。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "メタデータ、テキスト、画像赤塗りツール"
  features:
    # feature loop
    - title: "テキスト赤塗り"
      content: "文書全体で機密テキストを見つけて削除します。"

    # feature loop
    - title: "画像オーバーレイ"
      content: "プライベートなビジュアルを隠すために画像の一部をカバーします。"

    # feature loop
    - title: "メタデータクリーニング"
      content: "隠れた情報を明らかにする可能性のあるバックグラウンドメタデータを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "メタデータの削除方法"
      content: |
        この例では、DOCXファイルの著者やタイトルのような隠れたプロパティを削除する方法を示します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  あなたのDOCX文書を開きます
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // クリーンアップするために著者フィールドを選択します
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // クリーンアップするためにタイトルフィールドを選択します
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 赤塗りを実行します
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
    title: "Javaを使用したDOCXのメタデータクリーンアップ"
    exclude: "DOCX"
    description: "Javaを利用してDOCX文書から隠れたメタデータを削除します。プライバシーとデータ保護に最適です。"
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