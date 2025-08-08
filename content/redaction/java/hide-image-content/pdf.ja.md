
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: ja
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用したPDFファイルのオーバーレイによるカバー画像"
head_description: "GroupDocs.Redaction for Javaを使用すると、PDFファイル内のプライベート画像をカラフルなオーバーレイで隠すことができます。文書のデザインを保持しながら、機密性のあるビジュアルを保護します。"

############################# Header ############################
title: "Javaを使用したPDFファイル内の機密画像の隠蔽" 
description: "Javaを使用して、PDFファイル内の個人情報やビジネスデータを保護します。当社のツールを使用すれば、画像の削除は簡単かつ効果的です。"
subtitle: "GroupDocs.Redaction for Javaの機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaについて"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、Java開発者にPDFファイル内のコンテンツを隠したり消去したりするための効果的なツールを提供します。文書内のテキスト、画像、メタデータをカバーして、さまざまなフォーマットで安全を保ちます。

############################# Steps ############################
steps:
    enable: true
    title: "Pdfファイルのビジネス情報を保護する"
    content: |
      GroupDocs.Redaction for Javaは、Javaアプリケーションが文書を保護する手助けをします。プライベート画像を簡単なステップで非表示にします。
      
      1. Redactorを初期化し、Pdfファイルのパスを設定します。
      2. 最良の結果を得るために赤外設定を選択します。
      3. 画像のエリアを選択し、オーバーレイの色を選びます。
      4. 処理を行い、安全なファイルを保存します。
   
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
        // PDF内の機密画像をカバーする

        // Redactorでファイルを読み込みます
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // オーバーレイの色とサイズを設定します
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // 削除する対象エリアを選択します
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
  title: "文書内のコンテンツを隠す"
  description: "GroupDocs.Redaction for Javaを使用すると、さまざまなファイル形式で機密データを隠したり削除したりできます。文書の可読性を保ちながら、プライベート情報を保護します。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "強力な削除オプション"
  features:
    # feature loop
    - title: "どこでもテキストを修正"
      content: "文書内の機密の単語を見つけて置き換え、プライベートコンテンツを保護します。"

    # feature loop
    - title: "画像を隠す"
      content: "画像またはその一部にオーバーレイを追加して、機密ビジュアルを隠したままにします。"

    # feature loop
    - title: "メタデータをクリーンアップ"
      content: "隠れたメタデータを削除または編集して、意図しない情報漏えいを防ぎます。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイで画像データをカバーする"
      content: |
        この例では、オーバーレイを使用して文書内の機密ビジュアルを隠す方法を示します。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  編集のために文書を開きます
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // オーバーレイのサイズ、色、位置を設定します
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // ページ1の削除する画像のエリアを選択します
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // 機密データをカバーするオーバーレイを追加します
              redactor.apply(redaction);

              // 更新された文書を保存します
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
    title: "JavaによるPDFファイルの保護"
    exclude: "PDF"
    description: "Javaを使用して、PDFファイル内の機密データを隠したり削除したりすることができます。公式およびプライベート文書の保護に最適です。"
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