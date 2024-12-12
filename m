Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 858739EE372
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2024 10:51:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D59CA3861A6
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2024 04:51:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733997072; bh=3X6QGRPIDw7WPwR7IKmZ3Ky1hxLm7F7jEtwd9BDEblM=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tdXElhp+VHPAwhJt38JHuNnIBpesWMhUg+FlB9VuBi6bSOLhK0jfOM+a3yDM8IonB
	 rZvVCey0b5Q9nuIUmTt1RcojJSf0h5dCq96YrX96PGD+HGCjMbg+iqvFTDWPTmBTvv
	 JSpYMC5nmVDHk5lODUeflhYRO8fRlAD0OFHSO21J9XHnw6lw+V0q7ZMUma336dH4kc
	 +6ZmKlyrMZWRfdISdPh5uTWXqPdQabfa0Ws3RBXcYNfphymkqlW4dvsSeiVY2wa0DC
	 tN8VwIAZ/V/743JP7WtCQqIpgORM9tclJJTsEFeJEf1h971Ct+V8wi6zGalYDgl0bM
	 KMh2Ld8V32C4A==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 836A7385F79
	for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2024 04:50:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="TBWu18CN";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5d3d14336f0so623305a12.3
        for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2024 01:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1733997019; x=1734601819; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JczPFSCkIZIZ/jGm9AwqwWN5BxS8T7aowwsiLqsNVVg=;
        b=TBWu18CN85kNthyO7ufb24xWHuuGC2zhfopsnvj8IUUC8ZjH5uxM6FRdb1br4HCc4Y
         k8GobJW84Dcj5IC8JWb+I/T+tbsTqj6zanJRiQmALoa93Wd/7X2DXqXf1j9jGk4+KWhv
         AkJ0zwcenAgSuASViUo8FkxraO0LC9QOZnabgZOqUICz9c6p1+raZvGK7D2hUIlMjda+
         8PTtT9xCmbRhT2TbbJ01VN3+N32aUxLAQgcSlgsuF1+HTWnJZl/+cosWt4PaYRRv047D
         lb9uEoS6oJOkbeJX85bZP8yuheW5L/Ixn45pqBqYDyPhV9pQh8ISTtAIb9c1SQtipVHM
         oJcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733997019; x=1734601819;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JczPFSCkIZIZ/jGm9AwqwWN5BxS8T7aowwsiLqsNVVg=;
        b=g5dsfj2bgEg+3pVGnd+0MjOPS/dgMPlmN6BeHi7RD337r13whriysTbsaat+fpNFtu
         4KH2EjskHcSZ5jo/JflseNwhs5dRZJUaV90OaOr3QI6IN3pzBVxbQw8bvoTJ4oZJbnj3
         A+gDXL6q7Xkh9+epEngLNeatJcE2XeEmXVrcH5m5+DBli3BfLT3o9Zs/iCbGC4bhhYEr
         32hgBn0GKWmbhy4MZBMxDXT9GiAbhesID5UPKD7dsziFAioAwy9pIC10nBzgi2o2/01V
         J9kbiT7loEbZiR4edJWN4tqMf0FHu+2wjgHx6c75686OJNlbz6a9MIbywFmE5/L9h3Ax
         BoHg==
X-Gm-Message-State: AOJu0YziEblrOrKXBxN9+BBoN6UbevQ2jPSm4ziaidTwOH0FNIaND4/5
	2TtWqkgZlJNQZbKTHUjX9+eSfhFw4gzOyDOs4X0egSd00f1nI2oDGe/KxlHGFV4Z/gG6Fby1Jq5
	6fWy3Nt6ZW9nbKwXYHC+0xESZtHjLTCfnAdLMgUI2nAyNRYE1FBCC7g==
X-Gm-Gg: ASbGncvYwkfdamctBt7+PS4vyrNYa3Y0y874IXjt7pMCf1Z6MLvQ6tBoQVxNkGwaTU9
	RGLy3WkhzDbI3Mv6mOF0GkQxeeRoGn234pCSktPp9j1kHv+Z/XeefaUKs9ZSrDZgggv682g==
X-Google-Smtp-Source: AGHT+IGN1ElT9Cu54NTLrft00J/2wkanjMs26BQ16bkXdXREVZnP4/4R3Iy6Ml6RioXuHmi5la0rTz+gwgZEmwTtlcY=
X-Received: by 2002:a05:6402:5210:b0:5cf:d078:c9dc with SMTP id
 4fb4d7f45d1cf-5d4edd387d2mr493021a12.22.1733997019515; Thu, 12 Dec 2024
 01:50:19 -0800 (PST)
MIME-Version: 1.0
References: <PN1P287MB3561AD211545E254E6DD27A897312@PN1P287MB3561.INDP287.PROD.OUTLOOK.COM>
 <PN3P287MB029100B601063D556709482893312@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
 <CAB__hTQ8c4MJVgg5=Pk23WBhV1GcBGxZxNiPV9smFp4hOpu4+w@mail.gmail.com> <PN3P287MB0291D3C9F48236B62CE3A2C7933F2@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
In-Reply-To: <PN3P287MB0291D3C9F48236B62CE3A2C7933F2@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 12 Dec 2024 10:50:08 +0100
Message-ID: <CAFOi1A7E8ZwMHBCE4z6RY7Q_JT3zEhTWmVoxAYHyvVMDM72P6g@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: BXRBDCANVBV4SVTRE3KVI24LVCTBJNZG
X-Message-ID-Hash: BXRBDCANVBV4SVTRE3KVI24LVCTBJNZG
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with Starting Transmitter on USRP N300 without Using Streamers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BXRBDCANVBV4SVTRE3KVI24LVCTBJNZG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2702399024785573620=="

--===============2702399024785573620==
Content-Type: multipart/alternative; boundary="00000000000063e6d506290fa4a0"

--00000000000063e6d506290fa4a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 12, 2024 at 6:23=E2=80=AFAM Nidhi Panda <nidhi.panda@cyronics.c=
om>
wrote:

> Thank you so much for your response. We have tested the
> "rfnoc_radio_loopback" cpp example and it works fine. Just that I am not
> good with cpp that's why I wanted to do this with either python or GNU
> radio. GNU radio also includes an example of loopback for x300 board. I
> changed it for n300 board. And as you suggested, the timing information o=
f
> RX is set to false and also the last edge is used with back edge property
> "True" setting. However, that design works only for
>
>  Rx_Radio > DDC > rx streamer > tx streamer > DUC > Tx_Radio
>
>  chain. Sending the data to host adds a huge time delay which we don't
> want in our application. Is there any way to run that for
>
>  Rx_Radio > DDC >  DUC > Tx_Radio chain.  Is there any example available
> in python or GNU radio.
>

Here's a GNU Radio demo:
https://github.com/gnuradio/gnuradio/blob/main/gr-uhd/examples/grc/rfnoc_ra=
dio_loopback.grc

--M

--00000000000063e6d506290fa4a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 12,=
 2024 at 6:23=E2=80=AFAM Nidhi Panda &lt;<a href=3D"mailto:nidhi.panda@cyro=
nics.com">nidhi.panda@cyronics.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div class=3D"msg5501489184547017317">




<div dir=3D"ltr">
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0)">
Thank you so much for your response. We have tested the &quot;rfnoc_radio_l=
oopback&quot; cpp example and it works fine. Just that I am not good with c=
pp that&#39;s why I wanted to do this with either python or GNU radio. GNU =
radio also includes an example of loopback for
 x300 board. I changed it for n300 board. And as you suggested, the timing =
information of RX is set to false and also the last edge is used with back =
edge property &quot;True&quot; setting. However, that design works only for=
</div>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0)">
=C2=A0<code style=3D"font-family:Arial,Helvetica,sans-serif">Rx_Radio &gt; =
DDC &gt; rx streamer &gt; tx streamer &gt; DUC &gt; Tx_Radio</code></div>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0)">
<code style=3D"font-family:Arial,Helvetica,sans-serif">=C2=A0chain. Sending=
 the data to host adds a huge time delay which we don&#39;t want in our app=
lication.=C2=A0Is there any way to run that for</code></div>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:12pt;color:r=
gb(0,0,0)">
<code style=3D"font-family:Arial,Helvetica,sans-serif">=C2=A0Rx_Radio &gt; =
DDC &gt; =C2=A0DUC &gt; Tx_Radio chain.=C2=A0 Is there any example availabl=
e in python or GNU radio.</code></div></div></div></blockquote><div><br></d=
iv><div>Here&#39;s a GNU Radio demo:=C2=A0<a href=3D"https://github.com/gnu=
radio/gnuradio/blob/main/gr-uhd/examples/grc/rfnoc_radio_loopback.grc">http=
s://github.com/gnuradio/gnuradio/blob/main/gr-uhd/examples/grc/rfnoc_radio_=
loopback.grc</a></div><div><br></div><div>--M</div><br></div></div>

--00000000000063e6d506290fa4a0--

--===============2702399024785573620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2702399024785573620==--
