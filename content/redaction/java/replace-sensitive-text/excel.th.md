
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: th
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อความส่วนตัวจาก EXCEL โดยใช้ Java"
head_description: "รักษาความปลอดภัยให้กับสเปรดชีต EXCEL ของคุณโดยการลบเนื้อหาที่ละเอียดอ่อนด้วย GroupDocs.Redaction for Java และ Java การลบที่รวดเร็วและเรียบง่าย"

############################# Header ############################
title: "แก้ไขหรือลบข้อความในไฟล์ EXCEL ด้วย Java" 
description: "ทำความสะอาดไฟล์ EXCEL ของคุณด้วย GroupDocs.Redaction for Java และ Java เยี่ยมที่สุดสำหรับการปกป้องข้อมูลธุรกิจหรือส่วนตัว"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "พบกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ให้เครื่องมือตามที่พัฒนาต้องการสำหรับการทำความสะอาดไฟล์ EXCEL แก้ไขหรือซ่อนข้อความ รูปภาพ ข้อมูลเมตา และโน้ตอย่างแม่นยำ

############################# Steps ############################
steps:
    enable: true
    title: "วิธีลบเนื้อหาในไฟล์ Excel"
    content: |
      ใช้ GroupDocs.Redaction for Java ในโปรเจค Java ของคุณเพื่อกำจัดหรือปกปิดข้อความที่คุณไม่ต้องการแชร์
      
      1. สร้าง Redactor และโหลดไฟล์ Excel
      2. เลือกการตั้งค่าการลบที่คุณต้องการ
      3. กำหนดสิ่งที่ต้องค้นหาและแทนที่
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
        // วิธีลบข้อความในไฟล์ EXCEL

        // โหลดไฟล์ด้วย Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // ตั้งค่ากฎการลบ
            // ป้อนข้อความเป้าหมายและการแทนที่
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ดำเนินการและบันทึกไฟล์ที่ถูกลบ
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการลบเพิ่มเติม"
  description: "GroupDocs.Redaction for Java ช่วยทำความสะอาดข้อมูลที่เป็นความลับในประเภทเอกสารหลายประเภท ดีสำหรับความเป็นส่วนตัวก่อนแชร์"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ฟีเจอร์การลบข้อความ รูปภาพ และข้อมูลเมตา"
  features:
    # feature loop
    - title: "แทนที่ข้อความที่เป็นความลับ"
      content: "ค้นหาและเปลี่ยนคำหรือหมายเลขที่ตรงกันทั่วทั้งไฟล์ ใช้รูปแบบคำค้นหาหรือคำตรง"

    # feature loop
    - title: "ซ่อนส่วนของภาพ"
      content: "เพิ่มกล่องปกเพื่อซ่อนรูปภาพหรือเซลล์ เลือกสี ขนาด และตำแหน่ง"

    # feature loop
    - title: "ลบข้อมูลพื้นหลัง"
      content: "ลบข้อมูลซ่อนอย่างชื่อผู้เขียน วันเวลา หรือความคิดเห็นของเอกสาร"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบรูปแบบด้วย Regex"
      content: |
        ใช้การแสดงผลปกติเพื่อค้นหาและซ่อนรูปแบบเช่นอีเมลหรือหมายเลขบัญชี
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดไฟล์ที่คุณต้องการทำความสะอาด
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // สร้างรูปแบบ regex สำหรับ EMAIL และตั้งข้อความแทน
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // ดำเนินการลบ
              redactor.apply(redaction);

              // บันทึกเวอร์ชันที่อัปเดต
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
    title: "ลบข้อมูลใน EXCEL โดยใช้ Java"
    exclude: "EXCEL"
    description: "ทำความสะอาดข้อมูลส่วนตัวจากไฟล์ EXCEL โดยใช้ Java วิธีที่สุดในการเก็บแผ่นงานให้ปลอดภัย"
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