---
############################# Static ############################
layout: "family"
date:  2025-08-11T19:33:03
draft: false

product: "Redaction"
product_tag: "redaction"

lang: ko

############################# Head ############################
head_title: "문서 레드랙션 솔루션. 민감한 데이터를 수정하거나 삭제하십시오."
head_description: "PDF, Word 문서, Excel 스프레드시트, PowerPoint 프레젠테이션, 이미지 등에서 텍스트, 이미지 또는 메타데이터를 제거, 수정 또는 숨깁니다. .NET, Java, Python 또는 클라우드 기반 애플리케이션에서 저희 라이브러리를 사용하세요."

############################# Header ############################
title: "문서 레드랙션 라이브러리"
description:  |
  다양한 파일 형식에서 개인 정보를 숨기거나 제거하십시오.

  민감한 내용을 제거하기 위해 텍스트 또는 이미지를 수정하십시오.

  저희의 고급 기능을 사용하여 파일 메타데이터를 관리하십시오.

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "플랫폼 선택"
  title: "플랫폼 독립성"
  description: "GroupDocs.Redaction 라이브러리는 다음 운영 체제와 프레임워크를 지원합니다:"
  details_link_title: "자세히 알아보기"

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
  title: "GroupDocs.Redaction 개요"
  description: "PDF, 오피스 문서, 이미지 및 기타 비즈니스 파일의 콘텐츠를 관리하는 솔루션입니다."

  items:
    # items loop
    - icon: "text"
      title: "텍스트 제거 또는 수정"
      content: "문서에서 민감한 텍스트를 찾아서 레드랙션합니다."

    # items loop
    - icon: "image"
      title: "이미지 레드랙션"
      content: "추가적인 노력을 들이지 않고 파일 내 이미지 영역을 숨길 수 있습니다."

    # items loop
    - icon: "template"
      title: "메타데이터 관리"
      content: "Word 문서의 저자 또는 이미지의 EXIF 데이터와 같은 메타데이터를 삭제하거나 교체할 수 있습니다."

    # items loop
    - icon: "pdf"
      title: "고급 기능"
      content: "정규식이나 AI 통합을 사용하여 레드랙션할 데이터를 검색합니다."

############################# Code samples ############################
code_samples:
  enable: true
  title: "GroupDocs.Redaction 코드 샘플"
  description: "GroupDocs.Redaction 레드랙션 작업의 전형적인 사용 사례입니다."
  items:
    # code sample loop
    - title: "PDF 문서의 텍스트 레드랙션 방법"
      content: |
       GroupDocs.Redaction은 몇 단계만으로 문서에서 텍스트를 레드랙션하는 최상의 솔루션입니다.
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // 레드랙션할 파일 경로를 Redactor 인스턴스에 전달합니다.
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // 레드랙션 옵션을 제공합니다.
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // 레드랙션 후 결과를 저장합니다.
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // 레드랙션할 파일 경로를 Redactor 인스턴스에 전달합니다.
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // 레드랙션 옵션을 제공합니다.
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // 레드랙션 후 결과를 저장합니다.
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

                # 레드랙션할 파일 경로를 Redactor 인스턴스에 전달합니다.
                with gr.Redactor("source.pdf") as redactor:

                    # 레드랙션 옵션을 제공합니다.
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # 레드랙션 후 결과를 저장합니다.
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "30개 이상의 파일 형식 지원"
  description: "GroupDocs.Redaction는 널리 사용되는 비즈니스 파일 형식 전반에 걸쳐 레드랙션 작업을 지원합니다."

############################# Metrics ###############################
metrics:
  enable: true
  title: "GroupDocs.Redaction 성과"
  description: "우리 라이브러리의 성공을 강조하는 주요 메트릭을 발견하세요."

  items:
    # items loop
    - number: "30+"
      title: "지원되는 형식"
      content: "GroupDocs.Redaction는 30개 이상의 널리 사용되는 파일 형식에서 작업을 지원합니다."

    # items loop
    - number: "440k"
      title: "NuGet 다운로드"
      content: "GroupDocs.Redaction을 .NET에서 NuGet에서 440,000회 이상 다운로드되었습니다."

    # items loop
    - number: "12k"
      title: "Maven 다운로드"
      content: "GroupDocs.Redaction는 강력한 Java 레드랙션 기능을 제공하며, Maven에서 12,000회 이상의 다운로드가 있습니다."

    # items loop
    - number: "140+"
      title: "만족스러운 고객"
      content: "전 세계 기업과 개인 개발자는 GroupDocs 제품에 의존하여 혁신적인 솔루션을 구축하고 있습니다."


############################# Customers ###############################
customers:
  enable: true
  title: "우리의 만족스러운 고객들"
  description: "GroupDocs 라이브러리는 세계적으로 인정받고 존경받는 브랜드에서 신뢰받고 있습니다."

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
  title: "시작할 준비가 되셨나요?"
  description: "GroupDocs.Redaction의 기능을 무료로 사용해 보세요."

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
  title: "자주 묻는 질문"
  description: "가장 자주 묻는 질문에 대한 답변입니다."

  items:
    # items loop
    - question: "GroupDocs.Redaction 라이브러리를 사용하여 문서를 조작하기 위해 외부 소프트웨어가 필요한가요?"
      answer: "GroupDocs.Redaction는 Adobe Acrobat, Microsoft Office 및 기타 외부 소프트웨어를 필요로 하지 않습니다."

    # items loop
    - question: "GroupDocs.Redaction 라이브러리를 구매하기 전에 체험해 볼 수 있나요?"
      answer: "예, 라이센스를 구매하지 않고도 GroupDocs.Redaction를 체험해 볼 수 있습니다. 체험 모드에서 작동하며, 이는 체험 배지를 추가하고 출력 제한을 첫 3페이지로 제한합니다. 제약 없이 테스트하려면 30일 임시 라이센스를 요청하세요. 자세한 내용은 [여기](https://purchase.groupdocs.com/temporary-license/)를 참조하세요."

    # items loop
    - question: "사용할 수 있는 라이센스 옵션은 무엇인가요?"
      answer: "개발 및 배포 요구에 따라 여러 라이센스 유형을 제공합니다. 여기에는 사용량에 따라 개발자 기준, 사이트 기준 및 미터형 라이센스가 포함됩니다. 자세한 내용은 [여기](https://purchase.groupdocs.com/pricing/redaction/net/)에서 확인하세요."

############################# Cloud Links ###############################
cloud_links:
  enable: false
  title: "GroupDocs.Redaction 로우 코드 API"
  description: "우리의 클라우드 기반 REST API를 사용하여 문서 레드랙션을 모든 애플리케이션에 통합하세요."
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "cURL 명령을 사용하여 지원되는 다양한 파일 형식의 문서를 레드랙션합니다."
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "Microsoft .NET 애플리케이션에서 템플릿을 사용하여 이미지, 텍스트 및 메타데이터를 추출하거나 문서를 레드랙션합니다."
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "Java SDK를 사용하여 Java 기반 애플리케이션 내에서 문서를 레드랙션하고 데이터를 추출합니다."
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "GroupDocs.Redaction 무코드 앱"
  description: "브라우저에서 직접 30개 이상의 인기 파일 형식을 레드랙션할 수 있는 웹 기반 애플리케이션입니다."

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "Word, Excel, PowerPoint, PDF 등 30개 이상의 파일 형식을 레드랙션할 수 있는 무료 온라인 도구입니다."
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "브라우저에서 Word 문서를 레드랙션하고 이미지, 텍스트 또는 메타데이터를 추출합니다."
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "모든 장치 또는 플랫폼에서 제한 없이 작동하는 무료 PDF 레드랙션 도구입니다."
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---