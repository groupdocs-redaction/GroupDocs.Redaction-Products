---
############################# Static ############################
layout: "family"
date:  2025-08-11T19:33:03
draft: false

product: "Redaction"
product_tag: "redaction"

lang: ja

############################# Head ############################
head_title: "文書赤外線ソリューション。機密データを編集または削除する。"
head_description: "PDF、Word文書、Excelスプレッドシート、PowerPointプレゼンテーション、画像などのテキスト、画像、またはメタデータを削除、赤外線処理、または隠します。私たちのライブラリをあなたの.NET、Java、Python、またはクラウドベースのアプリケーションで使用してください。"

############################# Header ############################
title: "文書赤外線ライブラリ"
description:  |
  さまざまなファイルタイプからプライベート情報を隠すか削除します。

  テキストや画像を編集して、機密コンテンツを排除します。

  当社の高度な機能を使用して、ファイルのメタデータを管理します。

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "プラットフォームを選択してください"
  title: "プラットフォーム独立性"
  description: "GroupDocs.Redactionライブラリは、以下のオペレーティングシステムとフレームワークをサポートしています。"
  details_link_title: "詳細はこちら"

  items:
    # items loop
    - title: ".NET"
      description: GroupDocs.Redaction .NET 
      color: "blue"
      tag: "net"
      link: "/redaction/net/"
      features_link: "https://docs.groupdocs.com/redaction/net/system-requirements/"
      features:
          # features loop
          - rows: "2"
            content: |
                    .NET Framework 4.6.2 or higher <br> .NET Core 3.1 or higher
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS <br> Microsoft Azure
      
          # features loop
          - rows: "3"
            content: |
                    Microsoft Visual Studio <br> JetBrains Rider <br> Microsoft Visual Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats
      

    # items loop
    - title: "Java"
      description: GroupDocs.Redaction Java
      color: "red"
      tag: "java"
      link: "/redaction/java/"
      features_link: "https://docs.groupdocs.com/redaction/java/system-requirements/"
      features:
          # features loop
          - rows: "2"
            content: |
                    Java 8 or higher <br> Kotlin
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IntelliJ IDEA <br> Eclipse <br> NetBeans
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

    # items loop
    - title: "Python"
      description: GroupDocs.Redaction Python
      color: "yellow"
      tag: "python-net"
      link: "/redaction/python-net/"
      features_link: "https://docs.groupdocs.com/redaction/python-net/system-requirements/"
      features:
          # features loop
          - rows: "2"
            content: |
                    Python 3.9+ and .Net 6+
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IDLE <br> PyCharm <br> Visual Studio Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

############################# Features ###############################
features:
  enable: true
  title: "GroupDocs.Redaction 概要"
  description: "PDF、Office文書、画像、その他のビジネスファイル内のコンテンツを管理するソリューションです。"

  items:
    # items loop
    - icon: "text"
      title: "テキストの削除または編集"
      content: "あなたの文書内の機密テキストを見つけて赤外線処理します。"

    # items loop
    - icon: "image"
      title: "画像の赤外線処理"
      content: "追加の努力なしにファイル内の画像エリアを隠します。"

    # items loop
    - icon: "template"
      title: "メタデータの管理"
      content: "Word文書内の著者や画像内のEXIFデータなど、メタデータを削除または置き換えます。"

    # items loop
    - icon: "pdf"
      title: "高度な機能"
      content: "正規表現やAI統合を使用して、赤外線処理するデータを検索します。"

############################# Code samples ############################
code_samples:
  enable: true
  title: "GroupDocs.Redaction コードサンプル"
  description: "GroupDocs.Redaction 赤外線処理操作の典型的な使用例。"
  items:
    # code sample loop
    - title: "PDF文書のテキストを赤外線処理する方法"
      content: |
       GroupDocs.Redactionは、数ステップで文書内のテキストを赤外線処理するための最適なソリューションです。
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // 赤外線処理するファイルパスをRedactorインスタンスに渡します
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // 赤外線処理オプションを提供します
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // 赤外線処理を行い、結果を保存します
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // 赤外線処理するファイルパスをRedactorインスタンスに渡します
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // 赤外線処理オプションを提供します
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // 赤外線処理を行い、結果を保存します
                redactor.apply(redaction);
                redactor.save();
            }
            finally { redactor.close(); } 
            ```
        - language: "Python"
          color: "yellow"
          content: |
            ```python {style=abap}
            import groupdocs.redaction as gr
            import groupdocs.redaction.options as gro
            import groupdocs.redaction.redactions as grr

            def run():

                # 赤外線処理するファイルパスをRedactorインスタンスに渡します
                with gr.Redactor("source.pdf") as redactor:

                    # 赤外線処理オプションを提供します
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # 赤外線処理を行い、結果を保存します
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "30以上のファイル形式に対応"
  description: "GroupDocs.Redactionは、すべての一般的なビジネスファイル形式で赤外線処理操作をサポートしています。"

############################# Metrics ###############################
metrics:
  enable: true
  title: "GroupDocs.Redactionの成果"
  description: "ライブラリの成功を際立たせる重要な指標を発見します"

  items:
    # items loop
    - number: "30+"
      title: "サポートされている形式"
      content: "GroupDocs.Redactionは、30以上の一般的なファイル形式との操作をサポートしています。"

    # items loop
    - number: "440k"
      title: "NuGetダウンロード"
      content: "GroupDocs.Redaction for .NETは、NuGetから440,000回以上ダウンロードされています。"

    # items loop
    - number: "12k"
      title: "Mavenダウンロード"
      content: "GroupDocs.RedactionはMavenで12,000回以上ダウンロードされ、強力なJava赤外線処理機能を提供しています。"

    # items loop
    - number: "140+"
      title: "喜ばしい顧客"
      content: "グローバル企業から個々の開発者まで、GroupDocsの製品は革新的なソリューションを構築するために利用されています。"


############################# Customers ###############################
customers:
  enable: true
  title: "我々の喜ばしい顧客"
  description: "GroupDocsのライブラリは、世界的に認知され、評判の高いブランドに信頼されています。"

  items:
    # items loop
    - title: "BenQ Corporation"
      logo: "benq"
      
    # items loop
    - title: "Nasdaq Stock Market"
      logo: "nasdaq"
      
    # items loop
    - title: "AT&T Inc."
      logo: "att"
      
    # items loop
    - title: "Customer logo AstraZeneca"
      logo: "astrazeneca"
      
    # items loop
    - title: "Central Bank of Argentina"
      logo: "argentinacentralbank"
      
    # items loop
    - title: "Roche Holding AG"
      logo: "roche"
      
    # items loop
    - title: "Capita"
      logo: "capita"
      
    # items loop
    - title: "Axa S.A."
      logo: "axa"
      
    # items loop
    - title: "Instructure Inc."
      logo: "instructure"
      
    # items loop
    - title: "Wipro"
      logo: "wipro"


############################# Actions ###############################
actions:
  enable: true
  title: "始める準備はできましたか？"
  description: "あなたのプラットフォームでGroupDocs.Redactionの機能を無料で試してみてください。"

  items:
    # items loop
    - title: ".NET"
      color: "blue"
      link: "/redaction/net/"

    # items loop
    - title: "Java"
      color: "red"
      link: "/redaction/java/"

    # items loop
    - title: "Node.js"
      color: "yellow"
      link: "/redaction/python-net/"   

############################# FAQ ###############################
faq:
  enable: true
  title: "よくある質問"
  description: "最も一般的な質問への回答です。"

  items:
    # items loop
    - question: "GroupDocs.Redactionライブラリは、文書を操作するためにサードパーティのソフトウェアを必要としますか？"
      answer: "GroupDocs.Redactionは、Adobe Acrobat、Microsoft Officeなどの外部ソフトウェアを必要としません。"

    # items loop
    - question: "購入前にGroupDocs.Redactionライブラリを試すことができますか？"
      answer: "はい、ライセンスを購入せずにGroupDocs.Redactionを試すことができます。試用モードで動作し、試用バッジが追加され、最初の3ページに出力が制限されます。制限なしでテストするには、30日間の一時ライセンスをリクエストしてください。詳細については、[こちらを参照してください](https://purchase.groupdocs.com/temporary-license/)。"

    # items loop
    - question: "どのようなライセンスオプションが利用可能ですか？"
      answer: "開発および配布のニーズに基づいて、いくつかのライセンスタイプを提供しています。これには、使用量に応じた開発者ライセンス、サイトライセンス、およびメーター制ライセンスが含まれます。詳細は[こちら](https://purchase.groupdocs.com/pricing/redaction/net/)でご覧ください。"

############################# Cloud Links ###############################
cloud_links:
  enable: false
  title: "GroupDocs.RedactionローコードAPI"
  description: "クラウドベースのREST APIを使用して、任意のアプリケーションに文書赤外線処理を統合します。"
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "cURLコマンドを使用して、さまざまなサポートされているファイル形式の文書を赤外線処理します。"
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "Microsoft .NETアプリケーション内で画像、テキスト、メタデータを抽出または文書を赤外線処理するためにテンプレートを使用します。"
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "Java SDKを使用して、Javaベースのアプリケーション内で文書を赤外線処理し、データを抽出します。"
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "GroupDocs.Redactionノーコードアプリ"
  description: "ウェブベースのアプリケーションを使用して、ブラウザで直接30以上の人気ファイル形式を赤外線処理できるようにします。"

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "Word、Excel、PowerPoint、PDF、その他30以上のファイル形式を赤外線処理するための無料のオンラインツールです。"
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "ブラウザでWord文書を赤外線処理し、画像、テキスト、またはメタデータを抽出します。"
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "任意のデバイスまたはプラットフォームで動作し、制限なしの無料のPDF赤外線処理ツールです。"
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---