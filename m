Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFA2A7F75B
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 10:12:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2D589385A6F
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 04:12:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744099924; bh=QF9cE/jaaZPiLqUsCmAfiI8F/h9SICwFwqoipQk93OI=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Oeod/t4MKN1WikXwSUTD5Kodzo/fapNqLmswdfD75cP0W8VgX4oawUvH+OmRJZLv4
	 J80bv/5FDugQpW17shrZ1OVrR2fugLPtOxLsJjrDP8SmqvtADFPv12TG60l8XwBVJ9
	 gYKm0ZuzvJ7kAP4WITvs6nw6mIM+ZZxcN2zA5yOOKJOKcUP6rJtKo12tomVW03PipC
	 W+dz+nQuTs9VuPWye+fWXpi0mHvTnOX14verKQeap/KY1EEOkPre2SeoUCoMLsvpeA
	 uSTjPE1qdm2cbCw+Bb2lC8HcPTwOMxJckDCEzqmJ54VRg1IiV2vChZjbjDv+YsEIJR
	 tTgOHrO9Fqhdw==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id F39013859E9
	for <usrp-users@lists.ettus.com>; Tue,  8 Apr 2025 04:11:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="brCg9gdE";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e5e0caa151so9397580a12.0
        for <usrp-users@lists.ettus.com>; Tue, 08 Apr 2025 01:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1744099912; x=1744704712; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bvC8lyzZ7NppmoU/I1mMt/UR2bSRW+sRV/D2SGGbptE=;
        b=brCg9gdEmblZKAnvoIkjXBEx3+yEiU4kw3IzpROTl7O5ATF2599TlImyN4sJMiUumf
         rUdIVfMfrya/5XRUMJ4siet2H7uaagi5/8gR1MMd5WLDgjTV8gu2woPzAC7fup70PVks
         7Pc8ocLMwK0eA2zDPhHi7V8s4OuKfuv8i5loGbvEc/N49jKTAsXTfZBvgd0e7Qf2iKO1
         tOdpxzwxUZBV19jhapJ3Uqg1/MA95em2wnbBHON0wl+D/hUw+MMmtve2qbdt0vEN3f06
         KZrvlkQpmTdbWLmhMNEa38LtqfZILmERXgl4XydUsc38R7JFNQiXYWRpMpbyaZzbnsxC
         ltXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744099912; x=1744704712;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bvC8lyzZ7NppmoU/I1mMt/UR2bSRW+sRV/D2SGGbptE=;
        b=bqGIe3kmDbjh94N+ZyqWVk3OD0p3bgKH/jAanJ9CAQG/j1TknWdT+HxxW6/XgnT2o1
         TETVTJKablUq51F/ynDYZvu10p/YedNW74ylXTnYBlMjlxYVdPG7cNG8rUf+4a1x318r
         ah8bF9+9osOebTyhCW2dFCtXBKhT0ufnSqLy4ruAyqqOvLaJR7oxcXB5CEE31sm5ssNa
         cGI6WcJsivXc3MXzRZxuiPJVCpEGMgTbceTn/DDzp8zgPg9Rvro+6Zb3qqzSzCCL91K/
         JNzR8p5346I33XFypWcr0jS52A0Z6ndIqGTYR3hsyCDkttWzD0LxRYUad0Ati6/mAjlO
         9Zrw==
X-Gm-Message-State: AOJu0YwoPb6NykkZ+1kZwbCkkyUICdBOTM49Yp7tLdaQHBbdtIlbMRjd
	SpKp4rBGackkOvZsvB6jkcyyfAsciyTNd9xMEEkX2YHVKNXXVMuXaJ60ZTuiEB7xBfMpWWBEF4Q
	+E/jqzmnzq9aBuZC3AhRUVZuvR4H7EpAJx+/X4aVay52K1Yr8rwhWjg==
X-Gm-Gg: ASbGncvyycbsd6LGaAV+MgMeTRvOF52lvPN4QlsE06K9IS15n9VcYhpWnDfHaVx0zs1
	YakZO4ZDqabT0CyQHD8Ya3C9vRdYvYq0gtHuP75ZxwcfhHy+HtsPHCplRfV7M65n5yKm8lh/bMW
	o0fDk5BHrg+UvMnR7DBLfVhvqqnMl2g2RtUFOCWwOTBkj77QdTjgoQxMArIQ==
X-Google-Smtp-Source: AGHT+IEx+C6TOnavB8xnp11IwvFck8OlMZ/HW2qOrhyCylOUS0J7033V/H2Z2P1LeoXiA8lwhA9nRA3sUBV+gxTtTGQ=
X-Received: by 2002:a17:907:9813:b0:ac2:af42:4719 with SMTP id
 a640c23a62f3a-ac7d6d05fc4mr1270214866b.21.1744099911687; Tue, 08 Apr 2025
 01:11:51 -0700 (PDT)
MIME-Version: 1.0
References: <CH2PPF2C97A4CC526CE619D2616765603E6CEAA2@CH2PPF2C97A4CC5.namprd07.prod.outlook.com>
In-Reply-To: <CH2PPF2C97A4CC526CE619D2616765603E6CEAA2@CH2PPF2C97A4CC5.namprd07.prod.outlook.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 8 Apr 2025 10:11:39 +0200
X-Gm-Features: ATxdqUHw9u76sKAhvtn7FgGHrX6Q39wwEjFT4BI-_Eeap6BUw7jx8cZVXFcJFnE
Message-ID: <CAFOi1A6FGXdWrAbhswXRfyHk1uCAPhxQvZ7qPiZYh2Uuu=FJMw@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: IFIS6Z6GSRCMZOCEDQMYKYZQ5RDSC6DN
X-Message-ID-Hash: IFIS6Z6GSRCMZOCEDQMYKYZQ5RDSC6DN
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 100 Gigabit Ethernet Suggestions for USRP x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IFIS6Z6GSRCMZOCEDQMYKYZQ5RDSC6DN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5474588822705916540=="

--===============5474588822705916540==
Content-Type: multipart/alternative; boundary="000000000000b07d0306323fe721"

--000000000000b07d0306323fe721
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 7, 2025 at 6:08=E2=80=AFPM Jones, James (jtjones49) <
jtjones49@tntech.edu> wrote:

> Hello, I am trying to get the full sampling rate from the USRP x410 which
> is 400 MHz.  I understand that I will need a 100 gigabit ethernet
> connection to do this. Do you have any setup recommendations or rack
> mounted server recommendation that can support this bandwidth?
>

James,

this might be helpful:
https://kb.ettus.com/Multichannel_RF_Reference_Architecture#Validated_Hardw=
are

Cheers,

--M

--000000000000b07d0306323fe721
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Apr 7, 2025 at 6:08=E2=80=AFPM Jones,=
 James (jtjones49) &lt;<a href=3D"mailto:jtjones49@tntech.edu">jtjones49@tn=
tech.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div class=3D"msg6053691207863758512">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hello, I am trying to get the full sampling rate from the USRP x410 which i=
s 400 MHz.=C2=A0 I understand that I will need a 100 gigabit ethernet conne=
ction to do this. Do you have any setup recommendations or rack mounted ser=
ver recommendation that can support this
 bandwidth?</div></div></div></blockquote><div><br></div><div>
<div>James,</div><div><br></div><div>this might be helpful: <a href=3D"http=
s://kb.ettus.com/Multichannel_RF_Reference_Architecture#Validated_Hardware"=
>https://kb.ettus.com/Multichannel_RF_Reference_Architecture#Validated_Hard=
ware</a></div></div><div><br></div><div>Cheers,</div><div><br></div><div>--=
M</div></div></div>

--000000000000b07d0306323fe721--

--===============5474588822705916540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5474588822705916540==--
