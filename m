Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F57AFFB2A
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 09:42:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 99E73386359
	for <lists+usrp-users@lfdr.de>; Thu, 10 Jul 2025 03:42:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752133336; bh=52qeR+VFTkDwXiGSl7kk8/m4ZtPWKMKO+0BvrHXh7DQ=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=r9YaL/lkeMuAQExNi2TtCTb9Pb5ycc2lYELig3UM7QbepmiIiC7GA+XazBQhxxKi2
	 ukSv7/RoztbhEovo4oxDT0obwrDliLaFzAoibtHg6JRFmY7XNOM8OdNH5r6+9qHJim
	 /YBafZnVeTVsjALKUYoBnSAPA+aeRR+TnGeFHk/MSj+FcifJ0AaMVcjNQMU58GpabL
	 hT9mOaluC4FHcFLNI9y4LbKOTQXyqy1U4PpG9phQnwMP3TMs2f2ASeXSALZZfPw4pN
	 Cue3/qvkCUs0ZXu3sx45H6TSUwNlWTetpCDk4KD6yf9DsmoYikdTy5wxUuz1jsmKyy
	 kcFn/8hHE176g==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id E1DBE386331
	for <usrp-users@lists.ettus.com>; Thu, 10 Jul 2025 03:41:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ytD7A3w6";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ae3b336e936so122252766b.3
        for <usrp-users@lists.ettus.com>; Thu, 10 Jul 2025 00:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1752133313; x=1752738113; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kj/sJLxklz+ZwgnEq/JGUArzj5e1zloZo6WQeHCYPiU=;
        b=ytD7A3w6dAL71nT2JbZTSnJuyuW6M9zcGoGltB/BAvDxTowlKaEY3XEBpY21sq7auz
         K26tkYlOU6WSU0hKZg2fd5mV9FSAflhtrHuU4G1X7Xjd59FhC+tiAPoGkICdgv+2oB3q
         uwujlF556VHGSNl2Wj96bjal4Wer+1+7C+OkgtOH6j03qGYvELsXEiuceG2+7dK+W/cX
         mmtoALo4R89eCeRjHO+prxh4HAutRE5XnCuPg7A/qhGUKPI8BkQrRlCqZVeTuYfJERHi
         hTEjMsAhV+S/WZ/bjg/Uq0pJgvZJMNy1cc2rd6maWgOczkscvGGcTciisfnQXei3yC18
         q8EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752133313; x=1752738113;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kj/sJLxklz+ZwgnEq/JGUArzj5e1zloZo6WQeHCYPiU=;
        b=lbLh5ViKAVQh3FAYSy5u8ZoYPDmrhRuikrglz4qbozTzZlj/JsWnfc1JyqUrz5DhOo
         mU27LkYdrxhJMU1Pk+bYoZoaOWtnNghw0t1Je0eHdzt40LpCh5WyT66dIA8jiqeoJYgk
         9e9tROWVsdBtX3tjMEc/09b4w+ikm6MlDfhaS6SOUC9cxzf+YyD4II3nOU6F/+0ywflO
         N+hP84A37RdAa1HNaTyec1As8eh+6jJjXMhevcaSyOJ6+F0i56dtjtR5sHtYrgXfD1RN
         k+RtZiW2cFpVuH714wshhycezzluEnfWejXSqivu7Wxs6/WkJJ+UdbpxyISo0YlxrMTh
         Dg7Q==
X-Gm-Message-State: AOJu0YzVMInePTTYnzgiM2IkYyImSxARDRw8DlImBhIwVX2IJ9XhFvEI
	6P0XuEgjI3uaociRNv0EZiKapmSQOdvoJYe7KjtHMEAeidc5tfOXHYwXDdCBJFjuaDp6fuvTinG
	heKmkSIM/KtfHRtqBnJu1CQuO3LcAqgQ92Vis9RLG5+Ht6erdIO+oMfs=
X-Gm-Gg: ASbGncuWlW2EjyDBWzrthMQ5aKxJMTRldRhPLuyYPLO9OZfdHF6isgZu4Hbj8+mGO9L
	tFC23TyzYoVvtslUz4U9VAobQjWJHo8XUxfEjcPKT3dm11bFVXRDaKfDKDsimwd4eZffxbJaPU2
	SSYwnGtje5izj2kA6A8KU397dLBrb9lbyvgMLeazKGKCevWMGQ5CtMppJrdc1zVRAtzbrI3H24J
	ys=
X-Google-Smtp-Source: AGHT+IEJ5LLMNnXdzsVN0KSWLU6YxxFFfhh1gmBgq4aIGGS0uMqgMIfCOBrMk2O42CGHk3W7A15SvgFYUYQ08lHV9TM=
X-Received: by 2002:a17:907:7f93:b0:ae3:b94b:36f5 with SMTP id
 a640c23a62f3a-ae6e7038b68mr156985166b.34.1752133313214; Thu, 10 Jul 2025
 00:41:53 -0700 (PDT)
MIME-Version: 1.0
References: <682d5035a18344d99ed8bbca350e8bd4@vastech.co.za>
In-Reply-To: <682d5035a18344d99ed8bbca350e8bd4@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 10 Jul 2025 09:41:40 +0200
X-Gm-Features: Ac12FXzcEv5Y96TRXClEHD0GyFIxnhDRIVA61FM_74khDCfOAbh0PP5zfB2Z1nQ
Message-ID: <CAFOi1A5=0La-=Yg85FoobE08u_SuZE1WWxw10VR6hN5GUu7W3A@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: IGZJJXIJIOW2AOET72X742OEZMZE54BT
X-Message-ID-Hash: IGZJJXIJIOW2AOET72X742OEZMZE54BT
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: usrp reporting different mtu's?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IGZJJXIJIOW2AOET72X742OEZMZE54BT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8419109068123101476=="

--===============8419109068123101476==
Content-Type: multipart/alternative; boundary="000000000000bbceb506398e5314"

--000000000000bbceb506398e5314
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kevin,

we probe the path MTU, not read it from the NIC, so it's possible that
something along the way is restricting the MTU to your device 101.1. Maybe
the device itself has a different MTU setting.

--M

On Mon, Jul 7, 2025 at 1:31=E2=80=AFPM Kevin Williams <kevin.williams@vaste=
ch.co.za>
wrote:

> Hi,
>
>
>
> In my UHD logs I see:
>
>
>
> [DEBUG] [MPMD] Path MTU for address 10.20.101.1: 1500
>
> [DEBUG] [MPMD] Path MTU for address 10.20.102.1: 8016
>
>
>
> But =E2=80=9Cip addr=E2=80=9D shows that the mtu is 9000 on both 10 gbe  =
interfaces on the
> the host and the usrp.
>
>
>
> This is point-to-point connected.
>
>
>
> What else could be causing this?
>
>
>
> Many thanks, Kevin
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000bbceb506398e5314
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Kevin,</div><div><br></div><div>we probe the path =
MTU, not read it from the NIC, so it&#39;s possible that something=C2=A0alo=
ng the way is restricting the MTU to your device 101.1. Maybe the device it=
self has a different MTU setting.</div><div><br></div><div>--M</div></div><=
br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Jul 7, 2025 at 1:31=E2=80=AFPM Kevin Williams &lt;<=
a href=3D"mailto:kevin.williams@vastech.co.za">kevin.williams@vastech.co.za=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div class=3D"msg8945820070004696975"><div lang=3D"EN-ZA"><div class=3D"m_8=
945820070004696975WordSection1"><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>Hi,<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u=
></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">In=
 my UHD logs I see:<u></u><u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">[DEBUG] [MPMD] Path MTU for address <a href=3D"http://10.20.10=
1.1" target=3D"_blank">10.20.101.1</a>: 1500<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">[DEBUG] [MPMD] Path MTU for address <=
a href=3D"http://10.20.102.1" target=3D"_blank">10.20.102.1</a>: 8016<u></u=
><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">But =E2=80=
=9Cip addr=E2=80=9D shows that the mtu is 9000 on both 10 gbe =C2=A0interfa=
ces on the the host and the usrp.<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">This is point-to-point connected.<u></u><u></u><=
/span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">What else could be ca=
using this?<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">Many thanks, Kevin<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p></div></div>_______________=
________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000bbceb506398e5314--

--===============8419109068123101476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8419109068123101476==--
