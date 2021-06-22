Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0983B0C90
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 20:09:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C1FBB384802
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 14:09:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="niyYVhbt";
	dkim-atps=neutral
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 4499838489D
	for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 14:08:44 -0400 (EDT)
Received: by mail-vs1-f46.google.com with SMTP id z7so2959vso.3
        for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 11:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hWRjnwtg8J2IoVRSoZ/JGRlBMBzuxj6MOrO7ZdWOJOU=;
        b=niyYVhbtavOJAvfYIHj0EyJv84MctKNRJhAZfFQKUoPrw5ai5d6nWLW+licaOvlTvg
         lM1IddDFwx+RsSiG5ncg8zdkQsJl0mJHEycbCRu3IZhFpCQvfVcZ0NMNsonFl4R5DUuP
         KOQXGfEmqW6aKvy1BAf9SyF3DTD0wwTbgQb/U+JfwCyajZG823qZR8X+9KLYsKR2Uzc7
         yFPHPV5gKUvbJAMG7DP/2WZaCkszQVTcnyDX4YnbszknKwuhUh5nb8hfIszphy8e36f4
         maWciFL5ov/nn28ypLIvnWAGXoFKuYM1LxZczcyidUU4H5jh/ZJOECOq3mO/PRt4ZCoi
         R6Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hWRjnwtg8J2IoVRSoZ/JGRlBMBzuxj6MOrO7ZdWOJOU=;
        b=TAAPraKZmcu8byhR/AUSMN4MPYLsdAi1JW4Vp1OWhv1PPMfH4rU0VRXn9324UQaZvD
         nyfkwJW6YmA2RRmvrIIZTDasDeEuct+BAiwliuHryhwobudWuY1/+yByP3LOH291GFaN
         P1UrxDi60GB4+wKoESunhyyWuwG0/qzdylNRbOmZVTAPr2iZl9FcruvuwRr22/v8Yofo
         qNy3yM3DP0BRzciSeNetspqOTa67Kmv/aaIgejSa/o20e3k7daMyMtL9xwzK9zRg3Q1/
         E42g1z2+IY2ykvc12DEOwQBsjDr6iI+m6ZLi2GqjNmQMq/Rb9NbWlMZ/LU5I2SZeNR5l
         D3JA==
X-Gm-Message-State: AOAM533hxnEwhoFoV7Quo5OYFLr6258eQdFWYur5iKvpaYDUk0mg2o/7
	y7PVvq0gVDTQmf6qbr2BNOmKALB2OKheEgQdRZPoL2k334kEIQ==
X-Google-Smtp-Source: ABdhPJy0HHx6x0Oq/45maSHmDmjYqN9sE73DMKm2RiBNTK+MJPo2ehj6aK5VP2ppLEnl0MHswijy24y2ScE03st5vGo=
X-Received: by 2002:a05:6102:a4c:: with SMTP id i12mr11285659vss.27.1624385323688;
 Tue, 22 Jun 2021 11:08:43 -0700 (PDT)
MIME-Version: 1.0
References: <d1b723d4-b17f-2867-6946-b9af04669187@olifantasia.com>
In-Reply-To: <d1b723d4-b17f-2867-6946-b9af04669187@olifantasia.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Tue, 22 Jun 2021 14:08:07 -0400
Message-ID: <CAL7q81vCSoOFyVw5RnQDR5=F=ZwcE65gALTRJ+p1BiNetxaYww@mail.gmail.com>
To: Martin <usrp-users-list@olifantasia.com>
Message-ID-Hash: 5GOZI7YEICNHJCXOVLRT53ICBIKZUFHE
X-Message-ID-Hash: 5GOZI7YEICNHJCXOVLRT53ICBIKZUFHE
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to re-add missing rfnoc blocks in gr-ettus for use with UHD 4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5GOZI7YEICNHJCXOVLRT53ICBIKZUFHE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5026261695030970741=="

--===============5026261695030970741==
Content-Type: multipart/alternative; boundary="000000000000327cac05c55eae5b"

--000000000000327cac05c55eae5b
Content-Type: text/plain; charset="UTF-8"

Hi Martin,

Those blocks do not have GNU Radio support in UHD 4.0. Ettus is looking
into adding GR support for some of those blocks, but there is no timeline
on when/if that will happen.

Jonathon

On Tue, Jun 8, 2021 at 8:20 AM Martin <usrp-users-list@olifantasia.com>
wrote:

> Hi,
>
> Due to unsolved issues with uhd 3.15 on usrp E310 sg1 I am forced to use
> UHD 4.0
>
> But many RFnoC blocks seems to be missing in gr-ettus in the
> main-3.8-uhd-4.0 branch.
>
> If I look at the commit that modifies gr-ettus for use with UHD 4.0 it
> says:
> ====================================
>
> https://github.com/EttusResearch/gr-ettus/commit/30640b73960d6d29e8366d46aab4ef5273217175#diff-07eb034ef7119f3142143792b6a91429ea645e3dd21cd48251d5332abf7486a2
>
> This commit updates gr-ettus to support a subset of RFNoC features
> present in UHD 4.0 with GNU Radio 3.8.
>
> **PLEASE NOTE**: UHD 4.0 represents a radical change to the RFNoC
> architecture, and as such, this commit represents a radical set of
> changes to gr-ettus with many breaking changes, incomplete support for
> the in-tree blocks in UHD 4.0, and removed examples and utilities. Over
> time, expect support for the missing blocks, examples, and utilities to
> be restored incrementally. Your mileage, as they say, may vary.
> =====================================
>
> Is there a guide or other info on how to re-implement blocks in gr-ettus
> for uhd 4.0?
>
> Where do I start to look?
>
> I want to use these RFnoC blocks.
> dma_fifo
> replay
> logpwr
> keep_one_in_n
> moving_avg
>
> Thanks in advance.
>
> Martin
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000327cac05c55eae5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin,<div><br></div><div>Those blocks do not have GNU=
 Radio support in UHD 4.0. Ettus is looking into=C2=A0adding GR support for=
 some of those blocks, but there is no timeline on when/if that will happen=
.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 8, 2021 at 8:20 AM Mar=
tin &lt;<a href=3D"mailto:usrp-users-list@olifantasia.com">usrp-users-list@=
olifantasia.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">Hi,<br>
<br>
Due to unsolved issues with uhd 3.15 on usrp E310 sg1 I am forced to use <b=
r>
UHD 4.0<br>
<br>
But many RFnoC blocks seems to be missing in gr-ettus in the <br>
main-3.8-uhd-4.0 branch.<br>
<br>
If I look at the commit that modifies gr-ettus for use with UHD 4.0 it says=
:<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<a href=3D"https://github.com/EttusResearch/gr-ettus/commit/30640b73960d6d2=
9e8366d46aab4ef5273217175#diff-07eb034ef7119f3142143792b6a91429ea645e3dd21c=
d48251d5332abf7486a2" rel=3D"noreferrer" target=3D"_blank">https://github.c=
om/EttusResearch/gr-ettus/commit/30640b73960d6d29e8366d46aab4ef5273217175#d=
iff-07eb034ef7119f3142143792b6a91429ea645e3dd21cd48251d5332abf7486a2</a><br=
>
<br>
This commit updates gr-ettus to support a subset of RFNoC features<br>
present in UHD 4.0 with GNU Radio 3.8.<br>
<br>
**PLEASE NOTE**: UHD 4.0 represents a radical change to the RFNoC<br>
architecture, and as such, this commit represents a radical set of<br>
changes to gr-ettus with many breaking changes, incomplete support for<br>
the in-tree blocks in UHD 4.0, and removed examples and utilities. Over<br>
time, expect support for the missing blocks, examples, and utilities to<br>
be restored incrementally. Your mileage, as they say, may vary.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
Is there a guide or other info on how to re-implement blocks in gr-ettus <b=
r>
for uhd 4.0?<br>
<br>
Where do I start to look?<br>
<br>
I want to use these RFnoC blocks.<br>
dma_fifo<br>
replay<br>
logpwr<br>
keep_one_in_n<br>
moving_avg<br>
<br>
Thanks in advance.<br>
<br>
Martin<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000327cac05c55eae5b--

--===============5026261695030970741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5026261695030970741==--
