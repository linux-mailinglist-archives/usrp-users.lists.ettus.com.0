Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DFA790AFF
	for <lists+usrp-users@lfdr.de>; Sun,  3 Sep 2023 07:59:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A0F01384C77
	for <lists+usrp-users@lfdr.de>; Sun,  3 Sep 2023 01:59:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693720775; bh=dMDcEiRfdsLFpKDm5EoK8EP2l1Tlf6N/q0odndIu7F4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CNZLMAapm8wckM1IHc4aA9WQgKbEOOGPXslohsJJWBkeaP8TbMAGzwhlmdDpb3Wbb
	 z4gOA5Ezx9gjXDm7evkK+vJK8fAiP4T+GQkNqc1BgGK708WbGjW3pHKz7XTU39YAmp
	 vTk4ZP50VgMm3maxQiQb9MZBHSBfdEMmWu8DAZyIqHC0qBBbfmP5NqS5dH2lvw1Tx6
	 xJzxrvcIE/6zKw9WgPxNZf3Ho6D2YvgDcT3WzDbTz98xMAmESHFXsvTKd6YVriTLXd
	 liQfjAfpTcCDTfiEkfgtnxYQpSZw+VspxMHRYFjBCDVx4STtvValMsTfgLMOS3A7Kz
	 Px9LAL2hK8BbA==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id EF7CD384C74
	for <usrp-users@lists.ettus.com>; Sun,  3 Sep 2023 01:59:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="o/WqhCRM";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-99c1d03e124so57100766b.2
        for <usrp-users@lists.ettus.com>; Sat, 02 Sep 2023 22:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1693720740; x=1694325540; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9F0CaKLkc/Lg8mwzrPrNc5pLhG1Iy7v7kJm4Zvb8gKU=;
        b=o/WqhCRMy4XFk5U2o2lO7ivz83ylV302pFDjHdvPfArgsxJWIpVdnfUen7Y4jz/8K4
         2OK129Pt5VtnX1YMTr5Pc0Px2KjPJZhKnnRy8nQMapifVbL77misDkuKLdykNbyLB1iX
         oGxurRFXvhCgceGdWWSQLRq7Qu3BkyPHhAH0eLnBG8c/WZhr4ZsMF8hVuzR14gpTIqgl
         MoNBvJSwg9VcZ6/VQlcC7OiEOz8zDMa+TSA9h44PyCcuuwKVo21KEJ1OIYNe8RjE6Ok8
         BAy9/r7DKg9mTbuXPU6K1lGWtUZVX0BdpXWdtuVs7Gi0JK7xVEckrAr32eCDWDK3JNuQ
         qlAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693720740; x=1694325540;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9F0CaKLkc/Lg8mwzrPrNc5pLhG1Iy7v7kJm4Zvb8gKU=;
        b=UsosgrHjdDY9U09D7/nU9NIuaD6sdb0ldj2t0Tp86gqco9zSsG16gaGcsVrDOgdmJB
         QPr6X2C4J/b642VId96fKEona4XQlYw/Z5xK37R2493yvvGdqCQpHtQLs+5SFwolyORq
         pI3QBbEUzkKJ/dsF28cdDBiCecd/UYtnge7rUDXhBSO/jHuwnA2lKryJV14eMAmx6Jic
         13/gId8uRatbE/MauJj9ajK2ogzjrKKTascfTE+XDfJrs+rpyuGtNln0nBILIENHSscN
         bQC0JP6Qf0FWUgFHQCAy/ah0zxQg0h9ZVoQkYL9XhhrkDK58+ZNJVu3Wtgt6L+NtjvCJ
         fjpQ==
X-Gm-Message-State: AOJu0YzIRBQVgK0MmLTAAYJDsac4PYHe+ucJwR+5CiJLKbOa8EwQ/TMr
	1mQrWEm36UxEpzX5zgwCgTzsLDSOs2EEGfpffS7p9n4b
X-Google-Smtp-Source: AGHT+IEjX3UhAhssn04tZeKpYfxBe3Ah3c+D7zZOb3u1Iy+T2JaK2FaPVmgTB+kMwPYvRsDCLN0p/rXOSjY0vMK4U3A=
X-Received: by 2002:a17:907:780e:b0:9a2:2841:7904 with SMTP id
 la14-20020a170907780e00b009a228417904mr4334596ejc.28.1693720739433; Sat, 02
 Sep 2023 22:58:59 -0700 (PDT)
MIME-Version: 1.0
References: <UZwXAmGA8z2VzG8sA3CCc2lCmDXgLhoW1BHOboAKVd4@lists.ettus.com>
In-Reply-To: <UZwXAmGA8z2VzG8sA3CCc2lCmDXgLhoW1BHOboAKVd4@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sun, 3 Sep 2023 00:58:43 -0500
Message-ID: <CAFche=iMr8U3_sGXH=3ROnYbgVLv27JBHyYd62aOQH9T5=nxYQ@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: FYP4VKJA6N662V3GCL2SWQBU23N4KPRN
X-Message-ID-Hash: FYP4VKJA6N662V3GCL2SWQBU23N4KPRN
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Specifications of host computer for 100 Gb/s streaming with x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FYP4VKJA6N662V3GCL2SWQBU23N4KPRN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7082346282182225595=="

--===============7082346282182225595==
Content-Type: multipart/alternative; boundary="00000000000005dffe06046e17b3"

--00000000000005dffe06046e17b3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, one QSFP gives you one 100 GbE port. So there are two 100 GbE ports
with the X410_CG_400 image. Regarding other considerations, see the
expected data throughput rates in that same link. Streaming performance is
generally limited by the host computer.

Wade

On Tue, Aug 29, 2023 at 3:36=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> Thanks for the link.
>
>
> Another question, does one QSFP port alone support 100 Gb streaming, and
> if so, when I compile the x410, does that just entail using the x410_CG_4=
00
> option alone for compiling or are there other considerations?
>
>
> Thanks
>
> Joe
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000005dffe06046e17b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, one QSFP gives you one 100 GbE port. So there are two=
 100 GbE ports with the X410_CG_400 image. Regarding other considerations, =
see the expected data throughput rates in that same link. Streaming perform=
ance is generally limited by the host computer.<div><br></div><div>Wade</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Tue, Aug 29, 2023 at 3:36=E2=80=AFPM &lt;<a href=3D"mailto:jmaloyan@um=
ass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><p>Thanks for the link.</p><p><br></p><p>Another=
 question, does one QSFP port alone support 100 Gb streaming, and if so, wh=
en I compile the x410, does that just entail using the x410_CG_400 option a=
lone for compiling or are there other considerations?</p><p><br></p><p>Than=
ks</p><p>Joe</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000005dffe06046e17b3--

--===============7082346282182225595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7082346282182225595==--
