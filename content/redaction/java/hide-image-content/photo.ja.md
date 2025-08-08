
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: ja
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用したPHOTOのオーバーレイによる画像カバー"
head_description: "GroupDocs.Redaction for Javaを使用して、PHOTOファイル内の機密画像をオーバーレイでマスクします。ファイルのレイアウトを変更することなくプライベートコンテンツを保護します。"

############################# Header ############################
title: "Javaを使用したPHOTOファイル内の画像コンテンツの保護" 
description: "Javaを使用して、PHOTOファイル内の個人およびビジネス画像データを安全に保ちます。高速で効果的な保護を実現するための簡単なツールを提供します。"
subtitle: "GroupDocs.Redaction for Javaの主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、Java開発者にPHOTOファイル内のコンテンツを隠したり削除したりするための信頼性の高いツールを提供します。テキスト、画像、メタデータを保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Photoファイルでのオーバーレイを用いたコンテンツの非表示"
    content: |
      GroupDocs.Redaction for Javaは、Javaアプリケーションで機密エリアを簡単に隠す手助けをします。
      
      1. Redactorを初期化し、Photoファイルを読み込みます。
      2. 必要に応じて赤外設定をされます。
      3. 画像領域を選択し、オーバーレイの色を選択します。
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
        // PHOTO内の画像セクションをカバーします

        // Redactorでファイルを読み込みます
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // オーバーレイのサイズと色を設定します
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // カバーする画像エリアをマーキングします
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // オーバーレイを適用して結果を保存します
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "機密コンテンツを隠す"
  description: "GroupDocs.Redaction for Javaを使うことで、さまざまな文書形式からプライベートデータを隠したり消去したりすることが可能です。ファイルをクリアで、共有可能にします。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "削除機能の完全な制御"
  features:
    # feature loop
    - title: "テキストを検索して置き換える"
      content: "機密のテキストを文書内で見つけ、情報を保護するために置き換えます。"

    # feature loop
    - title: "画像エリアをオーバーレイでカバー"
      content: "オーバーレイを使用して、全体の画像または特定の部分を隠します。"

    # feature loop
    - title: "メタデータを清掃する"
      content: "機密情報を漏洩から保護するために隠れたメタデータを消去または編集します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイで画像データをマスク"
      content: |
        この例では、文書内の画像コンテンツをオーバーレイで隠す方法を示します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  文書を編集のために読み込む
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // オーバーレイのサイズ、色、位置を設定
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // ページ1のターゲット画像セクションを選択します
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // コンテンツをカバーするためにオーバーレイを適用します
              redactor.apply(redaction);

              // 編集済みファイルを保存します
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
    title: "Javaを使用したPHOTOファイルの保護"
    exclude: "PHOTO"
    description: "Javaを使用して、PHOTOファイル内の機密データを隠したり削除したりすることができます。公式文書を防ぐための信頼できる方法です。"
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