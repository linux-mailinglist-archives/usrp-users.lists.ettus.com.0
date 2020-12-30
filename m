Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CED02E7B21
	for <lists+usrp-users@lfdr.de>; Wed, 30 Dec 2020 17:49:04 +0100 (CET)
Received: from [::1] (port=36934 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kueek-0005D8-AZ; Wed, 30 Dec 2020 11:49:02 -0500
Received: from mail-ed1-f44.google.com ([209.85.208.44]:33206)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ejkreinar@gmail.com>) id 1kueeg-00056t-7u
 for usrp-users@lists.ettus.com; Wed, 30 Dec 2020 11:48:58 -0500
Received: by mail-ed1-f44.google.com with SMTP id j16so15944068edr.0
 for <usrp-users@lists.ettus.com>; Wed, 30 Dec 2020 08:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xJ3JkHQBCDbWo9Ne2fIXy7zgl/1MELW/YDcUL74VR7g=;
 b=VyZEFTDgADvQccJ+uT16dEgnpt70p10phLH78WM6v6MgJ74bl/D1dxcMGmqHZz0jsA
 6nAhLnaArcN8BGsKKnc/dWIoeo2ztr1seqsl+4K7VCF5tQ9v2oyjY2mAhIICVQTugV8e
 D1hlqYvLsq9MY7Lwhli77DNrBCu4pKxdal3I+nnOz3xsch8mcunBK2J1HL9fH0rG51vY
 OezjFnU8SAxWoGbxW2JQB6xsrfK0vnYrHbZLgc38M+vYGhAbU3p3v2nsLpL/51Ua/c78
 32hfSmDS0A4SQdb+919NLXQKRKlr78aEunC7YZmWVSrxHNs2l9S9rAFT2Quut6jamSkX
 ZZnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xJ3JkHQBCDbWo9Ne2fIXy7zgl/1MELW/YDcUL74VR7g=;
 b=hnOho6yjrfuG7oscYVdQbEF2PEAgATAc+yZSxXrzbZeQeI7qFEcxmWFUjIlOn9k/oR
 FV0CqVnCmIhQrsonvlIoNQq6fRhHIALAWgGLy1ZaOuWpf+K25urxfAg+SBIzVY6XBJdH
 zD9n+BEY/EZllI7pQ9fSdglC7VvJ6hdpD6OATRYfs9Cf8LhW6NpxJaCF3AKHafa6dwd5
 HMIDYhVt9tbY55/Ff+hVJ6tXOdhSWsCwM7Uz0a4tsPyaOChCPnMeOt0K44y2hGUtufKz
 2Y4h+5w3JC4NxhVmFnqOoFDO+W3Vv7bGba7KRMr90VbPIskr5bGyaB+qu4xhGzSXdpUN
 kW7Q==
X-Gm-Message-State: AOAM533BV6fT1jnsEX1UlQ1VU26HMg4IrHgSVE34lvbWO+rb6ubR+cHT
 FEG4PHycpWCfs+YazqjuM5LVOkLbg/AjrSg1t78=
X-Google-Smtp-Source: ABdhPJx7f9+geu/flCTQF14vQIuxYTtOa9GVBVcVLpGCso6uPH62JewyZeso/BrKI5BM+30ypQbjJqYLJUTQCJ5QRbw=
X-Received: by 2002:a05:6402:1748:: with SMTP id
 v8mr52227359edx.136.1609346897209; 
 Wed, 30 Dec 2020 08:48:17 -0800 (PST)
MIME-Version: 1.0
References: <CAOx6OK1YXO1EBGYk3O_Y=F_tkhOKre245iZhOvAZUq9Che1ZOw@mail.gmail.com>
 <17ABB5B2-0634-436D-8E8F-991F2481CC98@gmail.com>
In-Reply-To: <17ABB5B2-0634-436D-8E8F-991F2481CC98@gmail.com>
Date: Wed, 30 Dec 2020 11:48:04 -0500
Message-ID: <CADRnH21oxdDvbCBr8=SgB5XzWbaiDh8NTd+bkSVXZ8A2_xVBfw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] DMA FIFO latency with X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7255489493184299882=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============7255489493184299882==
Content-Type: multipart/alternative; boundary="00000000000020eb2005b7b146a3"

--00000000000020eb2005b7b146a3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Simple math is not working out for me today-- Maybe it's the holidays??

I think a 9000 *byte* packet would be 9000*8/1e9 =3D 72 microseconds

... However the FFT input needs 8192 *samples* which is 8192*4*8/1e9 =3D 26=
2
microseconds!

Seems like your latency is driven by sending data over the network here

EJ

On Wed, Dec 30, 2020, 11:37 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Simple math.
>
> A 9000 *byte* packet is 72000 *bits*
>
> At 1.0e9 *bits/sec* that=E2=80=99s a latency of 720usec
>
>
>
> Sent from my iPhone
>
> > On Dec 30, 2020, at 8:55 AM, Jorge Arroyo Giganto via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BF
> > Hi EJ,
> >
> > Yes, I tried replacing the DMA FIFO with a normal FIFO and the latency
> got a bit worse and more irregular (I'm guessing that's due to not
> smoothing that burstiness in the Ethernet interface with the DMA FIFO you
> mentioned).
> >
> > I have just tried your graph suggestion (Host -> FFT -> FIFO -> Host)
> and the latency looks about the same but in the FFT block instead. Also I
> had to use packets with spp=3D256 in the tx streamer in order to match th=
e
> spp that the FFT block accepts or I would get an error when building the
> streamer. Maybe making the FFT block somehow be able to accept bigger
> packets would decrease the latency?
> >
> > About the theoretical latency for a packet of 8192 bytes you mention,
> shouldn't it be 8192*4 bytes assuming that each sample is a sc16 (2 bytes
> for the real part and 2 bytes for the imaginary part of each sample)? The=
n
> this latency I am experiencing would make more sense?
> >
> > Thank you so much for your feedback, I will also keep in mind your
> comment about the way I am using RFNoC.
> >
> > Best regards,
> >
> > Jorge
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000020eb2005b7b146a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Simple math is not working out for me today-- Maybe it&#3=
9;s the holidays??<div dir=3D"auto"><br></div><div dir=3D"auto">I think a 9=
000 *byte* packet would be 9000*8/1e9 =3D 72 microseconds</div><div dir=3D"=
auto"><br></div><div dir=3D"auto">... However the FFT input needs 8192 *sam=
ples* which is 8192*4*8/1e9 =3D 262 microseconds!</div><div dir=3D"auto"><b=
r></div><div dir=3D"auto">Seems like your latency is driven by sending data=
 over the network here</div><div dir=3D"auto"><br></div><div dir=3D"auto">E=
J</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Dec 30, 2020, 11:37 AM Marcus D Leech &lt;<a href=3D"mailto:=
patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">Simple math. <br>
<br>
A 9000 *byte* packet is 72000 *bits*<br>
<br>
At 1.0e9 *bits/sec* that=E2=80=99s a latency of 720usec<br>
<br>
<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Dec 30, 2020, at 8:55 AM, Jorge Arroyo Giganto via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noref=
errer">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi EJ,<br>
&gt; <br>
&gt; Yes, I tried replacing the DMA FIFO with a normal FIFO and the latency=
 got a bit worse and more irregular (I&#39;m guessing that&#39;s due to not=
 smoothing that burstiness in the Ethernet interface with the DMA FIFO you =
mentioned).<br>
&gt; <br>
&gt; I have just tried your graph suggestion (Host -&gt; FFT -&gt; FIFO -&g=
t; Host) and the latency looks about the same but in the FFT block instead.=
 Also I had to use packets with spp=3D256 in the tx streamer in order to ma=
tch the spp that the FFT block accepts or I would get an error when buildin=
g the streamer. Maybe making the FFT block somehow be able to accept bigger=
 packets would decrease the latency?<br>
&gt; <br>
&gt; About the theoretical latency for a packet of 8192 bytes you mention, =
shouldn&#39;t it be 8192*4 bytes assuming that each sample is a sc16 (2 byt=
es for the real part and 2 bytes for the imaginary part of each sample)? Th=
en this latency I am experiencing would make more sense?<br>
&gt; <br>
&gt; Thank you so much for your feedback, I will also keep in mind your com=
ment about the way I am using RFNoC.<br>
&gt; <br>
&gt; Best regards,<br>
&gt; <br>
&gt; Jorge<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D=
"noreferrer">USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus=
.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000020eb2005b7b146a3--


--===============7255489493184299882==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7255489493184299882==--

