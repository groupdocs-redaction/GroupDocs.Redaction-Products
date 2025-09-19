---
############################# Static ############################
layout: "family"
date:  2025-09-19T19:29:16
draft: false

product: "Redaction"
product_tag: "redaction"

lang: th

############################# Head ############################
head_title: "โซลูชันการแก้ไขเอกสาร ปรับแก้หรือลบข้อมูลที่ละเอียดอ่อนใดๆ"
head_description: "ลบ แก้ไข หรือซ่อนข้อความ ภาพ หรือข้อมูลเมตาในไฟล์ PDF เอกสาร Word สเปรดชีต Excel การนำเสนอ PowerPoint ภาพ และอื่นๆ ใช้ไลบรารีของเราในแอปพลิเคชัน .NET, Java, Python หรือที่ใช้งานบนคลาวด์"

############################# Header ############################
title: "ไลบรารีการแก้ไขเอกสาร"
description:  |
  ซ่อนหรือลบข้อมูลส่วนบุคคลจากไฟล์ประเภทต่างๆ

  แก้ไขข้อความหรือภาพเพื่อกำจัดเนื้อหาที่ละเอียดอ่อน

  จัดการข้อมูลเมตาในไฟล์โดยใช้ฟีเจอร์ขั้นสูงของเรา

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "เลือกแพลตฟอร์มของคุณ"
  title: "ความเป็นอิสระของแพลตฟอร์ม"
  description: "ไลบรารี GroupDocs.Redaction รองรับระบบปฏิบัติการและเฟรมเวิร์กต่อไปนี้:"
  details_link_title: "เรียนรู้เพิ่มเติม"

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
          - rows: "3"
            content: |
                    NET 6.0+ <br> .NET Core 3.1 <br> .NET Framework 4.6.2+
      
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
          - rows: "3"
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
          - rows: "3"
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
  title: "GroupDocs.Redaction โดยรวม"
  description: "โซลูชันในการจัดการเนื้อหาในไฟล์ PDF เอกสาร Office ภาพ และไฟล์ทางธุรกิจอื่นๆ"

  items:
    # items loop
    - icon: "text"
      title: "ลบหรือแก้ไขข้อความ"
      content: "ค้นหาและแก้ไขข้อความที่ละเอียดอ่อนในเอกสารของคุณ"

    # items loop
    - icon: "image"
      title: "แก้ไขภาพ"
      content: "ซ่อนพื้นที่ภาพในไฟล์ของคุณอย่างมีประสิทธิภาพ"

    # items loop
    - icon: "template"
      title: "จัดการข้อมูลเมตา"
      content: "ลบหรือแทนที่ข้อมูลเมตา เช่น ผู้เขียนในเอกสาร Word หรือข้อมูล EXIF ในภาพ"

    # items loop
    - icon: "pdf"
      title: "ฟีเจอร์ขั้นสูง"
      content: "ค้นหาข้อมูลที่ต้องการลบโดยใช้การแสดงออกปกติหรือติดตั้ง AI"

############################# Code samples ############################
code_samples:
  enable: true
  title: "ตัวอย่างโค้ด GroupDocs.Redaction"
  description: "กรณีการใช้งานทั่วไปของการดำเนินการแก้ไข GroupDocs.Redaction"
  items:
    # code sample loop
    - title: "วิธีแก้ไขข้อความในเอกสาร PDF"
      content: |
       GroupDocs.Redaction เป็นโซลูชันที่ดีที่สุดสำหรับการแก้ไขข้อความในเอกสารของคุณในไม่กี่ขั้นตอน
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // ส่งเส้นทางไฟล์ที่ต้องการแก้ไขไปยังอินสแตนซ์ Redactor
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // ระบุตัวเลือกการแก้ไข
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // ดำเนินการแก้ไขและบันทึกผลลัพธ์
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // ส่งเส้นทางไฟล์ที่ต้องการแก้ไขไปยังอินสแตนซ์ Redactor
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // ระบุตัวเลือกการแก้ไข
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // ดำเนินการแก้ไขและบันทึกผลลัพธ์
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

                # ส่งเส้นทางไฟล์ที่ต้องการแก้ไขไปยังอินสแตนซ์ Redactor
                with gr.Redactor("source.pdf") as redactor:

                    # ระบุตัวเลือกการแก้ไข
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # ดำเนินการแก้ไขและบันทึกผลลัพธ์
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "รองรับไฟล์มากกว่า 30 รูปแบบ"
  description: "GroupDocs.Redaction รองรับการดำเนินการแก้ไขข้อมูลในรูปแบบไฟล์ทางธุรกิจที่ใช้งานทั่วไป"

############################# Metrics ###############################
metrics:
  enable: true
  title: "GroupDocs.Redaction ความสำเร็จ"
  description: "ค้นหาตัวชี้วัดหลักที่เน้นความสำเร็จของไลบรารีของเรา"

  items:
    # items loop
    - number: "30+"
      title: "รูปแบบที่รองรับ"
      content: "GroupDocs.Redaction รองรับการดำเนินการกับรูปแบบไฟล์ที่ใช้กันทั่วไปกว่า 30 รูปแบบ"

    # items loop
    - number: "440k"
      title: "ดาวน์โหลด NuGet"
      content: "GroupDocs.Redaction สำหรับ .NET ได้ดาวน์โหลดมากกว่า 440,000 ครั้งจาก NuGet"

    # items loop
    - number: "12k"
      title: "ดาวน์โหลด Maven"
      content: "GroupDocs.Redaction มีดาวน์โหลดกว่า 12,000 ครั้งใน Maven ซึ่งมีฟีเจอร์การแก้ไขที่ทรงพลังสำหรับ Java"

    # items loop
    - number: "140+"
      title: "ลูกค้าที่พึงพอใจ"
      content: "ทั้งองค์กรระดับโลกและนักพัฒนารายบุคคลไว้วางใจผลิตภัณฑ์จาก GroupDocs เพื่อสร้างโซลูชันที่สร้างสรรค์"


############################# Customers ###############################
customers:
  enable: true
  title: "ลูกค้าที่พึงพอใจของเรา"
  description: "ห้องสมุดของ GroupDocs ได้รับความไว้วางใจจากแบรนด์ที่ได้รับการยอมรับและเคารพในระดับสากล"

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
  title: "พร้อมที่จะเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรีในแพลตฟอร์มของคุณ"

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
  title: "คำถามที่พบบ่อย"
  description: "คำตอบสำหรับคำถามที่ถูกถามบ่อยที่สุด"

  items:
    # items loop
    - question: "ไลบรารี GroupDocs.Redaction ต้องการซอฟต์แวร์ของบุคคลที่สามเพื่อจัดการเอกสารหรือไม่?"
      answer: "GroupDocs.Redaction ไม่ต้องการซอฟต์แวร์ภายนอกเช่น Adobe Acrobat, Microsoft Office หรืออื่นๆ"

    # items loop
    - question: "ฉันสามารถทดลองใช้ไลบรารี GroupDocs.Redaction ก่อนทำการซื้อได้หรือไม่?"
      answer: "ใช่, คุณสามารถทดลองใช้ GroupDocs.Redaction โดยไม่ต้องซื้อใบอนุญาต มันทำงานในโหมดทดลอง ซึ่งจะเพิ่มตราสัญลักษณ์ทดลองและจำกัดผลลัพธ์เป็น 3 หน้าแรก สำหรับการทดสอบโดยไม่มีข้อจำกัด ให้ขอใบอนุญาตชั่วคราว 30 วัน สำหรับรายละเอียดเพิ่มเติม, [ดูที่นี่](https://purchase.groupdocs.com/temporary-license/)."

    # items loop
    - question: "มีตัวเลือกการอนุญาตอะไรบ้าง?"
      answer: "เรามีประเภทใบอนุญาตหลายประเภทตามความต้องการในการพัฒนาและการกระจาย งานดังกล่าวรวมถึงใบอนุญาตตามนักพัฒนา, ตามไซต์, และตามการใช้งาน เรียนรู้เพิ่มเติม [ที่นี่](https://purchase.groupdocs.com/pricing/redaction/net/)."

############################# Cloud Links ###############################
cloud_links:
  enable: false
  title: "GroupDocs.Redaction API ที่ไม่ต้องเขียนโค้ด"
  description: "รวมการแก้ไขเอกสารเข้ากับแอปพลิเคชันใด ๆ โดยใช้ REST API ที่ทำงานบนคลาวด์ของเรา"
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "ใช้คำสั่ง cURL กับ RESTful Cloud API ของเราเพื่อลบเอกสารในรูปแบบไฟล์ที่รองรับได้อย่างกว้างขวาง"
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "แยกภาพ ข้อความ และข้อมูลเมตาหรือทำการแก้ไขเอกสารโดยใช้เทมเพลตในแอปพลิเคชัน Microsoft .NET"
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "Java SDK สำหรับการลบเอกสารและการแยกข้อมูลในแอปพลิเคชันที่ใช้ Java ของคุณ"
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "GroupDocs.Redaction แอปพลิเคชันที่ไม่ต้องเขียนโค้ด"
  description: "แอปพลิเคชันที่ทำงานบนเว็บที่ช่วยให้คุณทำการแก้ไขไฟล์รูปแบบยอดนิยมกว่า 30 รูปแบบได้โดยตรงในเบราว์เซอร์ของคุณ"

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "เครื่องมือออนไลน์ฟรีสำหรับลบไฟล์ Word, Excel, PowerPoint, PDF, และไฟล์ประเภทอื่นๆกว่า 30 รูปแบบ"
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "ลบเอกสาร Word ในเบราว์เซอร์ของคุณและแยกภาพ ข้อความ หรือข้อมูลเมตา"
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "เครื่องมือการลบ PDF ฟรีที่ทำงานบนอุปกรณ์หรือแพลตฟอร์มใด ๆ โดยไม่มีข้อจำกัด"
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---