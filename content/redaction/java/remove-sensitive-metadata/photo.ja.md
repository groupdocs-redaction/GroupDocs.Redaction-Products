
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ja
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してPHOTOのメタデータを削除"
head_description: "GroupDocs.Redaction for Javaは、個人またはビジネスの詳細を露出する可能性のある隠れたデータをPHOTOファイルから削除するのを助けます。"

############################# Header ############################
title: "Javaを使用してPHOTOのメタデータを削除" 
description: "Javaツールを使用して隠れたメタデータを削除し、PHOTOファイルを安全に保ちます。"
subtitle: "GroupDocs.Redaction for Javaの見どころ" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.RedactionはJava開発者に、PHOTOファイルからプライベートコンテンツを隠すためのツールを提供します。テキスト、画像セクション、およびメタデータを含みます。

############################# Steps ############################
steps:
    enable: true
    title: "Photoファイルからメタデータを削除する方法"
    content: |
      GroupDocs.Redactionを使用してあなたのJavaアプリで文書からメタデータを削除します。
      
      1. Redactorを開始し、Photoファイルを開きます。
      2. 隠れているフィールドを削除するためのルールを設定します。
      3. ファイルをクリーンアップするために赤塗りを適用します。
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
        // PHOTOファイルのメタデータをクリーンアップ

        // Redactorでファイルを開きます
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // メタデータフィールドを赤塗りします
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // 適用してファイルを保存します
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書からプライベート情報を削除"
  description: "GroupDocs.Redaction for Javaは、敏感なテキスト、画像コンテンツ、メタデータを削除することでファイルをクリーンアップします。プライバシーとセキュリティに最適です。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "役立つ赤塗り機能"
  features:
    # feature loop
    - title: "テキストクリーンアップ"
      content: "公開するべきでない単語や数字を見つけて削除します。"

    # feature loop
    - title: "画像赤塗り"
      content: "機密内容を含む画像の一部にカバーを追加します。"

    # feature loop
    - title: "メタデータ削除"
      content: "プライベート情報を含む可能性のあるファイル詳細をクリーンアップします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "隠れたメタデータフィールドを削除"
      content: |
        この例では、PHOTO文書から著者やタイトルのフィールドを削除する方法を示します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  赤塗りでPHOTOファイルを開きます
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // 著者フィールドを赤塗りします
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // タイトルフィールドを赤塗りします
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // プロセスを実行します
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
    title: "Javaを使用してPHOTOのメタデータを削除"
    exclude: "PHOTO"
    description: "Javaを使用することで、メタデータを削除してPHOTO文書を保護できます。"
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