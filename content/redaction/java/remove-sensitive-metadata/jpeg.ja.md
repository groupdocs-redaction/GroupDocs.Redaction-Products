
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ja
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してJPEGのメタデータを編集"
head_description: "GroupDocs.Redaction for Javaを使用してJPEGファイルのメタデータをクリーンアップまたは変更し、隠れたデータを削除してプライバシーを保護します。"

############################# Header ############################
title: "Javaを使用したJPEGファイルのメタデータ削除" 
description: "プライベートな詳細を削除するシンプルなJavaツールで、JPEG文書を安全に保ちましょう。"
subtitle: "GroupDocs.Redaction for Javaの主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.RedactionはJava開発者に、JPEGファイルから不要なテキスト、画像、およびメタデータを削除するためのツールを提供します。

############################# Steps ############################
steps:
    enable: true
    title: "Jpeg文書のメタデータクリーンアップ"
    content: |
      GroupDocs.Redactionを使って、あなたのJavaプロジェクトでメタデータを簡単に削除します。
      
      1. Redactorを作成し、Jpegファイルを読み込みます。
      2. すべてのメタデータフィールドを削除するオプションを選択します。
      3. 赤塗りを実行してファイルをクリアします。
      4. 隠れたデータがない更新されたファイルを保存します。
   
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
        // JPEGファイルのメタデータをクリア

        // Redactorを使ってファイルを開きます
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // メタデータのクリーンアップを設定します
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // 変更を実行して保存します
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書を保護"
  description: "GroupDocs.Redaction for Javaは多くの文書タイプからプライベートコンテンツを削除するのに役立ちます。共有ファイルから敏感な情報を除外します。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "主な赤塗り機能"
  features:
    # feature loop
    - title: "テキストを削除"
      content: "ファイルから個人の単語やフレーズを見つけて削除します。"

    # feature loop
    - title: "画像コンテンツを隠す"
      content: "機密情報を含む画像の部分を隠すためにオーバーレイを追加します。"

    # feature loop
    - title: "メタデータを編集"
      content: "プライベート情報を明らかにしないようにメタデータフィールドをクリーンアップまたは変更します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "隠れたメタデータフィールドを削除"
      content: |
        この例では、JPEG文書から著者やタイトルのメタデータを削除または変更する方法を示します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  JPEGファイルを赤塗りで開きます
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // 著者メタデータをターゲットにします
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // タイトルメタデータをターゲットにします
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 赤塗りを実行します
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // クリーンファイルを保存します
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
    title: "Javaを使用してJPEGのメタデータを削除"
    exclude: "JPEG"
    description: "Javaを使用してJPEGファイルから隠れたデータを削除し、機密情報を保護します。"
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