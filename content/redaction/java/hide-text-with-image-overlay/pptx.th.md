
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ซ่อนข้อความใน PPTX การนำเสนอด้วย Overlays ของ Java"
head_description: "ใช้ GroupDocs.Redaction for Java เพื่อลบเนื้อหาที่ละเอียดอ่อนในไฟล์ PPTX ด้วยการ Overlays ทาสี รักษาเลื่อนให้ไม่เปลี่ยนแปลงขณะที่ซ่อนข้อมูลที่สำคัญ."

############################# Header ############################
title: "ปกปิดข้อความใน PPTX การนำเสนอด้วย Java" 
description: "ปกป้องรายละเอียดส่วนตัวหรือธุรกิจในสไลด์ PPTX ของคุณอย่างง่ายดายโดยใช้ Java และ GroupDocs.Redaction for Java."
subtitle: "สำรวจคุณลักษณะของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "สิ่งที่ GroupDocs.Redaction for Java ทำ"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ช่วยให้โปรแกรมเมอร์ Java ซ่อนหรือเอาข้อความ, รูปภาพ หรือข้อมูลที่เป็นเมตาในสไลด์ PPTX ได้ในไม่กี่ขั้นตอน.

############################# Steps ############################
steps:
    enable: true
    title: "ปกปิดเนื้อหาส่วนตัวในสไลด์ Pptx"
    content: |
      GroupDocs.Redaction for Java ทำให้การปกป้องเนื้อหาเป็นเรื่องง่ายสำหรับโปรแกรมเมอร์ Java.
      
      1. ตั้งค่า Redactor พร้อมกับเส้นทางการนำเสนอของคุณ.
      2. เลือกวิธีการทำงานของการปกปิด.
      3. เพิ่มรูปแบบข้อความและสี Overlay.
      4. ปกปิดสไลด์และบันทึกมัน.
   
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
        // ใช้ Overlays เพื่อปิดบังข้อความใน PPTX

        // เริ่มต้น Redactor พร้อมกับการนำเสนอของคุณ
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // เลือกตัวเลือกการปิดบัง
            // กำหนดข้อความและสี Overlay
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ดำเนินการการปิดบังที่และบันทึกการนำเสนอ
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการปิดบังที่ทรงพลัง"
  description: "ด้วย GroupDocs.Redaction for Java, บล็อคหรือเอาเนื้อหาที่ละเอียดอ่อนในสไลด์ของคุณโดยไม่สัมผัสการจัดรูปแบบ."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "คุณลักษณะที่ทำงานในหลายสไลด์"
  features:
    # feature loop
    - title: "ซ่อนหรือแทนที่ข้อความ"
      content: "ปกป้องชื่อ, ข้อความ, หรือโน้ตที่ไม่ควรเห็น."

    # feature loop
    - title: "ปิดบังพื้นที่ภาพ"
      content: "เพิ่ม Overlays ไปยังภาพหรือสัญลักษณ์ในสไลด์."

    # feature loop
    - title: "ลบข้อมูลที่เมตา"
      content: "ลบข้อมูลเบื้องหลังที่อาจเปิดเผยผู้เขียนหรือประวัติการแก้ไข."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดข้อความใน Regex"
      content: |
        ใช้การแสดงผลปกติเพื่อค้นหาและปิดบังคำที่ละเอียดอ่อน
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดไฟล์การนำเสนอ
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // ตั้งค่ารูปแบบค้นหาและสี Overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // ดำเนินการกฎการปิดบัง
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
    title: "ปกป้องสไลด์ PPTX ด้วยเครื่องมือ Java"
    exclude: "PPTX"
    description: "ปิดบังเนื้อหาที่ละเอียดอ่อนหรือเอาออกอย่างสมบูรณ์จากการนำเสนอ PPTX โดยใช้ฟีเจอร์การปิดบังใน Java."
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