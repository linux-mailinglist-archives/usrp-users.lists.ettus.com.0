Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 902B5339177
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 16:36:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C3B80383E9C
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 10:36:25 -0500 (EST)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 7CFDF383E3B
	for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 10:36:12 -0500 (EST)
Received: by mail-qt1-f179.google.com with SMTP id x9so4014041qto.8
        for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 07:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=CbdwgrUO53PEoNAp9Fmk6RHB62A6RsIRiXyYbAuszWw=;
        b=FCm2zSmBzZyv0srbOsEe6PptbOOG7UoGIb9SDQN711B0h5YGqWH+B5SUhymXlzgqOj
         T3b/LX6FaLNUMaqCxLtPDdkteOJ8pgWGqMl+UeZOAEIVqPZu8v//zAKbT1hmissVRLSq
         bVF3AgOgXN3iXuSJiVNCLf7o6WfvnLuPal8oN+u4FAm2BBCo/MbO0RbAoclf36IyQE+h
         YnzjG4XqyExkDgCS6urXE7C6kRlPHDnEaFAPHmeeWtXSYtgMJ6QkE5S9NeMXc/ucdcJB
         2V2FyO8ZHQbyYa3NH6M+DgcbUr1UCHBSA6P0SxtAO9zM3ZKb9GK+i+vK9Unn9gZQJ2Tf
         gReA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=CbdwgrUO53PEoNAp9Fmk6RHB62A6RsIRiXyYbAuszWw=;
        b=Rib48V9mLzLWWRXaNsPVlpS9BJMFDxOj1iLACOpB1UNU0To5Pwxae1+JMadF0Rc30m
         NGEJ6ZxreyPF7ReLz1bHlzZV+IpWXQUW4Vry2XqIM5DcId8+q5fTF2WcAHLKyiCuO6R6
         momSENmn3z/Zzg15pO8nwfGKYmKhpdlDVDECEjhdNXeu9POsPHTZQZQgKcRrG9CjySc4
         4lQjIPr48SLWBCq2QDW3xWogAZ/AHX/IYunDu5O/DBibWL+FHbCCKWdo7M1Rh2ZabmN7
         BcTtCZn0Hox7d58wHZLXg6IhImlRGS1TdZ/hnEz+YNWlTd/ySmmsoyC5tBDGdy4fPdfK
         Ctxg==
X-Gm-Message-State: AOAM533q3yHqFbEi3HRoJOmcwjbSURdrfRFgtlRAuAYCPHs06K3VOJFX
	96r4gu1Ao/pNSqMJkjH7DPIfgAQyRfs=
X-Google-Smtp-Source: ABdhPJxqWQkFjy1GTwRvQaEYw/BRYBQKoBlV4ttDjJkxrSpg1mPK+9//ctFxB4laqQLHWuwUcJG5oA==
X-Received: by 2002:a05:622a:143:: with SMTP id v3mr12267169qtw.363.1615563371801;
        Fri, 12 Mar 2021 07:36:11 -0800 (PST)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id 18sm4747793qkr.77.2021.03.12.07.36.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Mar 2021 07:36:11 -0800 (PST)
Message-ID: <604B8A6A.5070703@gmail.com>
Date: Fri, 12 Mar 2021 10:36:10 -0500
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <4f926d9528d3498293db378bed26308f@external.thalesgroup.com>
In-Reply-To: <4f926d9528d3498293db378bed26308f@external.thalesgroup.com>
Message-ID-Hash: 7THDRKPSWIRBERNVA7472C2QRI2HIZNN
X-Message-ID-Hash: 7THDRKPSWIRBERNVA7472C2QRI2HIZNN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: import error gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7THDRKPSWIRBERNVA7472C2QRI2HIZNN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7317242929149765673=="

This is a multi-part message in MIME format.
--===============7317242929149765673==
Content-Type: multipart/alternative;
 boundary="------------020903000003020406030901"

This is a multi-part message in MIME format.
--------------020903000003020406030901
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/12/2021 08:49 AM, COURANT Frederique - Contractor via USRP-users 
wrote:
>
> Hi Users,
>
> When I try to run my flow graph I have this error :
>
> from .blocks_python import *
>
> ImportError: 
> /usr/local/lib/python3/dist-packages/gnuradio/blocks/-blocks_python.cpython-38-x86_64-linux-gnu.so 
> : undefined symbol: 
> _/ZN2gr6blocks12wavfile/_sink4makeEPKcijNS0_16wavfile_format_tENS-0_19wavfile_subformat_tEb
>
> Someone has solutions for resolve this problem please ?
>
> I work with UHD4.0 and gnuradio3.9
>
> Thanks.
>
> Best regards.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
This error is from inside Gnu Radio, involving the wavefile sink. That's 
not a USRP/UHD problem and discussing on the
   discuss-gnuradio mailing list would be better.

However, this class of error usually means you have libraries that are 
inconsistent on your system, likely from multiple
   incompatible compile/build attempts.

This *might* be fixed with a simple:

sudo ldconfig

But more guidance would be available from the discuss-gnuradio mailing list.



--------------020903000003020406030901
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 03/12/2021 08:49 AM, COURANT
      Frederique - Contractor via USRP-users wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:4f926d9528d3498293db378bed26308f@external.thalesgroup.c=
om"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Hi Users,<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">When I try to run my
            flow graph I have this error :<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">from .blocks_python
            import *<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">ImportError:
            /usr/local/lib/python3/dist-packages/gnuradio/blocks/-blocks_=
python.cpython-38-x86_64-linux-gnu.so
            : undefined symbol: _<i>ZN2gr6blocks12wavfile</i>_sink4makeEP=
KcijNS0_16wavfile_format_tENS-0_19wavfile_subformat_tEb<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Someone has solutions
            for resolve this problem please ?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I work with UHD4.0 an=
d
            gnuradio3.9<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks.<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards.<o:p></o=
:p></span></p>
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
    This error is from inside Gnu Radio, involving the wavefile sink.=A0
    That's not a USRP/UHD problem and discussing on the<br>
    =A0 discuss-gnuradio mailing list would be better.<br>
    <br>
    However, this class of error usually means you have libraries that
    are inconsistent on your system, likely from multiple<br>
    =A0 incompatible compile/build attempts.<br>
    <br>
    This *might* be fixed with a simple:<br>
    <br>
    sudo ldconfig<br>
    <br>
    But more guidance would be available from the discuss-gnuradio
    mailing list.<br>
    <br>
    <br>
  </body>
</html>

--------------020903000003020406030901--

--===============7317242929149765673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7317242929149765673==--
