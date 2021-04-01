Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CF235155A
	for <lists+usrp-users@lfdr.de>; Thu,  1 Apr 2021 15:51:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9DC95383E3D
	for <lists+usrp-users@lfdr.de>; Thu,  1 Apr 2021 09:50:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V0TlLlKe";
	dkim-atps=neutral
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 0EC0F383E11
	for <usrp-users@lists.ettus.com>; Thu,  1 Apr 2021 09:49:52 -0400 (EDT)
Received: by mail-qk1-f173.google.com with SMTP id g20so2234071qkk.1
        for <usrp-users@lists.ettus.com>; Thu, 01 Apr 2021 06:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=vXejba91KvmAencTgakt2ooA9KtJToRQ+ee5oZmQAI4=;
        b=V0TlLlKempHg35xqK3JEnRYLFaF+XAT1C9vJoPwQL3FvdyeQaijadwtEEaYzoag7MG
         8KgGpGwiXay+MWc2ji3GjklqEchUPXQjigMlHnHonLCkz+Sh9PPp5s/Zz/5FKoIfnI/s
         y50++qRWXWWrH6Swqv0/X6C8rVKqQtsG1w/YC/4ouRlwZOo94pGY8ziwsPnixts9jffz
         PiXoLHk+qY835Dw7U9H/1CCqqtidEwpW+0fAwfegYP+Wyw+Jg/oQ0mdGEEX5PhZbvtTT
         3CmJDQ1rrpuHC3Ba6qqrZBFPa2O/7lRGYLf2+secHDvYucA3DXXSwt1C0sD8Mc3/M6Up
         ihLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=vXejba91KvmAencTgakt2ooA9KtJToRQ+ee5oZmQAI4=;
        b=O02kvMKhlrlF1A2u74ufKT5fN4M0b1xn+yV/rpOfCfcgYW7tE0ooQFy1b5qtGseAo9
         /oU8qwm8kkDqyuoyfD1N4ZaxGq5Qy3MRBFWVPFwDBe8QOQy9k94jUH6q9LZPuPamP2u6
         rHA14dDuGBiHA2N4PEFijfQIw4PZ9hySe3wWianTLkx9v1zRBcXjWSL7yZ5oZtVlCE5L
         GbRrtlZjuOo/YUqWZhZjnGAcvwFSUdEyiETxwxhZ+OyPDg7ab5lAHycCYNyeWPAqm4K+
         yQvxosxWth5icWuRggbFBJ5QFjVhAfHiOb95brsiDQJERJE+F4xM4+z+9mtRIi/YCWQl
         +Ljw==
X-Gm-Message-State: AOAM531WzuirrHND5yBL7aFiKwwy/PEHCADuUnUPSthpRpswccU+gd5j
	OcJ1SJXsg7Lqi424gkraLBWDDEvPcMM=
X-Google-Smtp-Source: ABdhPJwPzcItIQkPdVPEk1bF1x3ldnsKMk3dNh5emMXZ25mlTRZtWFnzqRFjcFGeuk71+4ka/BDohg==
X-Received: by 2002:a37:9d84:: with SMTP id g126mr8340692qke.183.1617284992325;
        Thu, 01 Apr 2021 06:49:52 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id y1sm4111845qki.9.2021.04.01.06.49.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 06:49:51 -0700 (PDT)
Message-ID: <6065CF7F.8050202@gmail.com>
Date: Thu, 01 Apr 2021 09:49:51 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BN6PR19MB3138C6844D0E07E5A0FCB46BA47C9@BN6PR19MB3138.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB3138C6844D0E07E5A0FCB46BA47C9@BN6PR19MB3138.namprd19.prod.outlook.com>
Message-ID-Hash: 4NKGWKHSEKFIEIHSXEGGOIN72WJQXVKH
X-Message-ID-Hash: 4NKGWKHSEKFIEIHSXEGGOIN72WJQXVKH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Debugging with Visual Studio Code in v3.8
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4NKGWKHSEKFIEIHSXEGGOIN72WJQXVKH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5684708353760212724=="

This is a multi-part message in MIME format.
--===============5684708353760212724==
Content-Type: multipart/alternative;
 boundary="------------080404030202070200020807"

This is a multi-part message in MIME format.
--------------080404030202070200020807
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/31/2021 03:47 PM, Jeff S wrote:
> While using GNURadio v3.7, I used to be able to perform source-level 
> debugging with Visual Studio Code (probably more often than I'd like 
> to admit) using the instructions located at:
>
>     https://wiki.gnuradio.org/index.php/UsingVSCode
>
>
> I have now upgraded to use v3.8 and just tried to do the same thing.  
> But now with v3.8, I get "Unknown Source" for my code within the 
> debugger.  I can start up and run just fine, but can't get to my 
> source or breakpoints.  I built using:
>
>     cmake ../ -DCMAKE_BUILD_TYPE=Debug
>     -DCMAKE_EXPORT_COMPILE_COMMANDS=true
>
>
> so I could see that I get the "-g" in the compile commands is actually 
> set.  Just curious if anyone else is using it or having troubles.  
> Hopefully it's one of those obvious things I have done wrong.
>
> Thanks,
> Jeff
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
This is definitely a question for the discuss-gnuradio mailing list, not 
usrp-users.



--------------080404030202070200020807
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 03/31/2021 03:47 PM, Jeff S wrote:<=
br>
    </div>
    <blockquote
cite=3D"mid:BN6PR19MB3138C6844D0E07E5A0FCB46BA47C9@BN6PR19MB3138.namprd19=
.prod.outlook.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;m=
argin-bottom:0;} </style>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        While using GNURadio v3.7, I used to be able to perform
        source-level debugging with Visual Studio Code (probably more
        often than I'd like to admit) using the instructions located at:<=
/div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <blockquote style=3D"margin-top:0;margin-bottom:0">
        <div style=3D"font-family: Calibri, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          <a moz-do-not-send=3D"true"
            href=3D"https://wiki.gnuradio.org/index.php/UsingVSCode"
            id=3D"LPlnk">https://wiki.gnuradio.org/index.php/UsingVSCode<=
/a></div>
      </blockquote>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I have now upgraded to use v3.8 and just tried to do the same
        thing.=A0 But now with v3.8, I get "Unknown Source" for my code
        within the debugger.=A0 I can start up and run just fine, but
        can't get to my source or breakpoints.=A0 I built using:<br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <blockquote style=3D"margin-top:0;margin-bottom:0">
        <div style=3D"font-family: Calibri, Helvetica, sans-serif;
          font-size: 12pt; color: rgb(0, 0, 0);">
          cmake ../ -DCMAKE_BUILD_TYPE=3DDebug
          -DCMAKE_EXPORT_COMPILE_COMMANDS=3Dtrue</div>
      </blockquote>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        so I could see that I get the "-g" in the compile commands is
        actually set.=A0 Just curious if anyone else is using it or havin=
g
        troubles.=A0 Hopefully it's one of those obvious things I have
        done wrong.</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,<br>
        Jeff<br>
      </div>
      <br>
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
    This is definitely a question for the discuss-gnuradio mailing list,
    not usrp-users.<br>
    <br>
    <br>
  </body>
</html>

--------------080404030202070200020807--

--===============5684708353760212724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5684708353760212724==--
