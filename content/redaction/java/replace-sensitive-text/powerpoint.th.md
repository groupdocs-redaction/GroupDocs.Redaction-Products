
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: th
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อความส่วนตัวจาก POWERPOINT โดยใช้ Java"
head_description: "ปกป้องข้อมูลที่ละเอียดอ่อนในไฟล์ POWERPOINT ของคุณโดยใช้ GroupDocs.Redaction for Java และ Java การลบที่รวดเร็วและมีประสิทธิภาพ"

############################# Header ############################
title: "แก้ไขหรือซ่อนข้อความที่เป็นความลับในเอกสาร POWERPOINT ด้วย Java" 
description: "ปกป้องเนื้อหาที่เป็นความลับในไฟล์ POWERPOINT ของคุณโดยใช้ Java และ GroupDocs.Redaction for Java ผลการปฏิบัติงานคุ้มค่า"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "พบกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java มอบทุกอย่างที่นักพัฒนา Java ต้องการในการลบเนื้อหา POWERPOINT นำไปทำความสะอาดข้อความ รูปภาพ หมายเหตุ และข้อมูลเมตาในรูปแบบไฟล์ที่นิยม

############################# Steps ############################
steps:
    enable: true
    title: "ขั้นตอนในการทำความสะอาดเนื้อหาในเอกสาร Powerpoint"
    content: |
      ใช้ GroupDocs.Redaction for Java เพื่อกำจัดหรือปกปิดข้อมูลที่เป็นความลับในแอป Java ของคุณ การลบง่ายและรวดเร็ว
      
      1. เริ่มต้น Redactor และโหลดไฟล์ Powerpoint ของคุณ
      2. ตั้งค่าการลบที่เหมาะสมกับคุณ
      3. ระบุข้อความที่จะค้นหากับข้อความที่ใช้แทน
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
        // วิธีลบข้อความในไฟล์ POWERPOINT

        // โหลดไฟล์ของคุณด้วยตัวสร้าง Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // ตั้งค่าการลบของคุณ
            // เลือกสิ่งที่จะค้นหาและสิ่งที่จะใช้แทน
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ใช้การลบและบันทึกไฟล์ POWERPOINT ใหม่
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการลบเพิ่มเติม"
  description: "GroupDocs.Redaction for Java ช่วยในการลบหรือซ่อนเนื้อหาที่เป็นความลับในหลายไฟล์ เก็บเอกสารให้ถูกต้องและปลอดภัยก่อนแชร์"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "เครื่องมือในการลบข้อความ รูปภาพ และข้อมูลเมตา"
  features:
    # feature loop
    - title: "แทนที่ข้อความที่ลับ"
      content: "ค้นหาและแทนที่ข้อความที่ตรงกันในไฟล์ สนับสนุน regex และตัวเลือกการค้นหาที่ชาญฉลาด"

    # feature loop
    - title: "ซ่อนรูปภาพที่ละเอียดอ่อน"
      content: "ปกปิดรูปหรือพื้นที่เฉพาะด้วยตัวครอบ ปรับการตั้งค่า สี และเพิ่มเติม"

    # feature loop
    - title: "ทำความสะอาดข้อมูลเมตา"
      content: "ลบข้อมูลซ่อนอย่างเช่นผู้เขียน วันสร้าง หรือความคิดเห็นเพื่อปกป้องความเป็นส่วนตัว"
      
  code_samples_ext:
    # code sample ext loop
    - title: "การลบที่อิงตามรูปแบบด้วย Regex"
      content: |
        ใช้การแสดงผลปกติในการค้นหาและลบรูปแบบข้อความที่เป็นความลับเช่นอีเมลหรือรหัสประจำตัว
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดเอกสารที่คุณต้องการทำความสะอาด
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // กำหนดรูปแบบ regex สำหรับ EMAIL และข้อความที่ใช้แทน
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // จัดการลบตามกฎ
              redactor.apply(redaction);

              // บันทึกไฟล์ที่ถูกลบ
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
    title: "ลบเนื้อหาใน POWERPOINT โดยใช้ Java"
    exclude: "POWERPOINT"
    description: "รักษาข้อมูลทางการและส่วนตัวโดยการลบเนื้อหาในไฟล์ POWERPOINT โดยใช้เครื่องมือจาก Java เก็บเอกสารให้ปลอดภัยและเป็นส่วนตัว"
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