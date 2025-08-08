
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "แก้ไขข้อมูลเมตาดาต้าใน JPEG ด้วย Java"
head_description: "ใช้ GroupDocs.Redaction for Java เพื่อลบหรือลบข้อมูลเมตาดาต้าในไฟล์ JPEG ปกป้องความเป็นส่วนตัวโดยการลบข้อมูลที่ซ่อนอยู่"

############################# Header ############################
title: "ลบข้อมูลเมตาดาต้าจากไฟล์ JPEG ด้วย Java" 
description: "รักษาเอกสาร JPEG ของคุณให้ปลอดภัยด้วยเครื่องมือ Java ที่ช่วยลบข้อมูลส่วนตัว"
subtitle: "ฟีเจอร์หลักของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบเครื่องมือให้กับนักพัฒนา Java ในการลบเนื้อหาที่ไม่พึงประสงค์, ข้อมูลภาพ, และข้อมูลเมตาดาต้าออกจากไฟล์ JPEG

############################# Steps ############################
steps:
    enable: true
    title: "ทำความสะอาดข้อมูลเมตาดาต้าในเอกสาร Jpeg"
    content: |
      GroupDocs.Redaction ทำให้การลบข้อมูลเมตาดาต้าในโปรเจค Java ของคุณเป็นเรื่องง่าย
      
      1. สร้าง Redactor และโหลดไฟล์ Jpeg ของคุณ
      2. เลือกตัวเลือกที่จะลบฟิลด์ข้อมูลเมตาดาต้าทั้งหมด
      3. รันการลบเพื่อลบข้อมูลในไฟล์
      4. บันทึกไฟล์อัพเดตที่ไม่มีข้อมูลซ่อน
   
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
        // เคลียร์ข้อมูลเมตาดาต้าในไฟล์ JPEG

        // โหลดไฟล์ด้วย Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // ตั้งค่าการทำความสะอาดข้อมูลเมตาดาต้า
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // ทำการลบและบันทึกการเปลี่ยนแปลง
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ปกป้องเอกสารของคุณ"
  description: "GroupDocs.Redaction for Java ช่วยลบเนื้อหาที่เป็นส่วนตัวจากเอกสารประเภทต่างๆ รักษาข้อมูลที่ละเอียดอ่อนให้ออกไปจากไฟล์ที่แชร์"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ฟีเจอร์หลักในการลบข้อมูล"
  features:
    # feature loop
    - title: "ลบข้อความ"
      content: "ค้นหาและลบคำหรือวลีส่วนตัวออกจากไฟล์ของคุณ"

    # feature loop
    - title: "หลบเลี่ยงภาพ"
      content: "เพิ่มการทับเพื่อปิดบังบางพื้นที่ในภาพที่มีข้อมูลที่ละเอียดอ่อน"

    # feature loop
    - title: "แก้ไขข้อมูลเมตาดาต้า"
      content: "ทำความสะอาดหรือแก้ไขฟิลด์ข้อมูลเพื่อหลีกเลี่ยงการเปิดเผยข้อมูลส่วนตัว"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบฟิลด์ข้อมูลเมตาดาต้าที่ซ่อนอยู่"
      content: |
        ตัวอย่างนี้แสดงวิธีการลบหรือแก้ไขข้อมูลเมตาดาต้า เช่น Author และ Title ในเอกสาร JPEG
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดไฟล์ JPEG ด้วย redactor
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // กำหนดเป้าหมายที่ข้อมูล Author
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // กำหนดเป้าหมายที่ข้อมูล Title
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // รันการลบข้อมูล
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // บันทึกไฟล์ที่ทำความสะอาดแล้ว
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
    title: "ลบข้อมูลเมตาดาต้าจาก JPEG ด้วย Java"
    exclude: "JPEG"
    description: "ใช้ Java เพื่อลบข้อมูลที่ซ่อนออกจากไฟล์ JPEG และปกป้องข้อมูลที่ละเอียดอ่อน"
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