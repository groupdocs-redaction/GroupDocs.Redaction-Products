
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: ja
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Javaを使用してDOCXのテキストを隠す"
head_description: "GroupDocs.Redaction for Javaを使用して、DOCXファイル内のプライベートテキストをブロックします。 敷居を変えずに機密データを隠します。"

############################# Header ############################
title: "Javaのオーバーレイを使用してDOCXテキストを保護する" 
description: "JavaとGroupDocs.Redaction for Javaを使用して、DOCXファイル内の個人、法的、ビジネスの詳細を迅速に非表示にします。"
subtitle: "GroupDocs.Redaction for Javaの主要ツール" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Javaとは"
    link: "/redaction/java/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Javaは、Javaの開発者にDOCXファイルを整頓するためのツールを提供します。名前、数値、メモを修正します。

############################# Steps ############################
steps:
    enable: true
    title: "Docx内の機密コンテンツを修正する"
    content: |
      GroupDocs.Redaction for Javaを使用して、Javaプロジェクト内の文書を簡単にクリーニングします。
      
      1. あなたのファイルでRedactorを初期化します。
      2. 修正方法を選択します。
      3. 隠すテキストとオーバーレイ色を選択します。
      4. 修正を適用し、ファイルを保存します。
   
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
        // DOCX内のオーバーレイでテキストを隠す

        // Redactorを作成し、ドキュメントを読み込みます
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 修正オプションを選択します
            // テキストと色を選びます
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 修正されたバージョンを保存します
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "日常使用の修正ツール"
  description: "GroupDocs.Redaction for Javaは、ドキュメント全体で詳細情報を隠すための簡単なオプションを提供し、使用可能な状態を保ちます。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "簡単な修正オプション"
  features:
    # feature loop
    - title: "テキストを見つけて変更する"
      content: "数秒で言葉を隠したり置き換えたりします。"

    # feature loop
    - title: "画像の一部をブロックする"
      content: "写真やスキャンされたコンテンツのセクションをマスクします。"

    # feature loop
    - title: "背景情報を消去する"
      content: "著作権情報や日付のような隠れたメタデータを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regexでテキストを見つけて隠す"
      content: |
        パターンマッチングを使用して重要なフレーズを自動的に隠します
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  修正するドキュメントを開く
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // 正規表現パターンとオーバーレイスタイルを設定する
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 修正ロジックを適用する
              redactor.apply(redaction);

              // クリーニングされたドキュメントを保存する
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
    title: "Javaを使用してDOCXファイルを修正する"
    exclude: "DOCX"
    description: "Javaにあるツールを使用して、DOCX内の機密コンテンツを隠したり削除したりします。"
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