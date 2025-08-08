
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
head_title: "ลบข้อมูลเมตาดาต้าใน DOCX ด้วย Java"
head_description: "ใช้ GroupDocs.Redaction for Java เพื่อทำความสะอาดข้อมูลเมตาดาต้าที่ซ่อนอยู่ในไฟล์ DOCX ของคุณ แน่ใจว่าเอกสารของคุณไม่เผยแพร่ข้อมูลส่วนตัว"

############################# Header ############################
title: "ทำความสะอาดข้อมูลเมตาดาต้าในเอกสาร DOCX โดยใช้ Java" 
description: "ลบข้อมูลเมตาดาต้าทีไม่ต้องการจากไฟล์ DOCX ด้วย Java รักษาความเป็นส่วนตัวและความปลอดภัยของไฟล์คุณสำหรับการแชร์หรือเก็บรักษา"
subtitle: "เครื่องมือสำคัญภายใน GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: " GroupDocs.Redaction for Java คืออะไร?"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ช่วยนักพัฒนา Java ให้ลบข้อมูลที่ละเอียดอ่อนจากไฟล์ DOCX จัดการการลบข้อมูลเมตาดาต้า, ภาพ และข้อความ

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลที่ซ่อนอยู่จากไฟล์ Docx"
    content: |
      GroupDocs.Redaction ทำให้การลบข้อมูลเมตาดาต้าในแอป Java ของคุณเป็นเรื่องง่าย
      
      1. เริ่มต้น Redactor และโหลดไฟล์ Docx
      2. ตั้งค่าเครื่องมือเพื่อลบฟิลด์ข้อมูลเมตาดาต้าเฉพาะ
      3. สมัครการลบเพื่อลบข้อมูลที่ซ่อนอยู่
      4. บันทึกไฟล์ที่อัพเดต
   
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
        // ลบข้อมูลเมตาดาต้าจากไฟล์ DOCX

        // เปิดไฟล์ด้วย Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // เลือกข้อมูลเมตาดาต้าที่จะลบ
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // ทำการบันทึกการเปลี่ยนแปลง
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ปกป้องข้อมูลที่ละเอียดอ่อนในเอกสาร"
  description: "GroupDocs.Redaction for Java ให้คุณซ่อนเนื้อหาส่วนตัวจากไฟล์ทุกประเภท แน่ใจว่าไม่มีข้อมูลที่ถูกซ่อนถูกแชร์"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "เครื่องมือการลบข้อมูลเมตาดาต้า, ข้อความ และภาพ"
  features:
    # feature loop
    - title: "การลบข้อความ"
      content: "ค้นหาและลบข้อความที่ละเอียดอ่อนในเอกสารของคุณ"

    # feature loop
    - title: "การเพิ่มภาพทับ"
      content: "ปิดบังส่วนของภาพเพื่อปิดบังเนื้อหาที่ไม่ต้องการ"

    # feature loop
    - title: "การทำความสะอาดข้อมูลเมตาดาต้า"
      content: "ลบเมตาดาต้าที่อาจรั่วไหลข้อมูลที่ซ่อนอยู่"
      
  code_samples_ext:
    # code sample ext loop
    - title: "วิธีลบข้อมูลเมตาดาต้า"
      content: |
        ตัวอย่างนี้แสดงวิธีการลบคุณสมบ้าที่ซ่อนอยู่ เช่น Author และ Title จากไฟล์ DOCX
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดเอกสาร DOCX ของคุณ
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // เลือกฟิลด์ข้อมูล Author เพื่อทำความสะอาด
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // เลือกฟิลด์ข้อมูล Title เพื่อทำความสะอาด
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // รันการลบ
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // บันทึกไฟล์สุดท้าย
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "ทำความสะอาดข้อมูลเมตาดาต้าจาก DOCX ด้วย Java"
    exclude: "DOCX"
    description: "ใช้ Java เพื่อลบข้อมูลเมตาดาต้าที่ซ่อนอยู่จากเอกสาร DOCX ดีสำหรับความเป็นส่วนตัวและการป้องกันข้อมูล"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "ภาพ JPEG"


---