Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C9493776A
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jul 2024 14:00:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40EF43858E6
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jul 2024 08:00:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721390414; bh=4DGzAGcqJCrzbfZvxm9BTZFELDBzLq3YyJwKJlCWb1Q=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=n3zLMLZlR3vtd0Yy41CbkwkQfVQiXlOrvCDT+elwPxryAm4g5y0POV4KpOTWu+Yf/
	 Lt061JsOoc+fQrHM/yRPcQiWhhNIml/FqaHATly7r1SBVE25jMFE/AIgsvZAfXOOZO
	 QYKt8anCSIali9LZRc7uXjjwbZHy6hPYHGmKYB9fMv+j+Gbui/WOhj8hznB0+wTumo
	 N4esj0CkPSu6GY5C7Pnp4SI4DjhQVzJtiI83pwYkpuleh4ED2AkEhN2z4OfxTEX3Xh
	 lu9Vqt7MEKvyHO5eJfagT7dljk8KaYUKhUf6myaGTiHJ7nU2DUNNwdEQmaFsZObmMA
	 StCrMtVhkzbwQ==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 1F4F9385494
	for <usrp-users@lists.ettus.com>; Fri, 19 Jul 2024 07:59:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SC52wyX3";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a77e6dd7f72so189740866b.3
        for <usrp-users@lists.ettus.com>; Fri, 19 Jul 2024 04:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721390356; x=1721995156; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pDF1XctEO32pdchw3dw6uq9CalVegEaT7LCD2tMIM3s=;
        b=SC52wyX3/nBsAfra2vOQl6x5kXCEJNJBB0uVB0qMMYK/+vsQZXWFNMhJbX0ZCB4IQT
         W/RFhlWKtrgcb66t7iUQSiBxPFAavoTZiBXZM2xkckO8QgAt/ynn995d8mqfNLKrhqPk
         SbLiZXM7b+unmhoEkMLQf+c/jIDdGHm89vxGz05mAnqrXiU4qbUekteJWVv3XM46GGB2
         C5BH8kEeDZo3C6aj+501cMF3/NoaMgdJR0+xPZEu1IEdOafswPOysxGjbl+mGsuVC4/C
         tKRoDKWh9r6PNAqGUS8rtCK1KCT8Yg5W0jBwhsn8hI3YJFY0HUz9TASKu1450uiMy5xK
         ymvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721390356; x=1721995156;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pDF1XctEO32pdchw3dw6uq9CalVegEaT7LCD2tMIM3s=;
        b=Ll1H7jbMLwkoc2PNDolexCggKeyrJ7iV8rhhcB67mBzexA1atjF+6uMTIz1rYAIEy6
         Puh93n8JOuAvQd0kBcZJyCzUkpE3AIa9zVQ9A5MoCLL1fyi8BYfzGOjPi6L8kfM2IqZR
         ECZzTNXQXlmnpedj+zhDRFSeP7LLctZFPt0Tv19KxZz0BjpTTg9lhnFWdykuW0jju8j3
         dYfpLjLWXQNTvkDvE6YZkie6BB6E/cFkAF4XyI2+w7AgDxWzWAgNZwhlXRGDjovNQwKt
         /aWA/Qf4pwkU4IYbGYoEufLZ54Ti0e17RGz3FOjCc25bdQn9r5tYtAfoXthsX9mkYQ4Y
         U2yw==
X-Gm-Message-State: AOJu0Yw7s2D25G+BUGn2q2JE8GZCxRhw9j6KMLosTufo6QCf7aPYmRO9
	n/ShgY9vOtxrRSGvfdLjAtSN6mJvuvOZbNK7eqAQ39SnEbfNT6xJ4+VLzmu/FDWyI/CSFRNY96D
	PIng0CC+FdQEhCjjOmb1wdI3XULD44A==
X-Google-Smtp-Source: AGHT+IF83qtMHu4huRy1WTYv095ijpr8DWHCcU3xHA0JjeilJxBII257WjLD7nlFWkwmcIaObDExHkvpxAonquEuMzc=
X-Received: by 2002:a17:907:31cc:b0:a77:e2e3:354d with SMTP id
 a640c23a62f3a-a7a01199bcdmr641074566b.23.1721390355561; Fri, 19 Jul 2024
 04:59:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAOkUcSt8Z6jQEtH+aTOtkdcx8V_EGHcm-fdfNeri240RJr6J4A@mail.gmail.com>
In-Reply-To: <CAOkUcSt8Z6jQEtH+aTOtkdcx8V_EGHcm-fdfNeri240RJr6J4A@mail.gmail.com>
From: cyberphox <cyberphox@gmail.com>
Date: Fri, 19 Jul 2024 12:59:04 +0100
Message-ID: <CAOkUcSuovodVRNtP4Cn8Bj_NEsniOWit_E3B7sikoEG=F_AChQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: J4BYJ6BTHOUQN6W53YAC3OMGCY4THVAA
X-Message-ID-Hash: J4BYJ6BTHOUQN6W53YAC3OMGCY4THVAA
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Fwd: UHD 4.7 - Building X310_XG FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J4BYJ6BTHOUQN6W53YAC3OMGCY4THVAA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8213162338763071292=="

--===============8213162338763071292==
Content-Type: multipart/alternative; boundary="000000000000a9c4ce061d986ca6"

--000000000000a9c4ce061d986ca6
Content-Type: text/plain; charset="UTF-8"

Hi All,

I have a clone of UHD 4.7 (Tags: v4.7.0.0) and am trying to build the
default X310_XG FPGA to check if my setup is OK.

I ran the following commands from /uhd/fpga/usrp3/top/x300

 source ./setupenv.sh
 rfnoc_image_builder -y x310_XG_rfnoc_image_core.yml -t X310_XG

After some time I get this error:

BUILDER: Adding IP:
/home/gssltest/git/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_fft/axi_fft.xci
BUILDER: Adding IP:
/home/gssltest/git/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xci
ERROR: [Common 17-107] Cannot change read-only property
'generate_synth_checkpoint'.
Resolution: Please refer to Vivado Properties Reference Guide (UG912) for
more information on setting properties.
INFO: [Common 17-206] Exiting Vivado at Fri Jul 19 12:38:28 2024...

Thanks for your help

Marino

--000000000000a9c4ce061d986ca6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><br><div dir=3D"ltr"><div>Hi Al=
l,</div><div><br></div><div>I have a clone of UHD 4.7 (Tags: v4.7.0.0) and =
am trying to build the default X310_XG FPGA to check if my setup is OK.</di=
v><div><br></div><div>I ran the following commands from <font face=3D"monos=
pace">/uhd/fpga/usrp3/top/x300</font></div><div><br></div><div><font face=
=3D"monospace">=C2=A0source ./setupenv.sh<br>=C2=A0rfnoc_image_builder -y x=
310_XG_rfnoc_image_core.yml -t X310_XG</font><br></div><div><br></div><div>=
After some time I get this error:</div><div><br></div><font face=3D"monospa=
ce">BUILDER: Adding IP: /home/gssltest/git/uhd/fpga/usrp3/top/x300/build-ip=
/xc7k410tffg900-2/axi_fft/axi_fft.xci<br>BUILDER: Adding IP: /home/gssltest=
/git/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xc=
i<br>ERROR: [Common 17-107] Cannot change read-only property &#39;generate_=
synth_checkpoint&#39;.<br>Resolution: Please refer to Vivado Properties Ref=
erence Guide (UG912) for more information on setting properties.<br>INFO: [=
Common 17-206] Exiting Vivado at Fri Jul 19 12:38:28 2024...</font><br><div=
><br></div><div>Thanks for your help</div><div><br></div><div>Marino</div><=
div><br></div></div>
</div></div>

--000000000000a9c4ce061d986ca6--

--===============8213162338763071292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8213162338763071292==--
