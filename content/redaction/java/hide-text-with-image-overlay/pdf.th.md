
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ปกปิดข้อความที่เป็นความลับใน PDF ด้วยการ Overlay โดยใช้ Java"
head_description: "GroupDocs.Redaction for Java ช่วยให้คุณซ่อนข้อมูลที่ละเอียดอ่อนในไฟล์ PDF โดยการวางกล่องสี การปกป้องข้อมูลโดยไม่เปลี่ยนแปลงรูปลักษณ์ของไฟล์ของคุณ."

############################# Header ############################
title: "ปกปิดข้อความในเอกสาร PDF โดยใช้ Overlay ใน Java" 
description: "ควบคุมเนื้อหาในไฟล์ PDF ด้วย Java ใช้การปกปิดเพื่อป้องกันรายละเอียดทางการเงิน ทางกฎหมาย หรือข้อมูลส่วนบุคคล."
subtitle: "คุณลักษณะเด่นของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "สิ่งที่ GroupDocs.Redaction for Java นำเสนอ"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ให้เครื่องมือแก่โปรแกรมเมอร์ Java เพื่อซ่อนหรือเอาเนื้อหาออกจากไฟล์ PDF ปกปิดข้อความ, รูปภาพ, และข้อมูลที่เมตาข้ามประเภทเอกสารต่างๆ.

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลที่เป็นความลับในไฟล์ Pdf"
    content: |
      GroupDocs.Redaction for Java ช่วยให้โปรแกรมเมอร์ Java สามารถซ่อนเนื้อหาส่วนตัวได้อย่างรวดเร็ว
      
      1. เริ่มต้น Redactor และโหลดไฟล์ Pdf ของคุณ.
      2. ตั้งค่าตัวเลือกการปกปิดของคุณ.
      3. เลือกสิ่งที่ต้องค้นหาและเลือกสี Overlay ของคุณ.
      4. ใช้การปกปิดและบันทึกเอกสารของคุณ.
   
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
        // ปกปิดข้อความใน PDF โดยใช้ Overlay สี

        // ส่งไฟล์ไปยัง Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // ปรับการตั้งค่าการปกปิด
            // ตั้งเป้าหมายข้อความและสี
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ใช้การปกปิดและบันทึกไฟล์ PDF ที่ถูกปกปิด
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ควบคุมสิ่งที่มองเห็นในเอกสาร"
  description: "GroupDocs.Redaction for Java ช่วยให้คุณสามารถปิดบังหรือเอาส่วนของไฟล์ออกในขณะที่ยังคงดูและแชร์ได้ง่าย."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "เครื่องมือการปิดบังที่ทรงพลัง"
  features:
    # feature loop
    - title: "ค้นหาและซ่อนข้อความ"
      content: "ค้นหาเอกสารของคุณและซ่อนคำหรือวลีที่เฉพาะเจาะจงเพื่อปกป้องข้อมูลส่วนตัว."

    # feature loop
    - title: "ปกปิดรูปภาพ"
      content: "เพิ่ม Overlay เพื่อปิดซ่อนภาพหรือบางส่วน."

    # feature loop
    - title: "ลบข้อมูลที่เมตา"
      content: "ลบรายละเอียดเอกสารที่ซ่อนอยู่เพื่อหลีกเลี่ยงการเปิดเผยที่ไม่ตั้งใจ."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ซ่อนข้อความโดยใช้ Regex"
      content: |
        ตัวอย่างนี้ใช้การแสดงผลปกติในการค้นหาและซ่อนเนื้อหาที่เฉพาะเจาะจง
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  โหลดไฟล์ที่คุณต้องการประมวลผล
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // ตั้งค่ารูปแบบข้อความและสี Overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // ใช้การปกปิด
              redactor.apply(redaction);

              // บันทึกการเปลี่ยนแปลงของคุณ
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
    title: "ปกป้องไฟล์ PDF ด้วย Java"
    exclude: "PDF"
    description: "ใช้ Java เพื่อปกปิดหรือเอาเนื้อหาในเอกสาร PDF ออก เป็นวิธีที่ดีในการรักษาข้อมูลที่เป็นความลับ."
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