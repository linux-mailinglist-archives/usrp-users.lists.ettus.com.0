Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAF1A42054
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 14:19:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 261FA384E0C
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2025 08:19:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740403144; bh=i4+HFuxvievHhp4rqXmSIN0GNqkx8jh9IdoYd6CNBtc=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=01aoiysoQpLAj032GAhsUo4zREE3ZvnK/6hmVNWgnUT/39wv1zPyVCAN+dM+devmo
	 x3IlrPBZcdCTRo37JFdkzJmAd8fAgMWHpdk9WzpqgTVhhtq8XW/q0mRwX/q1eX9QVc
	 fpcXZ7Bq2dhGaddjZjzwln9ZuY1ZIqa0tRTWj6KtptMn8FY88D0rWl0hI9M43vzghn
	 ZobkeIVdnS5UhSiqBM4cfjPJ4BYCd6V+xuPvGyOHxyJJsyb+e/V1EDPvdtaNOrKJMu
	 M0NYmoGCbjzQjbcpJ88Lh+uibI70XIcO6cSfc6RKxPr8+O3F89ylaLTZGLtSqP5WzC
	 tTM6yKR8CZQTg==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 666C1385FFA
	for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2025 08:18:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="o1n/TAaR";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5ded368fcd9so6161488a12.1
        for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2025 05:18:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1740403081; x=1741007881; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QFkKZntyEZAYA0In6DEvLkMG5vfjOpuce+mCpJv4ZS0=;
        b=o1n/TAaRynG8R4/FR8INDsPKsEkk6Ui2LkYkYesbk1TuXlisNTPJO/QJrO1rVhfX6W
         MD3vbUSFOCEHkCUUxzX4nZGL13TneuM0rAMW4Nxzj+RfS0rb7WY1eOSQOe3o4ub0Kgsj
         /zKxuyyBiOdcYAi71fjDQptof07Tk0zPcWKHOgyAjcGow5ce8DQYc3yisQ0uf7FzPigH
         KkiZeRZKa1SA6NrHDWbHVDxz4CkqwlOAmhga5S7nj4GVC5whV7EHOuvYZ3IHPP7Gy5FV
         8g+pOZzeeu/qnUXe6qNiGima5QrzsKg0mv3kwDLDfXaD4KaqLUe3VpjT8jZkzCKuHOna
         knfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740403081; x=1741007881;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QFkKZntyEZAYA0In6DEvLkMG5vfjOpuce+mCpJv4ZS0=;
        b=HLwkjFtDbn2iyg2fiHU01MENOlHmj95SVO/NDJS+3M1AHVC+U/oR6dlT9o6kVBnKbZ
         1FOo32YQDX3jrClx5QGQl8wdNZxtH92BrFUal7FcyLpitITvaoXUuANnDXWDokLONmiW
         jO+w/8gkib5XeztpMM+KhENpNwtrqzA9hThiOrYcVrAmohKhrTdJneM3K4e0P6me0lhN
         cNNhtWZp8sZ138ZJ6kMWMl6IsGJkLkyq4lM4gy5R8J0uTXWztCiPEQJLnFsvz7mv3Uwy
         T7KTtUJysRpGQd46US93NYDe55a+6VAcSoaMj9VaDbNw/lyO1v50uLfkXaXrncZec2hx
         UehQ==
X-Gm-Message-State: AOJu0Ywr6IdX+ZyGiq8u+C31D1pIQsuN3BpK40NREGKX9+FEjnPi4rca
	/pJM+6xnDmhYoMCryzrU2nBrdvtn24Ycwion/05B5VXDDC0BWoXuqqnFngJhp9ctFpv2JfsmvSu
	IXRBOVid4a3A5Zz3/Q3OefacZ+xvh4ZfEaklZaR3N6FbTQXjDP7c=
X-Gm-Gg: ASbGncuzQFf3kir/xcjukHHo9ZJPtCwbxs36lq+rt8V1emCV3eZxjGh/znR6UUu1Pgs
	kfxdnQ9PiSxylHFNTOSmNKnnfd16V+TDvIHHe2tDp89uOemXDmCCfYSbOWWPdma6GNo1oPsjVuS
	r+aeThypvzsi+GsUFRr485cCFKoM6FnL+MyMaDRA==
X-Google-Smtp-Source: AGHT+IGk2QnRFYE9+F4jAPfPpFzsz37q3C1dg3V5bKBa1bAaEmxmZmvjxQQcoruYQATZLjtiDIJv2BWixM/CC65TSPQ=
X-Received: by 2002:a05:6402:430c:b0:5e0:82a0:50c8 with SMTP id
 4fb4d7f45d1cf-5e0b7236f0bmr12932901a12.27.1740403080827; Mon, 24 Feb 2025
 05:18:00 -0800 (PST)
MIME-Version: 1.0
References: <2165ec090211cdd30453512262418412@atindriya.co.in>
In-Reply-To: <2165ec090211cdd30453512262418412@atindriya.co.in>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 24 Feb 2025 14:17:49 +0100
X-Gm-Features: AWEUYZnsUTi4pA2W-wx3MdTUvtrNA4mNQIQCHupOVEjQkFLjkDRIKuQW1nM9m8U
Message-ID: <CAFOi1A4rwyzhAWPuNZouL964usyrmED+0N7HTpFDS-5A0Gau-g@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 7BCVXY72NHW4TNUYHTR5FXOWBVBXDZMN
X-Message-ID-Hash: 7BCVXY72NHW4TNUYHTR5FXOWBVBXDZMN
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG: GPIO Toggling
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7BCVXY72NHW4TNUYHTR5FXOWBVBXDZMN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0118992526980913911=="

--===============0118992526980913911==
Content-Type: multipart/alternative; boundary="0000000000006630e2062ee32b39"

--0000000000006630e2062ee32b39
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 24, 2025 at 10:42=E2=80=AFAM <kavinraj@atindriya.co.in> wrote:

> Hi,
>    I have written a c code for GPIO toggling in USRP B205mini-i board.
> The pin should be high for 1microseconds and low for 1milliseconds. I
> have given the c code to verify whether it is correct or not?
>
>      while(1)
>      {
>          uhd_usrp_get_time_now(usrp, mboard, &full_secs, &frac_secs);
>          uhd_usrp_set_command_time(usrp, full_secs , frac_secs + 1e-6,
> mboard);
>

This won't work, you need to set this in the future from "time now".

         error =3D uhd_usrp_set_gpio_attr(usrp, bank, "OUT", 0x01, mask1,
> mboard);
>          uhd_usrp_clear_command_time(usrp, 0);
>          uhd_usrp_get_time_now(usrp, mboard, &full_secs, &frac_secs);
>          uhd_usrp_set_command_time(usrp, full_secs , frac_secs + 1e-3,
> mboard);
>

Same here.


>          error =3D uhd_usrp_set_gpio_attr(usrp, bank, "OUT", 0x00, mask1,
> mboard);
>          uhd_usrp_clear_command_time(usrp, 0);
>      }
>

Get the time "now" outside of the loop, and use that as a base reference.
When you've fixed that, I recommend you connect it to an oscilloscope for
verification.

--M

--0000000000006630e2062ee32b39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Feb 24, 2025 at 10:42=E2=80=AFAM &lt;=
<a href=3D"mailto:kavinraj@atindriya.co.in">kavinraj@atindriya.co.in</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
=C2=A0 =C2=A0I have written a c code for GPIO toggling in USRP B205mini-i b=
oard. <br>
The pin should be high for 1microseconds and low for 1milliseconds. I <br>
have given the c code to verify whether it is correct or not?<br>
<br>
=C2=A0 =C2=A0 =C2=A0while(1)<br>
=C2=A0 =C2=A0 =C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uhd_usrp_get_time_now(usrp, mboard, &amp;=
full_secs, &amp;frac_secs);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uhd_usrp_set_command_time(usrp, full_secs=
 , frac_secs + 1e-6, <br>
mboard);<br></blockquote><div><br></div><div>This won&#39;t work, you need =
to set this in the future from &quot;time now&quot;.</div><div><br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0error =3D uhd_usrp_set_gpio_attr(usrp, ba=
nk, &quot;OUT&quot;, 0x01, mask1, <br>
mboard);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uhd_usrp_clear_command_time(usrp, 0);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uhd_usrp_get_time_now(usrp, mboard, &amp;=
full_secs, &amp;frac_secs);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uhd_usrp_set_command_time(usrp, full_secs=
 , frac_secs + 1e-3, <br>
mboard);<br></blockquote><div><br></div><div>Same here.</div><div>=C2=A0<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0error =3D uhd_usrp_set_gpio_attr(usrp, ba=
nk, &quot;OUT&quot;, 0x00, mask1, <br>
mboard);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0uhd_usrp_clear_command_time(usrp, 0);<br>
=C2=A0 =C2=A0 =C2=A0}<br></blockquote><div><br></div>Get the time &quot;now=
&quot; outside of the loop, and use that as a base reference. When you&#39;=
ve fixed that, I recommend you connect it to an oscilloscope for verificati=
on.</div><div class=3D"gmail_quote gmail_quote_container"><br></div><div cl=
ass=3D"gmail_quote gmail_quote_container">--M</div></div>

--0000000000006630e2062ee32b39--

--===============0118992526980913911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0118992526980913911==--
