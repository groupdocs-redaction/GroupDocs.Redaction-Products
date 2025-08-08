
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ja
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用したPDFからのメタデータ削除"
head_description: "GroupDocs.Redaction for Python via .NETを使用すれば、PDFファイルから隠れたデータをクリーンにできます。メタデータを編集または削除して、プライベート情報の共有を回避しましょう。"

############################# Header ############################
title: "Pythonを使用したPDFファイル内のメタデータ削除" 
description: "PythonとGroupDocs.Redaction for Python via .NETを使用して、あなたのPDFドキュメントから機密情報をクリーンに保ちましょう。簡単な修正ツールでデータを制御できます。"
subtitle: "GroupDocs.Redaction for Python via .NETの機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETについて"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redactionは、Python開発者がテキスト、画像コンテンツ、メタデータを削除することでPDFドキュメントをクリーンにするのを支援します。

############################# Steps ############################
steps:
    enable: true
    title: "Pdfドキュメントのメタデータ削除"
    content: |
      Python via .NETアプリでGroupDocs.Redactionを使用して、ファイルを保護する準備をしましょう。
      
      1. Redactorを作成し、Pdfファイルを読み込みます。
      2. 隠れたメタデータを削除するルールを追加します。
      3. メタデータ項目を削除するために修正を実行します。
      4. 隠れたデータなしでファイルを保存します。
   
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

        # PDFドキュメントからのメタデータ削除

        # 削除するメタデータフィールドを選択する
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactorを使用してファイルを開く
        with gr.Redactor("input.pdf") as redactor:

            # ドキュメントを修正して保存する
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ドキュメント内の隠れたコンテンツのクリーンアップ"
  description: "GroupDocs.Redaction for Python via .NETを使用すると、テキスト、画像、メタデータを安全に削除できます。共有前にファイルをプライベートで安全な状態に保ちましょう。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "修正オプション"
  features:
    # feature loop
    - title: "テキスト削除"
      content: "ドキュメント全体で機密テキストを検索して消去します。"

    # feature loop
    - title: "画像マスキング"
      content: "簡単なオーバーレイで画像の特定の部分を隠します。"

    # feature loop
    - title: "メタデータのクリーンアップ"
      content: "プライベートデータを露呈する可能性のある不要なメタデータを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "メタデータフィールドの編集と削除"
      content: |
        この例では、PDFファイルの隠れたメタデータをクリアする方法を説明します。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 作者のメタデータを削除する
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # タイトルのメタデータを削除する
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Redactorでファイルを開く
          with gr.Redactor("source.pdf") as redactor:

              # 修正処理を実行する
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 更新されたファイルを保存する
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Pythonを使用したPDFからのメタデータ削除"
    exclude: "PDF"
    description: "Pythonを使用してPDFの隠れたデータフィールドを削除します。プライバシーを保護し、ファイルをクリーンに保つためのスマートな方法です。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "画像のマスキング"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "一般的な画像フォーマット"

        # format loop 6
        - name: "写真のマスキング"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "写真フォーマット"

        # format loop 7
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 8
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 9
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"

        # format loop 10
        - name: "JPEGのマスキング"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "JPEG画像"


---