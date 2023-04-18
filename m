Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AAC6E6FBF
	for <lists+usrp-users@lfdr.de>; Wed, 19 Apr 2023 01:00:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA983384083
	for <lists+usrp-users@lfdr.de>; Tue, 18 Apr 2023 19:00:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681858806; bh=SLddvsEOVe9ZC84yJyacRp9R2VeMCX6x1R1ZEJ15drY=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=eRhp7WJUbOZzoFLRoMQ5388UOhIrqDfeRCRX3x9H2KMCyMJlxRfDluaELgwtckHZD
	 0XK9akq66bcRCaaUK3H0eg0ky9JsS3cLtyk8QgPq0nPs8skVbL/M5ITB9aDXVCxAPz
	 gnD4yMQqz5huL1ooRCjYAuFr46N5HD+lO1To1dv62SecS3PgmhVAMnQt8JCny64Rd/
	 SN7OeiVTmX+pHUKh75RoR4FC40D0MHgfco/XJXrisooShHsMmJk1DiuBYyyX6VUzZq
	 V5M/kqfq2bGxNHep0pZWUr6b4U93RRZ3StoNvIYb3oVf7y1wFcOZvu0CyP/mJ5IYHW
	 zKxuxR1aAMbAg==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 2390838097A
	for <usrp-users@lists.ettus.com>; Tue, 18 Apr 2023 18:59:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Mf3eC7b+";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id b16so1881185ejz.3
        for <usrp-users@lists.ettus.com>; Tue, 18 Apr 2023 15:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1681858773; x=1684450773;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WiP31zocClsl6hyeMai8riUBGcJ42kNyt7ehWISLKCY=;
        b=Mf3eC7b+Io/Yb7SMWhzY+/8cKosGew3kDoyPHIFtP0iDOF+c2GSRmPYWo9fvFwOoz7
         dD3cG8+DZAVZ/AkevQncFLN2JsLcupDv6iHUeRrDkJ0vmWZR0NecCTQqMc/QRz0QVIsb
         woawUyXGWuouh4CgOYCMlRU5kYYSP2tjU5MFF1GSTXGf2m4Wisdsw+ieWv4feGweaNqC
         YiJH1GG469O/+0ckDvmZJRkO219cctKwk4yf57YlgQKHwRfM7rr2MbvYv+zZQo0C1p8y
         blAt3YXr4PGGj96KHDkI1/LuJT8+LBDBPQGcBmn5RS/RUXWk6t/T6pydFv4++jbpLtwB
         p/PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681858773; x=1684450773;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WiP31zocClsl6hyeMai8riUBGcJ42kNyt7ehWISLKCY=;
        b=eLqmHS7nUA5b1Sw0U1oCtWAlknaAu0oDDLYkgNBQ8VDuXsSP+cMyOsjdA6CjOQxOqp
         k+SgP/vijx9+w8UnpbjWLPPCFKNN+3qKu7Z2Ow08mYzPrLN99IkRHJETY4NHFcqzNmK8
         QmBbqy55cTyCWOAPb68Y4KS+4VZr6y90eWl9H3+rJ+ekGFeh5EcyrRHAhwMy5grCVg8c
         PTBAUcO/GOp3HOqrxwx+vCgyuCSug1+aA5Z+94UIXlxUUt0+LWet70hEZbzewth/7xHa
         4NU7vpHCFeIlgFe9Nk9A3VYkxUBw2NS9f7JvlTxakuN1DgVIyIc9f1A3G9oECEwYYcPR
         Qurg==
X-Gm-Message-State: AAQBX9f/B+PJbcS8dsaM2LiYjOPFg8CTTZB2syt6WkpH4yxUdMsCUxPi
	BE3Vx2iQL4/lnIelaL0uL4y3V6peipPXa0aYQ2NkoewrgSmBI5dI
X-Google-Smtp-Source: AKy350auLeMBr4g0VpOvLuCDqmYZn9VukYolmLcCAQbQJjLeEka5nhoJtmjnayHaqfHbhN9tZYI+h7He4zjv8uAaefE=
X-Received: by 2002:a17:906:754:b0:94e:5c27:dc5f with SMTP id
 z20-20020a170906075400b0094e5c27dc5fmr5483713ejb.6.1681858772789; Tue, 18 Apr
 2023 15:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <Dc8IBNpeZ0yTvGJZLMHZpXFs7rAz9153L2vHlXlN88@lists.ettus.com>
In-Reply-To: <Dc8IBNpeZ0yTvGJZLMHZpXFs7rAz9153L2vHlXlN88@lists.ettus.com>
Date: Tue, 18 Apr 2023 17:59:21 -0500
Message-ID: <CAB__hTSouNeh+X3JeS-Ad7S0RWzgr3d_bwzt_d=Qj1178r2b1w@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: PJBCGQVA7NE3PEVA3HSMRRN3FYKHK5QV
X-Message-ID-Hash: PJBCGQVA7NE3PEVA3HSMRRN3FYKHK5QV
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble recieving data from antenna
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PJBCGQVA7NE3PEVA3HSMRRN3FYKHK5QV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5894743817316635644=="

--===============5894743817316635644==
Content-Type: multipart/alternative; boundary="000000000000b74a3805f9a4423b"

--000000000000b74a3805f9a4423b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joe,
One thought is that the Rx Radio may never be getting the command to start
streaming.  Normally, this occurs by calling
rx_streamer->issue_stream_cmd() which propagates from the rx_streamer block
controller to the DDC block controller and ultimately to the Rx Radio block
controller.  If your custom block is in between and if your custom block
controller does not properly propagate this command, it will never arrive
at the Rx Radio.  But, this may not make sense in your case because I would
expect you would be receiving no data at all.

Another thought regarding troubleshooting of custom blocks is that if it is
possible to "dynamically link" your block using streaming end points for
the FPGA build, then you can configure a troubleshooting graph that is
essentially tx_streamer->your_custom_block->rx_streamer so that you can
verify that your block is behaving correctly.

How are you talking to your custom image?  C++/UHD?  gnuradio?

Rob

On Tue, Apr 18, 2023 at 5:06=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> Hello,
>
> I have currently using my own custom RFNOC image. It appears that samples
> are being collected from the ADC, however, when I connect an input throug=
h
> the antenna, my data samples to not change at all. It seems the data I
> receive corresponds to when I change the frequency on my local oscillator=
s
> however.
>
> Ive tested collecting data with the default images, and noticed that the
> light turns on next to the antenna on those images, versus on my own imag=
e,
> no light is turned on.
>
> I am wondering if anyone else has experienced a similar issue and how the=
y
> troubleshooted it.
>
> Thanks,
>
> Joe
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b74a3805f9a4423b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Joe,<div>One thought is that the Rx Radio may never be =
getting the command to start streaming.=C2=A0 Normally, this occurs by call=
ing rx_streamer-&gt;issue_stream_cmd() which propagates from the rx_streame=
r block controller to the DDC block controller and ultimately to the Rx Rad=
io block controller.=C2=A0 If your custom block is in between and if your c=
ustom block controller does not properly propagate this command, it will ne=
ver arrive at the Rx Radio.=C2=A0 But, this may not make sense in your case=
 because I would expect you would be receiving no data at all.</div><div><b=
r></div><div>Another thought regarding troubleshooting of custom blocks is =
that if it is possible to &quot;dynamically link&quot; your block using str=
eaming end points=C2=A0for the FPGA build, then you can configure a trouble=
shooting graph that is essentially tx_streamer-&gt;your_custom_block-&gt;rx=
_streamer so that you can verify that your block is behaving=C2=A0correctly=
.</div><div><br></div><div>How are you talking to your custom image?=C2=A0 =
C++/UHD?=C2=A0 gnuradio?<br><br></div><div>Rob</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 18, 2023 at=
 5:06=E2=80=AFPM &lt;<a href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.e=
du</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><p>Hello,</p><p>I have currently using my own custom RFNOC image. It appe=
ars that samples are being collected from the ADC, however, when I connect =
an input through the antenna, my data samples to not change at all. It seem=
s the data I receive corresponds to when I change the frequency on my local=
 oscillators however. </p><p>Ive tested collecting data with the default im=
ages, and noticed that the light turns on next to the antenna on those imag=
es, versus on my own image, no light is turned on. </p><p>I am wondering if=
 anyone else has experienced a similar issue and how they troubleshooted it=
.</p><p>Thanks,</p><p>Joe</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b74a3805f9a4423b--

--===============5894743817316635644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5894743817316635644==--
