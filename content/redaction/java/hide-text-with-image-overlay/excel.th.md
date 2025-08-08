
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ปกปิดข้อความใน EXCEL ด้วย Overlays และ Java"
head_description: "ปกป้องเนื้อหาที่ละเอียดอ่อนในไฟล์ EXCEL โดยใช้ Overlays แบบสีจาก GroupDocs.Redaction for Java รักษารูปแบบเอกสารไว้."

############################# Header ############################
title: "ลบข้อมูล EXCEL ด้วย Overlays ใน Java" 
description: "ใช้โค้ด Java เพื่อปิดบังข้อมูลที่ละเอียดอ่อนในสเปรดชีต EXCEL วิธีการที่มีประสิทธิภาพในการรักษาข้อมูลให้เป็นส่วนตัว."
subtitle: "คุณลักษณะเด่นของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "ทำไมต้องเลือก GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ถูกสร้างขึ้นสำหรับโปรแกรมเมอร์ Java ที่ต้องการซ่อนหรือทำความสะอาดเนื้อหาในสเปรดชีต EXCEL อย่างรวดเร็ว.

############################# Steps ############################
steps:
    enable: true
    title: "ซ่อนข้อมูลในสเปรดชีต Excel"
    content: |
      GroupDocs.Redaction for Java ช่วยให้โปรแกรมเมอร์ Java ป้องกันไฟล์โดยการซ่อนข้อมูลส่วนตัวในไม่กี่บรรทัด.
      
      1. เริ่มต้น Redactor และโหลดสเปรดชีตของคุณ.
      2. ตั้งค่ากฎการปิดบังตามต้องการ.
      3. เลือกข้อความและสี Overlay.
      4. ใช้และบันทึกไฟล์.
   
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
        // ใช้ overlays เพื่อซ่อนข้อความใน EXCEL

        // สร้าง Redactor และโหลดไฟล์ของคุณ
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // เลือกกฎการปิดบัง
            // ป้อนสิ่งที่จะซ่อนและเลือกสี
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ใช้การปิดบังแล้วบันทึกไฟล์
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการป้องกันข้อมูลที่สำคัญ"
  description: "ซ่อนหรือเอาเนื้อหาที่ละเอียดอ่อนออกจากสเปรดชีตของคุณโดยไม่ทำให้รูปแบบหรือความหมายเสียหายด้วย GroupDocs.Redaction for Java."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ออกแบบมาสำหรับการทำความสะอาดข้อมูลที่ปลอดภัย"
  features:
    # feature loop
    - title: "แก้ไขหรือซ่อนข้อความ"
      content: "ค้นหาและบล็อกข้อความใดๆ ที่ต้องการการป้องกัน."

    # feature loop
    - title: "ปิดบังสิ่งที่จะซ่อน"
      content: "ใช้บล็อกสีที่บริเวณของกราฟหรือภาพ."

    # feature loop
    - title: "ลบข้อมูลที่เป็นเมตา"
      content: "เคลียร์ประวัติเอกสาร, ชื่อผู้เขียน, หรือเวลา."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaction Regex"
      content: |
        ใช้ regex เพื่อค้นหาและซ่อนข้อความโดยอัตโนมัติ
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดสเปรดชีต
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // ตั้งค่ารูปแบบและข้อมูล Overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // ใช้การปิดบัง
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
    title: "ลบแผ่น EXCEL ด้วย Java"
    exclude: "EXCEL"
    description: "ซ่อนหรือเคลียร์ข้อมูลที่ละเอียดอ่อนใน EXCEL โดยใช้ Overlays และเครื่องมือจาก Java."
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