Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 048C0A3722D
	for <lists+usrp-users@lfdr.de>; Sun, 16 Feb 2025 06:53:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BB882385C99
	for <lists+usrp-users@lfdr.de>; Sun, 16 Feb 2025 00:53:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739685207; bh=gJBXots2Dv7h5tGXVkEY4vDpNfQSLW1hpYolDRB3p9s=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=gNUxymvMJvMXEIkbHrQkBEnzOer5hc39NpbBxuz2ROyov41gr6uaBuDF82e/b4cPI
	 v/UeNOpen1fW7y7Zuhc64DX3q+EJacq9hOm0dqSmaWkFg+jYoyyh8dwZAWmNVGWtPW
	 kVQc7gXm8eH0nfMA2WYeNV4YOISmVsedPxMAIIUWFenu95kgd6+nSS5MJKMgPm6oMr
	 upf4K/Tnr2Wj3Kpd1bGHzYXP1C73aKzgLdrzxuyl1/FMhecKDqG9gjrnKJFiylWwz9
	 JoMnebNzaFZc7xMhHmf/GCphOpvvVGJzENB6J2LRKGMMCqRfNK5SOhVaAlGaxP9D7e
	 0KNHiPTc+g3xQ==
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 07D97385BC2
	for <usrp-users@lists.ettus.com>; Sun, 16 Feb 2025 00:53:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Sr1cKRjl";
	dkim-atps=neutral
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e5dd164ee34so493645276.2
        for <usrp-users@lists.ettus.com>; Sat, 15 Feb 2025 21:53:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1739685200; x=1740290000; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hRsWGCGlMugRidc3k5pr1n7HCxTnTKdLPHOxaThg0wo=;
        b=Sr1cKRjlpnWtskDzK+6InWHt0+1HP1o0XIZQtAkiKUMwhccmTKlxOu84g+QVRKCFBI
         CQcre7VCwmTNkAz1qI2xuwE4OgFyH0WevsskbLaIlAYBGHu1MmyBd/Uj0gjeFCb9b+yO
         i7twBe99fFeNevASgQZj/mlXhQtyJ3uapy4LMKhPXvfw9hrfRRFoUsr0jBOqDNjfqiOw
         N1koXYug9pMjrAUbUFUaoQIx9isqulCRutULah2AB/3dQp13BjdT9M7rMSry3QrCU0w7
         TJegxvJXBQh0CGCAtu84pVgT/ip63aHZXuSqhW8+UAG54qAQp9rJotU24q1LDcXE/w1R
         4M0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739685200; x=1740290000;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hRsWGCGlMugRidc3k5pr1n7HCxTnTKdLPHOxaThg0wo=;
        b=jW6TjxSqQrNiD4CHI5fxjkTkDCsqCEKGjgoS6LyYcg+Awzw3Je09EqzsQZI/HUDPiv
         PtgiQkEFj5VV8g+ZsNijkZAm4hbdWO63GS0rjJeOauZBiIsBs4p7fdudYdfHADob1UmD
         D+gbIYpYp4bJK6+SUXSk/aS+tQIpwCRer7aTseMqpmJna6UzAIw9u42/oBm5v9eUOIGd
         EMgj3XTz+ThLXAGNFoxJkb+N++EdqqDwjZlFKTgklbhfgk44NTUf+aWkkSxYwZxCt6PR
         QgvD/u4drd2Z1BL9EHBNn4hmlH76BxpKYE6qZSH2v72lbkFZgnPGX0giQMA4xpiVxj0Y
         CKCw==
X-Gm-Message-State: AOJu0YxcJ8L74ZIt9oNIv+api8ehgs+NPPnTx3492OgkXek68RBnvkL8
	apUtto1JuXehi1H808TIfwPaWf1WMfy/Bl1w9TbCGtDqh2TrNIsnkPlMw14r0f0wjHcccRQMFNz
	lqs3PBN2IZM5kIOVGT8ztoYgb8YJN53kwdGFNJ64v
X-Gm-Gg: ASbGnctjwzky4NqddIeFOyubJKpduDLhDNa05o9EgwdiZZLIELEQ90stP6OMMY6+YXB
	RcZvi3vKAD5Iksgl/ijJHxBvsg0g1qBhAtbH8br4RLSfPo/AfDsshYg8PF57mHic4F2ZIBs6R
X-Google-Smtp-Source: AGHT+IEajptjOFt2MnFJU8C1aDg9Asl7H+yiBhNxTfCc5z5GOXbFbLP/JT49azr5ibOb18RgHvJ5kr8bwatiXYn2o7Q=
X-Received: by 2002:a05:6902:20c5:b0:e5b:3e10:14f2 with SMTP id
 3f1490d57ef6-e5dc92f7358mr4055567276.43.1739685200306; Sat, 15 Feb 2025
 21:53:20 -0800 (PST)
MIME-Version: 1.0
References: <ctfvoAdubEoBmdAhw3jUOZ4EPLNeSHY5VFUu8fQezc@lists.ettus.com>
In-Reply-To: <ctfvoAdubEoBmdAhw3jUOZ4EPLNeSHY5VFUu8fQezc@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 15 Feb 2025 23:53:04 -0600
X-Gm-Features: AWEUYZmtWoo5MaBRZ2VSEaQEK4jZLWW40cVQnJpJqA2dYH7gcVO0V0z-l9RzGP4
Message-ID: <CAFche=iZ-O5u0YvJ=OZ+D23OrgwF_XixbKknwOfC1EjH2gAhUA@mail.gmail.com>
To: dhpanchaai@gmail.com
Message-ID-Hash: GM5HNTXWWTPWZYBC2Y4JSV5CH246OS6R
X-Message-ID-Hash: GM5HNTXWWTPWZYBC2Y4JSV5CH246OS6R
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build custom fpga image for x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GM5HNTXWWTPWZYBC2Y4JSV5CH246OS6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0386424900701901208=="

--===============0386424900701901208==
Content-Type: multipart/alternative; boundary="00000000000062c873062e3c06a5"

--00000000000062c873062e3c06a5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That does seem like a Vivado licensing issue. Vivado ML Enterprise is
required, but no additional licenses should be required beyond what's
included with Vivado. I don't know if there are any limitations of a trial
license that would affect this. Make sure that the license is correctly
installed and is being picked up by Vivado. You might be able to check if
it's being detected going to Help -> Manage License... in the Vivado GUI.
This article might be helpful:

https://adaptivesupport.amd.com/s/article/1045006

Wade

On Fri, Feb 14, 2025 at 1:44=E2=80=AFPM <dhpanchaai@gmail.com> wrote:

> That worked for me. Thank you. However, I=E2=80=99m running into error at=
 the end
> when its generating the bitstream:
>
> [01:49:04] Starting Write Bitstream Command
> ERROR: [Common 17-69] Command failed: This design contains one or more
> cells for which bitstream generation is not permitted:
> [01:49:12] Current task: Write Bitstream +++ Current Phase: Starting
> [01:49:13] Current task: Write Bitstream +++ Current Phase: Finished
> [01:49:13] Process terminated. Status: Failure
>
> Is this a licensing issue? I=E2=80=99m using the nodelocked trial license=
 for
> Vivado_ML_Enterprise_Edition. Is there any other license I would need to
> download to generate the bitstream?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000062c873062e3c06a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>That does seem like a Vivado licensing issue. Vivado =
ML Enterprise is required, but no additional licenses should be required be=
yond what&#39;s included with Vivado. I don&#39;t know if there are any lim=
itations of a trial license that would affect this. Make sure that the lice=
nse is correctly installed and is being picked up by Vivado. You might be a=
ble to check if it&#39;s being detected  going to Help -&gt; Manage License=
... in the Vivado GUI. This article might be helpful:<br><br><a href=3D"htt=
ps://adaptivesupport.amd.com/s/article/1045006">https://adaptivesupport.amd=
.com/s/article/1045006</a><br><br></div>Wade</div><br><div class=3D"gmail_q=
uote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, F=
eb 14, 2025 at 1:44=E2=80=AFPM &lt;<a href=3D"mailto:dhpanchaai@gmail.com">=
dhpanchaai@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><p>That worked for me. Thank you. However, I=E2=80=99m =
running into error at the end when its generating the bitstream: </p><p>[01=
:49:04] Starting Write Bitstream Command<br>ERROR: [Common 17-69] Command f=
ailed: This design contains one or more cells for which bitstream generatio=
n is not permitted:<br>[01:49:12] Current task: Write Bitstream +++ Current=
 Phase: Starting<br>[01:49:13] Current task: Write Bitstream +++ Current Ph=
ase: Finished<br>[01:49:13] Process terminated. Status: Failure</p><p>Is th=
is a licensing issue? I=E2=80=99m using the nodelocked trial license for Vi=
vado_ML_Enterprise_Edition. Is there any other license I would need to down=
load to generate the bitstream?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000062c873062e3c06a5--

--===============0386424900701901208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0386424900701901208==--
