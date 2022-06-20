Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D831E552196
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jun 2022 17:50:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 87815383C20
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jun 2022 11:50:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655740219; bh=fxgGxkzNpGozYlBUe1W8kFCgg2+bSvT0JYzD2E+XvGY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nI0UFeuaHV8hDVL5Uc1fAO8GdEpmeBwPLCrvbZIhwvxFZUpxXfR33LDDA91bBw0fy
	 6ltCWcwLy7Jd+nBTLIldbHal3DQ4d0PkGNS8CIMI4p41Z1IdhG9jtT7qH0voyPV5dB
	 Bo8FsLHbVh/HyLiGRC3ohDf2iB2t4/N/6vi+b7nGimJBtFYx9Xrwl/WeMgdSvvaTUB
	 L54Q6RyuCBFCGt687OS5y8AeLtoMWId7wYmF1epaUsEaRQG5b6A6nJ5O4o0Uvtauq5
	 imL3BqX2YML1dynpWroaRK47fV1hyAZWsj9XfOmrWNA5sTJ+mSYhlBZKQEmlEs5lA+
	 dY4BmwVTqC44g==
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 21E8E383BF3
	for <usrp-users@lists.ettus.com>; Mon, 20 Jun 2022 11:49:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NwLRjW5L";
	dkim-atps=neutral
Received: by mail-yb1-f179.google.com with SMTP id p69so8007567ybc.5
        for <usrp-users@lists.ettus.com>; Mon, 20 Jun 2022 08:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KCREcbsRBKdK3dCGmwg7hNyRwC373CjsK9mhM0rI0WA=;
        b=NwLRjW5L0tre28vmM/GU7kPZ+do25NUgOoAmAaqaB0N/Tbsmp6dQjJHm/LuW48hxrJ
         CbDhgCVuP2S+F/2Kb4PrtZYrgt6hHso6C5f+vXk/0p+QfVpdprLBmWssgLiyqg/+m9tO
         ST6kzkiM9ujowh7WeqT75/ri22rXmEvnWDtewmskRA8v1FGusMBTXjqZmEQtTb81i9D8
         h64p5J2U4FSEsERi22LVonL7yecjx0CbIU8PBZ+6VWoWxWCWHAQLy6XHK2V8pLuba5bk
         6H2t2+DjCDdimvNNFoqUECtr91zpzUmAo+xm5P5a3W91o62TmHK+gvO8Q7yhKxvWC2Nl
         v1AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KCREcbsRBKdK3dCGmwg7hNyRwC373CjsK9mhM0rI0WA=;
        b=XsVkTvF/fQsJVhKx4iSq4pq/iEp5NCneoIE2iGM6jpUYUqKpQFQlh6tlhRnDfeyBsG
         zggIyRtm0LMYOU1xn5pjoVC0oz7PH8wB3ldV9JKQNfYTKUbO3HhYklhtF5rkkPBV/qF4
         LbZWWEyBZkOLpjcW2Tvxc02YQRZlDpvdPPTun/xei2eABVT2zROrbDgnjav8du8cYa/L
         w/tbVJv1aWbwUPKjmh5nJLMYiOwENyR1932crUEDQCVoXEYjsozItBrhculf7+tDR6H6
         d/UM9LOvLWIHlt6Zc4CvXDZ/5bPtIiOlIUyR1tM4uHMiIDNbY36/LE/xWHbPDJUfaKJk
         PoLg==
X-Gm-Message-State: AJIora9zvZSsZuVrJNMY5yynYDdChN0OPsgr40yr4kekiFHFGWFWM1nP
	INLxzWiRqVVLuXx5yJ+WnBmqyWlsHW9h6ULqrEs=
X-Google-Smtp-Source: AGRyM1t/HVAyLeI56uA2eX92Ax7ReiXVWpUy417fTlWYpwz/B7gyFjBmwzyH8l1F0enFk9XMVjQIv7cqs6hyVXkBdWo=
X-Received: by 2002:a25:a2c7:0:b0:668:aea3:4caa with SMTP id
 c7-20020a25a2c7000000b00668aea34caamr21310898ybn.148.1655740163912; Mon, 20
 Jun 2022 08:49:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3Pv_wiP9bE62=0N5WKNTa_-+02dDtB0pcD2O5GSMV76Q7w@mail.gmail.com>
 <682DBC37-FC29-4EE3-94FA-29A15D4CC03C@gmail.com>
In-Reply-To: <682DBC37-FC29-4EE3-94FA-29A15D4CC03C@gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Mon, 20 Jun 2022 20:19:12 +0430
Message-ID: <CAA=S3PtSKwJwwX_bhM88m2cznxYfynyfGJYd_LEMqwen1hZ1vw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: RLQTYHKP54DAZ3AE3YMNUGITU3GZ2IQC
X-Message-ID-Hash: RLQTYHKP54DAZ3AE3YMNUGITU3GZ2IQC
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRX daughterboard is the only a receiver...but for it Transmit mode works and led red is on, is it a bug???!!!!!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RLQTYHKP54DAZ3AE3YMNUGITU3GZ2IQC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6605980232124212490=="

--===============6605980232124212490==
Content-Type: multipart/alternative; boundary="0000000000004f769a05e1e30c2c"

--0000000000004f769a05e1e30c2c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok, thanks for the clarification. I was worried this would hurt my
Dutterboard so it would not be a problem for my Dutterboard anyway.

On Mon, Jun 20, 2022 at 5:06 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Those LEDs are controlled by the FPGA not by the daughtercard. There=E2=
=80=99s no
> connection from the DAC to the TwinRx.
>
> Sent from my iPhone
>
> > On Jun 19, 2022, at 9:44 PM, sp h <stackprogramer@gmail.com> wrote:
> >
> > =EF=BB=BF
> > I have a daughterboard TwinRX in RF B in x300. When I use UHD and set
> the stream channel to 1 .....
> > as TwinRX daughterboard is the only receiver...but  Transmit mode works
> and led red is on???!!!!!
> > It should not transmit with a TwinRX but the led TX/RX is red and it's
> on...
> > Why transmit led for TwinRX should be on for TwinRX? I expect that a
> return an error?
> > Thanks in advance
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004f769a05e1e30c2c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok, thanks for the clarification.=C2=A0I was worried this =
would hurt my Dutterboard so it would not be a problem for my Dutterboard a=
nyway.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, Jun 20, 2022 at 5:06 PM Marcus D Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Those=
 LEDs are controlled by the FPGA not by the daughtercard. There=E2=80=99s n=
o connection from the DAC to the TwinRx. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Jun 19, 2022, at 9:44 PM, sp h &lt;<a href=3D"mailto:stackprogramer=
@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; I have a daughterboard TwinRX in RF B in x300. When I use UHD and set =
the stream channel to 1 .....<br>
&gt; as TwinRX daughterboard is the only receiver...but=C2=A0 Transmit mode=
 works and led red is on???!!!!!<br>
&gt; It should not transmit with a TwinRX but the led TX/RX is red and it&#=
39;s on...<br>
&gt; Why transmit led for TwinRX should be on for TwinRX? I expect that a r=
eturn an error?<br>
&gt; Thanks in advance<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000004f769a05e1e30c2c--

--===============6605980232124212490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6605980232124212490==--
