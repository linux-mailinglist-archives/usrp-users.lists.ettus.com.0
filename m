Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF4B64D5CE
	for <lists+usrp-users@lfdr.de>; Thu, 15 Dec 2022 05:08:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 206D7384367
	for <lists+usrp-users@lfdr.de>; Wed, 14 Dec 2022 23:08:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671077297; bh=Xrzwy3QnbM+OaiCoV5R+rUEXTvswHEPaMLjBKQTOKH8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=hn7MqHHW8ejhVWHeon2ah52+kZLgsTGFiSJc3zrw5f15DxjjH85CtUjwMnHUtAYKE
	 Pk8pjPIQxcVZDrSWME+RPopy3TYY+4263YuSmwUxIfJmb8NIlJEwveJiKgyJcGGLCF
	 MhiFoLo+h/PX0LT+E5vyoffbIAw4lrdK1aEsvBBPIrKu9DizZ8cDHfM/gvrWZj5xgc
	 9hXSQ2CliyMYB1sSF0rn3sCROzA5vhe4GKKBw5mBLdER3YAVBwsKoRLp/0NkEvpM9Q
	 1E7DEzoCYMdDkmGfEJskm4aoXZoHnQLt4K6pBCcRWyILCiXvJ+xMUUSQRWww9g4m0w
	 RD+xrK8/tNb4A==
Received: from mta68.mta.hdems.com (mta68.mta.hdems.com [3.112.23.35])
	by mm2.emwd.com (Postfix) with ESMTPS id 37A2B384357
	for <usrp-users@lists.ettus.com>; Wed, 14 Dec 2022 23:08:09 -0500 (EST)
Received: from mo.hdems.com (unknown [10.5.84.168])
	by mta68.mta.hdems.com ('HDEMS') with ESMTPSA id 4NXdxg45sqz1XNxC0
	for <usrp-users@lists.ettus.com>; Thu, 15 Dec 2022 04:08:07 +0000 (UTC)
X-HDEMS-MO-TENANT: kke.co.jp
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com. [209.85.219.197])
	by gwsmtp.prod.mo.hdems.com with ESMTPS id gwsmtpd-trans-d4d33a54-613f-4167-aee5-19944632fd6f
	for <usrp-users@lists.ettus.com>;
	Thu, 15 Dec 2022 04:07:58 +0000
Received: by mail-yb1-f197.google.com with SMTP id i10-20020a25f20a000000b006ea4f43c0ddso2261869ybe.21
        for <usrp-users@lists.ettus.com>; Wed, 14 Dec 2022 20:07:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xPcuiZP4HRwl68lVXzhyW2rNGbL6hlVszWW/Owj2Pmw=;
        b=FuXKuBK7Y4ykeYccVlxwgVP4HhvHAgPGGcqTL88Pq0fT5Mb3yhQ7HmG1GAI5D/iDe/
         d+Ws1lAWGfqvqBhUUU83UDmKwJ8CKNCwacEFIoCFLta8oe4R8+CD9K5rHJEQNWu384m+
         V6aTQKWRWd4H0moXMVboqwHLPKSqcUmi304qweIErd84FBCUOmkgewLjWl65cBldcFdE
         zvfAY76oTW8SaJ5Mxq/wuHJC4ety0QCN7+Qj6hyGinew3eGXottHeD2L1GxGVKqoQu+K
         i9xJcSY6Zr1Fg/HBiHISx3hks5AgosidKeUwljnd5g0zngUIVunNzOwNlaC6x+uTh9MH
         ZZbA==
X-Gm-Message-State: ANoB5plUjx37T69euzTsJxsgDQlzawM6pDBhjHwuILbDlsQFE+IJhhba
	8BydslAydvZvEJ1pkyyLSvUxdmMv+VGMXYS+qdqCw35FTdzfbyPJk7rNoXqElV1RrRyP+hYQe6x
	AvKVR47wkQss+kZy0+Gdw3o2FsFW/8ZMmmUnyLZfpo+9KjVT7
X-Received: by 2002:a81:7981:0:b0:3ad:436f:4e6d with SMTP id u123-20020a817981000000b003ad436f4e6dmr7332848ywc.412.1671077276978;
        Wed, 14 Dec 2022 20:07:56 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4atRrQx1zrqXBiNw98jFgW2xcaZm805P9NQ/hdfe2FySxYd4gKfCTkKsgm4qU7lA/C2d6YOPWEcCBzgxFaW7I=
X-Received: by 2002:a81:7981:0:b0:3ad:436f:4e6d with SMTP id
 u123-20020a817981000000b003ad436f4e6dmr7332845ywc.412.1671077276534; Wed, 14
 Dec 2022 20:07:56 -0800 (PST)
MIME-Version: 1.0
References: <CAGHsMd_-K-COEnELpOJpHoDU9m9itjkDAS1Jp3iuLgJN_DeWDA@mail.gmail.com>
 <b4fcb4c3-c6ac-1e8f-fe0b-4eed403c00c5@gmail.com>
In-Reply-To: <b4fcb4c3-c6ac-1e8f-fe0b-4eed403c00c5@gmail.com>
From: =?UTF-8?B?6JaE55Sw5oKg5qi5?= <yuki-susukida@kke.co.jp>
Date: Thu, 15 Dec 2022 13:07:46 +0900
Message-ID: <CAGHsMd9g2xUzfPk9GTZkABzViFknNgF=R6h7wCYKsQJK__TLYQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: SCTIHAVEJ3XNEDDCXMVSAHMR6IFVAQFI
X-Message-ID-Hash: SCTIHAVEJ3XNEDDCXMVSAHMR6IFVAQFI
X-MailFrom: yuki-susukida@kke.co.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accidental Power-Down During Flashing of X310 FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SCTIHAVEJ3XNEDDCXMVSAHMR6IFVAQFI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0322702318065505683=="

--===============0322702318065505683==
Content-Type: multipart/alternative; boundary="00000000000075e62d05efd5ffe0"

--00000000000075e62d05efd5ffe0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Marcus,

Thanks for your prompt response.
Refer to the "X300/X310 Device Recovery" page to attempt recovery.

Yuki Susukida

2022=E5=B9=B412=E6=9C=8815=E6=97=A5(=E6=9C=A8) 11:55 Marcus D. Leech <patch=
vonbraun@gmail.com>:

> On 14/12/2022 21:37, =E8=96=84=E7=94=B0=E6=82=A0=E6=A8=B9 wrote:
> > Hello everyone,
> >
> > I accidentally turned off USRP X310 while updating the FPGA image of
> > the USRP X310 using the procedure in the link below.
> > After that, when I turned on the X310, there was no response to the
> > "usrp_find_devices" command, and the network interface on the PC side
> > could not recognize the X310.
> > How can I solve this problem?
> >
> https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_getting_started_f=
pga_update
> >
> > Thank you in advance.
> >
> > Yuki Susukida
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> The procedure is described here:
>
> https://kb.ettus.com/X300/X310_Device_Recovery
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000075e62d05efd5ffe0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"box-sizing:border-box;margin-top:0px;margin-bo=
ttom:1rem;color:rgb(72,70,91);font-family:-apple-system,BlinkMacSystemFont,=
&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto San=
s&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;=
,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:15px">H=
ello Marcus,<br><br>Thanks for your prompt response.<br>Refer to the &quot;=
X300/X310 Device Recovery&quot; page to attempt recovery.<br></p><p style=
=3D"box-sizing:border-box;margin-top:0px;margin-bottom:1rem;color:rgb(72,70=
,91);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Robo=
to,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;=
Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&qu=
ot;,&quot;Noto Color Emoji&quot;;font-size:15px">Yuki Susukida</p></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">2022=E5=
=B9=B412=E6=9C=8815=E6=97=A5(=E6=9C=A8) 11:55 Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">On 14/12/2022 21:37, =
=E8=96=84=E7=94=B0=E6=82=A0=E6=A8=B9 wrote:<br>
&gt; Hello everyone,<br>
&gt;<br>
&gt; I accidentally turned off USRP X310 while updating the FPGA image of <=
br>
&gt; the USRP X310 using the procedure in the link below.<br>
&gt; After that, when I turned on the X310, there was no response to the <b=
r>
&gt; &quot;usrp_find_devices&quot; command, and the network interface on th=
e PC side <br>
&gt; could not recognize the X310.<br>
&gt; How can I solve this problem?<br>
&gt; <a href=3D"https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_get=
ting_started_fpga_update" rel=3D"noreferrer" target=3D"_blank">https://file=
s.ettus.com/manual/page_usrp_x3x0.html#x3x0_getting_started_fpga_update</a>=
<br>
&gt;<br>
&gt; Thank you in advance.<br>
&gt;<br>
&gt; Yuki Susukida<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
The procedure is described here:<br>
<br>
<a href=3D"https://kb.ettus.com/X300/X310_Device_Recovery" rel=3D"noreferre=
r" target=3D"_blank">https://kb.ettus.com/X300/X310_Device_Recovery</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000075e62d05efd5ffe0--

--===============0322702318065505683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0322702318065505683==--
