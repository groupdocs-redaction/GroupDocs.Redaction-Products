
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: th
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อความส่วนตัวจาก WORD โดยใช้ Java"
head_description: "ทำให้ไฟล์ WORD ของคุณปลอดภัยโดยการลบข้อมูลที่เป็นความลับด้วย GroupDocs.Redaction for Java และ Java การทำความสะอาดที่รวดเร็วและเรียบง่าย"

############################# Header ############################
title: "แก้ไขหรือลบข้อความในไฟล์ WORD ด้วย Java" 
description: "ปกป้องเนื้อหาที่สำคัญในไฟล์ WORD ของคุณโดยใช้ GroupDocs.Redaction for Java และ Java ลบข้อมูลธุรกิจ กฎหมาย หรือส่วนตัวอย่างมั่นใจ"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "อะไรคือ GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java มอบวิธีที่เชื่อถือได้ให้กับนักพัฒนา Java ในการลบไฟล์ WORD ทำความสะอาดข้อความ รูปภาพ ความคิดเห็น และรายละเอียดที่ซ่อนด้วยโค้ดเพียงไม่กี่บรรทัด

############################# Steps ############################
steps:
    enable: true
    title: "ขั้นตอนในการลบเอกสาร Word"
    content: |
      ใช้ GroupDocs.Redaction for Java ในโปรเจค Java ของคุณเพื่อทำความสะอาดไฟล์ก่อนแชร์
      
      1. สร้าง Redactor และโหลดเอกสาร Word
      2. ตั้งค่าตัวเลือกการลบที่คุณต้องการ
      3. เลือกข้อความที่คุณต้องการค้นหาและแทนที่
      4. ดำเนินการลบและบันทึกไฟล์ของคุณ
   
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
        // การลบเอกสาร WORD

        // โหลดไฟล์โดยใช้ Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // เลือกกฎการลบของคุณ
            // ป้อนข้อความค้นหาและข้อความแทนที่
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
  description: "GroupDocs.Redaction for Java สามารถช่วยคุณทำความสะอาดข้อมูลที่เป็นความลับจากประเภทไฟล์ต่าง ๆ ลบข้อความ รูปภาพ และข้อมูลเมตาอย่างรวดเร็ว"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ลบข้อความ รูปภาพ และข้อมูลเมตา"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาข้อมูลเฉพาะและแทนที่หรือทำลายมันทั่วทั้งไฟล์ รองรับ regex"

    # feature loop
    - title: "ปิดซ่อนไฟล์"
      content: "ใช้การปกปิดเพื่อซ่อนรูปภาพหรือส่วนในเอกสาร"

    # feature loop
    - title: "ลบข้อมูลเมตา"
      content: "ลบข้อมูลเพิ่มเติมเช่นชื่อผู้เขียน วันเวลา หรือการแก้ไขที่ติดตาม"
      
  code_samples_ext:
    # code sample ext loop
    - title: "การลบด้วยรูปแบบ Regex"
      content: |
        ค้นหาข้อความโดยใช้การแสดงผลปกติ (regex) เพื่อซ่อนเนื้อหาคล้ายกับหมายเลขโทรศัพท์ วันที่ หรือหมายเลขประจำตัว
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  โหลดเอกสารของคุณ
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // ตั้งค่ารูปแบบ regex สำหรับ EMAIL และค่าที่ใช้แทน
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // ดำเนินการลบ
              redactor.apply(redaction);

              // บันทึกเอกสารที่อัปเดต
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
    title: "ลบเนื้อหาใน WORD ด้วย Java"
    exclude: "WORD"
    description: "ซ่อนหรือกำจัดข้อมูลส่วนตัวและลับจากเอกสาร WORD โดยใช้ Java วิธีการง่าย ๆ เพื่อความปลอดภัยของไฟล์"
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