
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ซ่อนข้อความใน DOCX ด้วย Overlays โดยใช้ Java"
head_description: "ใช้ GroupDocs.Redaction for Java เพื่อลบข้อความส่วนตัวในไฟล์ DOCX ให้รูปแบบไม่มีการเปลี่ยนแปลงในขณะที่รักษาข้อมูลสำคัญให้ซ่อนอยู่."

############################# Header ############################
title: "ปกป้องข้อความ DOCX ด้วย Overlays ใน Java" 
description: "ซ่อนรายละเอียดส่วนตัว, กฎหมาย หรือธุรกิจในไฟล์ DOCX อย่างรวดเร็วด้วย Java และ GroupDocs.Redaction for Java."
subtitle: "เครื่องมือสำคัญใน GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "สิ่งที่ GroupDocs.Redaction for Java คือ"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ให้เครื่องมือแก่โปรแกรมเมอร์ Java เพื่อทำความสะอาดไฟล์ DOCX ลบชื่อ, หมายเลข หรือบันทึกได้อย่างรวดเร็ว.

############################# Steps ############################
steps:
    enable: true
    title: "ลบเนื้อหาที่ละเอียดอ่อนใน Docx"
    content: |
      ปรับเอกสารให้สะอาดในโปรเจ็กต์ Java ของคุณด้วย GroupDocs.Redaction for Java.
      
      1. เริ่มต้น Redactor พร้อมกับไฟล์ของคุณ.
      2. เลือกวิธีการทำงานของการปกปิด.
      3. เลือกข้อความที่จะซ่อนและสี Overlay.
      4. ใช้การปกปิดและบันทึกไฟล์.
   
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
        // ปกปิดข้อความด้วย overlays ใน DOCX

        // สร้าง Redactor และโหลดเอกสารของคุณ
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // เลือกตัวเลือกการปิดบัง
            // เลือกข้อความและสี
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // บันทึกเวอร์ชันที่ถูกปิดบัง
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการปิดบังสำหรับการใช้งานประจำวัน"
  description: "GroupDocs.Redaction for Java ให้ตัวเลือกที่ง่ายในการซ่อนรายละเอียดที่ละเอียดอ่อนในเอกสารในขณะที่ยังคงสามารถใช้งานได้."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ตัวเลือกการปิดบังแบบง่ายๆ"
  features:
    # feature loop
    - title: "ค้นหาและเปลี่ยนข้อความ"
      content: "ซ่อนหรือแทนที่คำในไม่กี่วินาที."

    # feature loop
    - title: "ปิดบังบางส่วนของภาพ"
      content: "masked areas ของรูปภาพหรือเนื้อหาที่สแกน."

    # feature loop
    - title: "ลบข้อมูลพื้นหลัง"
      content: "ลบข้อมูลที่เมตาที่ซ่อนอยู่เช่นเจ้าของหรือวันที่."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ค้นหาข้อความด้วย Regex และซ่อนมัน"
      content: |
        ใช้การจับคู่รูปแบบเพื่อซ่อนวลีสำคัญโดยอัตโนมัติ
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดเอกสารที่ต้องการล้าง
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // ตั้งค่ารูปแบบ regex และสไตล์ Overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // ใช้ตรรกะการปิดบัง
              redactor.apply(redaction);

              // บันทึกเอกสารที่สะอาดของคุณ
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
    title: "ลบไฟล์ DOCX โดยใช้ Java"
    exclude: "DOCX"
    description: "ปกป้องเนื้อหาที่ละเอียดอ่อนใน DOCX โดยการซ่อนหรือเอาออกโดยใช้เครื่องมือใน Java."
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