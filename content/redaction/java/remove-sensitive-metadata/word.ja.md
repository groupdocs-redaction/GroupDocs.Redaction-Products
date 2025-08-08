
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ja
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用したWORDのメタデータ削除"
head_description: "GroupDocs.Redaction for Javaを使用することで、WORDファイルから隠れたメタデータを迅速に削除できます。文書を安全に、プライベートに保ちます。"

############################# Header ############################
title: "Javaを使用したWORDファイルの隠れたメタデータのクリア" 
description: "Javaツールを使用してプライベート情報を削除すれば、WORDファイルを保護できます。ビジネスや個人の使用に最適です。"
subtitle: "GroupDocs.Redaction for Javaがあなたをサポートする方法" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて学ぶ"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.RedactionはJava開発者にWORDファイルからデータを削除するために必要なすべてを提供します。メタデータ、テキスト、画像をクリーンアップします。

############################# Steps ############################
steps:
    enable: true
    title: "Wordファイルのメタデータをクリア"
    content: |
      GroupDocs.Redactionを使用してJavaアプリの文書からメタデータをクリアします。
      
      1. Redactorオブジェクトを開始し、Wordファイルをロードします。
      2. 隠れたメタデータフィールドを削除するためのルールを定義します。
      3. メタデータを消去するために赤塗りを適用します。
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
        // WORDから隠れたメタデータを削除

        // Redactorでファイルをロードします
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // メタデータ赤塗り設定を構成します
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // 赤塗りを実行して保存します
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "プライベート情報を削除するための他のツール"
  description: "GroupDocs.Redaction for Javaを使用して多くのファイルフォーマットからテキスト、画像、およびメタデータをクリーンアップすることができます。機密データを公開せずにファイルを共有できます。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "メタデータとコンテンツ赤塗り機能"
  features:
    # feature loop
    - title: "プライベートテキストを削除"
      content: "ファイル内の機密コンテンツを検索して削除します。"

    # feature loop
    - title: "画像エリアをカバー"
      content: "プライベートな詳細が含まれる画像の特定部分を隠します。"

    # feature loop
    - title: "メタデータフィールドを削除"
      content: "プライバシーを確保するために、著者、タイトルなどの隠れたタグを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "文書内のメタデータフィールドをクリア"
      content: |
        このサンプルでは、WORDファイルの著者やタイトルのメタデータを消去する方法を説明します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  処理するファイルをロードします
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // 著者フィールドを消去します
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // タイトルフィールドを消去します
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 赤塗りを実行します
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // クリアされたファイルを保存します
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
    title: "JavaでWORDのメタデータを消去"
    exclude: "WORD"
    description: "Javaを利用してWORDファイルから隠れたメタデータをクリーンアップします。文書を保護するためのシンプルな方法です。"
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