
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: th
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อความส่วนตัวจาก PPTX โดยใช้ Java"
head_description: "ปกป้องรายละเอียดที่เป็นความลับในงานนำเสนอ PPTX ของคุณด้วย GroupDocs.Redaction for Java และ Java การลบที่รวดเร็วและมีประสิทธิภาพ"

############################# Header ############################
title: "ทำความสะอาดข้อความในไฟล์ PPTX ด้วย Java" 
description: "ใช้ GroupDocs.Redaction for Java และ Java เพื่อซ่อนหรือลบเนื้อหาในสไลด์ PPTX ของคุณ เหมาะสำหรับการใช้งานทางธุรกิจ กฎหมาย หรือส่วนตัว"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "พบกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ให้เครื่องมือทรงพลังสำหรับนักพัฒนา Java ในการแก้ไขหรือซ่อนเนื้อหาในไฟล์ PPTX ทำงานกับข้อความ รูปภาพ ข้อมูลเมตา และความคิดเห็นอย่างเต็มที่

############################# Steps ############################
steps:
    enable: true
    title: "วิธีลบเนื้อหาในงานนำเสนอ Pptx"
    content: |
      ด้วย GroupDocs.Redaction for Java คุณสามารถทำความสะอาดงานนำเสนอ Java ของคุณในไม่กี่ขั้นตอน
      
      1. สร้าง Redactor และโหลดไฟล์ Pptx ของคุณ
      2. เลือกการตั้งค่าการลบที่ตรงตามความต้องการของคุณ
      3. ตั้งค่าคำค้นหาและเนื้อหาที่จะใช้แทน
      4. บันทึกการเปลี่ยนแปลงและบันทึกไฟล์ที่อัปเดต
   
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
        // ลบข้อความในงานนำเสนอ PPTX

        // โหลดเอกสารของคุณโดยใช้ Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // ตั้งค่าตัวเลือกการลบ
            // เลือกข้อความที่จะค้นหาและข้อความที่ใช้แทน
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ลบแล้วบันทึกไฟล์
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการลบเพิ่มเติม"
  description: "GroupDocs.Redaction for Java ทำให้การซ่อนหรือซ่อนเนื้อหาที่เป็นความลับจากไฟล์หลากหลายรูปแบบง่ายขึ้น เก็บเอกสารให้สะอาดและปลอดภัยก่อนแชร์"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ตัวเลือกในการลบข้อความ รูปภาพ และข้อมูลเมตา"
  features:
    # feature loop
    - title: "แทนที่ข้อความได้ทุกที่"
      content: "ค้นหาและแทนที่คำหรือวลีนั้นในสไลด์ ทำงานร่วมกับข้อความที่ตรงหรือรูปแบบ"

    # feature loop
    - title: "ซ่อนเนื้อหาภาพ"
      content: "ปกปิดส่วนที่เป็นภาพของสไลด์หรือวัตถุโดยใช้กล่องหน้าปกในสีที่คุณต้องการ"

    # feature loop
    - title: "ลบข้อมูลเมตา"
      content: "ลบข้อมูลที่อยู่เบื้องหลังอย่างเช่นผู้เขียน วันสร้าง หรือหมายเหตุที่อาจมีข้อมูลส่วนตัว"
      
  code_samples_ext:
    # code sample ext loop
    - title: "การลบที่ใช้ Regex"
      content: |
        ใช้การแสดงผลปกติในการค้นหาและลบรูปแบบเช่นอีเมล หมายเลขโทรศัพท์ หรือรหัส
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดไฟล์ของคุณ
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // เพิ่มรูปแบบ regex สำหรับ EMAIL และการแทนที่
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // จัดการลบตามรูปแบบ
              redactor.apply(redaction);

              // บันทึกเวอร์ชันที่สะอาด
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
    title: "ลบเนื้อหาใน PPTX โดยใช้ Java"
    exclude: "PPTX"
    description: "ลบรายละเอียดส่วนตัวหรือความลับจากเอกสาร PPTX โดยใช้ Java วิธีที่เชื่อถือได้ในการรักษาความปลอดภัยไฟล์ของคุณ"
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