
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: th
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อความที่เป็นความลับใน PDF โดยใช้ Java"
head_description: "ใช้ GroupDocs.Redaction for Java เพื่อค้นหาและลบข้อมูลส่วนตัวจากไฟล์ PDF ของคุณ การลบข้อความที่รวดเร็วและเชื่อถือได้"

############################# Header ############################
title: "ลบข้อมูลที่เป็นความลับจากไฟล์ PDF ด้วย Java" 
description: "ทำความสะอาดไฟล์ PDF โดยใช้ Java และ GroupDocs.Redaction for Java ลบเนื้อหาส่วนตัว กฎหมาย หรือธุรกิจ"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ให้วิธีที่เรียบง่ายสำหรับนักพัฒนา Java ในการทำความสะอาดไฟล์ PDF ลบหรือแทนที่ข้อความ รูปภาพ ความคิดเห็น และข้อมูลที่ซ่อน

############################# Steps ############################
steps:
    enable: true
    title: "วิธีลบข้อความในไฟล์ Pdf"
    content: |
      ด้วย GroupDocs.Redaction for Java นักพัฒนา Java สามารถลบเนื้อหาที่เป็นความลับได้ในไม่กี่ขั้นตอน
      
      1. สร้าง Redactor และโหลดไฟล์ Pdf ของคุณ
      2. เลือกการตั้งค่าการลบที่คุณต้องการ
      3. ป้อนข้อความที่ต้องการค้นหาและข้อความแทนที่
      4. ดำเนินการลบและบันทึกไฟล์
   
    code:
      platform: "java"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // วิธีทำความสะอาดไฟล์ PDF

        // สร้าง Redactor และโหลดเอกสาร
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // ตั้งค่ากฎการลบของคุณ
            // เพิ่มข้อความที่ต้องการลบและข้อความที่จะใช้แทน
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ดำเนินการลบและบันทึกไฟล์ใหม่
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ฟีเจอร์การลบเพิ่มเติม"
  description: "GroupDocs.Redaction for Java ลบข้อมูลที่เป็นความลับจากหลายรูปแบบ ลบข้อความ รูปภาพ และข้อมูลเมตาในขณะที่ยังคงไฟล์อ่านได้"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "เครื่องมือสำหรับการลบข้อความและภาพ"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาคำหรือวลีใด ๆ แล้วแทนที่ ทำงานกับข้อความธรรมดาหรือ regex"

    # feature loop
    - title: "ปิดเนื้อหารูปภาพ"
      content: "ซ่อนไฟล์ภาพหรือส่วนของภาพด้วยการง่ายๆ"

    # feature loop
    - title: "ทำความสะอาดข้อมูลเมตา"
      content: "ลบชื่อนักเขียน วันที่ หรือรายละเอียดที่ซ่อนอื่น ๆ ก่อนแชร์"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบข้อความด้วย Regex"
      content: |
        ใช้ regex เพื่อค้นหาและซ่อนรูปแบบเช่น อีเมล หมายเลขประจำตัว หรือรูปแบบที่กำหนดเอง
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดเอกสารที่คุณต้องการแก้ไข
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // เพิ่มรูปแบบ regex สำหรับ EMAIL และข้อความแทนที่
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // ดำเนินการลบที่ตรงกับเนื้อหา
              redactor.apply(redaction);

              // บันทึกเวอร์ชันที่ถูกลบข้อมูล
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "คัดลอก"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
          copy_tip: "คลิ๊กเพื่อคัดลอก"
          copy_done: "คัดลอกแล้ว"
        top_links:
          #  loop
          - title: "ดาวน์โหลดผลลัพธ์"
            icon: "download"
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
        links:
          #  loop
          - title: "ตัวอย่างเพิ่มเติม"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ลบไฟล์ PDF ด้วย Java"
    exclude: "PDF"
    description: "ปกป้องข้อมูลส่วนบุคคลหรือธุรกิจโดยการลบเนื้อหา PDF ด้วยเครื่องมือจาก Java"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 6
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 7
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "การเสนอ PowerPoint Open XML"


---