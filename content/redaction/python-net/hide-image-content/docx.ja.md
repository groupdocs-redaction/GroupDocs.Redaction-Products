
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ja
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用してDOCXの画像コンテンツをオーバーレイで隠す"
head_description: "GroupDocs.Redaction for Python via .NETを使って、DOCXファイル内の敏感な画像をオーバーレイで保護します。プライベートなビジュアルを守りつつ、文書のフォーマットを保持します。"

############################# Header ############################
title: "Pythonを使ったDOCX文書内の画像をオーバーレイで保護" 
description: "Pythonを使用して、DOCXファイル内の個人および業務のビジュアルを安全に保ちます。当社の修正ツールは文書のセキュリティを簡単にします。"
subtitle: "GroupDocs.Redaction for Python via .NETのハイライト" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETについて"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Pythonにより、DOCXファイル内のコンテンツを隠したり削除したりする能力を開発者に提供します。テキスト、画像、メタデータを保護し、さまざまな文書形式で保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Docxファイル内のデータを安全に保つ"
    content: |
      GroupDocs.Redaction for Python via .NETは、Python via .NETアプリケーションが文書を保護するのを簡単にします。数ステップで敏感なデータを修正します。
      
      1. Redactorのインスタンスを作成し、Docxファイルへのパスを指定します。
      2. 作業に合った修正の設定を行います。
      3. 覆いたい画像の部分を選択し、オーバーレイの色を定義します。
      4. プロセスを実行し、修正されたファイルを保存します。
   
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

        # DOCX内の敏感な画像の部分を隠す

        # オーバーレイのサイズと色を定義
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 修正する領域を指定
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Redactorを使用してファイルをロード
        with gr.Redactor("input.docx") as redactor:

            # オーバーレイを適用して文書を保存
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書内のコンテンツを隠す"
  description: "GroupDocs.Redaction for Python via .NETを使うと、さまざまな種類の文書から敏感な情報を手軽に隠したり削除したりできます。文書を安全でシェアしやすい状態に保ちます。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "効果的な修正機能"
  features:
    # feature loop
    - title: "テキストを検索・編集"
      content: "敏感な単語を見つけて置き換え、データを保護します。"

    # feature loop
    - title: "画像を覆う"
      content: "オーバーレイを使用して、全画像または選択した部分を保護します。"

    # feature loop
    - title: "隠れたメタデータを整理"
      content: "誤ってデータを共有するのを防ぐためにメタデータを削除または更新します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを使用して画像データを隠す"
      content: |
        この例は、オーバーレイを使用して文書内の敏感な画像領域を保護する方法を示しています。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # オーバーレイの設定を調整: 色、サイズ、位置
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # ページ1の領域を選択して修正
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # 修正したいファイルをロード
          with gr.Redactor("source.docx") as redactor:

              # オーバーレイを適用して画像を隠す
              result = redactor.apply(redaction)

              # 修正されたファイルを保存
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Pythonを使用してDOCXファイルで敏感なデータを隠す"
    exclude: "DOCX"
    description: "Pythonを使用して、DOCXファイル内のプライベートデータを覆ったり、削除したりします。機密性のある文書を安全に保つための信頼できるツールです。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "画像のマスキング"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "一般的な画像フォーマット"

        # format loop 6
        - name: "写真のマスキング"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "写真フォーマット"

        # format loop 7
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 8
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 9
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"

        # format loop 10
        - name: "JPEGのマスキング"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "JPEG画像"


---