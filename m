Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 422DF8D45A8
	for <lists+usrp-users@lfdr.de>; Thu, 30 May 2024 08:57:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E1922385673
	for <lists+usrp-users@lfdr.de>; Thu, 30 May 2024 02:56:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1717052218; bh=dr03wAtq+hWQndS/rUS3sFIttv2DOg0b7mWxrDET04U=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=K3t8E9V0WtuAYXIuVwPThJZhTgMh8uJ0qH/qwJyvHTsqAITEugKYuxd04TbTAanm0
	 ylk2Ekdiu+L7kNXkD2ILNVxuBZBktJ1YueinEjBcEmh1KLvzVvgMJj/q+4O1FMPB0N
	 GT7jmJlMCZnBFSNFX/9wsUBFcJSuZagPErsNLskujcDjqBYd0on8aNX/BkLHEAIHmf
	 kBCFXwZ+JHpCsZdV0hYIOO4cmuuwD635F/ZqoAbxuNGk92liOb7/Lkq5spOpj1sdFW
	 ChPoadYI7YSIhcqkQrYXDTiZukuF7m+ErjMfxp17yOcXtX/aXU7TrdbcI/NtWaYCIt
	 9UaSgmuWed9DA==
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 3E02A385673
	for <usrp-users@lists.ettus.com>; Thu, 30 May 2024 02:56:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="f8LYeLc/";
	dkim-atps=neutral
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-4e97a672dadso227437e0c.2
        for <usrp-users@lists.ettus.com>; Wed, 29 May 2024 23:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google; t=1717052171; x=1717656971; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WiHBrqlkmLQdtVguww2+x9/0AQ1b/bbuWvDfPumull4=;
        b=f8LYeLc/acJb2ZmgUyj4XKRhuFMRWhqc9VMmzxd0RIg0rDUB7tdUQ/9J1Z8LZHr4wq
         GnYBnw7Va2hYgjfE1i0eIVCU/v1+XG94DVfclgNq741zIRk0ALNENOr0KorFgm5dYE2J
         IG8DlcYWn//tOIiI2m2qo6kZEIk56SQuON+6dh9D+AyU+OL4uaTd7G5hNQYQzWVfUKOQ
         kWOnNKBtNPJTFRfNqHlsWUZMd/lUFLA2EoF+ujFdqamZL0FDursNRC19hnBanZaFkHmd
         R0fFBSRuJY0Co+80d3MPfGc8It6VPqMk5b6P+P9vzsQfxpfJTZAPpDTsmhIvWm2JyO/F
         LF6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717052171; x=1717656971;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WiHBrqlkmLQdtVguww2+x9/0AQ1b/bbuWvDfPumull4=;
        b=R1nyLeVQWE8MqVsiA3q4tozK11QQxct1Kx7hNGlsLd2yhFG9oobgiq9L45kliuRCrP
         sdCX4u8ltbeLbVk7Ppd41uWeYVjx279YHDbxHVRIsyvQbS40ePZi87uOxdEINmdJ9uG/
         K8qxaHKz8W6hf3xFkIfCMe0EWRhfy5PtdKrkNJnmIz2Ow5ckyyra1Pn6IGzWjrBYg1Dm
         TvGbkb19IuA7WqnF+SWWHJXf9AM/LLuxUYZLgqXK0hlkD4/GryevJv+TzrCDKQtY+ygR
         /LBi0WXzu8mh8vrY58ozNNAZdKriZ3B5OwF+eJTGNtyB8H8WJtqjljr9iXEtSw+p8Zpo
         Pe7g==
X-Gm-Message-State: AOJu0YxGc1LuxAbMP410rRtOguYs2H5+vvma8/De3lMCStl+5cyoooF9
	pOnNFAPM202gVZ6MURcs1I5yUbunpiJZbFmek/TkGsdMaRJZqAmjxq9xpfgF5Xa0nl9w+92x/tg
	hV0tNopkBmNXpTiD7bQJZtYp7SOHCn90UJW8K
X-Google-Smtp-Source: AGHT+IGU8qTnUWtB61IweyUIItJWdZ6bgGtJsArNcTEy37cq4puFKhBmmj6Sxx+jHdDRl7dNBrSEiNn8xV2Cdk2W0GU=
X-Received: by 2002:a05:6122:3091:b0:4d3:3952:1d1a with SMTP id
 71dfb90a1353d-4eaf219fdffmr1476249e0c.4.1717052169861; Wed, 29 May 2024
 23:56:09 -0700 (PDT)
MIME-Version: 1.0
References: <0a7f729d226c41f6a8c95d8077852ea1@hhi.fraunhofer.de>
In-Reply-To: <0a7f729d226c41f6a8c95d8077852ea1@hhi.fraunhofer.de>
Date: Thu, 30 May 2024 02:55:59 -0400
Message-ID: <CANvw1+RF+MvhZeaEYjyiNTC_=vB4aAeUQ3PcT4omt49b43ymiw@mail.gmail.com>
To: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>
Message-ID-Hash: M27QV3CFLBIBKCZOHTX7XRPVPBH5UTS7
X-Message-ID-Hash: M27QV3CFLBIBKCZOHTX7XRPVPBH5UTS7
X-MailFrom: agurses@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building UHD From Source With Enabled DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M27QV3CFLBIBKCZOHTX7XRPVPBH5UTS7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Anil Gurses via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anil Gurses <agurses@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============6062194021756478382=="

--===============6062194021756478382==
Content-Type: multipart/alternative; boundary="000000000000a555670619a65c3e"

--000000000000a555670619a65c3e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Altug,

This issue might be related cmake version. Which version of cmake you are
using?

From the uhd/host/cmake/Modules/FindDPDK.cmake file,

    set(DPDK_VERSION "${DPDK_VERSION_MAJOR}.${DPDK_VERSION_MINOR}"
PARENT_SCOPE)

Somehow, your _MAJOR and _MINOR variables are not set. You should check
whether the rte_version.h file is reachable by printing DPDK_VERSION_STR
variable located at uhd/host/cmake/Modules/FindDPDK.cmake:24 . If it's
reachable, please check the REGEX can parse the expression set in lines 26
and 29.

Please let me know if you have any questions.

PS. Your email was flagged as spam, that's probably why nobody has seen it
until now. Fyi


A.

On Fri, May 17, 2024 at 2:13=E2=80=AFPM Kaya, Altug <altug.kaya@hhi.fraunho=
fer.de>
wrote:

> Dear USRP Users Mailing List Members,
>
>
>
> I am following the guide called =E2=80=9CGetting Started with DPDK and UH=
D -
> Ettus Knowledge Base
> <https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD#Enable_hugepages>=
=E2=80=9D
> in order to run applications on USRP X440 with DPDK. As it is recommended=
,
> I installed DPDK via the system-provided installer: sudo apt install dpdk
> dpdk-dev . After the verification with dpdk-proc-info -v, the RTE Version
> is shown as =E2=80=98DPDK 21.11.6=E2=80=99
>
>
>
> Then, I cloned the UHD v4.6.0.0 to my home directory in order to build UH=
D
> from source. However, when I run the cmake ../ command the DPDK was
> listed under the =E2=80=9CUHD disabled components=E2=80=9D and there were=
 no errors.
> Nevertheless, there were some messages related with DPDK:
>
>
>
> CMake Warning (dev) at
> /usr/share/cmake-3.22/Modules/FindPackageHandleStandardArgs.cmake:477
> (message):
>
> =E2=80=98find_package()=E2=80=99 specify a version range but the module D=
PDK does not
>
> support this capability. Only the lower endpoint of the range will be
>
> used.
>
>      Call Stack (most recent call first):
>
>            cmake/Modules/FindDPDK.cmake:86
> (find_package_hangle_standard_args)
>
>            lib/CMakeLists.txt:63 (find_package)
>
>       This warning is for project developers. Use -Wno-dev to suppress it=
.
>
>
>
> -- Could NOT find DPDK: Found unsuitable version =E2=80=9C.=E2=80=9D, but=
 required is at
> least =E2=80=9C18.11=E2=80=9D (found /usr/include/dpdk;/usr/include/x86_6=
4-linux-gnu/dpdk)
>
>
>
> I checked uhd/host/lib/FindDPDK.cmake and edited the line 63 from find_pa=
ckage(DPDK
> 18.11=E2=80=A621.11) to find_package(DPDK 21.11.6). Then the warning mess=
ages
> disappeared in the output of cmake ../ and only the message below remains=
:
>
>
>
> -- Could NOT find DPDK: Found unsuitable version =E2=80=9C.=E2=80=9D, but=
 required is at
> least =E2=80=9C21.11.6=E2=80=9D (found /usr/include/dpdk;/usr/include/x86=
_64-linux-gnu/dpdk)
>
>
>
> I also tried to edit usr/include/dpdk/rte_version.h and
> /usr/include/x86_64-linux-gnu/dpdk/rte_config.h in order to get around of
> the version =E2=80=9C.=E2=80=9D message. However, I failed.
>
>
>
> What should I do to see the DPDK under =E2=80=9CUHD enabled components=E2=
=80=9D after
> writing the build files with cmake ../   ?
>
>
>
> Best Regards,
>
> Altug KAYA
>
>
>
> P.S. Please find the specifications of my workstation down below:
>
>    - OS: Ubuntu 22.04.4 LTS (with Linux 5.15.0-107 kernel)
>    - MBO: ASUS Pro WS WRX90E-SAGE SE
>    - CPU: AMD Ryzen Threadripper PRO 7975WX
>    - RAM: 8x32GB RDIMM Samsung DDR5-4800
>    - SSD:2TB Samsung 990 Pro PCIe Gen4
>    - Network Card: Mellanox MCX516A-CDAT ConnectX-5 Ex (PCIe 4.0 x16)
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a555670619a65c3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Altug,</div><div><br></div><div>This issue might b=
e related cmake version. Which version of cmake you are using?<br></div><di=
v><br>From the=C2=A0uhd/host/cmake/Modules/FindDPDK.cmake file,</div><div><=
br></div><div>=C2=A0 =C2=A0 set(DPDK_VERSION &quot;${DPDK_VERSION_MAJOR}.${=
DPDK_VERSION_MINOR}&quot; PARENT_SCOPE)</div><div><br></div><div>Somehow, y=
our _MAJOR and _MINOR variables are not set. You should check whether the r=
te_version.h file is reachable by printing DPDK_VERSION_STR variable locate=
d at uhd/host/cmake/Modules/FindDPDK.cmake:24 . If it&#39;s reachable, plea=
se check the REGEX can parse the expression set in lines 26 and 29. <br></d=
iv><div><br></div><div>Please let me know if you have any questions. <br></=
div><div><br></div><div>PS. Your email was flagged as spam, that&#39;s prob=
ably why nobody has seen it until now. Fyi<br></div><div><div><br></div><di=
v><br></div><div>A.<br></div></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Fri, May 17, 2024 at 2:13=E2=80=AFPM =
Kaya, Altug &lt;<a href=3D"mailto:altug.kaya@hhi.fraunhofer.de">altug.kaya@=
hhi.fraunhofer.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div class=3D"msg2147470507459323628">





<div lang=3D"EN-US">
<div class=3D"m_2147470507459323628WordSection1">
<p class=3D"MsoNormal">Dear USRP Users Mailing List Members,<u></u><u></u><=
/p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am following the guide called =E2=80=9C<a href=3D"=
https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD#Enable_hugepages" ta=
rget=3D"_blank">Getting Started with DPDK and UHD - Ettus Knowledge Base</a=
>=E2=80=9D in order to run applications on USRP X440 with DPDK. As it
 is recommended, I installed DPDK via the system-provided installer: <span =
style=3D"font-family:&quot;Courier New&quot;">
sudo apt install dpdk dpdk-dev</span> . After the verification with <span s=
tyle=3D"font-family:&quot;Courier New&quot;">
dpdk-proc-info -v</span>, the RTE Version is shown as =E2=80=98DPDK 21.11.6=
=E2=80=99<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Then, I cloned the UHD v4.6.0.0 to my home directory=
 in order to build UHD from source. However, when I run the
<span style=3D"font-family:&quot;Courier New&quot;">cmake ../ </span>comman=
d the DPDK was listed under the =E2=80=9CUHD disabled components=E2=80=9D a=
nd there were no errors. Nevertheless, there were some messages related wit=
h DPDK:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:0.5in"><span style=3D"font-fami=
ly:&quot;Courier New&quot;">CMake Warning (dev) at /usr/share/cmake-3.22/Mo=
dules/FindPackageHandleStandardArgs.cmake:477 (message):<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal" style=3D"margin-left:1in"><span style=3D"font-family=
:&quot;Courier New&quot;">=E2=80=98find_package()=E2=80=99 specify a versio=
n range but the module DPDK does not
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:1in"><span style=3D"font-family=
:&quot;Courier New&quot;">support this capability. Only the lower endpoint =
of the range will be
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:1in"><span style=3D"font-family=
:&quot;Courier New&quot;">used.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0 Call Stack (most recent call first):<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmake/Modules/=
FindDPDK.cmake:86 (find_package_hangle_standard_args)<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 lib/CMakeLists=
.txt:63 (find_package)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 This warning is for project developers. Use =
-Wno-dev to suppress it.<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:0.5in"><span style=3D"font-fami=
ly:&quot;Courier New&quot;"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:0.5in"><span style=3D"font-fami=
ly:&quot;Courier New&quot;">-- Could NOT find DPDK: Found unsuitable versio=
n =E2=80=9C.=E2=80=9D, but required is at least =E2=80=9C18.11=E2=80=9D (fo=
und /usr/include/dpdk;/usr/include/x86_64-linux-gnu/dpdk)<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I checked uhd/host/lib/FindDPDK.cmake and edited the=
 line 63 from
<span style=3D"font-family:&quot;Courier New&quot;">find_package(DPDK 18.11=
=E2=80=A621.11)</span> to <span style=3D"font-family:&quot;Courier New&quot=
;">
find_package(DPDK 21.11.6)</span>. Then the warning messages disappeared in=
 the output of
<span style=3D"font-family:&quot;Courier New&quot;">cmake ../</span> and on=
ly the message below remains:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:0.5in"><span style=3D"font-fami=
ly:&quot;Courier New&quot;">-- Could NOT find DPDK: Found unsuitable versio=
n =E2=80=9C.=E2=80=9D, but required is at least =E2=80=9C21.11.6=E2=80=9D (=
found /usr/include/dpdk;/usr/include/x86_64-linux-gnu/dpdk)<u></u><u></u></=
span></p>
<p class=3D"MsoNormal" style=3D"text-indent:0.5in"><span style=3D"font-fami=
ly:&quot;Courier New&quot;"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal">I also tried to edit usr/include/dpdk/rte_version.h =
and /usr/include/x86_64-linux-gnu/dpdk/rte_config.h in order to get around =
of the
<span style=3D"font-family:&quot;Courier New&quot;">version =E2=80=9C.=E2=
=80=9D</span> message. However, I failed.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">What should I do to see the DPDK under =E2=80=9CUHD =
enabled components=E2=80=9D after writing the build files with
<span style=3D"font-family:&quot;Courier New&quot;">cmake ../</span>=C2=A0=
=C2=A0 ?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Best Regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Altug KAYA<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">P.S. Please find the specifications of my workstatio=
n down below:<u></u><u></u></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"m_2147470507459323628MsoListParagraph" style=3D"margin-left:0i=
n">OS: Ubuntu 22.04.4 LTS (with Linux 5.15.0-107 kernel)<u></u><u></u></li>=
<li class=3D"m_2147470507459323628MsoListParagraph" style=3D"margin-left:0i=
n">MBO: ASUS Pro WS WRX90E-SAGE SE<u></u><u></u></li><li class=3D"m_2147470=
507459323628MsoListParagraph" style=3D"margin-left:0in">CPU: AMD Ryzen Thre=
adripper PRO 7975WX<u></u><u></u></li><li class=3D"m_2147470507459323628Mso=
ListParagraph" style=3D"margin-left:0in"><span lang=3D"DE">RAM: 8x32GB RDIM=
M Samsung DDR5-4800<u></u><u></u></span></li><li class=3D"m_214747050745932=
3628MsoListParagraph" style=3D"margin-left:0in"><span lang=3D"DE">SSD:2TB S=
amsung 990 Pro PCIe Gen4<u></u><u></u></span></li><li class=3D"m_2147470507=
459323628MsoListParagraph" style=3D"margin-left:0in">Network Card: Mellanox=
 MCX516A-CDAT ConnectX-5 Ex (PCIe 4.0 x16)<u></u><u></u></li></ul>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000a555670619a65c3e--

--===============6062194021756478382==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6062194021756478382==--
