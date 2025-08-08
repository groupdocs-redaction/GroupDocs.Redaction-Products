
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ปกป้องข้อความใน POWERPOINT ด้วย Overlays ของ Java"
head_description: "ด้วย GroupDocs.Redaction for Java, คุณสามารถบล็อกข้อความที่เป็นความลับในสไลด์ POWERPOINT โดยใช้กล่อง overlay ธรรมดา—โดยไม่เปลี่ยนแปลงรูปแบบ."

############################# Header ############################
title: "ซ่อนข้อความใน POWERPOINT โดยใช้ Overlays และ Java" 
description: "ใช้ Java และ GroupDocs.Redaction for Java เพื่อรักษาสไลด์ POWERPOINT ของคุณให้ปลอดภัยโดยการปิดบังข้อมูลที่ละเอียดอ่อน."
subtitle: "ภายใน GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ช่วยให้โปรแกรมเมอร์ Java ทำความสะอาดสไลด์ POWERPOINT โดยการปิดบังหรือการลบเนื้อหาที่ละเอียดอ่อน เช่น ข้อความ, เมตา, หรือรูปภาพ.

############################# Steps ############################
steps:
    enable: true
    title: "ทำความสะอาดการนำเสนอ Powerpoint ก่อนการแชร์"
    content: |
      ใช้ GroupDocs.Redaction for Java ในแอพ Java เพื่อซ่อนหรือเอาเนื้อหาที่ละเอียดอ่อนออกจากสไลด์.
      
      1. สร้าง Redactor พร้อมกับเส้นทางการนำเสนอของคุณ.
      2. กำหนดตัวเลือกการปิดบัง.
      3. ตั้งค่ารูปแบบข้อความและสี Overlay.
      4. ดำเนินการและบันทึกไฟล์ที่ปิดบัง.
   
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
        // Overlay พื้นที่ข้อความใน POWERPOINT

        // เปิดไฟล์ด้วย Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // ปรับการตั้งค่าการปิดบัง
            // ป้อนข้อความและเลือกสี Overlay
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ปิดบังและบันทึกไฟล์ที่อัปเดต
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "การปิดบังที่ง่ายสำหรับสไลด์ที่มีความละเอียดอ่อน"
  description: "GroupDocs.Redaction for Java ทำให้การบล็อกหรือการลบเนื้อหาจากสไลด์เป็นเรื่องง่ายไม่ว่าจะใช้กรณีใด."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "เครื่องมือการปิดบังที่ปรับให้เข้ากับการใช้งาน"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ปกป้องวลีที่ละเอียดอ่อนหรือชื่อในสไลด์."

    # feature loop
    - title: "ปิดบังส่วนของรูปภาพ"
      content: "เพิ่ม Overlays ไปยังพื้นที่สไลด์ที่เลือกหรือรูปภาพ."

    # feature loop
    - title: "ลบเนื้อหาที่ซ่อนอยู่"
      content: "ลบข้อมูลเมตาหรือหมายเหตุการแก้ไขก่อนการแชร์."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex สำหรับการปิดบังข้อความ"
      content: |
        เรียนรู้การเดิมพันและการปิดบังข้อความโดยใช้การจับคู่รูปแบบ
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  โหลดการนำเสนอ
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // นำกฎ regex ของคุณไปใช้
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // ทำการปิดบัง
              redactor.apply(redaction);

              // บันทึกเวอร์ชันสุดท้าย
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
    title: "ป้องกันสไลด์ POWERPOINT ด้วย Java"
    exclude: "POWERPOINT"
    description: "ใช้การปิดบัง Overlay และเครื่องมือการทำความสะอาดจาก Java เพื่อรักษาสไลด์ POWERPOINT ของคุณให้เป็นส่วนตัว."
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