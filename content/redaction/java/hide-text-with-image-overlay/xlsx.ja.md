
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ja
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "JavaオーバーレイでXLSXのテキストをブロックする"
head_description: "GroupDocs.Redaction for Javaは、色のブロックでXLSXファイル内の機密情報を覆い隠すことができます。レイアウトをそのままにしてデータを隠します。"

############################# Header ############################
title: "Javaを使用してXLSXのデータを隠す" 
description: "JavaとGroupDocs.Redaction for Javaを利用して、フォーマットに影響を与えることなくXLSXファイル内のプライベートコンテンツをマスクします。"
subtitle: "GroupDocs.Redaction for Javaの主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaの根拠"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for JavaはJavaの開発者がXLSXファイルを保護することを可能にします。テキスト、画像、メタデータを迅速に隠します。

############################# Steps ############################
steps:
    enable: true
    title: "Xlsxドキュメントの情報を保護する"
    content: |
      GroupDocs.Redaction for Javaを使用してJava内で文書を安全に保つためのシンプルなコードで実現します。
      
      1. Redactorをファイルパスで作成します。
      2. 修正ロジックを設定します。
      3. キーワードとオーバーレイ色を選択します。
      4. 修正してファイルを保存します。
   
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
        // XLSX内の情報をブロックで隠す

        // Redactorでファイルを読み込む
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // 修正の好みを設定する
            // テキストと色をブロックに追加する
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 更新されたドキュメントを保存する
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "内蔵のプライバシー機能"
  description: "GroupDocs.Redaction for Javaを使用してファイル内のコンテンツをブロックまたは削除し、構造を壊さずに保持します。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "簡単なプライバシーツール"
  features:
    # feature loop
    - title: "テキストを変更または隠す"
      content: "簡単に特定の単語を編集または修正します。"

    # feature loop
    - title: "画像の一部をマスクする"
      content: "オーバーレイを追加して写真やグラフィックの詳細を隠します。"

    # feature loop
    - title: "隠れた情報を削除する"
      content: "ユーザー情報やファイル履歴のようなメタデータを消去します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regexを用いてコンテンツを修正する"
      content: |
        パターンマッチングで自動的にテキストを見つけて隠します
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  スプレッドシートを開く
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // パターンとオーバーレイ色を定義する
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 修正ルールを適用する
              redactor.apply(redaction);

              // 結果をエクスポートします
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Javaを使用してXLSXデータを修正する"
    exclude: "XLSX"
    description: "Javaのツールを使用してXLSXファイル内のコンテンツを覆い隠したり削除したりして、機密データをプライベートに保ちます。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 6
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 7
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"


---