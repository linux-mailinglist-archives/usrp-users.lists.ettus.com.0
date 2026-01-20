Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60786D3C308
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jan 2026 10:09:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3FC938608E
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jan 2026 04:09:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768900195; bh=gbwAIYh2OU/elqt7XBtbAlm5ep+AznyPR4vizS5c3jQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=MwNBmCAmT2kIxsvnsAck+Dpppn/dCWX9S+6Rg6mAMZosq5Y5YuvO06iFdt4Phg2Li
	 7ht9w/pwWlZojnL6AiYc/T/XUcGfZKpxTrJtUD0ZkCDOsIb328MsFDu0phe4DanWEx
	 zAyJLElHMeEyLT1OBuDR6AoD7auQsphKcy9jNjjkeaB6DfuUNDM6BtshE76OtlUSqX
	 E+oUqQ1AednW9WzxZTmQyIYA/wFXogQKGtM8hhiiKCjrmo1f2+7t1QJP0pGn1BoSL+
	 fmgIDDtb2rMv3Z0a8At0MBlPUCv8nisCU9vGQw/aYA4NEky0ZEDFv/LcRoQbambo4z
	 ZViwPEQJHDAsg==
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id CF9FA386268
	for <usrp-users@lists.ettus.com>; Tue, 20 Jan 2026 04:08:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="kYwKHwr6";
	dkim-atps=neutral
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-88a2e3bd3cdso51952096d6.0
        for <usrp-users@lists.ettus.com>; Tue, 20 Jan 2026 01:08:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768900136; cv=none;
        d=google.com; s=arc-20240605;
        b=JcIl8npNPoAd2oaaKRK6U4Tf9V16i7O7Z0puUYrOCJuoAerAK/ube9bT/EFdaJwigF
         m/iYW95OzPglv0T2T2F/+uor96gomhGKLaUW8wdOROnHHAad2w4xsBAhsmyoP39bkqdS
         P78GdWyiEpXj0rdci7wZPJju/nrrpUpYRYbNX/noEUGyNbDdxX9BHz0Ufis1hW3x7ukU
         v3WQcDNQHk8C8lX49c+y82EJ8tykrhRfIdEgtQ2D4IZX3CZvFJjMkhM91Lj/O1VESN3E
         7pdz7kVwD+kT2chyz32hc13AeiE/AU9FN0BZN2sz7ZrbUG9xnoUbWtkjy5bYWU2u2lY3
         2v2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GKgPNGv7dF5zfcjxHm4x62hRWgK1F3FjfG9JyDc65J8=;
        fh=p7VlfDdZp+EpD6H9MeMQavN8IacX+oZG4K/LI1eE0ss=;
        b=ImfY1lFwDZRrJJD+I14bxb3ZlF8bYpAk4b7mc38tD0Q8mlZi3dwSppjEkRneBkjdsP
         d04i7Jg97X4WBQCxMjfFHA+aBUq03p5P3jJvD8qGRhrGJhxMCewNK9Dzak+Le0HrxYek
         LcC5ne2j5JsephsoNzvG6tWX5cwBuGkZynCzbHArtt2NfO+Lyr3anjwSUJ1FLjFzkDJh
         HE9pljrurVwK2i9KpAo9ymuoG6cIEXm2cm1S5XfCYDYEd+DIbEViFHIZAfzh7niDcBcB
         e11WFyEtpdWQLREh1xiVH47dj90tgiCbY2aZdI6MJCR5sXrjEi60TdhcjE8Kco68Z4yD
         wf3A==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1768900136; x=1769504936; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GKgPNGv7dF5zfcjxHm4x62hRWgK1F3FjfG9JyDc65J8=;
        b=kYwKHwr6GbbJVUSf5HDPXj1rtBJ2lc5boJlzgfFDaqkbPoCk5/OhCwxFCwVj897cIl
         8L8hIEVqk4xqS8fLvd0i/ua57bL2mAZltPKy1gRHXWBqIR1FL+6FXp88ChjXy6H6p6wQ
         Gl+HoeMk9rFFCI3kvQd6HH7fsnJa+ppHlvZzHiHNLr6Li0iaP3XWmbO0+VltjS6tJvbu
         pPRHY55FyTESK8gsbeTFuP1INrHVezQG+DySrLXW3ZoVdPR/ijTGrzTDtdCA6yZFJBo2
         oZzokCg2zSo+IFVF2RA2uXXLYO8FsRVp8Ny0E5Fi6QSVtpb1cfn66h1SjBUG2FTccL/W
         pAzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768900136; x=1769504936;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GKgPNGv7dF5zfcjxHm4x62hRWgK1F3FjfG9JyDc65J8=;
        b=taTBU1yfgXED/yKMvor87/H6k3PKY1zv/AXMX11wAB6lvIoBxQhZfGO21c5BRQ2Kgt
         slQFiNy2spMwhukv3jHY2rQBdaa2ukVbOwxT81t1N1LzLZSkJrPFVtEkC6KL5Cep1gCy
         5tw5qDwoN+F+3TJP/4ClLJ8DxDwzMBLOSjoDuiS8YGGuVLJKCmLBVgyT0UItW9R662yJ
         6vGj6CR4hl9ir0H/X367nBsdUoo7n3UAc0FndAnoBgoodmrAEJ5JfOU6so3377NBrJCx
         asH//CsH4tpOSdRSYYaJjf2oCti8jWuOU+gcSHzSsIiw8+IfXpujms9ak3TtoejZlAFK
         lg6w==
X-Gm-Message-State: AOJu0Ywg/mhi0sG+93ruXAMzIIm4KFAH3nks+ga5egsOeZVSI/VaPgJc
	ShYw92+pzhM/mmGCAjXDDxCPfRIzqQVD31VIhK8muXWSiHAV09O0cLE6Ux4sbffULHXokAaMKGY
	2yagF0yKqjzkBat1O5mY69+HVGN2/7UYsgmYqTjsXsLRthOJQdKZws7IbRg==
X-Gm-Gg: AZuq6aK8xQaFc+fLHzwjl/Xd0EYloukFroKLNUehfvjl5mD4z2GSkfqnYS6VVZHjvjx
	GmKsf7girQvbRNwBZtzEY5esTBcWlw+TwAfRlDCCbI/sJA3E2zHDgk9UXqBwxGSB/6VNP6NORFn
	XA3pjKtPbKZhGKooo1nc+vGSXNm4FuBd+n4kEUDmL/NikZWruyXgFGi/jZqPgOYyQqpXnSEa3cV
	pE2Ub3CNoUAzozQ7iRqG56jx3aEwD1wj0tjGy6o9hqMl97fJgYkUVM8yKinYUXNdrlHVMkkU5lt
	LQH/rZK0hDwZ3lTYiI0W2KeQag==
X-Received: by 2002:a05:6214:f28:b0:88a:2ed6:252 with SMTP id
 6a1803df08f44-89389f8586emr218193156d6.5.1768900136061; Tue, 20 Jan 2026
 01:08:56 -0800 (PST)
MIME-Version: 1.0
References: <CABQiKjyLQZqYX=R45sOzGgEz734g8p5siB000cd=R2L0P0zPUg@mail.gmail.com>
In-Reply-To: <CABQiKjyLQZqYX=R45sOzGgEz734g8p5siB000cd=R2L0P0zPUg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 20 Jan 2026 10:08:45 +0100
X-Gm-Features: AZwV_Qi2SWzZ1f9RldxyWx674-FIehwOUj_-Zr4bCmcQHQAdzm07lrusB5ZUPvE
Message-ID: <CAFOi1A5ykqB8vgS9dgxfOXWu8BzbiCSo5HO+HvjsLVg-wFOG0Q@mail.gmail.com>
To: P S Vishwanath Koushik <koushikpsvishwanath@gmail.com>
Message-ID-Hash: TLJBLCTDGVJI7JE5JJU33IKFCKLA7XBL
X-Message-ID-Hash: TLJBLCTDGVJI7JE5JJU33IKFCKLA7XBL
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP-2952R (X310) PCIe interface issue with UHD (built from OAI source)on Ubuntu 22.04
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TLJBLCTDGVJI7JE5JJU33IKFCKLA7XBL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5725268058589936855=="

--===============5725268058589936855==
Content-Type: multipart/alternative; boundary="00000000000040dcf60648ce287e"

--00000000000040dcf60648ce287e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Vishwanath,

can you please amend this bug report:
https://github.com/EttusResearch/uhd/issues/818 ...with your system details
so we can get a bigger picture of what's happening.

Thanks!

--Martin

On Sat, Jan 17, 2026 at 2:32=E2=80=AFPM P S Vishwanath Koushik <
koushikpsvishwanath@gmail.com> wrote:

> Hello community,
>
> I am seeking guidance regarding using *USRP-2952R (X310)* over *PCIe* on
> a Linux host, and I would appreciate any suggestions or known-good
> configurations.
>
> *System and software setup:*
>
>    -
>
>    Host OS: Ubuntu 22.04 LTS
>    -
>
>    USRP: NI USRP-2952R (X310), PCIe (RIO) interface
>    -
>
>    UHD: Built from source (UHD version bundled with / referenced by OAI
>    source tree)
>    -
>
>    NI Linux Device Drivers: *NI USRP 2025 Q2  driver linkj
>    <https://www.ni.com/en/support/downloads/drivers/download.ni-usrp.html=
?srsltid=3DAfmBOor6EEe0WKBK67bW6htIgwYHrSZHCqjQNjITK3N8gELTv-JB5AbO#565446>=
*
>    -
>
>    Installed NI packages:
>    -
>
>       ni-fpga-interface
>       -
>
>       ni-rio-mxie
>       -
>
>       ni-rseries
>       -
>
>       ni-hwcfg-utility
>       -
>
>       ni-usrp-rio
>
>
>
> *Use case:*
> I am trying to interface the USRP-2952R with an *OAI-based host machine*,
> using UHD over PCIe (RIO), not Ethernet.
>
> *Observed behavior:*
>
>    -
>
>    The device is detected correctly using uhd_find_devices
>    -
>
>    [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
>    UHD_4.8.0.HEAD-0-g308126a4
>    --------------------------------------------------
>    -- UHD Device 0
>    --------------------------------------------------
>    Device Address:
>        serial:
>        fpga: HG
>        name:
>        product: X310
>        resource: RIO0
>        type: x300
>
>    -
>
>    UHD finds and selects the correct FPGA image (usrp_x310_fpga_HG.lvbitx=
)
>    -
>
>    However, uhd_usrp_probe fails during RIO initialization with:
>
>    RuntimeError: x300_impl: Could not initialize RIO session.
>    Unknown error. (Error code -63150)
>
>    -
>
>    vishwanath@vishwanath:~$ sudo uhd_usrp_probe
>    [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.8.0.HE=
AD-0-g308126a4
>    [INFO] [X300] X300 initialization sequence...
>    [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
>    [INFO] [X300] Using LVBITX bitfile /usr/local/share/uhd/images/usrp_x3=
10_fpga_HG.lvbitx
>    Error: RuntimeError: x300_impl: Could not initialize RIO session. Unkn=
own error. (Error code -63150)
>
>
> This suggests the failure occurs after FPGA image selection, during NI-RI=
O
> session initialization.
>
> *Questions:*
>
>    1.
>
>    Is *NI Linux Device Drivers 2025 Q2* known to be compatible with UHD
>    (especially when UHD is built from OAI sources) for X310/USRP-2952R ov=
er
>    PCIe?
>    2.
>
>    Are there any *recommended UHD versions* or commits known to work
>    reliably with USRP-2952R + PCIe on Ubuntu 22.04?
>    3.
>
>    Has anyone successfully used *OAI with USRP-2952R over PCIe*, and if
>    so, could you share the software stack versions?
>    4.
>
>    Are there additional NI-RIO or kernel requirements that UHD depends on
>    for PCIe-based X310 devices?
>
> Any insights, known limitations, or recommended downgrade/upgrade paths
> would be very helpful.
>
> Thank you for your time and support.
>
> Regards,
> Vishwanath
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000040dcf60648ce287e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Vishwanath,</div><div><br></div><div>can you pleas=
e amend this bug report:=C2=A0<a href=3D"https://github.com/EttusResearch/u=
hd/issues/818">https://github.com/EttusResearch/uhd/issues/818</a> ...with =
your system details so we can get a bigger picture of what&#39;s happening.=
</div><div><br></div><div>Thanks!</div><div><br></div><div>--Martin</div></=
div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Sat, Jan 17, 2026 at 2:32=E2=80=AFPM P S Vishwanath =
Koushik &lt;<a href=3D"mailto:koushikpsvishwanath@gmail.com">koushikpsvishw=
anath@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><p>Hello community,</p><p>I am seeking guid=
ance regarding using <strong>USRP-2952R (X310)</strong> over <strong>PCIe</=
strong> on a Linux host, and I would appreciate any suggestions or known-go=
od configurations.</p><p><strong>System and software setup:</strong></p><ul=
><li><p>Host OS: Ubuntu 22.04 LTS</p></li><li><p>USRP: NI USRP-2952R (X310)=
, PCIe (RIO) interface</p></li><li><p>UHD: Built from source (UHD version b=
undled with / referenced by OAI source tree)</p></li><li><p>NI Linux Device=
 Drivers: <strong>NI USRP 2025 Q2=C2=A0<a href=3D"https://www.ni.com/en/sup=
port/downloads/drivers/download.ni-usrp.html?srsltid=3DAfmBOor6EEe0WKBK67bW=
6htIgwYHrSZHCqjQNjITK3N8gELTv-JB5AbO#565446" target=3D"_blank">=C2=A0driver=
 linkj</a></strong></p></li><li><p>Installed NI packages:</p><ul><li><p>ni-=
fpga-interface</p></li><li><p>ni-rio-mxie</p></li><li><p>ni-rseries</p></li=
><li><p>ni-hwcfg-utility</p></li><li><pre>ni-usrp-rio</pre><p><br></p></li>=
</ul></li></ul><p><strong>Use case:</strong><br>I am trying to interface th=
e USRP-2952R with an <strong>OAI-based host machine</strong>, using UHD ove=
r PCIe (RIO), not Ethernet.</p><p><strong>Observed behavior:</strong></p><u=
l><li><p>The device is detected correctly using <code>uhd_find_devices</cod=
e></p></li><li><p>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=
 UHD_4.8.0.HEAD-0-g308126a4<br>--------------------------------------------=
------<br>-- UHD Device 0<br>----------------------------------------------=
----<br>Device Address:<br>=C2=A0 =C2=A0 serial: <br>=C2=A0 =C2=A0 fpga: HG=
<br>=C2=A0 =C2=A0 name: <br>=C2=A0 =C2=A0 product: X310<br>=C2=A0 =C2=A0 re=
source: RIO0<br>=C2=A0 =C2=A0 type: x300<br><code><br></code></p></li><li><=
p>UHD finds and selects the correct FPGA image (<code>usrp_x310_fpga_HG.lvb=
itx</code>)</p></li><li><p>However, <code>uhd_usrp_probe</code> fails durin=
g RIO initialization with:</p><pre><code>RuntimeError: x300_impl: Could not=
 initialize RIO session.
Unknown error. (Error code -63150)</code></pre></li><li><pre>vishwanath@vis=
hwanath:~$ sudo uhd_usrp_probe<br>[INFO] [UHD] linux; GNU C++ version 11.4.=
0; Boost_107400; UHD_4.8.0.HEAD-0-g308126a4<br>[INFO] [X300] X300 initializ=
ation sequence...<br>[INFO] [X300] Connecting to niusrpriorpc at localhost:=
5444...<br>[INFO] [X300] Using LVBITX bitfile /usr/local/share/uhd/images/u=
srp_x310_fpga_HG.lvbitx<br>Error: RuntimeError: x300_impl: Could not initia=
lize RIO session. Unknown error. (Error code -63150)<br><code>
</code></pre></li></ul><p>This suggests the failure occurs after FPGA image=
 selection, during NI-RIO session initialization.</p><p><strong>Questions:<=
/strong></p><ol><li><p>Is <strong>NI Linux Device Drivers 2025 Q2</strong> =
known to be compatible with UHD (especially when UHD is built from OAI sour=
ces) for X310/USRP-2952R over PCIe?</p></li><li><p>Are there any <strong>re=
commended UHD versions</strong> or commits known to work reliably with USRP=
-2952R + PCIe on Ubuntu 22.04?</p></li><li><p>Has anyone successfully used =
<strong>OAI with USRP-2952R over PCIe</strong>, and if so, could you share =
the software stack versions?</p></li><li><p>Are there additional NI-RIO or =
kernel requirements that UHD depends on for PCIe-based X310 devices?</p></l=
i></ol><p>Any insights, known limitations, or recommended downgrade/upgrade=
 paths would be very helpful.</p><p>Thank you for your time and support.</p=
><p>Regards,<br>Vishwanath</p><br></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000040dcf60648ce287e--

--===============5725268058589936855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5725268058589936855==--
