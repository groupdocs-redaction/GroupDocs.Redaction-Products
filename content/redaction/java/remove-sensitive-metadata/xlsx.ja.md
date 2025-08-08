
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ja
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してXLSXのメタデータを削除"
head_description: "GroupDocs.Redaction for JavaはXLSXファイルから隠れたメタデータをクリーンアップするのに役立ちます。文書をプライベートで不要な詳細から解放します。"

############################# Header ############################
title: "Javaを使用したXLSXファイルのメタデータのクリーンアップ" 
description: "Javaを使用してXLSX文書の個人または隠れた詳細を取り除きます。ビジネスでもプライベートでも理想的です。"
subtitle: "GroupDocs.Redaction for Javaでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.RedactionはJava開発者に、XLSXファイル内のコンテンツを制御するためのツールを提供します。必要に応じてテキスト、メタデータ、および画像を削除します。

############################# Steps ############################
steps:
    enable: true
    title: "Xlsxファイルからメタデータを削除"
    content: |
      GroupDocs.Redactionはお使いのJavaプロジェクトの敏感なメタデータをすばやくクリアします。
      
      1. Redactorを開始し、Xlsxファイルを開きます。
      2. 削除するメタデータフィールドを選択します。
      3. 赤塗りを実行してファイルからそれを消去します。
      4. クリーンバージョンを保存します。
   
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
        // XLSXから隠れたメタデータを削除

        // Redactorを使用してファイルを開きます
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // 削除するメタデータフィールドを選択します
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // 赤塗りを適用してファイルを保存します
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ファイルから機密コンテンツを削除"
  description: "GroupDocs.Redaction for Javaを使用すると、複数の文書タイプのメタデータを削除し、テキストや画像の領域をマスクできます。法的、個人的、または企業用に最適です。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "メタデータとコンテンツのクリーニングツール"
  features:
    # feature loop
    - title: "テキストを検索して削除"
      content: "機密のテキストを検索して削除し、情報を保護します。"

    # feature loop
    - title: "画像内容をカバー"
      content: "オーバーレイを使用して機密の画像部分を隠します。"

    # feature loop
    - title: "メタデータを削除"
      content: "プライベートデータが含まれる可能性のある埋め込まれた詳細を削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "特定のメタデータフィールドの削除"
      content: |
        この例では、XLSXファイルからの著者やタイトルのようなフィールドを削除する方法を示します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  ファイルを赤塗りに読み込みます
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
    title: "Javaを使用してXLSXのメタデータをクリーンアップ"
    exclude: "XLSX"
    description: "Javaツールを利用してXLSXファイルから隠れたデータを削除します。整理された、セキュアな文書を共有してください。"
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