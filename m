Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E17D8BD989
	for <lists+usrp-users@lfdr.de>; Tue,  7 May 2024 04:48:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F4202384D7D
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2024 22:48:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1715050116; bh=6oVMccWfxbt1OzriWKReX0PKrJg5Me+yd2EoNuKM1AI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=X4SFtjvQ2CIzgDg06ZaPtz4OsWj1dbsyF568XZvyZ+4EklvN8MedvnrrX3DmSdpft
	 mn9UhTlZG+AwqwVxb1ao+NNBG/vhbPLqUqlAOPktEm4kMKFupro1vefiP3jtB5LRYV
	 tP6EZQij2phqJh9g3IyAlDtvNKPX/HqRG7UbeGwF7sq++a3ZFd8Lppqfd4b4rDa59J
	 P2ovFGY7pbVaFuOV8km8jkB3hGlvk8MZjVzhTbm/mkIcOAEOL+oLb2yzBHN62qzB/N
	 5WlS68j2fcbBeMRz5DdTz9X3E0qZjwTMd17ocdV7gTpWUpCl7MNtPPk+iJYPkwuSZd
	 rFzLadA7NhFTw==
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 94DD43814AE
	for <usrp-users@lists.ettus.com>; Mon,  6 May 2024 22:48:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="vaLtWQbA";
	dkim-atps=neutral
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5210684cee6so818885e87.0
        for <usrp-users@lists.ettus.com>; Mon, 06 May 2024 19:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1715050083; x=1715654883; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Y4ISUko44Tg8puZeNQmxX2YOcE762svBtUTIhxHh6h8=;
        b=vaLtWQbALeNMVZNaPKcWrmjgTfsxH/IyFSc61ggx7SIzSgv7kLXcu3vaTKgQgMSPS5
         j+r/8azdz+t3YFipmlyf/7Ja10YkvmplJovcdElsyWkdNWjE4mluo5Jo0CIK3d0C08Y3
         G1tcx65RZ4InsvFbIm7IpnFKLOWAgt8TdPqQVIA7ra0R0LqAvfMNm9jT83goO9XV7PwP
         i7vBpmhqMp0iUADdG5DjUAbE/fw40z1FBNBKkVe/NEuodDF2vbxp4x8KR1mO5GrjP1At
         ZajJyMHThFWjfusRRptdwuyx8R0S0rFw4USYn9+a3ZC50UKVHm+3NkJ0uIDsaWZ6zCK6
         8nvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715050083; x=1715654883;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y4ISUko44Tg8puZeNQmxX2YOcE762svBtUTIhxHh6h8=;
        b=ToHBCXJyOuSNKli2uMQW19ak2tfiymC8gSBb1aAzgWvq+XRTPjUaEjrmD6twHJw6Z7
         IKF72YzKusbH6zDhA80SaXzGcb48u8XiBbhztbB1CAedW4OwqkWwWVzwFLg1Nb6pgua0
         N3lXqN088GY86/IkklVzHTHtrGzEtWoqz/jQoG6vrwjvZ7/WGHYIppe57bPsStCSlGq9
         HHc7/c/bVSe1j9Dt9AlOq5BS5C+CIjXbeICo2HmJ477co4yi8Oy0DjQiT0j5dCi6L9KF
         RubU5SB3ULWE8cAKT3Q0+bEWUnLYX0FJz/6Uw1J95T4w2dpqqhafV8s4VDbp0Pmo75DJ
         EOQA==
X-Gm-Message-State: AOJu0YxP/xVJZsVhljN9zWzC6rBJtlWvxvPGcT4oDAd4JCFZxgN3KVxF
	GyWXilSfGv1z30/RmRhKiI2koBE3nAWOykyU2W/3hB5tjqRFU3dLsjfGMEWyIwPNgHdfWN3aIZn
	aTU3W+5OM0tguCxS3QbXFpVtR08+AdykXVUnkXKxQcFk8Hhi+4P5umA==
X-Google-Smtp-Source: AGHT+IE09ksZ9Q/LZ6zn9g4KPeEdshUJ/YiS7pimLpbIfNs1hEQ/jG1idVBCdZUOiiQmNlRD8fDqAV9KHE+ObgKMV/8=
X-Received: by 2002:a05:6512:7c:b0:51c:22fb:182f with SMTP id
 i28-20020a056512007c00b0051c22fb182fmr7726046lfo.13.1715050082840; Mon, 06
 May 2024 19:48:02 -0700 (PDT)
MIME-Version: 1.0
References: <DNuSIv2syTvH2LUJuh07JV4yEakEkELPJlc6BasqQYI@lists.ettus.com>
In-Reply-To: <DNuSIv2syTvH2LUJuh07JV4yEakEkELPJlc6BasqQYI@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 6 May 2024 21:47:45 -0500
Message-ID: <CAFche=h0M6+Dq_SnoBb8M7UBAude95nCDutkZk92faC=5VZXzQ@mail.gmail.com>
To: ettus@basti.rocks
Message-ID-Hash: FFKI3V6QJTIHMVFYOIPYZK7D3KIDMTOS
X-Message-ID-Hash: FFKI3V6QJTIHMVFYOIPYZK7D3KIDMTOS
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC FFT block on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FFKI3V6QJTIHMVFYOIPYZK7D3KIDMTOS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5395402633159352448=="

--===============5395402633159352448==
Content-Type: multipart/alternative; boundary="000000000000f5d3da0617d4362c"

--000000000000f5d3da0617d4362c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sebastian,

You might be using an old YAML file and tring to apply it to a new version
of UHD. Take a look at the YAML file for the version of the FPGA closest to
what you want. For example, here's the default X410 image in UHD 4.6:

https://github.com/EttusResearch/uhddev/blob/UHD-4.6/fpga/usrp3/top/x400/x4=
10_200_rfnoc_image_core.yml

Here's the same YAML with the DRAM commented out and a single FFT block
added:

https://drive.google.com/file/d/1TojBea56ZuPpXTYUIsgQRDg7F-EbVtWH/view?usp=
=3Dsharing

You'll probably want to tailor this to your use case.

Wade

On Mon, May 6, 2024 at 7:03=E2=80=AFAM <ettus@basti.rocks> wrote:

> Hello Piotr, hello everybody,
>
> i am working with the USRP X410 as well and want to get the FFT Block to
> work in RFNoC.
>
> I have tried to use the yml as it is, but the Plausibility check failed,
> which i could resolve by editing the line 143 =E2=80=9Cdram=E2=80=9D -> =
=E2=80=9Cdram0=E2=80=9D. I guess
> this was a typo.
>
> After 2 h or so i had a .bit file and tried to flash it. However it
> doesn=E2=80=99t work and i get the following Message:
>
> [ERROR] [MPMD::MB_IFACE] Automatic clock detection requested, but no vali=
d clock index given (63). Make sure FPGA bitfile is up to date!
>
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Runtime=
Error: NotImplementedError: Automatic clock detection requested, but no val=
id clock index given (63). Make sure FPGA bitfile is up to date!
>
> Do you have any idea what the problem is or can you provide me your
> working yml file?
>
> Please note that i have no in depth experience with FPGA development or
> RFNoC and only tried to follow the available guides.
>
>
> Best Regards,
> Sebastian
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f5d3da0617d4362c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Sebastian,</div><div dir=3D"ltr"><br><=
/div><div dir=3D"ltr">You might be using an old YAML file and tring to appl=
y it to a new version of UHD. Take a look at the YAML file for the version =
of the FPGA closest to what you want. For example, here&#39;s the default X=
410 image in UHD 4.6:</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><a h=
ref=3D"https://github.com/EttusResearch/uhddev/blob/UHD-4.6/fpga/usrp3/top/=
x400/x410_200_rfnoc_image_core.yml">https://github.com/EttusResearch/uhddev=
/blob/UHD-4.6/fpga/usrp3/top/x400/x410_200_rfnoc_image_core.yml</a></div><d=
iv dir=3D"ltr"><br></div><div>Here&#39;s the same YAML with the DRAM commen=
ted out and a single FFT block added:</div><div><br></div><div><a href=3D"h=
ttps://drive.google.com/file/d/1TojBea56ZuPpXTYUIsgQRDg7F-EbVtWH/view?usp=
=3Dsharing">https://drive.google.com/file/d/1TojBea56ZuPpXTYUIsgQRDg7F-EbVt=
WH/view?usp=3Dsharing</a></div><div><br></div><div>You&#39;ll probably want=
 to tailor this to your use case.<br></div><div><br></div><div>Wade<br></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On M=
on, May 6, 2024 at 7:03=E2=80=AFAM &lt;ettus@basti.rocks&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello Piotr, hello e=
verybody,</p><p>i am working with the USRP X410 as well and want to get the=
 FFT Block to work in RFNoC. </p><p>I have tried to use the yml as it is, b=
ut the Plausibility check failed, which i could resolve by editing the line=
 143 =E2=80=9Cdram=E2=80=9D -&gt; =E2=80=9Cdram0=E2=80=9D. I guess this was=
 a typo.</p><p>After 2 h or so i had a .bit file and tried to flash it. How=
ever it doesn=E2=80=99t work and i get the following Message:</p><pre><code=
>[ERROR] [MPMD::MB_IFACE] Automatic clock detection requested, but no valid=
 clock index given (63). Make sure FPGA bitfile is up to date!</code></pre>=
<pre><code>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph=
: RuntimeError: NotImplementedError: Automatic clock detection requested, b=
ut no valid clock index given (63). Make sure FPGA bitfile is up to date!</=
code></pre><p>Do you have any idea what the problem is or can you provide m=
e your working yml file?</p><p>Please note that i have no in depth experien=
ce with FPGA development or RFNoC and only tried to follow the available gu=
ides.  </p><p><br></p><p>Best Regards,<br>Sebastian</p><pre><code><br></cod=
e></pre>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000f5d3da0617d4362c--

--===============5395402633159352448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5395402633159352448==--
