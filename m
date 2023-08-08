Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 637E5773ABE
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 16:37:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16A39384767
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 10:37:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691505454; bh=D2/u4r8AraOrUQj28LPkvKSu7nhEGLbShCXcHyuCNJ8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gqnBiR7n8v7VMqi6XgsPD+TX05lembuvqAklRVPz12vX6hSjCVx7qmu1lHX2kEESb
	 etjCbEdR9b43GMGvZ8xQIdQZwhTBp+X+ZzO+MZ8knEp07CKk7BefFusiHNZfsr91wq
	 FbdfgQG8Ihov5fDjVlsru3mizlHymwUpk+1/f4H1TGSEvCohR1fbOiJhablh4wAczI
	 KF/5YUEuOIiHcWrvfiHw4dqSMaXz9VAB8fc/TX+J1LKhi5921VtLp3d5QdyzMeEGQI
	 UYqOEzh4Aj967/kZX0OxEKK4moJsgCfYuS2PdECBz9WHhQSCgsOt9QXQcjbjy+790X
	 gkTOYr1uEpg6g==
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 67666380B50
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 10:37:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cSWjfW9G";
	dkim-atps=neutral
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-6bcae8c4072so3825247a34.1
        for <usrp-users@lists.ettus.com>; Tue, 08 Aug 2023 07:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691505438; x=1692110238;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mpvEQTz9lauznsGukGjahzhenlRXc45KkULug1dLUS4=;
        b=cSWjfW9G6YhXLeBks19L9l5Ajs4A5b7or/WMHbsTWxyMEcidgSITbum6FB9tJFhqHk
         9rhiQlx2cgNLIM4o0QkUulkCHGQ2rdfsf6QSq+Kph7u1KuZsIgDoQR9VkPKUGmjrKyk6
         z3x/b+24jJymNI3w1pPOmZlWVWo+oYdSnznVGCCb4vbZNpyXEgplljugQgmXnum7O/AH
         wA0Zc8Gb2iOcrjG+i9ZxNUZ8SEm4cRnh0ALGwGtmEHTnDxUw8jE+mQVpZkQHuDZMFGRS
         YWERfV04+WKjailxqrKyJUdlUAFNv9xA2QZJCGmNWIoDvU/MJD/+iW8Q5eNNm13iRSNi
         bFng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691505438; x=1692110238;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mpvEQTz9lauznsGukGjahzhenlRXc45KkULug1dLUS4=;
        b=NpwbxrUsGqLLpdInCAvak6EBwB3Qp5VTF4In+oWhdRwgVbPCoumfcShFrK/4dL5Xhz
         KM48H6HzugQxvzh4JuSmd+2WhiLcstT7KLNBjaZch2BAB144FrCbaxinuSWB28SbsqxW
         BO6jDKr00RxtMGkh6Im3o5P1htLLNaUWYxHKDHFvILhSBcZNZ3xGQJyRFXJMO2j1tfNT
         +NhX4E+AeL7OS022ude0uHWaTAjSRfKLWJ4hjT2ZnrDcqreGjXYZ2NIja7tzGnkE5lYr
         SYlbVybg77xHyowEVoNmek/sySGe0uFrqsfHygWQKBqa6K+2EWnskQaFOv8gCVcb/ZbD
         6rjg==
X-Gm-Message-State: AOJu0YwNIKlFcecWpLQWP6w+UI+k5VMze5h1TggE8eahSsSUigU7KJHR
	0asYVsLsBfJ3IW/4AuQDri9hrRODo0A=
X-Google-Smtp-Source: AGHT+IHVlHXvH6Qhc4xiVPb7gQwRh0AJrAI6rmT70m8F4jGLbVVjb/aaOLHiUWR9Tt3NhajlShgcnw==
X-Received: by 2002:a05:6358:7247:b0:13a:2b5c:84b4 with SMTP id i7-20020a056358724700b0013a2b5c84b4mr2001790rwa.4.1691505438214;
        Tue, 08 Aug 2023 07:37:18 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id p11-20020a0c9a0b000000b0063d30c10f1esm3742028qvd.70.2023.08.08.07.37.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 07:37:17 -0700 (PDT)
Message-ID: <b6bbe756-529c-742c-516f-a67e134b5a79@gmail.com>
Date: Tue, 8 Aug 2023 10:37:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <44131bcc179c44f8975efeb8097fb30c@iis.fraunhofer.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <44131bcc179c44f8975efeb8097fb30c@iis.fraunhofer.de>
Message-ID-Hash: SF47A3F62F7XA4IT7XCIPVCKNGH2RNLR
X-Message-ID-Hash: SF47A3F62F7XA4IT7XCIPVCKNGH2RNLR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 uhd_image_loader: two errors
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SF47A3F62F7XA4IT7XCIPVCKNGH2RNLR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6798451488528799748=="

This is a multi-part message in MIME format.
--===============6798451488528799748==
Content-Type: multipart/alternative;
 boundary="------------5hKvtpKt64JjdmLGV0LhQm5t"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5hKvtpKt64JjdmLGV0LhQm5t
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/08/2023 10:29, Bachmaier, Luca wrote:
>
> Hi all,
>
> I=E2=80=99m currently building an image for the USRP N310 and while usi=
ng=20
> uhd_image_loader I ran into the following error (see below for entire=20
> output):
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 [INFO] [MPM.PeriphManager] Installing component `dts'
>
> [ERROR] [UHD] An unexpected exception was caught in a task loop.The=20
> task loop will now exit, things may not work.rpc::timeout: Timeout of=20
> 10000ms while calling RPC function 'get_log_buf'
>
> After this happened, the RJ45 connection with the USRP seems to have=20
> stopped working. Running uhd_usrp_find_devices can=E2=80=99t find any d=
evices.=20
> However I can still log in to the USRP over the Console JTAG interface=20
> through screen. When calling =E2=80=9Cip a=E2=80=9D on my host device a=
nd the USRP the=20
> Ethernet interfaces seem to be down, even after rebooting the USRP.
>
> When I tried executing uhd_image_loader again I received this error:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 [ERROR] [MPMD IMAGE LOADER] mpmd_image_loader only=20
> supports a single device.
>
> Unfortunately I wasn=E2=80=99t able to find a lot of information about =
these=20
> errors online or in this mailing list. I=E2=80=99d be happy to hear any=
 input=20
> about both of these errors.
>
> Thank you and regards
>
> Luca
>
> Full ouput:
>
> $ uhd_image_loader --args "type=3Dn3xx,addr=3D192.168.10.2" --fpga-path=
=20
> ./build/usrp_n310_fpga_XG.bit
>
> [INFO] [UHD] linux; GNU C++ version 12.2.0; Boost_107400;=20
> UHD_4.3.0.0+ds1-5
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31E9FA6,na=
me=3Dni-n3xx-31E9FA6,fpga=3DHG,claimed=3DFalse,skip_init=3D1
>
> [INFO] [MPMD] Claimed device without full initialization.
>
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
>
> [INFO] [MPM.PeriphManager] Installing component `fpga'
>
> [INFO] [MPM.PeriphManager] Installing component `dts'
>
> [ERROR] [UHD] An unexpected exception was caught in a task loop.The=20
> task loop will now exit, things may not work.rpc::timeout: Timeout of=20
> 10000ms while calling RPC function 'get_log_buf'
>
> [ERROR] [UHD] Exception caught in safe-call.
>
> =C2=A0 in ~mpmd_mboard_impl
>
> =C2=A0at ./host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:320
>
> dump_logs(); _claimer_task.reset(); if (not=20
> rpc->request_with_token<bool>("unclaim")) {=20
> uhd::_log::log(uhd::log::warning,=20
> "./host/lib/usrp/mpmd/mpmd_mboard_impl.cpp", 322, "MPMD",=20
> std::this_thread::get_id()) << "Failure to ack unclaim!";; } ->=20
> rpc::timeout: Timeout of 10000ms while calling RPC function 'get_log_bu=
f'
>
> Error: rpc::timeout: Timeout of 120000ms while calling RPC function=20
> 'update_component'
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Well, I guess the first thing to do is to run a factory system image on=20
the device and make sure that it is sane--just program
 =C2=A0 an uSD card with the factory image and run that to make sure it i=
s sane.


--------------5hKvtpKt64JjdmLGV0LhQm5t
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/08/2023 10:29, Bachmaier, Luca
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:44131bcc179c44f8975efeb8097fb30c@iis.fraunhofer.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all,<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m currently=
 building
            an image for the USRP N310 and while using uhd_image_loader
            I ran into the following error (see below for entire
            output):<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [INFO]
            [MPM.PeriphManager] Installing component `dts'<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[ERROR] [UHD] An unexpected exception was
            caught in a task loop.The task loop will now exit, things
            may not work.rpc::timeout: Timeout of 10000ms while calling
            RPC function 'get_log_buf'<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">After this happened, =
the
            RJ45 connection with the USRP seems to have stopped working.
            Running uhd_usrp_find_devices can=E2=80=99t find any devices.
            However I can still log in to the USRP over the Console JTAG
            interface through screen. When calling =E2=80=9Cip a=E2=80=9D=
 on my host
            device and the USRP the Ethernet interfaces seem to be down,
            even after rebooting the USRP.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">When I tried executin=
g
            uhd_image_loader again I received this error:<o:p></o:p></spa=
n></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [ERROR]
            [MPMD IMAGE LOADER] mpmd_image_loader only supports a single
            device.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Unfortunately I wasn=E2=
=80=99t
            able to find a lot of information about these errors online
            or in this mailing list. I=E2=80=99d be happy to hear any inp=
ut
            about both of these errors.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you and regards=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Luca<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Full ouput:<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">$ uhd_image_loader
            --args "type=3Dn3xx,addr=3D192.168.10.2" --fpga-path
            ./build/usrp_n310_fpga_XG.bit<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [UHD] linux; G=
NU
            C++ version 12.2.0; Boost_107400; UHD_4.3.0.0+ds1-5<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [MPMD]
            Initializing 1 device(s) in parallel with args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31E9FA6,name=
=3Dni-n3xx-31E9FA6,fpga=3DHG,claimed=3DFalse,skip_init=3D1<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [MPMD] Claimed
            device without full initialization.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [MPMD IMAGE
            LOADER] Starting update. This may take a while.<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO]
            [MPM.PeriphManager] Installing component `fpga'<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO]
            [MPM.PeriphManager] Installing component `dts'<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">[ERROR] [UHD] An
            unexpected exception was caught in a task loop.The task loop
            will now exit, things may not work.rpc::timeout: Timeout of
            10000ms while calling RPC function 'get_log_buf'<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">[ERROR] [UHD] Excepti=
on
            caught in safe-call.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0 in ~mpmd_mboar=
d_impl<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0at
            ./host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:320<o:p></o:p></spa=
n></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">dump_logs();
            _claimer_task.reset(); if (not
            rpc-&gt;request_with_token&lt;bool&gt;("unclaim")) {
            uhd::_log::log(uhd::log::warning,
            "./host/lib/usrp/mpmd/mpmd_mboard_impl.cpp", 322, "MPMD",
            std::this_thread::get_id()) &lt;&lt; "Failure to ack
            unclaim!";; } -&gt; rpc::timeout: Timeout of 10000ms while
            calling RPC function 'get_log_buf'<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Error: rpc::timeout:
            Timeout of 120000ms while calling RPC function
            'update_component'<o:p></o:p></span></p>
      </div>
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
    Well, I guess the first thing to do is to run a factory system image
    on the device and make sure that it is sane--just program<br>
    =C2=A0 an uSD card with the factory image and run that to make sure i=
t is
    sane.<br>
    <br>
    <br>
  </body>
</html>

--------------5hKvtpKt64JjdmLGV0LhQm5t--

--===============6798451488528799748==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6798451488528799748==--
