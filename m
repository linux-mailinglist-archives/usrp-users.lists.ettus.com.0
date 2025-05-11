Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1042AAB2652
	for <lists+usrp-users@lfdr.de>; Sun, 11 May 2025 05:34:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D4F39385CB2
	for <lists+usrp-users@lfdr.de>; Sat, 10 May 2025 23:34:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746934442; bh=CfFvcg4Mc8fYtjpHGqST9AQ5MrrSSpsuSiWcjBw31EA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wI3e1oz54njIrAvmDMeU3Hw4JaiWjvC8cBJjGmPCKmQ5wV5ORAOBl8m24z4BbbjnF
	 Tnb5kYPpwauMdwN++yPovK/8buObpHTLV/Ti9Rtj3XFa+ioSvUFwbpIzx5btB5eqKv
	 kjbPYpJncP3alm+AOimbUGhDcJ02x9opxFK78STgPKD8vaPjkfVWnXzNoKeUoNXEdg
	 1m4AaIQC/q2ezcwBNAVFPOW6Pg1d22p2snNgPJjdamd4cIasV6Rup8vGE/clgzEybd
	 yDraoof7QTpLmW7PFcE4t8xGEasieGWuv1RK2Ne5lmolWZfTtoxpoKUDbxxVzMCT3u
	 7+OF9AxfBx9mw==
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 3342D384E76
	for <usrp-users@lists.ettus.com>; Sat, 10 May 2025 23:33:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="R/JdRPmT";
	dkim-atps=neutral
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e755cd8c333so3188602276.0
        for <usrp-users@lists.ettus.com>; Sat, 10 May 2025 20:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1746934386; x=1747539186; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nLxImYcDs/qQ6CjkSmNYkrInHxIFSPv74dAGcUYv2zU=;
        b=R/JdRPmTuEEpUdSjmGUe1TlLZR56nxvu6omyT3g0kNtxQzdfvPQW0ESE5VhR6GGLP2
         2VbhdmQMnvORMykZSX9OtL8WTF50/4oX0dmgOC/AZ14loMYLX6ITWCqUvv8A0/KuU9+f
         biCGMcLdQHGtsWqw/c4q9TiwzEbNRh03eh6nu6mF7+cWaLDongyGmDluCTeZg71cLs/Z
         xo4PSrpJxtrmtSpDR1WLcSIifXAEUlYewpXXG/u6kYB3Fn1EqkkrXXIjE5ElS9x62ln4
         NvkNQ030JtRCG73S3DS/Yr7EmE5CzNJIZfQhI+YBVpe+IYE2Eg7BJHlne3pD2zDv0Wz9
         7TkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746934386; x=1747539186;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nLxImYcDs/qQ6CjkSmNYkrInHxIFSPv74dAGcUYv2zU=;
        b=nSNVpWSxza7v3yugPbmRPlfylvyRMDGUD4PFwQTtfYu8uPt66N+TYmqzmKw5iQK7LZ
         P3uAh88LhlKDAch0xzOgf552y6siKMWj7BGHc3XE4cHAsCkvm8fvuQP9FC+4iY8BXncO
         i1K3TJgnVSxmB1afh+YgDqBXgWUGSLSc5HuDG0LtxoZta3Yn1Qehju8Dzm93RZpq7tQe
         dQHj7kwz+gqd3IVD0GTPvM+B8U+v6P9tTAEWqUc5UZqKADO/h4gynLtfpG6+hj2/ParK
         aQBsNVghWfNxP6USIt2Sx57vEb0+I6CbfwGZa9avsq4MyPrBBirRRBL1nB7fIRjPBGyX
         AF4A==
X-Gm-Message-State: AOJu0Yzv1NBgNKNGabV4MtRI+H23whZFSq4/HgU1hURq8Dkl4fLDvOZa
	2ak8pTp8fqacMwuc5/kJwnlF/BV/vnIpK0FHY+/d42rWJBuqZmGXcWTLYpXB0JNm8NUYAKgbtnY
	2hGHHzJ2gOyOSoJcYpPBXLpPwDkeLh9fMpyyNhe39
X-Gm-Gg: ASbGncsvbLTj1lN2WTnb2EEbEpuTvZlFzAwO2aTRiU5CGj4vdpOu+vD2MdpiBC5c8rS
	h/iMpIGBnOWC0PiQx2cyQr/eSPY1oTmmX0fBXTsfZn+b/SiByuXva45RJAz6NMFkBaXjJOAQ0ct
	QP218Fp/VWeSrXuzp0BVtzpx1zoBEhVGV5
X-Google-Smtp-Source: AGHT+IEh3+gqC1Rq2aoVEDuRwbPmpctzzB4l2agCg/rYnuejw6BDY/B0yLniQrjRTX4O+XobyZCXBYmvrK2MxJx9iWE=
X-Received: by 2002:a05:6902:2404:b0:e75:33fd:e7f8 with SMTP id
 3f1490d57ef6-e78fdd488femr10634895276.46.1746934386513; Sat, 10 May 2025
 20:33:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK6A8mRg9jpcaMgihu7hRFWFrPL0TgubaB1m46QoFbY+iA@mail.gmail.com>
In-Reply-To: <CAEXYVK6A8mRg9jpcaMgihu7hRFWFrPL0TgubaB1m46QoFbY+iA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 10 May 2025 22:32:50 -0500
X-Gm-Features: AX0GCFsRP3FyCU4RLEy4NkYjGD1ecclWO3fIV-LwaZXzU2U7hvrsvyvmkHwNLus
Message-ID: <CAFche=jCdCTCyAY51g2CSNdSLnW==CUngEw+VsGCQb9Hapn4gA@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: GS2YIDX52M4I553ZENRWPRFPG6Y7OOAV
X-Message-ID-Hash: GS2YIDX52M4I553ZENRWPRFPG6Y7OOAV
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Reboot Takes A While
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GS2YIDX52M4I553ZENRWPRFPG6Y7OOAV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7300310424225504414=="

--===============7300310424225504414==
Content-Type: multipart/alternative; boundary="0000000000008dea8c0634d3dbd6"

--0000000000008dea8c0634d3dbd6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The 90 second timeout is a known issue, and it was recently fixed. With the
next release, the USRP Hardware Daemon (MPM) service should shutdown
immediately.

But I'm not aware of it taking a long time after the service shuts down. In
my experience, it reboots very quickly after the service shuts down.

Wade

On Thu, May 8, 2025 at 4:04=E2=80=AFPM Brian Padalino <bpadalino@gmail.com>=
 wrote:

> I am noticing when I issue a reboot command to the X440 it will sit at
> shutting down the usrp-hwd service for a while, usually with a 90 second
> timeout.
>
> After that, it usually doesn't even reboot for quite some time.
>
> Is this a known issue? Is there anything I can do to debug why usrp-hwd i=
s
> stuck shutting down? Any idea why, even after it shuts down, the RFSoC
> doesn't want to reboot itself appropriately?
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008dea8c0634d3dbd6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The 90 second timeout is a known issue, and it was re=
cently fixed. With the next release, the USRP Hardware Daemon (MPM) service=
 should shutdown immediately.</div><div><br></div><div>But I&#39;m not awar=
e of it taking a long time after the service shuts down. In my experience, =
it reboots very quickly after the service shuts down.</div><div><br></div><=
div>Wade</div></div><br><div class=3D"gmail_quote gmail_quote_container"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, May 8, 2025 at 4:04=E2=80=AFPM =
Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">I am noticing when I issue a reboot command to the X440 =
it will sit at shutting down the usrp-hwd service for a while, usually with=
 a 90 second timeout.<div><br></div><div>After that, it usually doesn&#39;t=
 even reboot for quite some time.</div><div><br></div><div>Is this a known =
issue? Is there anything I can do to debug why usrp-hwd is stuck shutting d=
own? Any idea why, even after it shuts down, the RFSoC doesn&#39;t want to =
reboot itself appropriately?</div><div><br></div><div>Thanks,<br>Brian</div=
></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008dea8c0634d3dbd6--

--===============7300310424225504414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7300310424225504414==--
