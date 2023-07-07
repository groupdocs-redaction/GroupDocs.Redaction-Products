---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ja/redaction/net/annotation/xls"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: ".NET コア経由の正規表現を使用して、XLS ドキュメントの注釈を秘匿化する"
head_description: "さまざまな形式のドキュメントから正規表現を使用して、注釈内の機密情報を秘匿化します。"

############################# Header ############################
title: ".NET コアアプリの C# および正規表現を使用して XLS ファイルの注釈を秘匿化します"
description: "Office および OpenOffice のドキュメント、スプレッドシート、プレゼンテーション、および Windows、Linux、macOS 上の XLS から機密情報を検索して削除します"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: ".NET API のドキュメント注釈編集"
    content: |
        PDF、Word、Excel、PowerPoint のドキュメントおよび画像からの機密情報や機密情報をサニタイズするための、形式に依存しない単一のインターフェイス。メタデータの変更や注釈の削除機能も含まれます。 GroupDocs.Redaction for .NET ツールを使用すると、機密情報を編集して編集した文書を PDF に保存し、すべてのページをラスター イメージに変換したり、文書を元の形式で保存してさらに編集したりできます。

############################# Steps ############################
steps:
    enable: true
    title_left: "C# 経由で正規表現を使用して XLS からの注釈を秘匿化する"
    content_left: |
        [GroupDocs.Redaction](ja//redaction/net/) を使用すると、.NET 開発者は正規表現の最大限の強度を使用して、いくつかの簡単な手順で XLS ファイルを秘匿化できます。

        *   [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) クラスのインスタンスを作成し、XLS ファイルをロードします
        *   [AnnotationRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/annotationredaction) クラスのインスタンスを作成して、コメントを検索して置換します
        *   AnnotationRedaction のオブジェクトを使用して [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) メソッドを呼び出す
        
    title_right: "GroupDocs リダクション API の使用方法"
    content_right: |
        コマンド ラインから ```nuget install GroupDocs.Redaction``` としてパッケージをインストールするか、Visual Studio のパッケージ マネージャー コンソールから ```Install-Package GroupDocs.Redaction```` を使用してパッケージをインストールします。 
        あるいは、[ダウンロード](https://downloads.groupdocs.com/redaction/net) からオフライン MSI インストーラーまたは ZIP ファイル内の DLL を取得し、プロジェクト内で手動で参照します。  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.xls"))
        {
        	redactor.Apply(new AnnotationRedaction("(?im:john)", "[redacted]"));
        	redactor.Save();
        }
        ```

############################# Demos ############################
demos:
    enable: true
############################# About Formats ############################
about_formats:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---