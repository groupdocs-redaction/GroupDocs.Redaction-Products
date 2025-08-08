
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ja
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してEXCELのメタデータを削除"
head_description: "GroupDocs.Redaction for Javaを使用して隠れたメタデータをクリアして、EXCEL文書を保護します。露出することのないプライベート詳細を保持します。"

############################# Header ############################
title: "Javaを使用したEXCELファイル内のメタデータのクリア" 
description: "Javaを使用して、EXCELファイルから敏感なデータを削除します。文書を安全に保つための賢い方法です。"
subtitle: "GroupDocs.Redaction for Javaの理由" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.RedactionはJava開発者にEXCELファイルのコンテンツを管理するためのツールを提供します。必要に応じてテキスト、メタデータ、および画像を削除できます。

############################# Steps ############################
steps:
    enable: true
    title: "Excelファイルからメタデータを削除する方法"
    content: |
      Java内で、GroupDocs.Redactionが文書メタデータのクリーニングを簡素化します。
      
      1. Redactorを作成し、Excelファイルをロードします。
      2. 隠れたデータフィールドを削除するためのルールを設定します。
      3. クリーンアッププロセスを実行します。
      4. クリアされた文書を保存します。
   
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
        // EXCELから隠れたメタデータを削除

        // 赤塗りを開始し、ファイルを開きます
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // メタデータ削除のオプションを設定します
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // クリーンアップして文書を保存します
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ファイルから機密コンテンツを削除"
  description: "GroupDocs.Redaction for Javaを使用すると、複数の文書タイプからメタデータを削除し、テキスト及び画像のエリアをマスクできます。法的、個人的または企業の使用に適しています。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "メタデータとコンテンツのクリーニングツール"
  features:
    # feature loop
    - title: "テキストを検索して削除"
      content: "敏感なテキストを検索し、情報を保護するために削除します。"

    # feature loop
    - title: "画像の内容を隠す"
      content: "オーバーレイを使って機密の画像部分を隠します。"

    # feature loop
    - title: "メタデータを削除"
      content: "プライベートなデータが含まれる可能性のある埋め込まれた詳細を削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "特定のメタデータフィールドに焦点を当てる"
      content: |
        この例では、EXCELファイルから著者やタイトルのフィールドを削除する方法を説明します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  赤塗りにファイルをロードします
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // 著者フィールドを選択します
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // タイトルフィールドを選択します
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 赤塗りを適用します
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
    title: "Javaを使用したEXCELのメタデータクリーニング"
    exclude: "EXCEL"
    description: "Javaのツールを使用してEXCELファイルから隠れたデータを消去します。文書を共有する前に安全に保ちます。"
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