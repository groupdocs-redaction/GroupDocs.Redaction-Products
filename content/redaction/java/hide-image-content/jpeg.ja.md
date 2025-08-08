
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: ja
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用したJPEGのオーバーレイによる画像隠蔽"
head_description: "GroupDocs.Redaction for Javaを使用して、JPEGファイル内の機密画像をオーバーレイで隠します。文書のレイアウトを変更せずにプライベート画像を保護します。"

############################# Header ############################
title: "Javaを使用したJPEGファイル内の機密画像の隠蔽" 
description: "Javaを使用して、JPEGファイル内の個人およびビジネスの画像を保護します。単純なツールを使用すれば、文書を簡単に安全に保つことができます。"
subtitle: "GroupDocs.Redaction for Javaの主要機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、Java開発者にJPEGファイル内のコンテンツを隠したり消去したりするためのツールを提供します。テキスト、画像、およびメタデータを保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Jpegファイル内のプライベートデータを隠蔽する"
    content: |
      GroupDocs.Redaction for Javaは、Javaアプリがプライベートなコンテンツを迅速にカバーするのを助けます。
      
      1. Redactorオブジェクトを初期化し、Jpegファイルを読み込みます。
      2. ニーズに応じた赤外オプションを調整します。
      3. 画像エリアを選択し、オーバーレイの色を選びます。
      4. 赤外処理を実行し、ファイルを保存します。
   
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
        // JPEGファイル内の画像データをマスク

        // Redactorでファイルを開きます
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // オーバーレイのサイズと色を設定します
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // 隠すエリアを選択します
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
  title: "文書内の機密情報を隠す"
  description: "GroupDocs.Redaction for Javaを用いれば、複数のファイル形式から機密データを削除したり消去したりすることが可能です。文書を整然と保ち、共有可能にします。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "オールインワン削除機能"
  features:
    # feature loop
    - title: "テキストを見つけて置き換え"
      content: "私的なテキストを文書内で検索し、敏感なデータを保護するために置き換えます。"

    # feature loop
    - title: "画像コンテンツをカバーする"
      content: "画像全体または選択部分を隠すためにオーバーレイを使用します。"

    # feature loop
    - title: "メタデータを削除する"
      content: "機密の情報が漏れないように隠れたメタデータを消去します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを使用して画像内容を隠す"
      content: |
        この例は、文書内の機密画像エリアをオーバーレイで隠す方法を示します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  文書を読み込みます
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // オーバーレイのサイズ、位置、色を設定します
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // 最初のページの画像エリアを選択します
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // 画像を隠すためにオーバーレイを適用します
              redactor.apply(redaction);

              // 更新されたファイルを保存します
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
    title: "Javaを利用したJPEGファイルのセキュリティ"
    exclude: "JPEG"
    description: "Javaを使用して、JPEGファイルに含まれる機密データを隠したり削除したりします。公式文書を保護する信頼できる手段です。"
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