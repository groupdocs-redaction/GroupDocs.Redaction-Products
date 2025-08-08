
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ja
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用したオーバーレイによるDOCX内のテキストの隠蔽"
head_description: "GroupDocs.Redaction for Python via .NETを使用してDOCXファイル内の機密テキストを保護します。レイアウトを変更せずに、シンプルな正方形のオーバーレイを追加します。"

############################# Header ############################
title: "Pythonを使用してDOCX内のコンテンツを隠す" 
description: "Pythonを使用して、DOCXファイル内のプライベートコンテンツを覆います。法的、個人的、またはビジネス文書に最適です。"
subtitle: "GroupDocs.Redaction for Python via .NETの主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETとは？"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者がDOCXファイル内のプライベートコンテンツを隠したり削除したりする手助けをします。テキスト、画像、さらには隠されたメタデータをブロックすることができます。

############################# Steps ############################
steps:
    enable: true
    title: "Docx内のプライベート情報を隠す"
    content: |
      GroupDocs.Redaction for Python via .NETを使用すると、Python via .NET開発者は数行でコンテンツを隠すことができます。
      
      1. Redactorを作成し、ファイルを開きます。
      2. 削除設定を選択します。
      3. 隠すテキストを入力し、色を選びます。
      4. 削除を適用し、編集されたバージョンを保存します。
   
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

        # DOCX内でオーバーレイを使用してコンテンツを隠す

        # 削除オプションを設定します
        # テキストを定義し、色を選択します
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactorを設定し、ファイルをロードします
        with gr.Redactor("input.docx") as redactor:

            # 削除を適用し、ファイルを保存します
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "追加の削除ツール"
  description: "GroupDocs.Redaction for Python via .NETは、さまざまなファイルタイプをサポートしているので、どのコンテンツでも保護できます。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "組み込みの削除機能"
  features:
    # feature loop
    - title: "テキストを見つけて編集"
      content: "キーワードを検索して、すぐに隠したり置き換えたりできます。"

    # feature loop
    - title: "画像領域を覆う"
      content: "スキャンしたページや写真の敏感な領域をブロックします。"

    # feature loop
    - title: "メタデータをクリーンアップ"
      content: "詳細を明らかにする可能性のある隠れた情報を削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現でテキストを見つけて削除"
      content: |
        正規表現を利用してテキストを見つけて隠す方法を学びます。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # パターンと色を設定します
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # 削除するためにファイルを開きます
          with gr.Redactor("source.docx") as redactor:

              # 削除プロセスを実行します
              result = redactor.apply(redaction)

              # クリーンなドキュメントを保存します
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
    title: "PythonでDOCXファイルを安全に保つ"
    exclude: "DOCX"
    description: "シンプルなツールを使って、Pythonを使用してDOCXドキュメント内の機密コンテンツを隠したり削除したりします。"
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