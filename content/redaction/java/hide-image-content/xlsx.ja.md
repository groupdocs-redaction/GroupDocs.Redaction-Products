
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: ja
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用したXLSXファイルのオーバーレイによるカバー画像"
head_description: "GroupDocs.Redaction for Javaを使用して、XLSXファイル内の機密画像をカラフルなオーバーレイで隠します。文書の構造を変更せずに重要なデータを保護します。"

############################# Header ############################
title: "Javaを使用したXLSX文書内のプライベート画像のカバー" 
description: "Javaを使用して、XLSXファイル内の機密画像コンテンツを安全に保ちます。使いやすいツールで、画像の削除が迅速かつ信頼できるものになります。"
subtitle: "GroupDocs.Redaction for Javaの主要機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、Java開発者にXLSXファイル内のコンテンツを隠したり消去したりするためのツールを提供します。テキスト、画像、メタデータをさまざまな文書形式で保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Xlsx文書内のプライベートデータを安全に保つ"
    content: |
      GroupDocs.Redaction for Javaは、Javaアプリが文書を保護するのを手助けします。簡単なステップでプライベートデータをカバーします。
      
      1. Redactorを初期化し、Xlsx文書を読み込みます。
      2. プロジェクトに合った赤外設定を行います。
      3. カバーする画像セクションを選択し、オーバーレイの色を選びます。
      4. 赤外処理を実行してファイルを保存します。
   
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
        // XLSX内で機密画像エリアをカバーします

        // Redactorを使用してファイルを生成しています
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // オーバーレイのサイズと色を設定します
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // カバーする領域を選択します
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // オーバーレイを適用して文書を保存します
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ファイル内の機密コンテンツを隠す"
  description: "GroupDocs.Redaction for Javaを使用すると、さまざまなファイル形式からコンテンツを削除または削除できます。文書を安全に読みやすく保ちます。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "文書向けの削除機能"
  features:
    # feature loop
    - title: "テキストを検索して置き換え"
      content: "プライベートテキストを見つけてそれを削除することで、文書を保護します。"

    # feature loop
    - title: "画像の内容を隠す"
      content: "機密の画像または特定のセクションをカバーするためにオーバーレイを適用します。"

    # feature loop
    - title: "メタデータを削除"
      content: "文書から隠れたメタデータを削除してデータの露出を防ぎます。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを使って画像の詳細を隠す"
      content: |
        機密部分の画像を文書内で保護する方法を学びます。オーバーレイを使用します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  文書を非表示のために読み込む
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // オーバーレイのサイズ、色、位置を設定
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // 特定の画像エリアを選択
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // 画像をカバーするためにオーバーレイを適用
              redactor.apply(redaction);

              // 赤外文書を保存します
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "JavaによるXLSXファイルの削除"
    exclude: "XLSX"
    description: "Javaを使用して、XLSXファイル内のプライベートデータを隠したり削除したりできます。ビジネスと機密文書を安全に保つための完璧な方法です。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "画像のマスキング"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "一般的な画像フォーマット"

        # format loop 6
        - name: "写真のマスキング"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "写真フォーマット"

        # format loop 7
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 8
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 9
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"

        # format loop 10
        - name: "JPEGのマスキング"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "JPEG画像"


---