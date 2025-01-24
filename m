Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C98A1B49E
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 12:19:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B83B13858E3
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2025 06:19:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737717594; bh=77jPsiO+uczNu+BepKSoPznINu6e4igpz1ASv75TVQQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=v8EKrvE2+rjTkJJNRJ5pNfveq7Tf+ssAwgcKIgewr1KhehulMLOkL/LvoKSqprUPR
	 ZxDe1DPadn9mpk+oQr6ewKoaef4dLYAPipSyNSfUzkGxB23dLYfGkXhzNEkMC0A1Mp
	 FrWaYKLXvwLNPmmR4z3OTTBDc64Fq8eVGz3ZhH8Ge7LuoqL+JcJDBa97fpkFxmtJj7
	 JOSCBbJVK+mNYJqh1HEU+SOjBaOUQ6+7jT1RotLzlJgLIlYu1lTHtazNguHh4Ra3iN
	 5d5T1jSZ2qJtcf4XilZKn7YlHsRNh7eJ89rlQtnDEI301eZXqP1/wnOw1NhNSim3kk
	 eZSK4aQMQGYCw==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 35A47381339
	for <usrp-users@lists.ettus.com>; Fri, 24 Jan 2025 06:19:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="iUIuDuDS";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5dc052246e3so4220576a12.2
        for <usrp-users@lists.ettus.com>; Fri, 24 Jan 2025 03:19:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1737717552; x=1738322352; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Z5c+knR9yYL30KR2KXMBbskAf8QQtvxUiiPXN+pCni0=;
        b=iUIuDuDSS4wnhes1EB5GAWwRJ2UCpIbkejpNsU/4qh5m3GXOJ4clLcT1GkymvqvOBw
         dgiuBQO0Z/4s8qFpaRgTPmz7u73JCc/mqBcfS6M2X6sI9DDZ2zlqTDvhVNvNXi0adF3U
         RsjJh88UEMiQNG/sc0SYi43KJ/MFT7/V6rnzvpznSf5gsjfZr4hDCYthxmyz2O0ui4PD
         WUHZIhnIsHa09qvBGfcIS3rRNVT+dBiQuV1038iegOpRuZLDGcD6F1JPUNaZhHVarP/N
         jXEiGOYGSUUBreRVXTonG1HtNw64H9NuSqo+i+vRrqG1gM0JUfDGVX0QHCPFkK88KwtM
         rAyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737717552; x=1738322352;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z5c+knR9yYL30KR2KXMBbskAf8QQtvxUiiPXN+pCni0=;
        b=FcYE1ONCmYkS4YZ9Ohz2IMk30pzN+ahSGuVzQ3zBZJqtx6WiYN0jLZAHt3hgEC7t2p
         OC7xt12FIc6LxTVRCPuv+UK4baW4zAtOcxr4MTeovH+wcixmG6GdlU4L9eILiH3o13Hx
         LxlsFZ9om55HiwQJwJlwXAkzx21nslCzs2+OlCsJSn6S/JC7jOetZVQgZtYIPmWXEpkh
         Lut5oUoRXC3+k7xczjhAhZxCQLkN/ZiqJzZjsRKLp4I/eaheuVbTkPCNXXs3iyrt+I+Z
         5O6rR5S/ijYwXYBlRIkO7BCV3mf8qc1Axw2QOBz9RTz2kFKyCZR0BWA60olZMB6qqjWj
         iGUg==
X-Forwarded-Encrypted: i=1; AJvYcCUDxbttyN44ddPxN7T3aaKmpig9j7o7KaVhEvRRrHzt+WyYMTrK5rU7vRWS3+toFiHoh3zIqT54vSIQ@lists.ettus.com
X-Gm-Message-State: AOJu0Yy3S9y4Fgbaan3rvYaum8poVMxbZeKi7kDYUpvO9ejXGY7Vkn44
	rBbtYxR+rYvPq47GdYtIV9/vQYq68zy1gTBbGoglAhbPQfolA9omIN7NwjjMskzwC6/vQx29XQ9
	diOx2M68QPunst2fX/LJBLWR38EyDyKR00lavod70
X-Gm-Gg: ASbGncsz69Rh2ZQ3C9qI9Fl6aNNk5xRTDf+ayF/PrcCkcIoDgfbKfMhpRP8EkYmoH7V
	hTPhqcRvAt4/Or37uM7wavim0XFJNTz/3GjeEjewVurgRDwa6UbUgBB8Ke1gY
X-Google-Smtp-Source: AGHT+IHRYwUFmGwKdscJ/jm4F1C0/rOnbYMcNEMABbvUY9F/DH2NaKlS/BxSC6Sys1H4VhaYGLjWra8771jo0enBYNo=
X-Received: by 2002:a05:6402:2346:b0:5dc:1fab:f63c with SMTP id
 4fb4d7f45d1cf-5dc1fabfe0cmr407260a12.9.1737717551977; Fri, 24 Jan 2025
 03:19:11 -0800 (PST)
MIME-Version: 1.0
References: <a2248846c3ab40e9b6f0c270dd50563e@h-da.de> <39a63f67-3244-45b4-a318-6df2b30abebc@gmail.com>
 <a82baa39532e4545a88e3eb828100f8e@h-da.de>
In-Reply-To: <a82baa39532e4545a88e3eb828100f8e@h-da.de>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 24 Jan 2025 12:19:00 +0100
X-Gm-Features: AWEUYZkxhQw5Y573VMYtB8eWbXVJ4Ubib1VwTNZm3F1i_PLM93rrarRPVioGB5M
Message-ID: <CAFOi1A5K0wHVMRoeO3B7RL5DgoOsmw_96C7y_L8zz+RBo1SDpA@mail.gmail.com>
To: "Heinz, Dominik" <dominik.heinz@h-da.de>
Message-ID-Hash: HMQDE7HFEN3MBYILMKOYFXUOIGI3LRSE
X-Message-ID-Hash: HMQDE7HFEN3MBYILMKOYFXUOIGI3LRSE
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERN] Re: X310 RIO Session Initialization Failure (Error code -63150)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HMQDE7HFEN3MBYILMKOYFXUOIGI3LRSE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3887831796340947221=="

--===============3887831796340947221==
Content-Type: multipart/alternative; boundary="00000000000067f415062c71e5a3"

--00000000000067f415062c71e5a3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dominik,

can you provide as much info as you can here:
https://github.com/EttusResearch/uhd/issues/818?

Like Marcus said, the PCIe interface is not used a lot (except by LabView
users), so if you can use 10 GbE instead I recommend doing that (that also
allows you to do 2x200 Msps streaming, if you have two ports).

--M

On Wed, Jan 22, 2025 at 2:58=E2=80=AFPM Heinz, Dominik <dominik.heinz@h-da.=
de>
wrote:

> I followed the steps in the guide you linked, - however, I still have the
> issue.
>
> The uhd drivers are installed, and the niuspriorpc service is running.
> However, I still the the RIO session initialization failure.
>
>
> Anything else I could try? I still don't understand what is the cause for
> this.
> ------------------------------
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Tuesday, January 21, 2025 8:32:39 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [EXTERN] [USRP-users] Re: X310 RIO Session Initialization
> Failure (Error code -63150)
>
> On 21/01/2025 09:26, Heinz, Dominik wrote:
>
> I'm experiencing an initialization issue with my Ettus X310 USRP device.
>
> My setup consists of an Ettus X310 connected through a PCIe Card using a
> Molex cable to my Linux machine.
>
> I'm running Ubuntu with kernel version 6.8.0-51-generic and have installe=
d
> all the necessary UHD packages on the system.
>
>
> The X310 is properly detected when running uhd_find_devices, but
> attempting to probe the device with uhd_usrp_probe results in a RIO
> session initialization error.
> I attached the error output below.
> What is causing this RIO session initialization failure and how can it be
> resolved?
>
> gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$ uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
> UHD_4.7.0.0-0ubuntu1~jammy1
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial:
>     fpga: HG
>     name:
>     product: X310
>     resource: RIO0
>     type: x300
>
> gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$ uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
> UHD_4.7.0.0-0ubuntu1~jammy1
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
> [INFO] [X300] Using LVBITX bitfile
> /usr/share/uhd/images/usrp_x310_fpga_HG.lvbitx
> Error: RuntimeError: x300_impl: Could not initialize RIO session. Unknown
> error. (Error code -63150)
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> The procedures for making this work are here:
>
> https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000067f415062c71e5a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dominik,</div><div><br></div><div>can you provide as =
much info as you can here: <a href=3D"https://github.com/EttusResearch/uhd/=
issues/818">https://github.com/EttusResearch/uhd/issues/818</a>?</div><div>=
<br></div><div>Like Marcus said, the PCIe interface is not used a lot (exce=
pt by LabView users), so if you can use 10 GbE instead I recommend doing th=
at (that also allows you to do 2x200 Msps streaming, if you have two ports)=
.</div><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote=
 gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 2=
2, 2025 at 2:58=E2=80=AFPM Heinz, Dominik &lt;<a href=3D"mailto:dominik.hei=
nz@h-da.de">dominik.heinz@h-da.de</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><u></u>




<div>

<div id=3D"m_-810124041727098465divtagdefaultwrapper" style=3D"font-size:12=
pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p>I followed the steps in the guide you linked, - however, I still have th=
e issue.</p>
<p>The uhd drivers are installed, and the niuspriorpc service is running. H=
owever, I still the the RIO session initialization failure.</p>
<p><br>
</p>
<p>Anything else I could try? I still don&#39;t understand what is the caus=
e for this.<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-810124041727098465divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> =
Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_b=
lank">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, January 21, 2025 8:32:39 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [EXTERN] [USRP-users] Re: X310 RIO Session Initialization F=
ailure (Error code -63150)</font>
<div>=C2=A0</div>
</div>
<div>
<div>On 21/01/2025 09:26, Heinz, Dominik wrote:<br>
</div>
<blockquote type=3D"cite">
<div id=3D"m_-810124041727098465divtagdefaultwrapper" style=3D"font-size:12=
pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p><span>I&#39;m experiencing an initialization issue with my Ettus X310 US=
RP device.</span></p>
<p><span><span>My setup consists of an Ettus X310 connected through a PCIe =
Card using a Molex cable to my Linux machine.
<br>
</span></span></p>
<p><span><span>I&#39;m running Ubuntu with kernel version 6.8.0-51-generic =
and have installed all the necessary UHD packages on the system.</span></sp=
an></p>
<p><span><span><br>
</span></span></p>
<p><span><span></span></span></p>
<div>The X310 is properly detected when running <code>
uhd_find_devices</code>, but attempting to probe the device with <code>
uhd_usrp_probe</code> results in a RIO session initialization error.</div>
<div>I attached the error output below.</div>
<div>What is causing this RIO session initialization failure and how can it=
 be resolved?</div>
<div><br>
</div>
<div>
<div><span style=3D"font-family:Consolas,Courier,monospace">gnb@xgoss-host:=
~/srsRAN_Project/build4ac5300/apps/gnb$ uhd_find_devices
</span><br>
<span style=3D"font-family:Consolas,Courier,monospace">[INFO] [UHD] linux; =
GNU C++ version 11.4.0; Boost_107400; UHD_4.7.0.0-0ubuntu1~jammy1</span><br=
>
<span style=3D"font-family:Consolas,Courier,monospace">--------------------=
------------------------------</span><br>
<span style=3D"font-family:Consolas,Courier,monospace">-- UHD Device 0</spa=
n><br>
<span style=3D"font-family:Consolas,Courier,monospace">--------------------=
------------------------------</span><br>
<span style=3D"font-family:Consolas,Courier,monospace">Device Address:</spa=
n><br>
<span style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 s=
erial: </span><br>
<span style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 f=
pga: HG</span><br>
<span style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 n=
ame: </span><br>
<span style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 p=
roduct: X310</span><br>
<span style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 r=
esource: RIO0</span><br>
<span style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 t=
ype: x300</span></div>
<div><br>
<span style=3D"font-family:Consolas,Courier,monospace">gnb@xgoss-host:~/srs=
RAN_Project/build4ac5300/apps/gnb$ uhd_usrp_probe
</span><br>
<span style=3D"font-family:Consolas,Courier,monospace">[INFO] [UHD] linux; =
GNU C++ version 11.4.0; Boost_107400; UHD_4.7.0.0-0ubuntu1~jammy1</span><br=
>
<span style=3D"font-family:Consolas,Courier,monospace">[INFO] [X300] X300 i=
nitialization sequence...</span><br>
<span style=3D"font-family:Consolas,Courier,monospace">[INFO] [X300] Connec=
ting to niusrpriorpc at localhost:5444...</span><br>
<span style=3D"font-family:Consolas,Courier,monospace">[INFO] [X300] Using =
LVBITX bitfile /usr/share/uhd/images/usrp_x310_fpga_HG.lvbitx</span><br>
<span style=3D"font-family:Consolas,Courier,monospace">Error: RuntimeError:=
 x300_impl: Could not initialize RIO session. Unknown error. (Error code -6=
3150)</span></div>
<br>
</div>
<br>
</div>
<br>
<fieldset></fieldset>
<pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
</blockquote>
The procedures for making this work are here:<br>
<br>
<a href=3D"https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie"=
 target=3D"_blank">https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_=
hw_pcie</a><br>
<br>
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000067f415062c71e5a3--

--===============3887831796340947221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3887831796340947221==--
