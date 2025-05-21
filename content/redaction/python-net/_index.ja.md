---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C# .NET リダクション API | PDF Word Excel 画像からプライベートテキストを非表示にする"
head_description: ".NET のドキュメント編集 API。PDF、Microsoft Word、Excel、プレゼンテーション、ラスターイメージから機密コンテンツを編集、非表示、削除します。"

############################# Header ############################
title: "リダクション API による機密データの保護"
description: ".NET API を使用して、文書、ワークシート、プレゼンテーション、PDF、ラスターイメージファイルから機密コンテンツやメタデータを編集、非表示、削除します。"
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for .NET"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-net.png"
        product: "GroupDocs.Redaction"
        platform: ".NET"

    middle:
        button:
            # button loop
            - link: "#overview"
              text: "概要"

            # button loop
            - link: "#features"
              text: "機能"

            # button loop
            - link: "#support"
              text: "サポート"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "ライブデモ"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "価格設定"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for .NET は、Microsoft Word、Excel、PowerPoint、PDF などのさまざまなファイル形式から機密データや機密データを消去するのに役立つ API ライブラリです。当社の Redaction API の単一の形式に依存しないインターフェイスは、テキスト編集、メタデータ編集、注釈編集、表形式文書編集など、さまざまなタイプの編集をサポートします。GroupDocs.Redaction for .NET API では、パスワードで保護されたファイルを編集することもできます。文書を元の形式で保存することも、元のページのラスターイメージを使用してサニタイズされた PDF 文書を作成することもできます。
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          .NET の GroupDocs.Redaction の概要は次のとおりです。
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "概要"
          content: |
            * テキストを編集
            * メタデータを編集
            * 注釈を編集
            * 表形式文書の編集
            * 保護対象ファイルの編集
            * カスタマイズ
      
      ## TAB TWO ##
      tab_two:
        description: |
          .NET の GroupDocs.Redaction は次の [ドキュメントファイル形式](https://docs.groupdocs.com/redaction//supported-document-formats/net) をサポートしています。

        right:
          enable: true
          table:
            # table loop
            - title: "テキスト、メタデータ、コメントの編集"
              content: |
                * **Word**: DOC、DOCX、DOT、ODT、DOTX、DOCM、DOTM、RTF
                * **Excel**: XLS、XLSX、XLT、XLTX、XLSM、XLTM、CSV
                * **PowerPoint**: PPT、PPTX、PPS、PPSX、POTX、PPTM、PPSM、POTM
                * **固定レイアウト**: PDF
                * **ラスターイメージ**: JPG、BMP、PNG、GIF、TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for .NET は、以下のオペレーティングシステム、フレームワーク、パッケージマネージャーをサポートしています。
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "オペレーティングシステム"
              content: |
                * Windows Desktop
                * Windows Server
                * Windows Azure
                * Linux

            # table loop
            - icon: "fas fa-code"
              title: "サポート対象フレームワーク"
              content: |
                * .NET Framework 2.0 またはそれ以上
                * .NET Standard 2.0
                * .NET Core 2.0

        right:
          enable: true
          table:
            # table loop
            - icon: "ファストファンボックス"
              title: "パッケージマネージャ"
              content: |
                * NuGet

            # table loop
            - icon: "高速ファンツール"
              title: "開発環境"
              content: |
                * Microsoft Visual Studio
                * Xamarin.Android
                * Xamarin.IOS
                * Xamarin.Mac
                * MonoDevelop

############################# Features ############################
features:
    enable: true
    title: ".NET 機能の場合は GroupDocs.Redaction"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "大文字と小文字を区別して完全に一致する語句を検索する"

      # feature loop
      - icon: "fas fa-eye"
        content: "文字列置換の代わりにカラーボックスを使用して編集されたテキストを非表示にする"

      # feature loop
      - icon: "fas fa-bolt"
        content: "正規表現検索を使用して任意のテキストを検索して編集します"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "文書の分類されたメタデータ情報のすべてまたは任意の組み合わせをフィルタする"

      # feature loop
      - icon: "fas fa-code"
        content: "特定の文書の完全なメタデータ情報をすばやく消去"

      # feature loop
      - icon: "fas fa-cloud"
        content: "編集の範囲を Excel の特定のワークシートや列に設定します"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "文書からすべてまたは特定のコメントやその他の注釈を削除する"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "注釈テキストから機密データを検索して削除"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "独自のフォーマットと編集で作業する能力"

      # feature loop
      - icon: "fas fa-border-all"
        content: "ラスター画像形式と画像領域編集のサポート"

      # feature loop
      - icon: "fas fa-wrench"
        content: "XML ファイル内の編集ルール (ポリシー) のセットを指定"

      # feature loop
      - icon: "fas fa-columns"
        content: "PDF への変換時にページ範囲と PDF コンプライアンスレベルを指定"

      # feature loop
      - icon: "fas fa-file-word"
        content: "EXIF メタデータの編集または画像ファイルからの削除"

      # feature loop
      - icon: "fas fa-envelope"
        content: "PDF、Word、およびプレゼンテーションドキュメント内の埋め込み画像を編集"

      # feature loop
      - icon: "fas fa-print"
        content: "編集ポリシーを XML ファイルとして保存する"

    more_feature:
      # more_feature_loop
      - title: "簡単かつ管理可能な機密データの編集"
        content: |
          GroupDocs.Redaction for .NET API を使用すると、重要な機密情報をサポート対象ドキュメントからどのように隠すか、削除するかを完全に制御できます。当社のリダクション API の使い方はとてもシンプルで分かりやすいです。  

          次の例では、サポートされているドキュメントを読み込み、「2 桁、スペースまたはなし、2 桁、アゲインスペースと 6 桁」（12 34 567890 など）に一致するテキストをすべて削除します（例：12 34 567890）。青色のボックスには C# を使用しています。これが完了すると、ドキュメントの名前に「Redacted'」というサフィックスを付けて元の形式で保存します。

          ```cs
          // Redactor クラスのインスタンスを作成する
          using (Redactor redactor = new Redactor("sample.docx"))
          {
            // 編集を適用
            redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
            redactor.Save();
          }
          ```

############################# Support ############################
support:
    enable: true

############################# Solutions ############################
solutions:
    enable: true
    title: "GroupDocs.Redaction は、他の一般的な開発環境向けのドキュメント表示 API を提供しています"

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for .NET"
          image: "/border/groupdocs-redaction-net.svg"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net/"

        # solution loop
        - img_alt: "GroupDocs.Redaction for Java"
          image: "/border/groupdocs-redaction-java.svg"
          product: "GroupDocs.Redaction"
          platform: "Java"
          link: "/redaction/java/"

############################# Back to top ###############################
back_to_top:
  enable: true
---