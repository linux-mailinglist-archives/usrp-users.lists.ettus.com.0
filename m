Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D3E66036E
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 16:38:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23B2A3844DE
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 10:38:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673019511; bh=xWlHTcMQTKPjnYbFNPfT/SEcOCVADs9SsvlIPK/PXSQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=l1OjZVeBtX70TL5kcAJHDpRMfuKgyk/TH93wOknty9f500Zl2G3vy52SIlbeXmnIB
	 MVoD6Lm9HuXhhnAmjOFjQc2BkhjzDYDlcpMcljMba4rKEipeTuBE2i36m5ZjsFNZrz
	 ceMblPpF38C2B0uyNEZC2dITLMoFKQ9foMgPS7Q/XwYki30b0KCe5QkLLd+DYZlkdc
	 Tlseoo1IfTvQ5iKVZvduePA2zjN/HevyGIzmqUR6rDgdTlzl+q74x0vMjc4n87nuPe
	 DLsM6003f6VC7nP1efjbdt9md7gxsFj4iwh/TLGGLiro5PN+finrF8UE3E4pV14rAP
	 BhRc3EQBVkm1Q==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 94A98384498
	for <usrp-users@lists.ettus.com>; Fri,  6 Jan 2023 10:38:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Lbp1IaUX";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id t17so4277433eju.1
        for <usrp-users@lists.ettus.com>; Fri, 06 Jan 2023 07:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/vMVOBP3RrdFEY06HyONANYMj5SK8DE5Qyw1TLHufSs=;
        b=Lbp1IaUXI97k2z8hQytgaqrscBKqOG6NyMhzmAdley5BADKpTgc2W0+rghBiSWzKwl
         77SavPwp+I+gLymO3va5eQ2uAK/W+UzsICyn99OmGCU2TIA0NysetO00lRyn43ZBrK6k
         H72BwK5dmvEw29gWp+zLojxx2qlmLRLKrQKTqtNWrh/U47iN6z5Lax0ajwUUfMggcgA7
         f4YVf5OgXlFKiS6OYoNv3OeAmcu4uXRWaOEb34/im/0L4eCyW299WY0obKEnwUJ6zmsl
         vYf8i+ANn7edEQtYWLa76YaCxOCJK8099OcMIRUCxfZKsBbp+8LHQsz8I9HLm0TR8P1c
         AlZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/vMVOBP3RrdFEY06HyONANYMj5SK8DE5Qyw1TLHufSs=;
        b=vWAdgC/SSJItrTKxJvwrMft+BaLbM1dSPwAi5kHtv7DsL2QMBMv3Bce1ZPiDYbfqBF
         Jopo5OcZ7xe5SLBJV+BpbKDS6ANqkGJ+Pnn8jTb268GWwtyk+OrwrqGiK7hKIEm0eUIk
         MlIoGgwTN9f4x1MI3bwhnriXyobD2bM7wsmXAHAR+Y8Ycs2rvR7hf9SHdoIvaExsDiu9
         n+7b7hDweW1e+JhstLf7GClMLYwX8yOPtUNy0IVM8At4WiIsPwQucjZH/RKiOcFWbi+w
         jBFfK6sE3nCfIysXgIkTQKNQlOf275Zp30wjllZO6U1IwF0JGCJwWjGjkpbWpFrKcblq
         USjw==
X-Gm-Message-State: AFqh2krZyPNnPfjbbp51Vfs+wLDKAFFtaVyT0BCr+crEApLIM8lTp+Z7
	cNvCt6TfRuNs4SxFvOpxxftHmuQUh9VZ8KvyOeo=
X-Google-Smtp-Source: AMrXdXtigWd3cpNvbit8QhPEEyhDUE9IwEMUCCZovVRmF6daQvwOCNjFCyFGLJ3TqsaJnxe8WzH7KqNhToM/U7j841A=
X-Received: by 2002:a17:907:8745:b0:83f:5f77:8fff with SMTP id
 qo5-20020a170907874500b0083f5f778fffmr3250930ejc.293.1673019502163; Fri, 06
 Jan 2023 07:38:22 -0800 (PST)
MIME-Version: 1.0
References: <GV1P250MB0785CAC2260FCF243F59BAEE90FB9@GV1P250MB0785.EURP250.PROD.OUTLOOK.COM>
In-Reply-To: <GV1P250MB0785CAC2260FCF243F59BAEE90FB9@GV1P250MB0785.EURP250.PROD.OUTLOOK.COM>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 6 Jan 2023 10:38:10 -0500
Message-ID: <CAEXYVK4uH7RW5WxqSAvHcB1eJAw_Y4jf13j6t05SO-SuNczBVw@mail.gmail.com>
To: =?UTF-8?Q?Maximilian_Matth=C3=A9?= <maximilian.matthe@barkhauseninstitut.org>
Message-ID-Hash: PYROT4AKTJHXMJ6ACAP5HEZOSTFWR343
X-Message-ID-Hash: PYROT4AKTJHXMJ6ACAP5HEZOSTFWR343
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RfNoc Equivalent of get/set_master_clock_rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PYROT4AKTJHXMJ6ACAP5HEZOSTFWR343/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8091279582119401775=="

--===============8091279582119401775==
Content-Type: multipart/alternative; boundary="00000000000020fc6505f19a355f"

--00000000000020fc6505f19a355f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 6, 2023 at 3:20 AM Maximilian Matth=C3=A9 <
maximilian.matthe@barkhauseninstitut.org> wrote:

> Hello,
>
> the multi_usrp class has methods get_master_clock_rate,
> set_master_clock_rate and get_master_clock_rate_range, see
>
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#aeefd=
7580630b2baa4e4c90df3a36d9f0
>
> Is there an equivalent in the RfNoC world, i.e. getting/setting the maste=
r
> clock rate with either the graph or a block control from the device? Sear=
ch
> through the UHD RfNoc documentation did not show up any results.
>

Looking through the multi_usrp_rfnoc.cpp file, here are the calls you're
looking for:


https://github.com/EttusResearch/uhd/blob/dfccfcefe555cb10d1d419e5d7fb9b7d5=
2e43dfe/host/lib/usrp/multi_usrp_rfnoc.cpp#L708

... which operate on a radio_control object:


https://github.com/EttusResearch/uhd/blob/dfccfcefe555cb10d1d419e5d7fb9b7d5=
2e43dfe/host/include/uhd/rfnoc/radio_control.hpp#L45

So you should just be able to ask for the controller block and issue the
calls, I believe.

Brian

--00000000000020fc6505f19a355f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Jan 6, 2023 at 3:20 AM Maximilian=
 Matth=C3=A9 &lt;<a href=3D"mailto:maximilian.matthe@barkhauseninstitut.org=
">maximilian.matthe@barkhauseninstitut.org</a>&gt; wrote:<br></div><div cla=
ss=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div c=
lass=3D"msg6916895755288260022">




<div dir=3D"ltr">
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">Hello,</span></d=
iv>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
</span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">the multi_usrp c=
lass has methods get_master_clock_rate,
 set_master_clock_rate and get_master_clock_rate_range, see<br>
</span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)"><a href=3D"https=
://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#aeefd7580630=
b2baa4e4c90df3a36d9f0" id=3D"m_1565142977517041712LPNoLPOWALinkPreview" tar=
get=3D"_blank">https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__us=
rp.html#aeefd7580630b2baa4e4c90df3a36d9f0</a><br>
</span></div>
<div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Is there an equivalent in the RfNoC world, i.e. getting/setting the master =
clock rate with either the graph or a block control from the device? Search=
 through the UHD RfNoc documentation did not show up any results.</div></di=
v></div></blockquote><div><br></div><div>Looking through the multi_usrp_rfn=
oc.cpp file, here are the calls you&#39;re looking for:</div><div><br></div=
><div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/dfcc=
fcefe555cb10d1d419e5d7fb9b7d52e43dfe/host/lib/usrp/multi_usrp_rfnoc.cpp#L70=
8">https://github.com/EttusResearch/uhd/blob/dfccfcefe555cb10d1d419e5d7fb9b=
7d52e43dfe/host/lib/usrp/multi_usrp_rfnoc.cpp#L708</a></div><div><br></div>=
<div>... which operate on a radio_control object:</div><div><br></div><div>=
=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/dfccfcefe5=
55cb10d1d419e5d7fb9b7d52e43dfe/host/include/uhd/rfnoc/radio_control.hpp#L45=
">https://github.com/EttusResearch/uhd/blob/dfccfcefe555cb10d1d419e5d7fb9b7=
d52e43dfe/host/include/uhd/rfnoc/radio_control.hpp#L45</a></div><div><br></=
div><div>So you should just be able to ask for the controller block and iss=
ue the calls, I believe.</div><div><br></div><div>Brian</div></div></div>

--00000000000020fc6505f19a355f--

--===============8091279582119401775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8091279582119401775==--
