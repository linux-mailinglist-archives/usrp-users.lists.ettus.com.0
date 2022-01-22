Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A8E496CD6
	for <lists+usrp-users@lfdr.de>; Sat, 22 Jan 2022 16:51:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01E4F3846E6
	for <lists+usrp-users@lfdr.de>; Sat, 22 Jan 2022 10:51:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PybZv+aA";
	dkim-atps=neutral
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id C8F3B3846E3
	for <usrp-users@lists.ettus.com>; Sat, 22 Jan 2022 10:33:04 -0500 (EST)
Received: by mail-qt1-f175.google.com with SMTP id c15so1058856qtv.1
        for <usrp-users@lists.ettus.com>; Sat, 22 Jan 2022 07:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=CSscxtpF7Y2AT2cxHR2qyxMPq0bYBTIdKulG5dz4nsc=;
        b=PybZv+aAhDiEzHACQKMjgxuQlKzD4zLopoc0EgX80B6VhHTE9DsC0hrb+evfIoMzRL
         K2HJfuwfjj1QA3lyD8vrIZ50y1EEAu5snVM8dBAPfJzTF4GVxo96Tx2AE5oAigaxvaGM
         XqkiB4cvgxvxhHmJjyUCUeLfKvjLHKo3UYdQT39hBitLpuB3MHD0i5hsqNGbYFfEmEmi
         q01UfOwrXkBlK6sIwKXPFXS7U0z6vgDWj4p9LRNuxtTLT2bKkMlz9ImLCgPp9tKMUNXt
         5nxns32nVOyavo8Sd8ZGJUrFQDy3sYEDKlNYt4WSp2xrB4d8JLASmW0s1mfkCgXuYNTE
         MDwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=CSscxtpF7Y2AT2cxHR2qyxMPq0bYBTIdKulG5dz4nsc=;
        b=BWmPmxugF8bkf9epl+L5PNVCjoho32zzRpwP7yGPCOcJPG6QijfVzgoqOFkmAqr1PK
         DHmFEvP3Y0G2ZfQqdyEDCKOeywF2LRrj2gKKO1s/0PiRS+AEMkXRh1FfmeahHFt/haV9
         61YjT1zBloMu3LpufLY0otahbqm8ZZNfjQQopaxHwr+WbIhbuVlILoxBpddXYlCA94kn
         FvY4Ix2We+5A7Izu1BHA9FkHB682TF9w05FBZVaKRZMov4WTPgpugeaQRqkuXNvhgmDn
         uQU3n8d4Id/XgceISEy6IXDYAqhkFf1476PBEvGl7jLCZbepmXkFl8ljmmEpQwyfgQms
         x8jg==
X-Gm-Message-State: AOAM533idoz4E5F7HcrTMIn84pTCRgBlS2My/aanvcdAI0IaOiEDM4fy
	q6wJ1Xm0d0P8aoZKdWvziUx+6p7F9x5J4Q==
X-Google-Smtp-Source: ABdhPJyQPxrNFjjIj5Bpp8EAexb4FcFtzYbUwJJEDpbNclfYQqRaZyhihlqRGcLL4SmuE+Uug+oGcw==
X-Received: by 2002:a05:622a:11cc:: with SMTP id n12mr7070080qtk.537.1642865583938;
        Sat, 22 Jan 2022 07:33:03 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id w9sm4723857qtk.89.2022.01.22.07.33.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Jan 2022 07:33:03 -0800 (PST)
Message-ID: <3bef9952-3782-dace-bc6b-f32843ab6469@gmail.com>
Date: Sat, 22 Jan 2022 10:33:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <074c01d80f78$17d64480$4782cd80$@sagaxcommunications.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <074c01d80f78$17d64480$4782cd80$@sagaxcommunications.com>
Message-ID-Hash: FZSAR6JMJZUDTHXKZEULPMZHMAUVN5CO
X-Message-ID-Hash: FZSAR6JMJZUDTHXKZEULPMZHMAUVN5CO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 reachable no error windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FZSAR6JMJZUDTHXKZEULPMZHMAUVN5CO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2621800739175632352=="

This is a multi-part message in MIME format.
--===============2621800739175632352==
Content-Type: multipart/alternative;
 boundary="------------d7Vm1zBRJHoF1qMkLO5qSrrt"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------d7Vm1zBRJHoF1qMkLO5qSrrt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-22 05:09, bertalan.eged@sagaxcommunications.com wrote:
>
> Dear All, I have the same issue, and found this thread:
>
> [USRP-users] Re: UHD 3.15 on Windows (mail-archive.com)=20
> <https://www.mail-archive.com/usrp-users@lists.ettus.com/msg13499.html>
>
> But without a solution at the end.
>
> In my case:
>
> C:\Users\sgx>uhd_find_devices
>
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000;=20
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
> =C2=A0=C2=A0=C2=A0 serial: 3178D22
>
> =C2=A0=C2=A0=C2=A0 name: MyB200
>
> =C2=A0=C2=A0=C2=A0 product: B200
>
> =C2=A0=C2=A0=C2=A0 type: b200
>
> --------------------------------------------------
>
> -- UHD Device 1
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
> =C2=A0=C2=A0=C2=A0 mgmt_addr: 192.168.10.2
>
> =C2=A0=C2=A0=C2=A0 product: n310
>
> *reachable: No*
>
> =C2=A0=C2=A0=C2=A0 type: n3xx
>
> C:\Users\sgx>uhd_usrp_probe
>
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000;=20
> UHD_4.1.0.4-release
>
> *[INFO] [MPMD FIND] Found MPM devices, but none are reachable for a=20
> UHD session. Specify find_all to find all devices.*
>
> [INFO] [B200] Detected Device: B200
>
> [INFO] [B200] Operating over USB 3.
>
> [INFO] [B200] Initialize CODEC control...
>
> [INFO] [B200] Initialize Radio control...
>
> [INFO] [B200] Performing register loopback test...
>
> [INFO] [B200] Register loopback test passed
>
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
>
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
>
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
>
> [INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD=20
> session. Specify find_all to find all devices.
>
> _____________________________________________________
>
> /
>
> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Device: B-Series Device
>
> | _____________________________________________________
>
> |=C2=A0=C2=A0=C2=A0 /
>
> |=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mboard: B200
>
> |=C2=A0=C2=A0 |=C2=A0=C2=A0 revision: 5
>
> |=C2=A0=C2=A0 |=C2=A0=C2=A0 product: 1
>
> |=C2=A0=C2=A0 |=C2=A0=C2=A0 name: MyB200
>
> |=C2=A0=C2=A0 |=C2=A0=C2=A0 serial: 3178D22
>
> (probe works well for B200, I just attached for cross probe the uhd=20
> functionality=E2=80=A6)
>
> Any suggestions? Where should I use the sugested find_all parameter?
>
> Tks,
>
> /Bertalan
>
I'm not sure about "find_all" either.

What is your actual network configuration with your N310?=C2=A0=C2=A0=C2=A0=
=C2=A0 Do you=20
have both the RJ-45 port AND SFP0 port connected?=C2=A0 Are you using def=
ault=20
addresses on the N310?

If you:

uhd_usrp_probe --args "addr=3D192.168.10.2,type=3Dn3xx"


What do you get?



--------------d7Vm1zBRJHoF1qMkLO5qSrrt
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-22 05:09,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:bertalan.eged@=
sagaxcommunications.com">bertalan.eged@sagaxcommunications.com</a> wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:074c01d80f78$17d64480$4782cd80$@sagaxcommunications.com=
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
	text-decoration:underline;}span.E-mailStlus17
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
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">Dear All, I have the
            same issue, and found this thread:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><a
href=3D"https://www.mail-archive.com/usrp-users@lists.ettus.com/msg13499.=
html"
              moz-do-not-send=3D"true">[USRP-users] Re: UHD 3.15 on
              Windows (mail-archive.com)</a><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">But without a solutio=
n
            at the end.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">In my case:<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">C:\Users\sgx&gt;uhd_f=
ind_devices<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [UHD] Win32;
            Microsoft Visual C++ version 14.1; Boost_107000;
            UHD_4.1.0.4-release<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">---------------------=
-----------------------------<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">-- UHD Device 0<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">---------------------=
-----------------------------<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">Device Address:<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 se=
rial: 3178D22<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 na=
me: MyB200<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 pr=
oduct: B200<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 ty=
pe: b200<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">---------------------=
-----------------------------<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">-- UHD Device 1<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">---------------------=
-----------------------------<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">Device Address:<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 se=
rial: 31B3599<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 cl=
aimed: False<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 mg=
mt_addr: 10.1.3.82<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 mg=
mt_addr:
            192.168.10.2<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 pr=
oduct: n310<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 <b=
>reachable: No<o:p></o:p></b></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0=C2=A0=C2=A0 ty=
pe: n3xx<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">C:\Users\sgx&gt;uhd_u=
srp_probe<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [UHD] Win32;
            Microsoft Visual C++ version 14.1; Boost_107000;
            UHD_4.1.0.4-release<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><b><span lang=3D"EN-GB">[INFO] [MPMD FIND]
              Found MPM devices, but none are reachable for a UHD
              session. Specify find_all to find all devices.<o:p></o:p></=
span></b></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200] Detecte=
d
            Device: B200<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200] Operati=
ng
            over USB 3.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200] Initial=
ize
            CODEC control...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200] Initial=
ize
            Radio control...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200] Perform=
ing
            register loopback test...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200] Registe=
r
            loopback test passed<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200] Setting
            master clock rate selection to 'automatic'.<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200] Asking =
for
            clock rate 16.000000 MHz...<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [B200] Actuall=
y
            got clock rate 16.000000 MHz.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">[INFO] [MPMD FIND] Fo=
und
            MPM devices, but none are reachable for a UHD session.
            Specify find_all to find all devices.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">=C2=A0
            _____________________________________________________<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">/<o:p></o:p></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 Device: B-Series
            Device<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0=C2=A0=C2=
=A0
            _____________________________________________________<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0=C2=A0 /=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0 |=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mboard: B200<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0 |=C2=A0=
=C2=A0 revision: 5<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0 |=C2=A0=
=C2=A0 product: 1<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0 |=C2=A0=
=C2=A0 name: MyB200<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">|=C2=A0=C2=A0 |=C2=A0=
=C2=A0 serial: 3178D22<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">(probe works well for
            B200, I just attached for cross probe the uhd
            functionality=E2=80=A6)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Helv&quot;,sans-s=
erif"
            lang=3D"EN-GB">Any suggestions? Where should I use the
            sugested find_all parameter?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Helv&quot;,sans-s=
erif"
            lang=3D"EN-GB">Tks,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Helv&quot;,sans-s=
erif"
            lang=3D"EN-GB">/Bertalan<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>=C2=A0</o:p></sp=
an></p>
      </div>
    </blockquote>
    I'm not sure about "find_all" either.<br>
    <br>
    What is your actual network configuration with your N310?=C2=A0=C2=A0=
=C2=A0=C2=A0 Do you
    have both the RJ-45 port AND SFP0 port connected?=C2=A0 Are you using
    default addresses on the N310?<br>
    <br>
    If you:<br>
    <br>
    uhd_usrp_probe --args "addr=3D192.168.10.2,type=3Dn3xx"<br>
    <br>
    <br>
    What do you get?<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------d7Vm1zBRJHoF1qMkLO5qSrrt--

--===============2621800739175632352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2621800739175632352==--
