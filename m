Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 481AF4972B8
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 16:49:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 27E0D38499B
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 10:49:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="I3/O3tUa";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 16204380A32
	for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 10:48:23 -0500 (EST)
Received: by mail-qv1-f53.google.com with SMTP id i19so2311594qvx.12
        for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 07:48:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=a+pHQvxTk7EBIRsl1IS7/+Ml3Z/estVxOhh8auslM14=;
        b=I3/O3tUaOv73tlTXWxC2wlk6AQZ93snUhQiRZs9LkDnGZJAtBsIvBE+aIWW6LXLMz9
         gF6CHhA7VDeH5BSC1ih5cSMlXHagJveL7QTueMMzDuQhCWtk2/INBLWoMA1z9s7YeGRg
         KyqGqHTBU5RjfpUoswjvUOVfExuoB8DbfHlIb2mHs0NPWL/fwAdD59cIKXnjNVEGadjA
         a05I68A+nkvSL1GVTObkj5JHm9dZCZvZNdXRJJn9mtZeWrj5aeeIc6rTJxQ9yUby2iB+
         DB6ob3hqNposdJmvVad846SPNyvd0TcCeA48UlfmIBcZk5+LlyT0dQtzfZrIEUEhQwxV
         uMIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=a+pHQvxTk7EBIRsl1IS7/+Ml3Z/estVxOhh8auslM14=;
        b=bPZ5QB52wJagxYKxTE+WA6l7BWhI7kgrHtRZdVr3lqjsChoac7e6EkOkOTCOqYQMGD
         CFwcikNwL+I40llnR8upJjxLKbIJ4mXdJ30UtqgB3fC7ALBcIL/XkhRbgCI/B562pI6J
         n28adeQA+zh+RY7au/c8D6LUHXpYYxuxQeeWXz44WqFo/VgZ2bgNwzMdhOgWW2t0JwYR
         W2t5W8PIwc174JYcyIPxbwjq5SH8VtcxI+kwE+yODNvHnALXuKOfj4QAnI3IMCbzaLfz
         hxIjblWXI+eg9IrLIC8AWS2W6RVR41retKVsG9t7/7R4TQrElRe3A08Wk9FZhB9eVJzs
         aJfA==
X-Gm-Message-State: AOAM533ww7+kJIjrqgRO7PSJeS7br8y531V2MlaI59Cw6xjwCmEtY0jb
	g/6XLm+0JrP9zJPFfZmpSeCp080ELGZs2w==
X-Google-Smtp-Source: ABdhPJxtVBga/HezfafgTsB226GJFl5Cha8SsapylLVhvI0cTC9PhI0CuKTG9zTpCVGT095HzEa+nw==
X-Received: by 2002:a05:6214:acf:: with SMTP id g15mr3535685qvi.100.1642952902602;
        Sun, 23 Jan 2022 07:48:22 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id b20sm5916781qtx.86.2022.01.23.07.48.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Jan 2022 07:48:21 -0800 (PST)
Message-ID: <8bd2fc98-7216-937e-8710-58f15157818d@gmail.com>
Date: Sun, 23 Jan 2022 10:48:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: bertalan.eged@sagaxcommunications.com, usrp-users@lists.ettus.com
References: <074c01d80f78$17d64480$4782cd80$@sagaxcommunications.com>
 <3bef9952-3782-dace-bc6b-f32843ab6469@gmail.com>
 <002901d81059$502b5320$f081f960$@sagaxcommunications.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <002901d81059$502b5320$f081f960$@sagaxcommunications.com>
Message-ID-Hash: 6PGZIH6EVK6RNW4A5DOE52ZK7SF2KQHM
X-Message-ID-Hash: 6PGZIH6EVK6RNW4A5DOE52ZK7SF2KQHM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 reachable no error windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6PGZIH6EVK6RNW4A5DOE52ZK7SF2KQHM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8210512944951184840=="

This is a multi-part message in MIME format.
--===============8210512944951184840==
Content-Type: multipart/alternative;
 boundary="------------BTHZ0qIfGLyN9bYMg3yQV0i6"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BTHZ0qIfGLyN9bYMg3yQV0i6
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-23 08:01, bertalan.eged@sagaxcommunications.com wrote:
>
> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Saturday, January 22, 2022 4:33 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: N310 reachable no error windows
>
> On 2022-01-22 05:09, bertalan.eged@sagaxcommunications.com wrote:
>
>     Dear All, I have the same issue, and found this thread:
>
>     [USRP-users] Re: UHD 3.15 on Windows (mail-archive.com)
>     <https://www.mail-archive.com/usrp-users@lists.ettus.com/msg13499.h=
tml>
>
>     But without a solution at the end.
>
>     In my case:
>
>     C:\Users\sgx>uhd_find_devices
>
>     [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1;
>     Boost_107000; UHD_4.1.0.4-release
>
>     --------------------------------------------------
>
>     -- UHD Device 0
>
>     --------------------------------------------------
>
>     Device Address:
>
>     =C2=A0=C2=A0=C2=A0 serial: 3178D22
>
>     =C2=A0=C2=A0=C2=A0 name: MyB200
>
>     =C2=A0=C2=A0=C2=A0 product: B200
>
>     =C2=A0=C2=A0=C2=A0 type: b200
>
>     --------------------------------------------------
>
>     -- UHD Device 1
>
>     --------------------------------------------------
>
>     Device Address:
>
>     =C2=A0=C2=A0=C2=A0 serial: 31B3599
>
>     =C2=A0=C2=A0=C2=A0 claimed: False
>
>     =C2=A0=C2=A0=C2=A0 mgmt_addr: 10.1.3.82
>
>     =C2=A0=C2=A0=C2=A0 mgmt_addr: 192.168.10.2
>
>     =C2=A0=C2=A0=C2=A0 product: n310
>
>     *reachable: No*
>
>     =C2=A0=C2=A0=C2=A0 type: n3xx
>
>     C:\Users\sgx>uhd_usrp_probe
>
>     [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1;
>     Boost_107000; UHD_4.1.0.4-release
>
>     *[INFO] [MPMD FIND] Found MPM devices, but none are reachable for
>     a UHD session. Specify find_all to find all devices.*
>
>     [INFO] [B200] Detected Device: B200
>
>     [INFO] [B200] Operating over USB 3.
>
>     [INFO] [B200] Initialize CODEC control...
>
>     [INFO] [B200] Initialize Radio control...
>
>     [INFO] [B200] Performing register loopback test...
>
>     [INFO] [B200] Register loopback test passed
>
>     [INFO] [B200] Setting master clock rate selection to 'automatic'.
>
>     [INFO] [B200] Asking for clock rate 16.000000 MHz...
>
>     [INFO] [B200] Actually got clock rate 16.000000 MHz.
>
>     [INFO] [MPMD FIND] Found MPM devices, but none are reachable for a
>     UHD session. Specify find_all to find all devices.
>
>     _____________________________________________________
>
>     /
>
>     |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Device: B-Series Device
>
>     | _____________________________________________________
>
>     |=C2=A0=C2=A0=C2=A0 /
>
>     |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mboard: B200
>
>     |=C2=A0=C2=A0 |=C2=A0=C2=A0 revision: 5
>
>     |=C2=A0=C2=A0 |=C2=A0=C2=A0 product: 1
>
>     |=C2=A0=C2=A0 |=C2=A0=C2=A0 name: MyB200
>
>     |=C2=A0=C2=A0 |=C2=A0=C2=A0 serial: 3178D22
>
>     (probe works well for B200, I just attached for cross probe the
>     uhd functionality=E2=80=A6)
>
>     Any suggestions? Where should I use the sugested find_all parameter=
?
>
>     Tks,
>
>     /Bertalan
>
> I'm not sure about "find_all" either.
>
> What is your actual network configuration with your N310?=C2=A0=C2=A0=C2=
=A0=C2=A0 Do you=20
> have both the RJ-45 port AND SFP0 port connected?=C2=A0 Are you using=20
> default addresses on the N310?
>
> If you:
>
> uhd_usrp_probe --args "addr=3D192.168.10.2,type=3Dn3xx"
>
>
> What do you get?
>
> Hi Marcus, yes all is standard. Yes boot port are connected.
>
> As you can see the uhd_find_devices found both interfaces:
>
> =C2=A0=C2=A0=C2=A0 mgmt_addr: 10.1.3.82
>
> =C2=A0=C2=A0=C2=A0 mgmt_addr: 192.168.10.2
>
> =C2=A0=C2=A0=C2=A0 product: n310
>
> *reachable: No*
>
> =C2=A0=C2=A0=C2=A0 type: n3xx
>
> 192.168.10.2 is the SPF which is connected to a host to the 10GbE NIC
>
> Meanwhile I made a test with Ubuntu, as I read it should work=E2=80=A6
>
> I was not able to put into operation the 10GbE SFP connection, however=20
> on the 1GbE RJ45
>
> I got the very similar response: reachable: No
>
> Your Hardware Enablement Stack (HWE) is supported until April 2023.
>
> Last login: Sat Apr 24 06:45:03 2021 from 10.6.1.160
>
> sgx@178-H110M-S2PV:~$ uhd_find_devices
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
> UHD_4.1.0.4-release
>
> --------------------------------------------------
>
> -- UHD Device 0
>
> --------------------------------------------------
>
> Device Address:
>
> =C2=A0=C2=A0=C2=A0 serial: 31B3599
>
> =C2=A0=C2=A0=C2=A0 claimed: False
>
> =C2=A0=C2=A0=C2=A0 mgmt_addr: 10.1.3.82
>
> =C2=A0=C2=A0=C2=A0 product: n310
>
> =C2=A0=C2=A0=C2=A0 reachable: No
>
> =C2=A0=C2=A0=C2=A0 type: n3xx
>
> sgx@178-H110M-S2PV:~$
>
>
>
> I switched back to windows to check your suggested response of=20
> addressing on 10GbE:
>
> And if ask the specific devices, I got this error:
>
> C:\Users\sgx>uhd_usrp_probe --args "addr=3D192.168.10.2,type=3Dn3xx"
>
OK, so what if you simply try to ping=C2=A0 192.168.10.2=C2=A0=C2=A0 -- I=
 think the=20
WIndows command window supports "ping".


> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000;=20
> UHD_4.1.0.4-release
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Device Address:
>
> =C2=A0=C2=A0=C2=A0 addr: 192.168.10.2
>
> =C2=A0=C2=A0=C2=A0 type: n3xx
>
> but the device is there, only it says: =C2=A0=C2=A0=C2=A0=C2=A0reachabl=
e: No
>
> but why? How the MPM work? How MPM switch between the networked vs=20
> embedded mode? (external or internal control of the device)
>
> I found not docs/reading on this=E2=80=A6
>
> /B
>
Embedded mode means that you're actually running your code *ON* the=20
N310, rather than using an external host.

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide




--------------BTHZ0qIfGLyN9bYMg3yQV0i6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-23 08:01,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:bertalan.eged@=
sagaxcommunications.com">bertalan.eged@sagaxcommunications.com</a> wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:002901d81059$502b5320$f081f960$@sagaxcommunications.com=
">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:Helv;
	panose-1:2 11 6 4 2 2 2 3 2 4;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
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
                <b>Sent:</b> Saturday, January 22, 2022 4:33 PM<br>
                <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> [USRP-users] Re: N310 reachable no error
                windows<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 2022-01-22 05:09, <a
              href=3D"mailto:bertalan.eged@sagaxcommunications.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">be=
rtalan.eged@sagaxcommunications.com</a>
            wrote:<span style=3D"font-size:12.0pt"><o:p></o:p></span></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">Dear All, I have th=
e
              same issue, and found this thread:</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB"><a
href=3D"https://www.mail-archive.com/usrp-users@lists.ettus.com/msg13499.=
html"
                moz-do-not-send=3D"true">[USRP-users] Re: UHD 3.15 on
                Windows (mail-archive.com)</a></span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">But without a solut=
ion
              at the end.</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><o:p><=
/o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">In my case:</span><=
o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><o:p><=
/o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">C:\Users\sgx&gt;uhd=
_find_devices</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [UHD] Win32;
              Microsoft Visual C++ version 14.1; Boost_107000;
              UHD_4.1.0.4-release</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">-------------------=
-------------------------------</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">-- UHD Device 0</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">-------------------=
-------------------------------</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">Device Address:</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 =
serial: 3178D22</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 =
name: MyB200</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 =
product: B200</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 =
type: b200</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><o:p><=
/o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><o:p><=
/o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">-------------------=
-------------------------------</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">-- UHD Device 1</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">-------------------=
-------------------------------</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">Device Address:</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 =
serial: 31B3599</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 =
claimed: False</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 =
mgmt_addr:
              10.1.3.82</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 =
mgmt_addr:
              192.168.10.2</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 =
product: n310</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 =
<b>reachable: No</b></span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 =
type: n3xx</span><o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><o:p><=
/o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">C:\Users\sgx&gt;uhd=
_usrp_probe</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [UHD] Win32;
              Microsoft Visual C++ version 14.1; Boost_107000;
              UHD_4.1.0.4-release</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><b><span lang=3D"EN-GB">[INFO] [MPMD FIN=
D]
                Found MPM devices, but none are reachable for a UHD
                session. Specify find_all to find all devices.</span></b>=
<o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200] Detec=
ted
              Device: B200</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200]
              Operating over USB 3.</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200]
              Initialize CODEC control...</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200]
              Initialize Radio control...</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200]
              Performing register loopback test...</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200] Regis=
ter
              loopback test passed</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200] Setti=
ng
              master clock rate selection to 'automatic'.</span><o:p></o:=
p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200] Askin=
g
              for clock rate 16.000000 MHz...</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200] Actua=
lly
              got clock rate 16.000000 MHz.</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [MPMD FIND]
              Found MPM devices, but none are reachable for a UHD
              session. Specify find_all to find all devices.</span><o:p><=
/o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0
              _____________________________________________________</span=
><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">/</span><o:p></o:p>=
</p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Device:
              B-Series Device</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0=C2=A0=
=C2=A0
              _____________________________________________________</span=
><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0=C2=A0=
 /</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0 |=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mboard:
              B200</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0 |=C2=A0=
=C2=A0 revision: 5</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0 |=C2=A0=
=C2=A0 product: 1</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0 |=C2=A0=
=C2=A0 name: MyB200</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0 |=C2=A0=
=C2=A0 serial:
              3178D22</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><o:p><=
/o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">(probe works well f=
or
              B200, I just attached for cross probe the uhd
              functionality=E2=80=A6)</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><o:p><=
/o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Helv&quot;,sans=
-serif"
              lang=3D"EN-GB">Any suggestions? Where should I use the
              sugested find_all parameter?</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Helv&quot;,sans=
-serif"
              lang=3D"EN-GB">Tks,</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.0pt;font-family:&quot;Helv&quot;,sans=
-serif"
              lang=3D"EN-GB">/Bertalan</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0</span><o:p><=
/o:p></p>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif">I'm not sure about "find_all" either.<br>
            <br>
            What is your actual network configuration with your
            N310?=C2=A0=C2=A0=C2=A0=C2=A0 Do you have both the RJ-45 port=
 AND SFP0 port
            connected?=C2=A0 Are you using default addresses on the N310?=
<br>
            <br>
            If you:<br>
            <br>
            uhd_usrp_probe --args "addr=3D192.168.10.2,type=3Dn3xx"<br>
            <br>
            <br>
            What do you get?<br>
            <br>
            <span style=3D"color:#1F497D"><o:p></o:p></span></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Hi Marcus, yes all is standard. Yes
            boot port are connected.<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">As you can see the uhd_find_devices
            found both interfaces:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 mg=
mt_addr: 10.1.3.82</span><o:p></o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 mg=
mt_addr:
            192.168.10.2</span><o:p></o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 pr=
oduct: n310</span><o:p></o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 <b=
>reachable: No</b></span><o:p></o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 ty=
pe: n3xx</span><o:p></o:p></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">192.168.10.2 is the SPF which is
            connected to a host to the 10GbE NIC<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Meanwhile I made a test with Ubuntu,
            as I read it should work=E2=80=A6<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">I was not able to put into operation
            the 10GbE SFP connection, however on the 1GbE RJ45<o:p></o:p>=
</span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">I got the very similar response:
            reachable: No<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Your Hardware Enablement Stack (HWE)
            is supported until April 2023.<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Last login: Sat Apr 24 06:45:03 2021
            from 10.6.1.160<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">sgx@178-H110M-S2PV:~$ uhd_find_device=
s<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">[INFO] [UHD] linux; GNU C++ version
            7.5.0; Boost_106501; UHD_4.1.0.4-release<o:p></o:p></span></p=
>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">-------------------------------------=
-------------<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">-- UHD Device 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">-------------------------------------=
-------------<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Device Address:<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 serial: 31B3599<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 claimed: False<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 mgmt_addr: 10.1.3.=
82<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 product: n310<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 reachable: No<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 type: n3xx<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">sgx@178-H110M-S2PV:~$<o:p></o:p></spa=
n></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif"><br>
            <br>
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">I switched back to windows to check
            your suggested response of addressing on 10GbE:<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">And if ask the specific devices, I go=
t
            this error:<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">C:\Users\sgx&gt;uhd_usrp_probe --args
            "addr=3D192.168.10.2,type=3Dn3xx"</span></p>
      </div>
    </blockquote>
    OK, so what if you simply try to ping=C2=A0 192.168.10.2=C2=A0=C2=A0 =
-- I think the
    WIndows command window supports "ping".<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:002901d81059$502b5320$f081f960$@sagaxcommunications.com=
">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">[INFO] [UHD] Win32; Microsoft Visual
            C++ version 14.1; Boost_107000; UHD_4.1.0.4-release<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Error: LookupError: KeyError: No
            devices found for -----&gt;<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Device Address:<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 addr: 192.168.10.2=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 type: n3xx<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">but the device is there, only it says=
:
            =C2=A0=C2=A0=C2=A0=C2=A0reachable: No<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">but why? How the MPM work? How MPM
            switch between the networked vs embedded mode? (external or
            internal control of the device) <o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">I found not docs/reading on this=E2=80=
=A6<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">/B<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
      </div>
    </blockquote>
    Embedded mode means that you're actually running your code *ON* the
    N310, rather than using an external host.<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_=
N300/N310/N320/N321_Getting_Started_Guide">https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:002901d81059$502b5320$f081f960$@sagaxcommunications.com=
">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
      </div>
    </blockquote>
    <br>
    <br>
  </body>
</html>

--------------BTHZ0qIfGLyN9bYMg3yQV0i6--

--===============8210512944951184840==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8210512944951184840==--
