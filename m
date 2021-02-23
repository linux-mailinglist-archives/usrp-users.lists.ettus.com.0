Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AF1322D48
	for <lists+usrp-users@lfdr.de>; Tue, 23 Feb 2021 16:18:13 +0100 (CET)
Received: from [::1] (port=42324 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lEZRy-0005Zq-G8; Tue, 23 Feb 2021 10:18:10 -0500
Received: from mail-qv1-f42.google.com ([209.85.219.42]:32940)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lEZRv-0005Rd-AH
 for usrp-users@lists.ettus.com; Tue, 23 Feb 2021 10:18:07 -0500
Received: by mail-qv1-f42.google.com with SMTP id 2so7928028qvd.0
 for <usrp-users@lists.ettus.com>; Tue, 23 Feb 2021 07:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=akEuQeHv0UXYf8E0xjxXaZ4vBVfpJjtqz0+Cphv7BxY=;
 b=cMq239Rc5z6PQhoG+l/E0pgwqAgcoM4ZJe+wko0oH/jWt/5Ob/2qtR3PWChXWs4DMO
 HDafnafacmKT3RZAZt8f1z0JmRqx9btT/B5z9ZuE2brS018fg5H/uorsHY1lXgIwpzzq
 9ERxQ7JKbFVuVQjkAOFpoCTq4CVE00DITWvQCnSCbi31bBQsi4LAjLdxOR5kX8p89Q8p
 y0Fh9Dkg5ligDVpKE8A2h/WkBP3Wy86npVEQTJ+5d/ZLyB5yUBF47YElgcOc5QTcRfJ2
 GvIUww4YK5b3jI+9uoZon3fGx+gNdEuaDH1zOmYwIShZWVECFsJaP/Muudy97zGomQ4r
 zP2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=akEuQeHv0UXYf8E0xjxXaZ4vBVfpJjtqz0+Cphv7BxY=;
 b=oWxMEuQn2WgagwRo/WNnKJ1gm1PkE8zSdbyu9N9fNI+SgqKZQdFiCKR/5EMwxgmhzT
 fcf4wooXWt7LKKRkqOjqvOXZZ21UuenOxRrtOPsBLQw4fQ+9llcVK/FkYZMZQO2bZNdW
 GIv5BqEjKA6HxNNc/t7XrhUPsEXQ2VhOLVht7EFoPgAE2pbQkpIKFCPv6gFVO11He4yQ
 CYaUUbg5yfP1AJw1dtsxEKbX/sKI59gp/9rRzg110P2w4n9IrVpA58rQ251sJymz8N5S
 jeS0ebbvfoiQc9qNWSZkgKq8BFePiqrMDpUJxhtkgela3Z7p24g4LsVjoWKuPDlWqopZ
 PGSQ==
X-Gm-Message-State: AOAM5312zn3MRzZ1cyzaxQ4QWCAx2+DdKx0qHmc3X5yl+sa2yWRnKNzp
 ozNDDY3kRbHoUxzo+MdGdnZGpVF4JFY=
X-Google-Smtp-Source: ABdhPJz2a4FLsFL60HAEkVZV4ao8H1gv7pwWF8rulX3PHKIiUkj7uSoHhsm7iqzjHUmutjJZiIpaeA==
X-Received: by 2002:a05:6214:1a4a:: with SMTP id
 fi10mr2291214qvb.5.1614093446454; 
 Tue, 23 Feb 2021 07:17:26 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.googlemail.com with ESMTPSA id
 c127sm15156691qkd.87.2021.02.23.07.17.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Feb 2021 07:17:26 -0800 (PST)
Message-ID: <60351C85.2010908@gmail.com>
Date: Tue, 23 Feb 2021 10:17:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: COURANT Frederique - Contractor
 <frederique.courant@external.thalesgroup.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <db0907f754a240cd886021bb02ec1f37@external.thalesgroup.com>
 <BC592952-C170-4682-BD2E-92C93A4B0C5F@gmail.com>
 <f1ff286839b44462ad21c0eb5edf9804@external.thalesgroup.com>
In-Reply-To: <f1ff286839b44462ad21c0eb5edf9804@external.thalesgroup.com>
Subject: Re: [USRP-users] Read a register
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============4101091313219307989=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============4101091313219307989==
Content-Type: multipart/alternative;
 boundary="------------080200030206000304040900"

This is a multi-part message in MIME format.
--------------080200030206000304040900
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/23/2021 03:45 AM, COURANT Frederique - Contractor wrote:
>
> I’m working in python.
>
> *De :*COURANT Frederique - Contractor
> *Envoyé :* mardi 23 février 2021 09:13
> *À :* 'Marcus D Leech' <patchvonbraun@gmail.com>
> *Objet :* RE: [USRP-users] Read a register
>
> My USRP platform is the X310.
>
> I would like to read an internal control register at the address 133. 
> I had ever allocated in the xml file with the name status.
>
>
 From the fact that you've mentioned XML, I'm going to *guess* that 
you're working with RFNOC, and thus the "radio3" API.

I'm pretty sure that in the regular multi_usrp API, the python interface 
doesn't expose low-level register I/O, but the story may be
   different in RFNOC--so at this point I'm hoping an RFNOC person can 
jump in, but a lot more context will be needed.



--------------080200030206000304040900
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/23/2021 03:45 AM, COURANT
      Frederique - Contractor wrote:<br>
    </div>
    <blockquote
      cite="mid:f1ff286839b44462ad21c0eb5edf9804@external.thalesgroup.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span style="color:#1F497D">I’m working in
            python.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class="MsoNormal"><b><span
                  style="mso-fareast-language:FR">De :</span></b><span
                style="mso-fareast-language:FR"> COURANT Frederique -
                Contractor
                <br>
                <b>Envoyé :</b> mardi 23 février 2021 09:13<br>
                <b>À :</b> 'Marcus D Leech'
                <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
                <b>Objet :</b> RE: [USRP-users] Read a register<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US">My
            USRP platform is the X310.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US">I
            would like to read an internal control register at the
            address 133. I had ever allocated in the xml file with the
            name status.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US"><o:p> </o:p></span></p>
        <br>
      </div>
    </blockquote>
    From the fact that you've mentioned XML, I'm going to *guess* that
    you're working with RFNOC, and thus the "radio3" API.<br>
    <br>
    I'm pretty sure that in the regular multi_usrp API, the python
    interface doesn't expose low-level register I/O, but the story may
    be<br>
      different in RFNOC--so at this point I'm hoping an RFNOC person
    can jump in, but a lot more context will be needed.<br>
    <br>
    <br>
  </body>
</html>

--------------080200030206000304040900--


--===============4101091313219307989==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4101091313219307989==--

