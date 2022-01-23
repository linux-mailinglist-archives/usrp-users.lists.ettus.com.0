Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6313A4974E5
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 20:11:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8CA9C3850BC
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 14:11:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XHTycn7E";
	dkim-atps=neutral
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 9C743384B67
	for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 14:11:00 -0500 (EST)
Received: by mail-qv1-f52.google.com with SMTP id e20so9881635qvu.7
        for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 11:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=dQPZCIjMcYPyv4gWZ3BdKrJT/NNjbhUnhc30W+6XhoA=;
        b=XHTycn7EPpnmi9wK30LnmoYpVy6eAgqyoGlhWOiK3JLZKT4X8VXIOiHQ5H36Yhmqz8
         MfbjsA5+aOnRZ0cY588AHtkZFNg8hOJtzl6+ivtiudSOkeXsPR7bxKDxT6exzIMC0cyA
         SouCHrCPRMIwaxlQFPBASCR28r7qdq+UReAyyUQ3uDoDXBnt130hRB6PsLSQKfcvhHE4
         sdMtDsYemF8ZId9etpcLODpW7f7MpNO2eZ/dNkVgXp1bGx2dGSwbHkRHCSQtkvPPvJvz
         qKpgwLuHdVS52ORqPXL2//gi2lJfJ/z1enkPEMWli+hS36vKF7PP5shxcXpiN39b76Hh
         GhuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=dQPZCIjMcYPyv4gWZ3BdKrJT/NNjbhUnhc30W+6XhoA=;
        b=zIo5PvaUxOTQs+pEiVVFFrqPxBQNRJAeiB0QKpbnn6yEmLkAJnqMVtv+Ul09wL1swa
         TGrKuYeDqdJ752lyA+5egXc+jnriDcf/UQqNDO1NbKlwvpk+lKOlkyfbIy5Tf54s1tNF
         9T4L7+VcQ7OdZ+umVBtKsB3ZORd8+Hg+qqjV+iEH7MrUZOv01OpvQ+ymUUzicb8t0VIe
         CXmFIREOFNLjbI7bWDzFoiC7Lg77VJL54/QpnXlrMGLqkAOUwKw4Gjcb++e0QcSLI11E
         eGckTHC9GR8Prt9pZTnK7ls+zSgQjdlA/sRU1A1pz0PTfbktYNLj7jPg1CbKqcvkbsiM
         +VLA==
X-Gm-Message-State: AOAM5315Sq1DWdz7Fy5GehrRwDAcx6JTWUvW/75orpiDsOqUnS/yVLwO
	cdioLr+0YfccbyX7EJxJIW4=
X-Google-Smtp-Source: ABdhPJyQUEMtP1iHNE5h4VdEMRf34z2QjuG0UWqhK0m276DVWJRvkLBXx4Mvvf9mFpJ5X+YMVWn/kA==
X-Received: by 2002:a05:6214:230d:: with SMTP id gc13mr11973637qvb.68.1642965059976;
        Sun, 23 Jan 2022 11:10:59 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id d13sm3856909qtx.35.2022.01.23.11.10.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Jan 2022 11:10:59 -0800 (PST)
Message-ID: <ced92468-32ea-100d-b838-bf5704f6ce22@gmail.com>
Date: Sun, 23 Jan 2022 14:10:58 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: bertalan.eged@sagaxcommunications.com, usrp-users@lists.ettus.com
References: <074c01d80f78$17d64480$4782cd80$@sagaxcommunications.com>
 <3bef9952-3782-dace-bc6b-f32843ab6469@gmail.com>
 <002901d81059$502b5320$f081f960$@sagaxcommunications.com>
 <8bd2fc98-7216-937e-8710-58f15157818d@gmail.com>
 <005c01d8107b$2cb85790$862906b0$@sagaxcommunications.com>
 <e21e0da1-e55f-230f-a0a8-abccfa64220c@gmail.com>
 <007d01d81082$81e12b00$85a38100$@sagaxcommunications.com>
 <db55693f-29e1-3f36-cbdd-c3cb3b1541bd@gmail.com>
 <00c601d81089$1db82140$592863c0$@sagaxcommunications.com>
 <bec08fe4-8931-e3b8-1fbc-5178eeab666c@gmail.com>
 <00e701d8108c$356bc230$a0434690$@sagaxcommunications.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <00e701d8108c$356bc230$a0434690$@sagaxcommunications.com>
Message-ID-Hash: 4VMY4PPS4H5NQJWECIHSPWNHZM3Y5J3R
X-Message-ID-Hash: 4VMY4PPS4H5NQJWECIHSPWNHZM3Y5J3R
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 reachable no error windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4VMY4PPS4H5NQJWECIHSPWNHZM3Y5J3R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9072348884259104417=="

This is a multi-part message in MIME format.
--===============9072348884259104417==
Content-Type: multipart/alternative;
 boundary="------------MMJGpS0NrGrMk5atDjrIoVpi"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MMJGpS0NrGrMk5atDjrIoVpi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-23 14:05, bertalan.eged@sagaxcommunications.com wrote:
>
> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Sunday, January 23, 2022 7:47 PM
> *To:* bertalan.eged@sagaxcommunications.com; usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Re: N310 reachable no error windows
>
> On 2022-01-23 13:43, bertalan.eged@sagaxcommunications.com wrote:
>
>     *From:*Marcus D. Leech <patchvonbraun@gmail.com>
>     <mailto:patchvonbraun@gmail.com>
>     *Sent:* Sunday, January 23, 2022 7:01 PM
>     *To:* bertalan.eged@sagaxcommunications.com;
>     usrp-users@lists.ettus.com
>     *Subject:* Re: [USRP-users] Re: N310 reachable no error windows
>
>     On 2022-01-23 12:56, bertalan.eged@sagaxcommunications.com wrote:
>
>         C:\Users\sgx>ping 192.168.10.2
>
>         Pinging 192.168.10.2 with 32 bytes of data:
>
>         Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
>         Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
>         Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
>         Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
>         Ping statistics for 192.168.10.2:
>
>         =C2=A0=C2=A0=C2=A0 Packets: Sent =3D 4, Received =3D 4, Lost =3D=
 0 (0% loss),
>
>         Approximate round trip times in milli-seconds:
>
>         =C2=A0=C2=A0=C2=A0 Minimum =3D 1ms, Maximum =3D 1ms, Average =3D=
 1ms
>
>         C:\Users\sgx>
>
>     OK, so, it's likely a "blockage" by your firewall configuration on
>     the Windows PC.
>
>     if you:
>
>     uhd_usrp_probe --args "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn3=
10"
>
>     Is it still unable to establish a session?
>
>
>     If so, then this is almost certainly your firewall blocking ports
>     used by UHD to communicate with the N310
>
>     Your host needs to support UDP traffic on 49152 and 49153 ports.
>
>
>     Sam as before:
>
>     C:\Users\sgx>uhd_usrp_probe --args
>     "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"
>
>     [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1;
>     Boost_107000; UHD_4.1.0.4-release
>
>     Error: LookupError: KeyError: No devices found for ----->
>
>     Device Address:
>
>     =C2=A0=C2=A0=C2=A0 addr: 192.168.10.2
>
>     =C2=A0=C2=A0=C2=A0 type: n3xx
>
>     =C2=A0=C2=A0=C2=A0 product: n310
>
>     let me check the firewall, however I used this machine with X310
>     recently=E2=80=A6
>
>     I switched off the firwall, and get other error:
>
>     C:\Users\sgx>uhd_usrp_probe --args
>     "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"
>
>     [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1;
>     Boost_107000; UHD_4.1.0.4-release
>
>     [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>     mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31B359=
9,claimed=3DFalse,addr=3D192.168.10.2
>
>     [WARNING] [MPM.RPCServer] A timeout event occured!
>
>     Error: rpc::timeout: Timeout of 2000ms while calling RPC function
>     'set_device_id'
>
>     C:\Users\sgx>uhd_usrp_probe
>
>     [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1;
>     Boost_107000; UHD_4.1.0.4-release
>
>     [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>     mgmt_addr=3D10.1.3.82,type=3Dn3xx,product=3Dn310,serial=3D31B3599,c=
laimed=3DFalse,addr=3D192.168.10.2
>
>     [WARNING] [MPM.RPCServer] A timeout event occured!
>
>     Error: rpc::timeout: Timeout of 2000ms while calling RPC function
>     'set_device_id'
>
>
>
> Check that the MTU on the N310 (defaults to 9000 for the SFP0=20
> interface) and the MTU on your host match.
>
> I increased to the jumbo frame support to 9000:
>
> C:\Users\sgx>netsh interface ipv4 show subinterface
>
> =C2=A0=C2=A0 MTU=C2=A0 MediaSenseState=C2=A0=C2=A0 Bytes In Bytes Out=C2=
=A0 Interface
>
> ------=C2=A0 ---------------=C2=A0 --------- ---------=C2=A0 ----------=
---
>
> 4294967295=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 53277=C2=A0=
 Loopback Pseudo-Interface 1
>
> =C2=A0 9000=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 1319=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 10419=
=C2=A0 Ethernet 3
>
> =C2=A0 1500=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0 774750294 31919581=C2=A0 Ethernet =
4
>
> But unfortunately no change:
>
> C:\Users\sgx>uhd_usrp_probe --args=20
> "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"
>
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000;=20
> UHD_4.1.0.4-release
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31B3599,cl=
aimed=3DFalse,addr=3D192.168.10.2
>
> [WARNING] [MPM.RPCServer] A timeout event occured!
>
> Error: rpc::timeout: Timeout of 2000ms while calling RPC function=20
> 'set_device_id'
>
>
>
>
I just noticed--your N310 device is WAY behind your host in terms of UHD=20
version.=C2=A0 This CANNOT work.

Please see the N310 user manual here:

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updat=
ing_the_files_system_by_writing_the_disk_image

and

https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card

https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card=
#N3xx



I'm sorry that I didn't notice this before there were MANY runs of=20
uhd_usrp_probe, and I simply missed the header lines when you ran it=20
natively on the N310.


--------------MMJGpS0NrGrMk5atDjrIoVpi
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-23 14:05,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:bertalan.eged@=
sagaxcommunications.com">bertalan.eged@sagaxcommunications.com</a> wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:00e701d8108c$356bc230$a0434690$@sagaxcommunications.com=
">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:"Times New Roman \,serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.E-mailStlus18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.E-mailStlus19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.E-mailStlus20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.E-mailStlus21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.E-mailStlus22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.E-mailStlus23
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-G=
B"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-G=
B"><o:p>=C2=A0</o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b><span lang=3D"HU">From:</span></b><=
span
                lang=3D"HU"> Marcus D. Leech
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
                <b>Sent:</b> Sunday, January 23, 2022 7:47 PM<br>
                <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:bertalan.eged@sagaxcommunications.com">bertalan.eged@sagaxcommunic=
ations.com</a>;
                <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] Re: N310 reachable no
                error windows<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 2022-01-23 13:43, <a
              href=3D"mailto:bertalan.eged@sagaxcommunications.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">be=
rtalan.eged@sagaxcommunications.com</a>
            wrote:<span style=3D"font-size:12.0pt"><o:p></o:p></span></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN=
-GB">=C2=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN=
-GB">=C2=A0</span><o:p></o:p></p>
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0in 0in 0in">
              <p class=3D"MsoNormal"><b><span lang=3D"HU">From:</span></b=
><span
                  lang=3D"HU"> Marcus D. Leech <a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    moz-do-not-send=3D"true">&lt;patchvonbraun@gmail.com&=
gt;</a>
                  <br>
                  <b>Sent:</b> Sunday, January 23, 2022 7:01 PM<br>
                  <b>To:</b> <a
                    href=3D"mailto:bertalan.eged@sagaxcommunications.com"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">bertalan.eged@sagaxcommunications.com</a>;
                  <a href=3D"mailto:usrp-users@lists.ettus.com"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">usrp-users@lists.ettus.com</a><br>
                  <b>Subject:</b> Re: [USRP-users] Re: N310 reachable no
                  error windows</span><o:p></o:p></p>
            </div>
          </div>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal">On 2022-01-23 12:56, <a
                href=3D"mailto:bertalan.eged@sagaxcommunications.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
bertalan.eged@sagaxcommunications.com</a>
              wrote:<o:p></o:p></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">=C2=A0</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">C:\Users\sgx&gt;ping 192.168.10.2=
</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">=C2=A0</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">Pinging 192.168.10.2 with 32 byte=
s
                of data:</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">Reply from 192.168.10.2: bytes=3D=
32
                time=3D1ms TTL=3D64</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">Reply from 192.168.10.2: bytes=3D=
32
                time=3D1ms TTL=3D64</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">Reply from 192.168.10.2: bytes=3D=
32
                time=3D1ms TTL=3D64</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">Reply from 192.168.10.2: bytes=3D=
32
                time=3D1ms TTL=3D64</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">=C2=A0</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">Ping statistics for 192.168.10.2:=
</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 Packets: Sent =
=3D 4, Received =3D
                4, Lost =3D 0 (0% loss),</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">Approximate round trip times in
                milli-seconds:</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 Minimum =3D 1m=
s, Maximum =3D 1ms,
                Average =3D 1ms</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">=C2=A0</span><o:p></o:p></p>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                style=3D"color:#1F497D">C:\Users\sgx&gt;</span><o:p></o:p=
></p>
          </blockquote>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"font-size:12.0pt;font-family:&quot;Times New Roman
              ,serif&quot;,serif">OK, so, it's likely a "blockage" by
              your firewall configuration on the Windows PC.<br>
              <br>
              if you:<br>
              <br>
              uhd_usrp_probe --args
              "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"<br>
              <br>
              Is it still unable to establish a session?<br>
              <br>
              <br>
              If so, then this is almost certainly your firewall
              blocking ports used by UHD to communicate with the N310<br>
              <br>
              Your host needs to support UDP traffic on 49152 and 49153
              ports.<br>
              <br>
              <br>
            </span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">=C2=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">Sam as before:</span><o:p></o:p></p=
>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">C:\Users\sgx&gt;uhd_usrp_probe
              --args "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">[INFO] [UHD] Win32; Microsoft Visua=
l
              C++ version 14.1; Boost_107000; UHD_4.1.0.4-release</span><=
o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">Error: LookupError: KeyError: No
              devices found for -----&gt;</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">Device Address:</span><o:p></o:p></=
p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 addr: 192.168.10=
.2</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 type: n3xx</span=
><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 product: n310</s=
pan><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">=C2=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">let me check the firewall, however =
I
              used this machine with X310 recently=E2=80=A6</span><o:p></=
o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">I switched off the firwall, and get
              other error:</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">C:\Users\sgx&gt;uhd_usrp_probe
              --args "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">[INFO] [UHD] Win32; Microsoft Visua=
l
              C++ version 14.1; Boost_107000; UHD_4.1.0.4-release</span><=
o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">[INFO] [MPMD] Initializing 1
              device(s) in parallel with args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31B3599,clai=
med=3DFalse,addr=3D192.168.10.2</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">[WARNING] [MPM.RPCServer] A timeout
              event occured!</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">Error: rpc::timeout: Timeout of
              2000ms while calling RPC function 'set_device_id'</span><o:=
p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">=C2=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">C:\Users\sgx&gt;uhd_usrp_probe</spa=
n><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">[INFO] [UHD] Win32; Microsoft Visua=
l
              C++ version 14.1; Boost_107000; UHD_4.1.0.4-release</span><=
o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">[INFO] [MPMD] Initializing 1
              device(s) in parallel with args:
mgmt_addr=3D10.1.3.82,type=3Dn3xx,product=3Dn310,serial=3D31B3599,claimed=
=3DFalse,addr=3D192.168.10.2</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">[WARNING] [MPM.RPCServer] A timeout
              event occured!</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">Error: rpc::timeout: Timeout of
              2000ms while calling RPC function 'set_device_id'</span><o:=
p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D"><br>
              <br>
            </span><o:p></o:p></p>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif">Check that the MTU on the N310 (defaults
            to 9000 for the SFP0 interface) and the MTU on your host
            match.<span style=3D"color:#1F497D"><o:p></o:p></span></span>=
</p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">I increased to the jumbo frame suppor=
t
            to 9000:<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">C:\Users\sgx&gt;netsh interface ipv4
            show subinterface<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0=C2=A0 MTU=C2=A0 MediaSenseStat=
e=C2=A0=C2=A0 Bytes In=C2=A0
            Bytes Out=C2=A0 Interface<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">------=C2=A0 ---------------=C2=A0 --=
-------=C2=A0
            ---------=C2=A0 -------------<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">4294967295=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 53277=C2=A0 Loopback Pseudo-I=
nterface 1<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0 9000=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
            1319=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 10419=C2=A0 Ethernet 3<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0 1500=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0 7=
74750294=C2=A0=C2=A0
            31919581=C2=A0 Ethernet 4<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">But unfortunately no change:<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">C:\Users\sgx&gt;uhd_usrp_probe --args
            "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">[INFO] [UHD] Win32; Microsoft Visual
            C++ version 14.1; Boost_107000; UHD_4.1.0.4-release<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">[INFO] [MPMD] Initializing 1 device(s=
)
            in parallel with args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31B3599,clai=
med=3DFalse,addr=3D192.168.10.2<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">[WARNING] [MPM.RPCServer] A timeout
            event occured!<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Error: rpc::timeout: Timeout of 2000m=
s
            while calling RPC function 'set_device_id'<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif"><br>
            <br>
            <br>
            <o:p></o:p></span></p>
      </div>
    </blockquote>
    I just noticed--your N310 device is WAY behind your host in terms of
    UHD version.=C2=A0 This CANNOT work.<br>
    <br>
    Please see the N310 user manual here:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide#Updating_the_files_system_by_writin=
g_the_disk_image">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_S=
tarted_Guide#Updating_the_files_system_by_writing_the_disk_image</a><br>
    <br>
    and<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Writing_t=
he_USRP_File_System_Disk_Image_to_a_SD_Card">https://kb.ettus.com/Writing=
_the_USRP_File_System_Disk_Image_to_a_SD_Card</a><br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Writing_t=
he_USRP_File_System_Disk_Image_to_a_SD_Card#N3xx">https://kb.ettus.com/Wr=
iting_the_USRP_File_System_Disk_Image_to_a_SD_Card#N3xx</a><br>
    <br>
    <br>
    <br>
    I'm sorry that I didn't notice this before there were MANY runs of
    uhd_usrp_probe, and I simply missed the header lines when you ran it
    natively on the N310.<br>
    <br>
    <br>
  </body>
</html>

--------------MMJGpS0NrGrMk5atDjrIoVpi--

--===============9072348884259104417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9072348884259104417==--
