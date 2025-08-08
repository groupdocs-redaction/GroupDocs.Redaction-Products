
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "บล็อกข้อความใน XLSX ด้วย Overlays ของ Java"
head_description: "GroupDocs.Redaction for Java ช่วยให้คุณซ่อนข้อมูลที่ละเอียดอ่อนในไฟล์ XLSX ด้วยบล็อกสี. ปกป้องข้อมูลในขณะที่รักษารูปแบบไว้."

############################# Header ############################
title: "ซ่อนข้อมูลใน XLSX ด้วย Overlays โดยใช้ Java" 
description: "ใช้ Java และ GroupDocs.Redaction for Java เพื่อปกปิดเนื้อหาส่วนตัวในไฟล์ XLSX โดยไม่กระทบต่อรูปแบบ."
subtitle: "คุณลักษณะหลักของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "ทำไมต้องเลือก GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ถูกสร้างขึ้นสำหรับโปรแกรมเมอร์ Java ที่ต้องการซ่อนหรือทำความสะอาดเนื้อหาในสเปรดชีต XLSX ได้อย่างรวดเร็ว.

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลในเอกสาร Xlsx"
    content: |
      รักษาเอกสารของคุณให้ปลอดภัยโดยใช้โค้ดที่เรียบง่ายด้วย GroupDocs.Redaction for Java ใน Java.
      
      1. สร้าง Redactor พร้อมกับเส้นทางไฟล์.
      2. ตั้งค่าลอจิกการปกปิดของคุณ.
      3. เลือกคำที่สำคัญและสี Overlay.
      4. ปกปิดและบันทึกไฟล์.
   
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
        // ซ่อนข้อมูลใน XLSX โดยใช้บล็อก

        // โหลดไฟล์ด้วย Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // ตั้งค่าตัวเลือกการปกปิด
            // เพิ่มข้อความและสีเพื่อปิดบัง
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // บันทึกเอกสารที่ปรับปรุงแล้ว
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "คุณสมบัติการรักษาความปลอดภัยที่สำคัญ"
  description: "ใช้ GroupDocs.Redaction for Java ในการปกปิดหรือยกเลิกเนื้อหาในไฟล์ของคุณในขณะเดียวกันก็รักษารูปแบบให้ไม่เสีย."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ออกแบบมาเพื่อการทำความสะอาดข้อมูลที่ปลอดภัย"
  features:
    # feature loop
    - title: "แก้ไขหรือซ่อนข้อความ"
      content: "ค้นหาและปิดบังข้อความใด ๆ ที่ต้องการการป้องกัน."

    # feature loop
    - title: "ปกปิดสิ่งที่ละเอียดอ่อน"
      content: "เพิ่มบล็อกสีที่บริเวณของแผนภูมิหรือรูปภาพ."

    # feature loop
    - title: "ลบข้อมูลที่เมตา"
      content: "เคลียร์ประวัติเอกสาร, ชื่อผู้เขียน, หรือเวลา."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ใช้ Regex เพื่อลบเนื้อหา"
      content: |
        ค้นหาและซ่อนข้อความโดยอัตโนมัติด้วยการจับคู่รูปแบบ
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดสเปรดชีต
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // กำหนดรูปแบบและสี Overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // ใช้กฎการปิดบัง
              redactor.apply(redaction);

              // ส่งออกผลลัพธ์ของคุณ
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
    title: "ลบ XLSX Sheets ด้วย Java"
    exclude: "XLSX"
    description: "ซ่อนหรือเคลียร์ข้อมูลที่ละเอียดอ่อนใน XLSX โดยใช้ Overlays และเครื่องมือจาก Java."
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