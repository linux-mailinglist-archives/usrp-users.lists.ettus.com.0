Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C557837C8
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 04:12:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CEA9E384AB8
	for <lists+usrp-users@lfdr.de>; Mon, 21 Aug 2023 22:12:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692670343; bh=d+GJb6X3zj1Gl6acsNNYOzaRjU86oBxIEb9iQTq/DIc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YEp+SskTmGylXHRBjj3juSZUi446DzErTqx04UdHmoj/Aa9nG7kQRPCBaecePWY/q
	 6zjTCG/2BFa4y6NO+gCZvdSx9HiHWeUq1LCPxKhuuP3DbwUO8ebXJG0pmfePmEwyJ+
	 +03neyz1zHgRsP9Vm4bR75iAi11iP5fKEFjjMEjgEzVG8xC3wOt9SDhOMSgb0THef5
	 b+Gtu/o1ygJVWSwPx8Jv1T3Hgn6c5CAifYdajggGzzgdwAKtQ5l0Ccj+tcRpAOJtiE
	 WoVRnQ7Sy6p6R6ZTlpRyhHQ03NGfSn2OsKe6SyXdgGVaBTWliVvsKqd4lt3TytC4ew
	 MOQMgEV1Wyuaw==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 421D338466A
	for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 22:11:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="vbQUfosM";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-99de884ad25so527318866b.3
        for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 19:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1692670312; x=1693275112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kgnUOtvbILreXvZrnF7t9Va/wxtQYKQA753/kvzbWQE=;
        b=vbQUfosM+p1kNgBa5TazUrksOPGsK6gNqfcFwbK+wfrIA78jTwW9ztnAEcBu18EaHI
         Xou2qTnY5xfo+0RgL7RLx0D3yOcEITRCssVW3bBdWdF1wiyuLFt8v2arC12YKjHzyqjn
         RaKC3YgjXyhmtygbz5bxrrtCPozLGXDqB20nETqYZeIQoqW1ybVC8ss+DErnk2NCuMu8
         7/R+gxfBbgHDGt4J4s4hXiQSBYlH8L4BhLdB02aIqOdR6Iml4AHIR/VcIppSkCsMqmbP
         0ljtOWoVt8J+T/5mE1P2E8w2UZYew5wHRR7ilOM69V7AkKAE6BM5dMR5pu5LJBnftVPG
         W7Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692670312; x=1693275112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kgnUOtvbILreXvZrnF7t9Va/wxtQYKQA753/kvzbWQE=;
        b=c1Lw/JFFFX5bkaBAqCW/hT6esCTjtH1Quo53+m+lwIqvNU964N+lOTJ9GbpuoqtRR1
         gBiTfOVDaI7IaiDfeBarPHT8MyEGVMpbZyszPW+yGcadP3+0qyi1GMwrTNQfQ2ghpsp/
         GKHKm7pNulcgjnb7k+BTe9t24l+K0XuhAnT58s7qp6N7/FnNDkcsu4lf/1Z5+IpkwJUL
         zLvcCmfbf+7dSm5amRXD43cTNx4kxqLtHBQUhoQ0q5RxSdqDon22X6+kLdEPiNIYlDPl
         LA0vEXEeW3W//ItEphT/58CS2C5vMU9PdC8OfZWtfv+rQx1y4s5kjUp25f+c8592wy5A
         kmKA==
X-Gm-Message-State: AOJu0Ywc13KlxRlKCNXLs//kWyLlzGwYKQ9gf7mWk2kpYY++LpgxfpKX
	5AqDi9XYlRrgLrFH60rXAT6Uk1LnBQHiLZ0jTgNlV3rc
X-Google-Smtp-Source: AGHT+IHrcMQNMvx9UbghNtw6ZqhENR4EKy6un1HrUXbQoUfut5VEBIHjx+obdi9+YKImgTSAjq5RB8LjdaK03jKgAks=
X-Received: by 2002:a17:906:8445:b0:99c:281:9987 with SMTP id
 e5-20020a170906844500b0099c02819987mr7085279ejy.36.1692670312034; Mon, 21 Aug
 2023 19:11:52 -0700 (PDT)
MIME-Version: 1.0
References: <2bfda6d3-da35-7cff-93f5-4d94deabffd0@gmail.com>
 <4CACAAE4-2E91-485D-9BA2-39276BEABC91@gmail.com> <9e29a01e-bf7b-35fd-09dc-280449f06dac@gmail.com>
In-Reply-To: <9e29a01e-bf7b-35fd-09dc-280449f06dac@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 21 Aug 2023 21:11:34 -0500
Message-ID: <CAFche=g6rxXiYk-RmnBe71LAMG1T85nupLSWjyzB8SFAixnJ_g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: GVKI2OD5DQS3UNFIFOYZ2V3J73NJ7CUK
X-Message-ID-Hash: GVKI2OD5DQS3UNFIFOYZ2V3J73NJ7CUK
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Paul Atreides <maud.dib1984@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410 and PCIe connection
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GVKI2OD5DQS3UNFIFOYZ2V3J73NJ7CUK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7704748229438685119=="

--===============7704748229438685119==
Content-Type: multipart/alternative; boundary="000000000000abc1d4060379843a"

--000000000000abc1d4060379843a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

PCIe using the iPass+ zHD connectors is not supported on X410 with UHD.
Like Marcus said, there's no software support in UHD for it. It is only
supported with NI LabVIEW using the NI-USRP driver.

Wade

On Mon, Aug 21, 2023 at 11:36=E2=80=AFAM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 21/08/2023 12:24, Paul Atreides wrote:
> > A QSFP PCIe card will work on a desktop for the X410. National
> instruments sells the kit with the necessary cable.
> >
> > <end transmission>
> Sure, but the X410 actually includes a PCIe X8 hardware interface. The
> usual reason for preferring the PCIe direct
>    interface is to reduce latency, although in reality it makes only a
> quite-small difference.
>
>
> >> On Aug 21, 2023, at 10:54, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
> >>
> >> =EF=BB=BFOn 21/08/2023 07:29, . AERMAN TUERXUN wrote:
> >>> Hi USRP user,
> >>>
> >>> I am using USRP x410, and wondering is there possible to use PCIe for
> streaming data instead of sfp+?
> >>> If possible, is there anyone know how to connect device to the host
> and what should be the =E2=80=9Cargs=E2=80=9D for USRP?
> >>>
> >>> Best regards.
> >>>
> >>> _______________________________________________
> >>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >> My guess, based on cursory inspection, is that the PCIe interfaces
> don't yet have software support.
> >>
> >> _______________________________________________
> >> USRP-users mailing list -- usrp-users@lists.ettus.com
> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000abc1d4060379843a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">PCIe using the iPass+ zHD connectors is not supported on X=
410 with UHD. Like Marcus said, there&#39;s no software support in UHD for =
it. It is only supported with NI LabVIEW using the NI-USRP driver.=C2=A0<di=
v><br></div><div>Wade</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Mon, Aug 21, 2023 at 11:36=E2=80=AFAM Marcus =
D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">On 21/08/2023 12:24, Paul Atreides wrote:<br>
&gt; A QSFP PCIe card will work on a desktop for the X410. National instrum=
ents sells the kit with the necessary cable.<br>
&gt;<br>
&gt; &lt;end transmission&gt;<br>
Sure, but the X410 actually includes a PCIe X8 hardware interface. The <br>
usual reason for preferring the PCIe direct<br>
=C2=A0=C2=A0 interface is to reduce latency, although in reality it makes o=
nly a <br>
quite-small difference.<br>
<br>
<br>
&gt;&gt; On Aug 21, 2023, at 10:54, Marcus D. Leech &lt;<a href=3D"mailto:p=
atchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; w=
rote:<br>
&gt;&gt;<br>
&gt;&gt; =EF=BB=BFOn 21/08/2023 07:29, . AERMAN TUERXUN wrote:<br>
&gt;&gt;&gt; Hi USRP user,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I am using USRP x410, and wondering is there possible to use P=
CIe for streaming data instead of sfp+?<br>
&gt;&gt;&gt; If possible, is there anyone know how to connect device to the=
 host and what should be the =E2=80=9Cargs=E2=80=9D for USRP?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Best regards.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-l=
eave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a=
><br>
&gt;&gt; My guess, based on cursory inspection, is that the PCIe interfaces=
 don&#39;t yet have software support.<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave=
@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br=
>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000abc1d4060379843a--

--===============7704748229438685119==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7704748229438685119==--
