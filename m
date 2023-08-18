Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94034780F9A
	for <lists+usrp-users@lfdr.de>; Fri, 18 Aug 2023 17:52:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98D56383E9E
	for <lists+usrp-users@lfdr.de>; Fri, 18 Aug 2023 11:52:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692373975; bh=BG5DcHjXVSBdocieIQBIs8BglGgWwhn8yZBznqTVUFs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=k7uM+jnh9yW9rxUkuJ+p0x5PnZVwOVVXpaOBuagTnDI1AwMioJyzF9XgYJqW4vLXT
	 10GmRnvcGZy/f4FXIzDGtn97CBWtEUdJOH3aAxbeuMDeeAXDono01AghGu920BkO4g
	 Jkg90S32xBG1FEePWgI8Jat6l8WzyS1/6JuAOv8PpE86KCEM84ffVoif0Dc7jafAh8
	 jsXEuNQ5bF77K+u129DpAWBIxjZix0Sl6ibW6fpUwEcvQ6r7UPRYDtsLDPxo1DpI4v
	 fAcjwet9QaFyakDcmeDBNbV7xFQqcyBQ6VOXtnmSIDJOLo/fWToAInZDrXj8WshCD8
	 NCIX6aC4IWXdA==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 08372380BF9
	for <usrp-users@lists.ettus.com>; Fri, 18 Aug 2023 11:52:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nBFsH2WN";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-649a11843b3so5866366d6.0
        for <usrp-users@lists.ettus.com>; Fri, 18 Aug 2023 08:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692373939; x=1692978739;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ravHt5ljcCk6vK/6Gu0gPlMmMDUBhUsS8SKMupftpSo=;
        b=nBFsH2WN1oLH2YpD5bMDE7eKD8MEhxxK1DI49z4X3xY+fNXFiBgncxsvrrS43WnH3z
         FKVExHRHlZoilKifHI40ZRkKiJTvvEuIVVXDDCjH9eeEL7kX86ERYOry4xiV5/CES01m
         +l63pRdTDl35dvzX+psfJALzjts7ue+nRu566/cG9dyDxQtYeuG1TskhNQBGY+/9SKRe
         MxoNqb5ev5tanggDCUxG1P+2ho3Pe5YKDfIUB+lYGwshRiubnoqKpba+USHqHo84z/i9
         vjKGngc6I6gGN9ZXD9upfDTTQncm9iH13WfIbDrbkgaH7biA3nusA+9RYK4ivvU2CAgj
         GEzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692373939; x=1692978739;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ravHt5ljcCk6vK/6Gu0gPlMmMDUBhUsS8SKMupftpSo=;
        b=i2dC8uQd07Lyh/hAMV0So8N5p1lIXE8DqlhR945ScdBXmboYAz8VuQl6QcczNbf0hK
         Hv/0I3vxS7EXv0zqsx/nwbUag9MJbpYlwf8PcNUlLJ11edV3+s0/JsAo8/4tddypuOpH
         V0yLhesOjVr5cGlZ+jW/Xmd/k9sbxrvFUzDxadSlJE0bXiGAe9VsLj+QCBvgYr8r1/G6
         DnOrzW2amYytdFlymwOQNEA6N69SqC+gvBrsyi1W3QWw1WKGfmsqDNXWs+JsYzkZJRaj
         22+ToCHmX5GOIFZJwjC+RwuuJ75PCSaLlaTMnf0IF/ZKyP9YO4+JAsBD9WfMBkBCrrqI
         Nf6w==
X-Gm-Message-State: AOJu0YxCYfAAmpYS8aIvz6vkGB1MaHTi0AGHqG1XoHoODOlo+RlDSN+s
	saarDASBbL0o4CrXlDICktPwDDPTKrE=
X-Google-Smtp-Source: AGHT+IFwARhxyfkufYbwr5rU7iBEDRi30Ef+HLtGhx8hi4WrDvNOODf9bFCOG/iY0Ykl5zaMkZeHfA==
X-Received: by 2002:a05:6214:2d0f:b0:649:914:6495 with SMTP id mz15-20020a0562142d0f00b0064909146495mr3034545qvb.62.1692373939042;
        Fri, 18 Aug 2023 08:52:19 -0700 (PDT)
Received: from [192.168.2.173] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id j3-20020a0cf303000000b0063f822dae2csm101549qvl.54.2023.08.18.08.52.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Aug 2023 08:52:18 -0700 (PDT)
Message-ID: <3b3e6943-1225-d695-f497-48e0a2400a55@gmail.com>
Date: Fri, 18 Aug 2023 11:52:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <c13026958e804b3a83bbc167f3da14cd@verusresearch.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <c13026958e804b3a83bbc167f3da14cd@verusresearch.net>
Message-ID-Hash: CQ3DHK7OU3VP6GK7ZBA3PSK4ZOLGIQZK
X-Message-ID-Hash: CQ3DHK7OU3VP6GK7ZBA3PSK4ZOLGIQZK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Support materials for USRP-E312
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CQ3DHK7OU3VP6GK7ZBA3PSK4ZOLGIQZK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8327939767999337671=="

This is a multi-part message in MIME format.
--===============8327939767999337671==
Content-Type: multipart/alternative;
 boundary="------------TA6dWcBO83siKe9wJCPQzXEq"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------TA6dWcBO83siKe9wJCPQzXEq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/08/2023 11:11, Mushtaq A. Syed, Ph.D. via USRP-users wrote:
>
> Hi:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 We are planning on using the USRP E312 SDR for a=20
> program at Verus Research. This would require customization of the=20
> FPGA code that will ship with the device. Since we don=E2=80=99t want t=
o start=20
> the development from scratch, we would like to know if Ettus provides=20
> source code for the FPGA, etc., that we can modify for our internal=20
> use. Is there a cost associated in using the code and any legal=20
> requirements? From where can we download the E312 FPGA source code and=20
> related software?
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Thanks a lot!
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Cheers,
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Mushtaq
>
> ----------------------------
> MushtaqSyed, Ph.D.
> Principal Digital Signal Processing Engineer
> Verus Research
>
> <http://>
>
> Direct 505-396-7109
> Cell 408-514-7821
>
> 6100 Uptown Blvd NE, Suite 260
> Albuquerque, New Mexico 87110
> _*verusresearch.net*_
> ----------------------------
>
> NOTICE:=C2=A0 This electronic mail message is intended exclusively for =
the=20
> individual or entity to which it is addressed. This message, together=20
> with any attachment, may contain sensitive or privileged information.=C2=
=A0=20
> Any unauthorized review, use, printing, retention, copying,=20
> disclosure, or distribution of said email is strictly prohibited.=C2=A0=
 If=20
> you have received this message in error, please (1) immediately advise=20
> the sender by reply email message and (2) delete all copies of this=20
> message.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
You could start here:

https://kb.ettus.com/Knowledge_Base

The UHD source code is here:

https://github.com/EttusResearch/uhd

That includes the FPGA code

This is from the LICENSE.md file in the codebase:

 =C2=A0Ettus Research FPGA Repository: Licenses

Please refer to the individual files to verify which license applies to=20
them.

UHD and MPM themselves, are, by default, licensed under the GPLv3. If=20
you wish
to obtain an alternative license, please contact info@ettus.com. Some of=20
UHD's
dependencies are shipped as part of the repository
(see https://github.com/EttusResearch/uhd/tree/master/host/lib/deps for=20
details).

The FPGA codebase (stored under fpga/) has its own
[licensing situation][fpga-license]. See the various subdirectories=20
therein for
more details.

Individual source files in this repository may have different licenses th=
an
discussed above. Please refer to individual files and directories to veri=
fy
which license applies to which file.

## GPLv3 License Text (applies to most of UHD and MPM)

 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GNU GENERAL PUBLIC LICENSE
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Version 3, 2=
9 June 2007

--------------TA6dWcBO83siKe9wJCPQzXEq
Content-Type: multipart/related;
 boundary="------------rXk925TA7tmJNSPEBUWZbig4"

--------------rXk925TA7tmJNSPEBUWZbig4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/08/2023 11:11, Mushtaq A. Syed,
      Ph.D. via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:c13026958e804b3a83bbc167f3da14cd@verusresearch.net">
      <!-- Template generated by Exclaimer Signature Manager Exchange Edi=
tion on 09:11:47 Friday, 18 August 2023 -->
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css">P.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}LI.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}DIV.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}TABLE.ImprintUniqueIDTable {
	MARGIN: 0cm 0cm 0pt
}DIV.Section1 {
	page: Section1
}</style>
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 We are planning on using
          the USRP E312 SDR for a program at Verus Research. This would
          require customization of the FPGA code that will ship with the
          device. Since we don=E2=80=99t want to start the development fr=
om
          scratch, we would like to know if Ettus provides source code
          for the FPGA, etc., that we can modify for our internal use.
          Is there a cost associated in using the code and any legal
          requirements? From where can we download the E312 FPGA source
          code and related software?<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Thanks a lot!<o:p></o:p>=
</p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Cheers,<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mushtaq<o:p></o:p></p>
      </div>
      <p class=3D"ImprintUniqueID"><font face=3D"Exo 2">-----------------=
-----------<br>
        </font><font style=3D"font-family:Exo
          2;font-size:10pt;color:#008A86;">Mushtaq</font><font size=3D"4"
          face=3D"Exo 2" color=3D"#008a86">=C2=A0</font><font
          style=3D"font-family:Exo 2;font-size:10pt;color:#008A86;">Syed,
          Ph.D.</font><br>
        <font style=3D"font-family:Exo 2;font-size:9pt;">Principal Digita=
l
          Signal Processing Engineer</font><br>
        <font size=3D"1" face=3D"Exo 2"><font style=3D"font-family:Exo
            2;font-size:9pt;">Verus Research</font></font><br>
        <br>
        <a href=3D"http://" target=3D"" moz-do-not-send=3D"true"><img
            style=3D"border: 0px Solid ; "
            src=3D"cid:part1.FnSI3aJH.GeZzv20k@gmail.com" class=3D""
            width=3D"202" height=3D"82"></a><br>
        <br>
        <font style=3D"font-family:Exo 2;font-size:8pt;color:#000000;">Di=
rect
          =C2=A0</font><font style=3D"font-family:Exo
          2;font-size:8pt;color:#008A86;">505-396-7109</font><br>
        <font style=3D"font-family:Exo 2;font-size:8pt;color:windowtext;"=
>Cell
          =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</font><font style=3D"font-family=
:Exo
          2;font-size:8pt;color:#008A86;">408-514-7821</font><br>
        <br>
        <font size=3D"1" face=3D"Exo 2">6100 Uptown Blvd NE, Suite 260<br=
>
          Albuquerque, New Mexico 87110<br>
          <u><strong><font color=3D"#00a18a">verusresearch.net</font></st=
rong></u><br>
          ----------------------------</font></p>
      <p class=3D"ImprintUniqueID">=C2=A0</p>
      <p>NOTICE:=C2=A0 This electronic mail message is intended exclusive=
ly
        for the individual or entity to which it is addressed. This
        message, together with any attachment, may contain sensitive or
        privileged information.=C2=A0 Any unauthorized review, use, print=
ing,
        retention, copying, disclosure, or distribution of said email is
        strictly prohibited.=C2=A0 If you have received this message in
        error, please (1) immediately advise the sender by reply email
        message and (2) delete all copies of this message.</p>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    You could start here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Knowl=
edge_Base">https://kb.ettus.com/Knowledge_Base</a><br>
    <br>
    The UHD source code is here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/EttusRe=
search/uhd">https://github.com/EttusResearch/uhd</a><br>
    <br>
    That includes the FPGA code<br>
    <br>
    This is from the LICENSE.md file in the codebase:<br>
    <br>
    =C2=A0Ettus Research FPGA Repository: Licenses<br>
    <br>
    Please refer to the individual files to verify which license applies
    to them.<br>
    <br>
    UHD and MPM themselves, are, by default, licensed under the GPLv3.
    If you wish<br>
    to obtain an alternative license, please contact <a class=3D"moz-txt-=
link-abbreviated" href=3D"mailto:info@ettus.com">info@ettus.com</a>.
    Some of UHD's<br>
    dependencies are shipped as part of the repository<br>
    (see <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/Et=
tusResearch/uhd/tree/master/host/lib/deps">https://github.com/EttusResear=
ch/uhd/tree/master/host/lib/deps</a>
    for details).<br>
    <br>
    The FPGA codebase (stored under fpga/) has its own<br>
    [licensing situation][fpga-license]. See the various subdirectories
    therein for<br>
    more details.<br>
    <br>
    Individual source files in this repository may have different
    licenses than<br>
    discussed above. Please refer to individual files and directories to
    verify<br>
    which license applies to which file.<br>
    <br>
    ## GPLv3 License Text (applies to most of UHD and MPM)<br>
    <br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 GNU GENERAL PUBLIC LICENSE<=
br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Version 3=
, 29 June 2007<br>
    <br>
  </body>
</html>
--------------rXk925TA7tmJNSPEBUWZbig4
Content-Type: image/jpeg; name="image954100.JPG"
Content-Disposition: inline; filename="image954100.JPG"
Content-Id: <part1.FnSI3aJH.GeZzv20k@gmail.com>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAYABgAAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAA
AAD/4gxYSUNDX1BST0ZJTEUAAQEAAAxITGlubwIQAABtbnRyUkdCIFhZWiAHzgACAAkABgAx
AABhY3NwTVNGVAAAAABJRUMgc1JHQgAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLUhQICAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFjcHJ0AAABUAAA
ADNkZXNjAAABhAAAAGx3dHB0AAAB8AAAABRia3B0AAACBAAAABRyWFlaAAACGAAAABRnWFla
AAACLAAAABRiWFlaAAACQAAAABRkbW5kAAACVAAAAHBkbWRkAAACxAAAAIh2dWVkAAADTAAA
AIZ2aWV3AAAD1AAAACRsdW1pAAAD+AAAABRtZWFzAAAEDAAAACR0ZWNoAAAEMAAAAAxyVFJD
AAAEPAAACAxnVFJDAAAEPAAACAxiVFJDAAAEPAAACAx0ZXh0AAAAAENvcHlyaWdodCAoYykg
MTk5OCBIZXdsZXR0LVBhY2thcmQgQ29tcGFueQAAZGVzYwAAAAAAAAASc1JHQiBJRUM2MTk2
Ni0yLjEAAAAAAAAAAAAAABJzUkdCIElFQzYxOTY2LTIuMQAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWFlaIAAAAAAAAPNRAAEAAAABFsxYWVog
AAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAA
GNpYWVogAAAAAAAAJKAAAA+EAAC2z2Rlc2MAAAAAAAAAFklFQyBodHRwOi8vd3d3LmllYy5j
aAAAAAAAAAAAAAAAFklFQyBodHRwOi8vd3d3LmllYy5jaAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABkZXNjAAAAAAAAAC5JRUMgNjE5NjYtMi4xIERl
ZmF1bHQgUkdCIGNvbG91ciBzcGFjZSAtIHNSR0IAAAAAAAAAAAAAAC5JRUMgNjE5NjYtMi4x
IERlZmF1bHQgUkdCIGNvbG91ciBzcGFjZSAtIHNSR0IAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
ZGVzYwAAAAAAAAAsUmVmZXJlbmNlIFZpZXdpbmcgQ29uZGl0aW9uIGluIElFQzYxOTY2LTIu
MQAAAAAAAAAAAAAALFJlZmVyZW5jZSBWaWV3aW5nIENvbmRpdGlvbiBpbiBJRUM2MTk2Ni0y
LjEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHZpZXcAAAAAABOk/gAUXy4AEM8UAAPtzAAE
EwsAA1yeAAAAAVhZWiAAAAAAAEwJVgBQAAAAVx/nbWVhcwAAAAAAAAABAAAAAAAAAAAAAAAA
AAAAAAAAAo8AAAACc2lnIAAAAABDUlQgY3VydgAAAAAAAAQAAAAABQAKAA8AFAAZAB4AIwAo
AC0AMgA3ADsAQABFAEoATwBUAFkAXgBjAGgAbQByAHcAfACBAIYAiwCQAJUAmgCfAKQAqQCu
ALIAtwC8AMEAxgDLANAA1QDbAOAA5QDrAPAA9gD7AQEBBwENARMBGQEfASUBKwEyATgBPgFF
AUwBUgFZAWABZwFuAXUBfAGDAYsBkgGaAaEBqQGxAbkBwQHJAdEB2QHhAekB8gH6AgMCDAIU
Ah0CJgIvAjgCQQJLAlQCXQJnAnECegKEAo4CmAKiAqwCtgLBAssC1QLgAusC9QMAAwsDFgMh
Ay0DOANDA08DWgNmA3IDfgOKA5YDogOuA7oDxwPTA+AD7AP5BAYEEwQgBC0EOwRIBFUEYwRx
BH4EjASaBKgEtgTEBNME4QTwBP4FDQUcBSsFOgVJBVgFZwV3BYYFlgWmBbUFxQXVBeUF9gYG
BhYGJwY3BkgGWQZqBnsGjAadBq8GwAbRBuMG9QcHBxkHKwc9B08HYQd0B4YHmQesB78H0gfl
B/gICwgfCDIIRghaCG4IggiWCKoIvgjSCOcI+wkQCSUJOglPCWQJeQmPCaQJugnPCeUJ+woR
CicKPQpUCmoKgQqYCq4KxQrcCvMLCwsiCzkLUQtpC4ALmAuwC8gL4Qv5DBIMKgxDDFwMdQyO
DKcMwAzZDPMNDQ0mDUANWg10DY4NqQ3DDd4N+A4TDi4OSQ5kDn8Omw62DtIO7g8JDyUPQQ9e
D3oPlg+zD88P7BAJECYQQxBhEH4QmxC5ENcQ9RETETERTxFtEYwRqhHJEegSBxImEkUSZBKE
EqMSwxLjEwMTIxNDE2MTgxOkE8UT5RQGFCcUSRRqFIsUrRTOFPAVEhU0FVYVeBWbFb0V4BYD
FiYWSRZsFo8WshbWFvoXHRdBF2UXiReuF9IX9xgbGEAYZRiKGK8Y1Rj6GSAZRRlrGZEZtxnd
GgQaKhpRGncanhrFGuwbFBs7G2MbihuyG9ocAhwqHFIcexyjHMwc9R0eHUcdcB2ZHcMd7B4W
HkAeah6UHr4e6R8THz4faR+UH78f6iAVIEEgbCCYIMQg8CEcIUghdSGhIc4h+yInIlUigiKv
It0jCiM4I2YjlCPCI/AkHyRNJHwkqyTaJQklOCVoJZclxyX3JicmVyaHJrcm6CcYJ0kneier
J9woDSg/KHEooijUKQYpOClrKZ0p0CoCKjUqaCqbKs8rAis2K2krnSvRLAUsOSxuLKIs1y0M
LUEtdi2rLeEuFi5MLoIuty7uLyQvWi+RL8cv/jA1MGwwpDDbMRIxSjGCMbox8jIqMmMymzLU
Mw0zRjN/M7gz8TQrNGU0njTYNRM1TTWHNcI1/TY3NnI2rjbpNyQ3YDecN9c4FDhQOIw4yDkF
OUI5fzm8Ofk6Njp0OrI67zstO2s7qjvoPCc8ZTykPOM9Ij1hPaE94D4gPmA+oD7gPyE/YT+i
P+JAI0BkQKZA50EpQWpBrEHuQjBCckK1QvdDOkN9Q8BEA0RHRIpEzkUSRVVFmkXeRiJGZ0ar
RvBHNUd7R8BIBUhLSJFI10kdSWNJqUnwSjdKfUrESwxLU0uaS+JMKkxyTLpNAk1KTZNN3E4l
Tm5Ot08AT0lPk0/dUCdQcVC7UQZRUFGbUeZSMVJ8UsdTE1NfU6pT9lRCVI9U21UoVXVVwlYP
VlxWqVb3V0RXklfgWC9YfVjLWRpZaVm4WgdaVlqmWvVbRVuVW+VcNVyGXNZdJ114XcleGl5s
Xr1fD19hX7NgBWBXYKpg/GFPYaJh9WJJYpxi8GNDY5dj62RAZJRk6WU9ZZJl52Y9ZpJm6Gc9
Z5Nn6Wg/aJZo7GlDaZpp8WpIap9q92tPa6dr/2xXbK9tCG1gbbluEm5rbsRvHm94b9FwK3CG
cOBxOnGVcfByS3KmcwFzXXO4dBR0cHTMdSh1hXXhdj52m3b4d1Z3s3gReG54zHkqeYl553pG
eqV7BHtje8J8IXyBfOF9QX2hfgF+Yn7CfyN/hH/lgEeAqIEKgWuBzYIwgpKC9INXg7qEHYSA
hOOFR4Wrhg6GcobXhzuHn4gEiGmIzokziZmJ/opkisqLMIuWi/yMY4zKjTGNmI3/jmaOzo82
j56QBpBukNaRP5GokhGSepLjk02TtpQglIqU9JVflcmWNJaflwqXdZfgmEyYuJkkmZCZ/Jpo
mtWbQpuvnByciZz3nWSd0p5Anq6fHZ+Ln/qgaaDYoUehtqImopajBqN2o+akVqTHpTilqaYa
poum/adup+CoUqjEqTepqaocqo+rAqt1q+msXKzQrUStuK4trqGvFq+LsACwdbDqsWCx1rJL
ssKzOLOutCW0nLUTtYq2AbZ5tvC3aLfguFm40blKucK6O7q1uy67p7whvJu9Fb2Pvgq+hL7/
v3q/9cBwwOzBZ8Hjwl/C28NYw9TEUcTOxUvFyMZGxsPHQce/yD3IvMk6ybnKOMq3yzbLtsw1
zLXNNc21zjbOts83z7jQOdC60TzRvtI/0sHTRNPG1EnUy9VO1dHWVdbY11zX4Nhk2OjZbNnx
2nba+9uA3AXcit0Q3ZbeHN6i3ynfr+A24L3hROHM4lPi2+Nj4+vkc+T85YTmDeaW5x/nqegy
6LzpRunQ6lvq5etw6/vshu0R7ZzuKO6070DvzPBY8OXxcvH/8ozzGfOn9DT0wvVQ9d72bfb7
94r4Gfio+Tj5x/pX+uf7d/wH/Jj9Kf26/kv+3P9t////2wBDAAIBAQIBAQICAgICAgICAwUD
AwMDAwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwMBwkODw0MDgsMDAz/2wBDAQIC
AgMDAwYDAwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM
DAwMDAwMDAz/wAARCABaANwDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQF
BgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0Kx
wRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlq
c3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT
1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQF
BgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHB
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


--------------rXk925TA7tmJNSPEBUWZbig4--

--------------TA6dWcBO83siKe9wJCPQzXEq--

--===============8327939767999337671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8327939767999337671==--
