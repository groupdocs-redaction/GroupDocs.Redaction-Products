
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: ja
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用したWORDのオーバーレイによる画像隠蔽"
head_description: "GroupDocs.Redaction for Javaを使用して、WORDファイル内の機密画像をオーバーレイで隠すことができます。文書のレイアウトを変えることなくプライベートデータを保護します。"

############################# Header ############################
title: "Javaを使用したWORDファイル内の機密画像の保護" 
description: "Javaを使って、WORD文書の個人およびビジネスビジュアルを保護します。迅速で信頼性の高い画像の削除が簡単になります。"
subtitle: "GroupDocs.Redaction for Javaの主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、Java開発者がWORDファイル内のコンテンツを隠したり削除したりするためのツールを提供します。テキスト、画像、メタデータをさまざまな形式で保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Wordファイル内の機密データを安全に保つ"
    content: |
      GroupDocs.Redaction for Javaは、Javaアプリが文書内の機密情報を隠す手助けをします。
      
      1. Redactorを初期化し、Wordファイルを読み込みます。
      2. 必要な赤外設定を定義します。
      3. 画像エリアをマーキングし、オーバーレイの色を選択します。
      4. 赤外処理を実行して更新された文書を保存します。
   
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
        // WORD内の機密画像コンテンツを隠します

        // Redactorを使用してファイルを読み込みます
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // オーバーレイの色とサイズを選択
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // カバーする画像エリアをマーキング
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // オーバーレイを適用してファイルを保存します
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "隠蔽およびコンテンツ削除ツール"
  description: "GroupDocs.Redaction for Javaを使用すると、さまざまなファイル形式の機密データを隠したり削除したりします。文書を安全に保ち、体系的に構築します。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "効果的な削除機能"
  features:
    # feature loop
    - title: "テキストを見つけて置き換え"
      content: "文書内のプライバティを保持するためにプライベートテキストを検索して削除します。"

    # feature loop
    - title: "画像エリアをカバーする"
      content: "全体の画像または選択した領域にオーバーレイを適用して、それらをプライベートに保ちます。"

    # feature loop
    - title: "メタデータを削除する"
      content: "機密情報を共有しないように隠れたメタデータを削除または変更します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを使用して画像データを隠す"
      content: |
        このサンプルでは、文書の機密画像コンテンツをオーバーレイで保護する方法を示します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  文書を読み込みます
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // オーバーレイのプロパティをサイズ、位置、色に設定します
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // 最初のページの画像エリアを選択
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // その領域をカバーするためにオーバーレイを適用します
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
    title: "Javaを使用したWORDファイル内のコンテンツの隠蔽"
    exclude: "WORD"
    description: "Javaを使用して、WORDファイル内の機密データを隠したり削除したりできます。文書を安全に保つための効果的な方法です。"
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