
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อความใน WORD โดยใช้ Overlays ของ Java"
head_description: "ใช้ GroupDocs.Redaction for Java เพื่อปกปิดข้อความที่ละเอียดอ่อนในไฟล์ WORD ด้วยบล็อกสีในขณะที่รักษาโครงสร้างเอกสารที่ไม่เปลี่ยนแปลง."

############################# Header ############################
title: "การปกปิดด้วย Overlay ในไฟล์ WORD ด้วย Java" 
description: "ซ่อนรายละเอียดที่สำคัญในเอกสาร WORD ของคุณโดยใช้ Overlays ที่มีสีจาก Java และ GroupDocs.Redaction for Java."
subtitle: "สิ่งที่ GroupDocs.Redaction for Java สามารถทำได้" 

############################# About ############################
about:
    enable: true
    title: "พบกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ช่วยให้ผู้ใช้ Java ควบคุมการปิดบัง WORD ได้อย่างครบถ้วน ปิดบังอะไรก็ได้ที่คุณต้องการ—ข้อความ, ภาพ หรือข้อมูลที่เมตา.

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลส่วนตัวในรูปแบบ Word"
    content: |
      GroupDocs.Redaction for Java ช่วยให้โปรแกรมเมอร์ Java มีวิธีการที่รวดเร็วในการทำความสะอาดไฟล์และมั่นคงเนื้อหาของพวกเขา.
      
      1. เริ่มต้น Redactor และโหลดไฟล์ Word.
      2. เลือกตัวเลือกการปกปิดของคุณ.
      3. เพิ่มรูปแบบข้อความและสี Overlay.
      4. ดำเนินการการปิดบังและบันทึกไฟล์.
   
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
        // ซ่อนข้อความโดยใช้ Overlays ใน WORD

        // ใช้ Redactor เพื่อเปิดเอกสาร
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // ตั้งค่าตัวเลือกการปิดบัง
            // เพิ่มคำหลักและเลือกสี
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ใช้และบันทึกไฟล์ที่ถูกปิดบัง
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ความสามารถในการปิดบังที่มากขึ้น"
  description: "ใช้ GroupDocs.Redaction for Java เพื่อเอาข้อมูลที่มองเห็นได้และซ่อนอยู่จากไฟล์ในขณะที่รักษาได้อย่างสมบูรณ์."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "เอาท์พุตที่เรียบง่ายและสะอาด"
  features:
    # feature loop
    - title: "แทนที่ข้อความ"
      content: "ปิดบังคำหรือวลีที่ไม่ควรเห็น."

    # feature loop
    - title: "อำพรางภาพ"
      content: "ใช้ Overlays ระบายสีเพื่อลบภาพหรือบางส่วนของมัน."

    # feature loop
    - title: "ลบข้อมูลที่เป็นเมตา"
      content: "ลบรายละเอียดที่ถูกซ่อนในคุณสมบัติของไฟล์."
      
  code_samples_ext:
    # code sample ext loop
    - title: "การปิดบังด้วย Regex"
      content: |
        เรียนรู้วิธีการใช้ regex เพื่อซ่อนเนื้อหาที่เฉพาะ
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  โหลดเอกสารที่ต้องการการปิดบัง
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // กำหนดรูปแบบ regex และสี Overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // นำไปใช้การปิดบัง
              redactor.apply(redaction);

              // บันทึกเวอร์ชันที่สะอาดของคุณ
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "ลบเนื้อหาใน WORD ด้วย Java"
    exclude: "WORD"
    description: "รักษาเอกสาร WORD ของคุณให้เป็นส่วนตัวโดยการซ่อนหรือเอาข้อมูลที่ละเอียดอ่อนออกโดยใช้ Java."
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 6
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 7
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "การเสนอ PowerPoint Open XML"


---