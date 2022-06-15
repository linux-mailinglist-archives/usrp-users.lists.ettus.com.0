Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6CD54D27A
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jun 2022 22:25:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB0DC38454F
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jun 2022 16:25:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655324706; bh=ZPCmjwjDSN+WRhJN3gh99E4DLvOkFyq+pnPuFc2bE88=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DqLo42hjtKJDgbzr8o1sVFdlyrQY8PsRt1AeOQrNrRDeP3TyiXXz+nS9f11cTXQi7
	 iJbhdGKMLk3Nl06d42vvjLj+B7I+hx23j/xGvVTBVKo2eJz0Iw5HDVZEhSeS0NuLM+
	 G6GCKY/mKDCJJsH3IfIhJLWhu4jgkgVqdBt8bNLHKPM1MMSPAApAREReH/iWC5nJ8P
	 ZilM2RDYMVDjM2bCHpyW/S6VoQkUMG04hjFSa5Skzq8nUHX06/SCD2WHM9NdBTmLgZ
	 +zOwm9p1Fch7bR0CIoK3qDs2rgVOdzrxSnqc+3F1dHGtYcTYp851pWtNOHkda2BrV1
	 e00mLPLsAOMmA==
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 3866E384076
	for <usrp-users@lists.ettus.com>; Wed, 15 Jun 2022 16:24:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="ekRwEokQ";
	dkim-atps=neutral
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-31332df12a6so72836457b3.4
        for <usrp-users@lists.ettus.com>; Wed, 15 Jun 2022 13:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S72Zj546Cvgl2rQwj94rZC3Uad0vfGNFhwlSixnn4ic=;
        b=ekRwEokQUnTaQHn+nPmXK7KU+itBFDEcZJ7gmFZUFs3yGmk4xVvvWl5rad5F9O5NMy
         1Ds5cTvhJ0t5gKlIm5nj7BALuY1Slr4U7j2KuDtVLspnMy5Z+UzC4ZOWxky8at6v8X95
         d+PwLoPAtzK/njCXkhRkfhWP44unLLtl2jYkf7x+rg4mpI1+CF+dXcmG5VZy2Cz0rJl2
         14yCn/BJXfzIsvlscFxuQReWS4SjiqlQoVFsVSdA3wK+xJE7EtMm/mS6STVK4rOf7+E/
         gPghgiXpnqAv0sWVWhRmtRCfQlp1EroXYmGeE5MERCagfGVbv9wKRDu4HGaDj/G8Ggid
         vONA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S72Zj546Cvgl2rQwj94rZC3Uad0vfGNFhwlSixnn4ic=;
        b=6dbhmu8dI9+Yf53/cwIRD9JQHcG3rWmejnMt5rGrAqgEzeR3GfD9dlc6JkSQfABDwh
         h2ivlpxouSYe6GsMTD67ho74RO0yO9FgGS+hTSXvH+dfqKzIbSWyr5ZBADr4d+lWmsA9
         nV0xM2bYt2Kw34tO/hsuNd3CE1twWoF3o1w/W6vD/pFrMfZm8ItF3dBkH7EsP1JxxKRe
         mjaTUQwVzYVOa1s0hIIcitthoW/sanR048LyCMf4tAiDc9Gf4mnSXuR6j7VQLSOvwCjx
         vIv6SxpMpH/ADiluZypgwwUA+FeDXRDS7MpYVhzhgklPIYXEA62JoMzh9jDQhiXfWNQU
         FDkw==
X-Gm-Message-State: AJIora/N+rrpVfWGeDG+G6AsOIqZeewbmRChusCo5NPcKj70y771KE3W
	x3niVHVggJrUYE0jOzsihrZp6O8uJyOk8VNQOoOEZNkY
X-Google-Smtp-Source: AGRyM1s56DulST6BPpnhTAPFdgwm6B92C46emBB3Qm/xKCe6BcZ/ak66a/qBDs1FcE0ChuuHr3xIKsaiOH/J3RdSr30=
X-Received: by 2002:a81:8283:0:b0:314:48f4:17d0 with SMTP id
 s125-20020a818283000000b0031448f417d0mr1639962ywf.220.1655324644634; Wed, 15
 Jun 2022 13:24:04 -0700 (PDT)
MIME-Version: 1.0
References: <1193871205.20203309.1655291894187.JavaMail.zimbra@enst.fr>
In-Reply-To: <1193871205.20203309.1655291894187.JavaMail.zimbra@enst.fr>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 15 Jun 2022 15:23:48 -0500
Message-ID: <CAFche=iAYMRQDrbbdxEQGJ7A+8mF16wwf4VgLBx_X2rv8qCvnw@mail.gmail.com>
To: Florent Allard <florent.allard@telecom-paris.fr>
Message-ID-Hash: HERSVGCOMUVAHW7BR4AW7YG6V2I2YLID
X-Message-ID-Hash: HERSVGCOMUVAHW7BR4AW7YG6V2I2YLID
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Configure Xilinx IP using AXI4-Lite
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HERSVGCOMUVAHW7BR4AW7YG6V2I2YLID/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2014547091144534936=="

--===============2014547091144534936==
Content-Type: multipart/alternative; boundary="0000000000006e867105e1824d7f"

--0000000000006e867105e1824d7f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sadly, I don't think there is one in the UHD repo. I don't know of anyone
who has written one.

Wade


On Wed, Jun 15, 2022 at 6:19 AM Florent Allard <
florent.allard@telecom-paris.fr> wrote:

> Hello,
>
> After having implemented into a RFNoC block the Xilinx IP LDPC Decoder an=
d
> Encoder for 5G, I=E2=80=99m trying to implement the Xilinx IP Polar Decod=
er/Encoder.
>
> However, the Polar IP requires to be configured with an AXI4-Lite
> interface. I know that RFNoC data planes are compliant with AXI-Stream, b=
ut
> is there an implementation of the AXI4-Lite protocol in the control plane
> for example=E2=80=AF?
>
> I found a file doing a mapping of AXI4-Lite to Ctrlport (
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/control/a=
xil_ctrlport_master.v),
> but what I=E2=80=AFwould need is the other way: receiving a ctrlport comm=
and from
> RFNoC, and forwarding it as AXI4-Lite to the Xilinx IP block. Does this
> exist=E2=80=AF?
>
> Thank you for your help,
>
> Florent
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006e867105e1824d7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sadly, I don&#39;t think there is one in the UHD repo=
. I don&#39;t know of anyone who has written one.<br></div><div><br></div><=
div>Wade</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Jun 15, 2022 at 6:19 AM Florent Allar=
d &lt;<a href=3D"mailto:florent.allard@telecom-paris.fr">florent.allard@tel=
ecom-paris.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div><div style=3D"font-family:arial,helvetica,sans-serif;font=
-size:12pt;color:rgb(0,0,0)"><div>Hello,<br><br>After having implemented in=
to a RFNoC block the Xilinx IP LDPC Decoder and Encoder for 5G, I=E2=80=99m=
 trying to implement the Xilinx IP Polar Decoder/Encoder.<br><br>However, t=
he Polar IP requires to be configured with an AXI4-Lite interface. I know t=
hat RFNoC data planes are compliant with AXI-Stream, but is there an implem=
entation of the AXI4-Lite protocol in the control plane for example=E2=80=
=AF?<br><br>I found a file doing a mapping of AXI4-Lite to Ctrlport (<a hre=
f=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/contro=
l/axil_ctrlport_master.v" target=3D"_blank">https://github.com/EttusResearc=
h/uhd/blob/master/fpga/usrp3/lib/control/axil_ctrlport_master.v</a>), but w=
hat I=E2=80=AFwould need is the other way: receiving a ctrlport command fro=
m RFNoC, and forwarding it as AXI4-Lite to the Xilinx IP block. Does this e=
xist=E2=80=AF?<br></div><div><br></div><div>Thank you for your help,<br></d=
iv><div><br></div><div>Florent<br></div></div></div>_______________________=
________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006e867105e1824d7f--

--===============2014547091144534936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2014547091144534936==--
