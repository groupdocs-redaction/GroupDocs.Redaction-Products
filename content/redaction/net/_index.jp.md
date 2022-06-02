---
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

head_title: "C＃.NET Redaction API | PDFWordExcel画像からプライベートテキストを非表示にする"
head_description: ".NET用のドキュメント編集API。 PDF、Microsoft Word、Excel、プレゼンテーション、ラスター画像から機密コンテンツを編集、非表示、または削除する."

title: "RedactionAPIを介して分類されたデータを保護する"
description: ".NET APIを使用して、ドキュメント、ワークシート、プレゼンテーション、PDF、ラスター画像ファイルから機密コンテンツとメタデータを編集、非表示、または削除します."
button:
    enable: true

submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for .NET"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-net.png"
        product: "GroupDocs.Redaction"
        platform: ".NET"

    middle:
        button:
            - link: "#overview"
              text: "概要"

            - link: "#features"
              text: "特徴"

            - link: "#support"
              text: "サポート"

            - link: "https://products.groupdocs.app/redaction"
              text: "ライブデモ"

            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "価格設定"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

overview:
    enable: true
    content: |
      GroupDocs.Redaction for .NETは、Microsoft Word、Excel、PowerPoint、PDFなどのさまざまなファイル形式から機密データや分類されたデータを消去するのに役立つAPIライブラリです。 Redaction APIの単一のフォーマットに依存しないインターフェースは、テキストの編集、メタデータの編集、注釈の編集、表形式のドキュメントの編集など、さまざまなタイプの編集をサポートします。 GroupDocs.Redaction for .NET APIを使用すると、パスワードで保護されたファイルを編集することもできます。ドキュメントを元の形式で保存したり、元のページのラスターイメージを使用してサニタイズされたPDFドキュメントを作成したりすることができます。
    tabs:
      enable: true
      
      tab_one:
        description: |
          以下は、GroupDocs.Redactionfor.NETの概要です。
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "概要"
          content: |
            *テキストを編集
            *メタデータを編集
            *注釈を編集
            *表形式のドキュメントを編集
            *保護されたファイルを編集する
            *カスタマイズ
      
      tab_two:
        description: |
          GroupDocs.Redaction for .NETは、次の[ドキュメントファイル形式]（https://docs.groupdocs.com/redaction/net/supported-document-formats/）をサポートしています。

        right:
          enable: true
          table:
            - title: "テキスト、メタデータ、コメントを編集する"
              content: |
                * ** Word **：DOC、DOCX、DOT、ODT、DOTX、DOCM、DOTM、RTF
                * ** Excel **：XLS、XLSX、XLT、XLTX、XLSM、XLTM、CSV
                * ** PowerPoint **：PPT、PPTX、PPS、PPSX、POTX、PPTM、PPSM、POTM
                * **固定レイアウト**：PDF
                * **ラスター画像**：JPG、BMP、PNG、GIF、TIFF

      tab_three:
        description: |
          GroupDocs.Redaction for .NETは、次のオペレーティングシステム、フレームワーク、パッケージマネージャーをサポートしています。
        
        left:
          enable: true
          table:
            - icon: "fab fa-windows"
              title: "オペレーティングシステム"
              content: |
                *Windowsデスクトップ
                * WindowsServer
                * Windows Azure
                * Linux

            - icon: "fas fa-code"
              title: "サポートされているフレームワーク"
              content: |
                * .NETFramework2.0以降
                * .NET Standard 2.0
                * .NET Core 2.0

        right:
          enable: true
          table:
            - icon: "fas fa-box"
              title: "パッケージマネージャー"
              content: |
                * NuGet

            - icon: "fas fa-tools"
              title: "開発環境"
              content: |
                * Microsoft Visual Studio
                * Xamarin.Android
                * Xamarin.IOS
                * Xamarin.Mac
                * MonoDevelop

features:
    enable: true
    title: "GroupDocs.Redactionfor.NETの機能"

    feature:
      - icon: "fas fa-copy"
        content: "大文字と小文字を区別して、正確なフレーズの編集を検索します"

      - icon: "fas fa-eye"
        content: "文字列の置換ではなく、カラーボックスを使用して編集済みのテキストを非表示にする"

      - icon: "fas fa-bolt"
        content: "正規表現検索を使用してテキストを見つけて編集します"
      
      - icon: "fas fa-file-powerpoint"
        content: "ドキュメントの分類されたメタデータ情報のすべてまたは任意の組み合わせをフィルタリングします"

      - icon: "fas fa-code"
        content: "特定のドキュメントの完全なメタデータ情報をすばやく消去します"

      - icon: "fas fa-cloud"
        content: "墨消しの範囲をExcelの特定のワークシートや列に設定します"

      - icon: "fas fa-remove-format"
        content: "ドキュメントからすべてまたは特定のコメントやその他の注釈を削除します"

      - icon: "fas fa-comment-slash"
        content: "注釈テキストから機密データを検索して削除する"

      - icon: "fas fa-location-arrow"
        content: "独自のフォーマットと編集を使用する機能"

      - icon: "fas fa-border-all"
        content: "ラスター画像形式と画像領域の編集のサポート"

      - icon: "fas fa-wrench"
        content: "XMLファイルで一連の編集ルール（ポリシー）を指定します"

      - icon: "fas fa-columns"
        content: "PDFへの変換中にページ範囲とPDFコンプライアンスレベルを指定する"

      - icon: "fas fa-file-word"
        content: "画像ファイルからのEXIFメタデータの編集または削除"

      - icon: "fas fa-envelope"
        content: "PDF、Word、プレゼンテーションドキュメント内の埋め込み画像を編集する"

      - icon: "fas fa-print"
        content: "墨消しポリシーをXMLファイルとして保存する"

    more_feature:
      - title: "分類されたデータを簡単かつ制御して編集する"
        content: |
          GroupDocs.Redaction for .NET APIを使用すると、サポートされているドキュメントから重要な機密情報を非表示または消去する方法を完全に制御できます。 Redaction APIを使用するのは、非常に簡単で簡単です。  

          次の例では、サポートされているドキュメントを読み込み、「2桁、スペースまたはなし、2桁、再びスペースと6桁」（12 34 567890など）と一致する任意のテキストを、C＃を使用して青いカラーボックスで編集します。それが完了すると、接尾辞「_Redacted」を追加して名前を変更することにより、ドキュメントを元の形式で保存します。

          ```cs
          //Redactorクラスのインスタンスを作成します
          using (Redactor redactor = new Redactor("sample.docx"))
          {‎
            //編集を適用します
            redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
            redactor.Save();
          ‎}‎
          ```

support:
    enable: true

solutions:
    enable: true
    title: "GroupDocs.Redactionは、他の一般的な開発環境向けのドキュメント表示APIを提供します"

    solution:
        - img_alt: "GroupDocs.Redaction for Java"
          image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
          product: "GroupDocs.Redaction"
          platform: "Java"
          link: "/redaction/java/"

back_to_top:
  enable: true
---
