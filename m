Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5304C165
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 21:21:06 +0200 (CEST)
Received: from [::1] (port=52644 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdg8m-0004aG-Ls; Wed, 19 Jun 2019 15:21:04 -0400
Received: from mail-oi1-f178.google.com ([209.85.167.178]:40392)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hdg8i-0004RZ-OX
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 15:21:00 -0400
Received: by mail-oi1-f178.google.com with SMTP id w196so202510oie.7
 for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2019 12:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F6V3cA54nd9HAU0uNAg9u+ckobTEQ3vd5FM4vJymhe0=;
 b=NQSOoyTjV05J/1G4drQi9GCbmE1eP465QRs61oIkKYqoLQwhYw87MY3oHJwMhiSZ3g
 +LQgfakPQKMB1Uiw/r8/Nsnnqh5w7Q/1KIT8+Yc3mc1vJXCXqtyfdkJYI5J08J8/9Jsl
 doWjMeNqQ2DVCbWWH48yyu1zRW/DXOlmwyaIhDiP7Pvq95Y07OSxDQiX3/FG63r/t0U0
 L8oHHwxOSzAeS5p7aGGr9IOQn5/7TvmoFYZN0jrZGgPm4fL7D+TMjYFdMWTDgOsLBahF
 jlR0Hzm9R0SxUSj4V3wBa4xkc03fEkNcUIjW7GDYe0Y2GlLI/UuLNptl5JF2uQpyQVbz
 d0WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F6V3cA54nd9HAU0uNAg9u+ckobTEQ3vd5FM4vJymhe0=;
 b=TW3bHya1dMG+eaSJQICvfTvd+APH903gPvEPxVK8nNSJOzw5WXMEUGRZJY+oHnO9MT
 dqVyMr5q1Dk+cZM1XegDipm118HVNkCnBX6Uctg1qKlBXP4xZ+vt4axus9nx8bn/IKIg
 7bsJcuVDOru7HWb0+qBkP294t803Rm0Gg+57O7tPK7zgZ+0QwUC0OEDy8W2zl6nXS2xS
 Jdzsacb2gBcBUF/2NYOVjYO7hx5oq/pmHQvd97lsyzQS9GJmMYRHbs+tq6V/u1aw04bZ
 GxD2xHgA3zw4ky16/RcrxI9ijndwI4A0pxjmsftBRQOj5eheUKzPnjLbZlUVo734hQm3
 mX3g==
X-Gm-Message-State: APjAAAV74zGlMhQc5hqMmFGthwd2ko/5mUU72nx7O0V2svSiwZwh4J5a
 PB2P/CvdLMAa0+UdHeVAvRxnD7epqR/KhhzNV8Th4aWjuSA=
X-Google-Smtp-Source: APXvYqxKF/n/rfgAHfanA0MNcOCWuM8MrtRBizle4BXy5cg/vEpLFe03G87BsU1Jg/k8Tc9dCv0QX98NSlNkk7uAWBk=
X-Received: by 2002:aca:4a4e:: with SMTP id x75mr3380876oia.154.1560972020100; 
 Wed, 19 Jun 2019 12:20:20 -0700 (PDT)
MIME-Version: 1.0
References: <SN6PR0901MB2318A4EF7805BB2D0540F0F59BE50@SN6PR0901MB2318.namprd09.prod.outlook.com>
In-Reply-To: <SN6PR0901MB2318A4EF7805BB2D0540F0F59BE50@SN6PR0901MB2318.namprd09.prod.outlook.com>
Date: Wed, 19 Jun 2019 12:21:04 -0700
Message-ID: <CAL263iz3nDc_eKtbT5gMP-i+dMB_CxFkqxstGV8Bad1m1os2ZQ@mail.gmail.com>
To: Jessica Iwamoto <jessica.iwamoto@aero.org>
Subject: Re: [USRP-users] RX/TX on 4 channels on N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7785837961340394026=="
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

--===============7785837961340394026==
Content-Type: multipart/alternative; boundary="000000000000c34730058bb21e0f"

--000000000000c34730058bb21e0f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,

What sample rate are you trying to run at per channel?

I would suggest to use DPDK as it will remove a considerable overhead from
the Linux networking stack.

I can follow up with you off the list with some notes I have on getting
DPDK going, we have a pending app note that will be published soon on the
topic.

Regards,
Nate Temple


On Wed, Jun 19, 2019 at 12:05 PM Jessica Iwamoto via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
>
> I am getting a lot of underflows when trying to use dual RX/TX on 4
> channels on the N310. My application creates one multi_usrp object and 8
> streamers (4 RX, 4 TX) each on a different thread. Samples are received
> from the RX threads, put into buffers, and then transmitted in the TX
> threads. I can run it on 1 channel and 2 channels, but when I try using
> more channels, I get a ton of underflows. When I use 2 channels, I also
> have to specify the subdevice as =E2=80=9CA:0 B:0 A:1 B:1=E2=80=9D, other=
wise I will get a
> lot of underflows with the default subdevice spec of =E2=80=9CA:0 A:1 B:0=
 B:1=E2=80=9D. I
> have tried the txrx_loopback_to_file example with 4 channels and it works
> fine, although this example only uses 2 streamers, each controlling 4
> channels. Any suggestions on what to try to make this work? I am using UH=
D
>  v3.13.1.0-rc1.
>
>
>
> Thanks,
>
>
>
> Jessica Iwamoto
>
> Member of Technical Staff
>
> The Aerospace Corporation
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c34730058bb21e0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Jessica,<br><br>What sample rate are you trying to r=
un at per channel?<br><br>I would suggest to use DPDK as it will remove a c=
onsiderable overhead from the Linux networking stack. <br><br>I can follow =
up with you off the list with some notes I have on getting DPDK going, we h=
ave a pending app note that will be published soon on the topic.<br><br>Reg=
ards,<br>Nate Temple<br><br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 19, 2019 at 12:05 PM Jessica =
Iwamoto via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_3238213123341229738gmail-m_-5333768796227290719WordSe=
ction1">
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am getting a lot of underflows when trying to use =
dual RX/TX on 4 channels on the N310. My application creates one multi_usrp=
 object and 8 streamers (4 RX, 4 TX) each on a different thread. Samples ar=
e received from the RX threads, put
 into buffers, and then transmitted in the TX threads. I can run it on 1 ch=
annel and 2 channels, but when I try using more channels, I get a ton of un=
derflows. When I use 2 channels, I also have to specify the subdevice as =
=E2=80=9CA:0 B:0 A:1 B:1=E2=80=9D, otherwise I will
 get a lot of underflows with the default subdevice spec of =E2=80=9CA:0 A:=
1 B:0 B:1=E2=80=9D. I have tried the txrx_loopback_to_file example with 4 c=
hannels and it works fine, although this example only uses 2 streamers, eac=
h controlling 4 channels. Any suggestions on what
 to try to make this work? I am using UHD<span style=3D"font-size:10.5pt;fo=
nt-family:&quot;Segoe UI&quot;,sans-serif;color:rgb(23,43,77);background:wh=
ite none repeat scroll 0% 0%">=C2=A0v3.13.1.0-rc1.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Jessica Iwamoto<u></u><u></u></p>
<p class=3D"MsoNormal">Member of Technical Staff<u></u><u></u></p>
<p class=3D"MsoNormal">The Aerospace Corporation<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000c34730058bb21e0f--


--===============7785837961340394026==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7785837961340394026==--

