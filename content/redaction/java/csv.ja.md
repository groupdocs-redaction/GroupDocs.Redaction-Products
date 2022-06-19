---
layout: "auto-gen-gist"
draft: false
path: "redaction/java/text/csv"
otherformats: PDF DOC DOT DOCX DOCM DOTX DOTM RTF XLSX XLSM XLTX XLTM XLS XLT PPT PPTX  PPS POT PPSX PPTM PPSM POTM 

head_title: "Javaの正確なフレーズ/正規表現を介してCSVテキストを編集する"
head_description: "GroupDocs.Redactions Java APIを使用すると、開発者は、Javaでの正確なフレーズまたは正規表現を介してPDF DOC DOCX RTF XLSX CSVPPTPPTXおよび画像からテキストを編集できます。"

title: "Javaを使用してCSVファイルからテキストを編集、非表示、または削除する方法"
description: "GroupDocs.Redactions Java APIを使用すると、ワープロドキュメント、ワークシート、プレゼンテーション、PDF、画像から機密テキストを編集、非表示、または削除できます。"

button:
    enable: true

about:
    enable: true
    title: "テキスト編集とは何ですか？"
    content: |
        テキスト編集とは、機密または不要なテキストまたは情報をデジタルドキュメントから削除し、それを含むドキュメントまたは段落の残りの部分をそのまま残すプロセスです。 Redactionは、機密情報を非表示にするか完全に削除することにより、ユーザーと組織が機密情報を保護するのに役立ちます。 GroupDocs.Redactionを使用するJavaAPIユーザーは、ワードプロセッシングドキュメント、ワークシート、プレゼンテーション、PDF、およびラスターイメージファイルから機密テキストを編集、非表示、または削除できるようになりました。 APIは、ドキュメント内の個人情報を編集するためのさまざまなオプションとメソッドを提供します。完全一致または正規表現を使用した検索と編集、テキスト（免税コード）またはグラフィック（色付きの長方形）の編集などをサポートします。それでは、APIをダウンロードしてドキュメントの編集プロセスを自動化し、その基本機能と高度な機能を試してみませんか。 

steps:
    enable: true
    block:
    - title_left: "JavaでCSVの正確なフレーズを編集する"
      content_left: |
        GroupDocs.Redactionを使用すると、機密性の高いデータやプライベートなデータをドキュメントから簡単に編集できます。最も一般的な編集のケースは、ドキュメントからテキストを削除することです。 

        次のコードを使用して、正確なフレーズを介してドキュメントの特定の部分にテキストの編集を適用できます。これにより、ユーザーは個人の正確なフレーズ「MichalClark」を個人（または任意の免税コード）に置き換えることができます。

      title_right: "CSVから機密データを削除する"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor)クラスのインスタンスを作成し、CSVファイルをアップロードします
        *ExactPhraseRedactionクラスの新しいインスタンスを使用してRedactor.applyメソッドを呼び出します
        * [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)のオブジェクトを使用してredactor.saveメソッドを呼び出します
        * redactor.saveメソッドを呼び出して、変更を保存します 

      gisthash: "3202859fc19b5dfd14e8f073b70a18f8"
      gistfile: "redact_exact_phrase.java"
      
    - title_left: "CSVで大文字と小文字を区別するテキストの編集"
      content_left: |
        次の例では、ユーザーは大文字と小文字を区別する正確なフェーズの編集を実行して、ドキュメント内の特定のテキストのチャックを削除または非表示にすることができます。デフォルトでは、正確なフェーズの検索では大文字と小文字は区別されません。 
        
      title_right: "Javaを介して大文字と小文字を区別する編集を実行する"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor)クラスのインスタンスを作成し、CSVファイルをアップロードします
        *ExactPhraseRedactionクラスの新しいインスタンスを使用してRedactor.applyメソッドを呼び出します
        * [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)のオブジェクトを使用してredactor.saveメソッドを呼び出します
        * redactor.saveメソッドを呼び出して、変更を保存します 
        
      gisthash: "a43e3ce358f93df92373b5441bc579fb"
      gistfile: "case_sensitive_redaction.java"

    - title_left: "カラーボックスを介してCSVでテキストを編集"
      content_left: |
        編集されたテキストを削除したり、そこに文字列を配置したりする代わりに、編集されたテキストの上にカラーボックスを配置することもできます。この場合、一致したテキストは削除され、色付きの長方形が編集されたテキストの上に配置されます。
        
      title_right: "カラーボックスを使用してJavaでテキストを削除する"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor)クラスのインスタンスを作成し、CSVファイルをアップロードします
        *ExactPhraseRedactionクラスの新しいインスタンスを使用してRedactor.applyメソッドを呼び出します
        * [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)のオブジェクトを使用してredactor.saveメソッドを呼び出します
        * redactor.saveメソッドを呼び出して、変更を保存します 
        
      gisthash: "6d83e791388b6834a372dc90f4b455f6"
      gistfile: "redact_text_using_color_box.java"

    - title_left: "システム要求"
      content_left: |
        GroupDocs.Redaction for Java APIは、すべての主要なプラットフォームとオペレーティングシステムでサポートされています。完全なシステム要件ガイドについては、[システム要件](https://docs.groupdocs.com/redaction/java/system-requirements)にアクセスしてください。以下のコードを実行する前に、システムに次の前提条件がインストールされていることを確認してください。 ：
        *オペレーティングシステム：Microsoft Windows、Linux、MacOS
        *開発環境：NetBeans、Intellij IDEA、Eclipseなど
        * Javaランタイム環境：J2SE6.0以降
        * [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)から最新バージョンのGroupDocs.RedactionforJavaを入手してください。
        
      title_right: "GroupDocs.Redactionを使用する理由"
      content_right: |
        *ユーザーがカスタムドキュメント形式と編集の種類を追加できるようにする
        *機密情報を削除するために追加のソフトウェアは必要ありません
        *ページ範囲レンダリングドキュメントをPDFとして設定する機能
        *さまざまな種類のメタデータを編集する簡単な方法：作成者名、バージョン、タイトル、件名、説明など
        *ドキュメント情報の抽出-ファイルタイプ、ページ数など。

demos:
    enable: true
        

about_formats:
    enable: true


more_formats:
    enable: true


back_to_top:
    enable: true
---
