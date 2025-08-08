
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: th
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อความส่วนตัวจาก XLSX โดยใช้ Java"
head_description: "เก็บข้อมูลใน XLSX ของคุณให้ปลอดภัยโดยการลบข้อความและข้อมูลเมตาโดยใช้ GroupDocs.Redaction for Java การป้องกันที่มีประสิทธิภาพและมีประสิทธิผล"

############################# Header ############################
title: "ทำความสะอาดไฟล์ XLSX โดยใช้ Java" 
description: "ลบเนื้อหาที่เป็นความลับจากไฟล์ XLSX ด้วย Java และ GroupDocs.Redaction for Java เก็บแผ่นงานของคุณให้ปลอดภัย"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "ทำไมต้องใช้ GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java ให้นักพัฒนา Java เครื่องมือในการทำความสะอาดไฟล์ XLSX ลบข้อความ เมตา ข้อมูล รูปภาพ และอื่น ๆ ด้วยโค้ดเพียงไม่กี่บรรทัด

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลจากไฟล์ Xlsx"
    content: |
      ใช้ GroupDocs.Redaction for Java ในโปรแกรมใด ๆ ของ Java เพื่อกำจัดข้อความหรือเนื้อหาที่ซ่อนก่อนที่จะแชร์
      
      1. สร้างอินสแตนซ์ของ Redactor และโหลดไฟล์ของคุณ
      2. เลือกตัวเลือกการลบที่คุณต้องการ
      3. เลือกข้อความที่จะค้นหาและการแทนที่
      4. ดำเนินการลบและบันทึกเอกสารของคุณ
   
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
        // วิธีลบข้อความในไฟล์ XLSX

        // สร้าง Redactor และโหลดไฟล์ของคุณ
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // เลือกการตั้งค่าการลบ
            // ป้อนการค้นหาและข้อความแทน
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ทำการเปลี่ยนแปลงและบันทึก
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการลบที่มีประโยชน์"
  description: "GroupDocs.Redaction for Java ช่วยลบเนื้อหาส่วนตัวจากไฟล์ต่าง ๆ ทำความสะอาดเอกสารโดยไม่สูญเสียการจัดรูปแบบ"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "การปกป้องข้อมูลอย่างชาญฉลาด"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาและอัปเดตหรือซ่อนข้อมูลที่ละเอียดอ่อนในเซลล์"

    # feature loop
    - title: "ปิดเนื้อหาภาพ"
      content: "ซ่อนกราฟ รูปภาพ หรือช่วงโดยใช้การปกทับ"

    # feature loop
    - title: "ลบข้อมูลเมตา"
      content: "ลบนามสกุล ข้อมูลสร้าง วันที่ และอื่น ๆ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "การลบที่ใช้ Regex"
      content: |
        ค้นหาและลบค่าเช่นหมายเลขบัญชีหรือรูปแบบโดยใช้ regex
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดไฟล์ที่จะประมวลผล
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // เพิ่มกฎ regex สำหรับ EMAIL และการแทนที่
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // ดำเนินการลบกฎ
              redactor.apply(redaction);

              // บันทึกไฟล์ที่อัปเดต
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
    title: "ลบเนื้อหาใน XLSX ด้วย Java"
    exclude: "XLSX"
    description: "ทำความสะอาดและปกป้องไฟล์ XLSX โดยใช้คุณสมบัติจาก Java สำหรับการลบและการขจัดเนื้อหา"
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