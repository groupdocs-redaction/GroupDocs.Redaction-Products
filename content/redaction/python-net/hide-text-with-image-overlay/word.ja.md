
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ja
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonオーバーレイを使用してWORDのテキストを隠す"
head_description: "GroupDocs.Redaction for Python via .NETを使用すれば、色付きブロックを使ってWORDドキュメント内のプライベートテキストを隠すことができます。レイアウトは変更されません。"

############################# Header ############################
title: "Pythonを使用してWORDのテキストを隠す" 
description: "PythonおよびGroupDocs.Redaction for Python via .NETを使用して、WORDドキュメント内の機密情報をオーバーレイブロックで保護します。"
subtitle: "GroupDocs.Redaction for Python via .NETで可能なこと" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETのご紹介"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETを使用すれば、Python開発者はWORDドキュメント内の機密コンテンツを隠したり削除したりできます。名前、番号などを隠しましょう。

############################# Steps ############################
steps:
    enable: true
    title: "Word内のプライベートコンテンツを削除"
    content: |
      GroupDocs.Redaction for Python via .NETは、Python via .NET開発者が迅速に機密データを隠すのを容易にします。
      
      1. Redactorを作成し、Wordファイルをロードします。
      2. 削除オプションを設定します。
      3. 隠すテキストとオーバーレイの色を選択します。
      4. 削除を実行し、ファイルを保存します。
   
    code:
      platform: "python-net"
      copy_title: "コピー"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "サンプルのマスキング"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "クリックしてコピー"
        copy_done: "コピーしました"
      links:
        #  loop
        - title: "さらに多くの例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "ドキュメンテーション"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        # WORD内のテキストをオーバーレイで隠す

        # 何を削除するかを選択します
        # テキストを入力し、色を設定します
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactorを使用してファイルをロードします
        with gr.Redactor("input.docx") as redactor:

            # 削除し、保存します
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "情報を隠すためのその他の方法"
  description: "GroupDocs.Redaction for Python via .NETを使用すると、見た目を変えずにドキュメントから目に見えるコンテンツと隠しコンテンツを隠すことができます。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "プライバシーに配慮した機能"
  features:
    # feature loop
    - title: "隠すまたは置き換えるテキスト"
      content: "重要な情報を保護するために、単語を削除したり置き換えたりします。"

    # feature loop
    - title: "画像を覆う"
      content: "固形図形で機密画像をブロックします。"

    # feature loop
    - title: "隠されたデータを削除"
      content: "システムやユーザー情報を含む可能性のあるメタデータを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現を使用してテキストを見つけて隠す"
      content: |
        この例は、正規表現を使用してコンテンツを一致させて隠す方法を示します。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # パターンとオーバーレイの色を設定します
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # 編集するファイルを開きます
          with gr.Redactor("source.docx") as redactor:

              # 削除を適用します
              result = redactor.apply(redaction)

              # 更新されたコピーを保存します
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "コピー"
        install:
          command: "pip install groupdocs-redaction-net"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "ドキュメンテーション"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "始める準備はできましたか？"
  description: "GroupDocs.Redactionの機能を無料で試すか、ライセンスをリクエストしてください"
  items:
    #  loop
    - title: "PyPiをダウンロード"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "ライセンス"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Pythonを使用してWORDのコンテンツを保護"
    exclude: "WORD"
    description: "Pythonを使用して、WORDファイル内の機密情報を隠したり削除したりします。構造やレイアウトに影響を与えることなく行えます。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 6
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 7
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"


---