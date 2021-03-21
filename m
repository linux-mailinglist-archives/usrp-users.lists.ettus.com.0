Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1075C343320
	for <lists+usrp-users@lfdr.de>; Sun, 21 Mar 2021 16:14:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CD4FC38381C
	for <lists+usrp-users@lfdr.de>; Sun, 21 Mar 2021 11:14:06 -0400 (EDT)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 54DFC3837FC
	for <usrp-users@lists.ettus.com>; Sun, 21 Mar 2021 11:13:57 -0400 (EDT)
Received: by mail-qk1-f181.google.com with SMTP id i9so8096136qka.2
        for <usrp-users@lists.ettus.com>; Sun, 21 Mar 2021 08:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=vmTYbPBJ3E7/6+q4U/fAG8RSvBoGLYBUEhnEvzroWks=;
        b=ZeA0odxg/laZhTwqEr+y7gNp6pBGEgF4YVMNKH13638jzDM3ZzaOHSFcctxFkpnGpN
         bog+KyCWs4JrvINK9v//ZNbI+FoZoMuk6esyQHkzWzDFxljp0VTwKxAZRIMHxekqo3XK
         ZbW2fSe2HYop+aQ67PvIRfIJekSXlqL603FJiaQ8qxVJXDChqACh/KV9qmzSK3y8frzU
         jVBbGSbq0xw14SttHiQvk69qBgfgReF9XnAsMA/KNO7S1oqI9KFDHPxPDN4bp4o/w4+c
         4fq3tIbtMBucwhGRPice+k33n6u/QA5sLceJjqaEtkrmrhJrAfT5jiejuQ8yKXojuKyh
         cK4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=vmTYbPBJ3E7/6+q4U/fAG8RSvBoGLYBUEhnEvzroWks=;
        b=cjFVKpLR+OwCQJ/Ti3lVKhTl/bkruvFq3y1zdh2/sALUknXKoaKvp6MuSGVC/gatMf
         JIzBExZzhubCx+lcCXUpByih4gNLdrTrgxCCz+KW4Yk0QcZ6neji055ROmFtz0WPhX2y
         TSD3sgswUHlRPJTZEJuesIFbG/J5kDTxFcHxh4rrF3L3fOfaE+03/gFLJRKGydG1K4N5
         NyXiTSimgZNTrCGhGeKWE2Cm26OXEkCDOU/hUkqO7XdHllnV215ONwARdT6QOKorVT9e
         k4TrwA2DcnCDfjvsi/eUxboXnDB/jc//HrpL03KmUdmCak6r/Zus2Jodoh2NxTWMpnvq
         GPiQ==
X-Gm-Message-State: AOAM530HfRRVwlLDRvKaB5qXRJKJyVf2DRo71s+t4Yx2Z63tb3+k1C4V
	eQXlZoqjowNtCKcKNkT0ydIRHbGUnkQ=
X-Google-Smtp-Source: ABdhPJwvu60lR9OuGh1tbMGZxryTsPX5JVGDTxChLOlObhFTwcg7ovm3efv//79yxrsr1+gXaCKa/A==
X-Received: by 2002:a05:620a:1442:: with SMTP id i2mr7255922qkl.469.1616339636571;
        Sun, 21 Mar 2021 08:13:56 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id f9sm8635215qkk.115.2021.03.21.08.13.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Mar 2021 08:13:56 -0700 (PDT)
Message-ID: <605762B3.2060004@gmail.com>
Date: Sun, 21 Mar 2021 11:13:55 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <TY2PR04MB3517EF7CB55B3601EB8C20BEF0669@TY2PR04MB3517.apcprd04.prod.outlook.com>
In-Reply-To: <TY2PR04MB3517EF7CB55B3601EB8C20BEF0669@TY2PR04MB3517.apcprd04.prod.outlook.com>
Message-ID-Hash: HQ536DAJBE2FCIBM7MDU6XDXSOQP4LZP
X-Message-ID-Hash: HQ536DAJBE2FCIBM7MDU6XDXSOQP4LZP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: question of X300 revision
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HQ536DAJBE2FCIBM7MDU6XDXSOQP4LZP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3549244667980222416=="

This is a multi-part message in MIME format.
--===============3549244667980222416==
Content-Type: multipart/alternative;
 boundary="------------010201050001030005060309"

This is a multi-part message in MIME format.
--------------010201050001030005060309
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/21/2021 04:16 AM, Oscar Pablo wrote:
> Hi,
> the public released X300 schematic is revision 1. i want to know if 
> this revision is the revision in uhd source code. in uhd source code 
> there is strange words "x300_clock_ctrl is not compatible with revs <= 
> 4 and may    lead to locking issues" so what is the correct source 
> code for revision less than 4?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
My recollection is that hardware rev <= 4 were pre-production and you'll 
never see them "in the wild".



--------------010201050001030005060309
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 03/21/2021 04:16 AM, Oscar Pablo
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:TY2PR04MB3517EF7CB55B3601EB8C20BEF0669@TY2PR04MB3517.apcprd04=
.prod.outlook.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;m=
argin-bottom:0;} </style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        the public released X300 schematic is revision 1. i want to know
        if this revision is the revision in uhd source code. in uhd
        source code there is strange words "x300_clock_ctrl is not
        compatible with revs &lt;=3D 4 and may=A0 =A0 lead to locking iss=
ues"
        so what is the correct source code for revision less than 4?<br>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    My recollection is that hardware rev &lt;=3D 4 were pre-production an=
d
    you'll never see them "in the wild".<br>
    <br>
    <br>
  </body>
</html>

--------------010201050001030005060309--

--===============3549244667980222416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3549244667980222416==--
