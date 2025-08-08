
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: ja
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してPPTXファイルからメタデータを削除"
head_description: "GroupDocs.Redaction for Javaを使用してPPTXファイル内の隠れたメタデータを削除または編集します。コンテンツを保護し、文書を清潔に保ちます。"

############################# Header ############################
title: "Javaを使用したPPTXのメタデータのクリーンアップ" 
description: "Javaを使用してメタデータに保存された個人情報をクリアします。個人的およびビジネス文書に最適です。"
subtitle: "GroupDocs.Redaction for Javaの主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaとは？"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.RedactionはJava開発者にPPTXファイル内のプライベートコンテンツを削除するためのツールを提供します。メタデータを削除し、画像を隠し、テキストをクリーンアップします。

############################# Steps ############################
steps:
    enable: true
    title: "Pptxファイルのメタデータを削除"
    content: |
      GroupDocs.Redactionを使えば、Javaプロジェクトで隠れたメタデータを数ステップでクリーンアップできます。
      
      1. Redactorを設定し、Pptxファイルをロードします。
      2. 削除するメタデータフィールドを選択します。
      3. 赤塗りプロセスを実行します。
      4. メタデータを削除したファイルを保存します。
   
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
        // PPTXからメタデータを削除

        // 赤塗りを使用してファイルを開きます
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 削除するメタデータを設定します
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
  title: "使用できる他の赤塗りツール"
  description: "GroupDocs.Redaction for Javaはすべての主要なファイルタイプから敏感な情報をクリアするのに役立ちます。文書を清潔に保ち、共有準備万端にしましょう。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "組み込まれたプライバシー機能"
  features:
    # feature loop
    - title: "敏感なテキストを削除"
      content: "ファイルから名前、メールアドレス、その他の個人情報を見つけて削除します。"

    # feature loop
    - title: "画像の一部を隠す"
      content: "見えないようにするためのオーバーレイを追加します。"

    # feature loop
    - title: "メタデータをクリーンアップ"
      content: "非公開情報が含まれる可能性のあるバックグラウンドデータを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "メタデータフィールド削除の例"
      content: |
        この例では、PPTXファイルから著者やタイトルのようなメタデータを削除する方法を説明します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  赤塗りでファイルを開きます
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // 著者フィールドをターゲットにします
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // タイトルフィールドをターゲットにします
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 赤塗りルールを適用します
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // 赤塗りされたファイルを保存します
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
    title: "Javaを使用したPPTXのメタデータの削除"
    exclude: "PPTX"
    description: "Javaを使用してPPTXファイル中の隠れたデータを削除します。共有する前に文書を安全に保つための素晴らしい方法です。"
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