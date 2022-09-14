Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6355B8EA2
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 20:12:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 65336383B79
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 14:12:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663179166; bh=z2443kkrY/tadYZvmQk5RslL11f7uNVzpJ2QkfCXBLI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=focQk0D9RHW7dFAwfLvi0mcxZp3WPotrfwwpjTvLm7T9F9VC9mqHOjCYyiQG/gbMc
	 BierU1deNzibvri2VooAtiSyzRVuLdP2SBUHeq348LXha/GSS6fUcsiMCR8nftxLVU
	 mNNLzDhJtW5LbfPAE5DLvie3LxPenQwOyzEwGO4mgHTKbsR73o/H5A2yCrETx3T+uq
	 yh1LKeCIVdQIM9v2zIpPIZqTnju15FkmjtmErHBWwI+3gQM5/FxnaoV8S3VOxPkLOe
	 JQyNxnWH74RUZu5dAjLG42KLSnEmmd8BzaONwN06NuAl35/irptmfuTQ2GnCTH9Amv
	 ECjbJqSf1J7fA==
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 66A10383AF9
	for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 14:11:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bE/7Ly3H";
	dkim-atps=neutral
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-127dca21a7dso43172523fac.12
        for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 11:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=isg07OnvL6uF8rTrHEHL9fFCT/7pAFYwB3Dw8ncEDMg=;
        b=bE/7Ly3HF1rqWUG2SCRVyhschq5wKgtscj+i3J25nd/Tgvan4SK7DmnGtwrt0/j+TR
         2hvB4rjwxNPZ52zoL5cae18VvZP4uf5Bm5PA1s+msQyZEjjY33RJG6rgW2amqKbbiBH2
         Ztd8tKDkb6lgJHakhBvflkSHwguBLJyCX0jegi/jpFxc1SXSZgg25Nr6JIfF3OO7Sc7Y
         AAtMz1Zk8zEdJtheqYDwp6MkffZiLfWyAkd5rSubD0ks9YDic+Ebfe91JZc9fX3lEamB
         1fOq+RfIYs1qbG7oXrmSnTVdM76kYKcvEQQQr9bRuuea1sbh8C1EEFO0Hx/xsXy7gLQK
         tUIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=isg07OnvL6uF8rTrHEHL9fFCT/7pAFYwB3Dw8ncEDMg=;
        b=yzcM+40TEg3foW18lk2exsgzu6chzVOWhj1rr/pUdFot15r+7MY930Mi6QbdlP1UCT
         fZ5Y/3J6HoRbL9+tD6rCtS2HBcmkFlv0RRqVDmzdz+WMjA1Fo40Vha4V0TErjpiTlYmh
         ZzRk5l4WJvmFfFTdQKpU7gnJMCSl38Aho7kyg4GIhvK43jled2myLOJte61w+skNruSj
         rbL6iPchtA55ujrnYaBkgn7riScjfZtWzj6Op8JAP8eowCuzLDSn0Xsl/q2P48jByqRq
         Y6MeBu49F+xxAWYDZEDrfPefJjqtk+b3SqyERsf587sMblaN4sNkhfqKgsQ9KpRYbWEO
         l1CQ==
X-Gm-Message-State: ACgBeo1oe5dcDCD9q8JjjEDHQ6QFAqF4+YgFzuBkNyh9rKq3lC6eB5BD
	7OMhgVa6+wFhhm9uqvoKx9/TQ9NX8szVIZlcnWQ=
X-Google-Smtp-Source: AA6agR5CVvwowB0wn3jhLw9BiYv8vZXrsXFLXxcp8zJxGvQdVfZ91kvjYKLuTQFcwYYGD8p7vzjpnGYamzX68sAO/O4=
X-Received: by 2002:a05:6808:1913:b0:344:fb5c:e5af with SMTP id
 bf19-20020a056808191300b00344fb5ce5afmr2429367oib.168.1663179093468; Wed, 14
 Sep 2022 11:11:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
 <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
 <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
 <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com>
 <CAL7q81s9KwfTnerWYdOt1fDrG9FDPv5qF743TYqBBSqG1LCNnA@mail.gmail.com>
 <CAJhOL6cTzeJRP8EFS_HjQR2VZP84w+6j8RiRPMczuniQUwcO3w@mail.gmail.com>
 <CAB__hTSe5M-BL4FFaAi=gA3O4AV=jxgBRbENpxGdnHe340ZptA@mail.gmail.com>
 <CAB__hTTsg9LsRScFUmYOywBp9eSg7iYixjLZULa119B+fnO2WQ@mail.gmail.com>
 <CAB__hTQp1SOfvNa6E=qZaV6ORqVHU5MJFTv_vzU0KXZ5Gy9Eww@mail.gmail.com>
 <CAJhOL6etMLth3S6pj-ghemXv18PXz-M0nS=S3Sg0Z3-i6Pq4Yg@mail.gmail.com>
 <CAB__hTQ8Ln5ktvkmx1ThQVQVX1mga0qCX=49YbXJtasG7emYjw@mail.gmail.com>
 <CAJhOL6dLdSL2bWPjdgcfnXL+ednwRQ1QX9tRG3mxgm3+O=486Q@mail.gmail.com>
 <CAJhOL6dUL3S-CJJHLOJTkaj86V-4axM8Ah=4_aKvAcB6WHEHyg@mail.gmail.com>
 <CAEXYVK6MeWsG3CF0LXYaOE0w5RGzAiksG1j-54kNOWYg2ZOfDg@mail.gmail.com> <28515f65-c0e2-4489-8563-1887cfac4265@Spark>
In-Reply-To: <28515f65-c0e2-4489-8563-1887cfac4265@Spark>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 14 Sep 2022 14:11:21 -0400
Message-ID: <CAEXYVK4_xW0rgOKS1vz7R=iZkh_mg4qADnPF0uLALBhxGd71Ng@mail.gmail.com>
To: Kevin Williams <zs1kwa@gmail.com>
Message-ID-Hash: ZDTT3RQ64IJRRBM7RS5XJSHZ2UPIUGVR
X-Message-ID-Hash: ZDTT3RQ64IJRRBM7RS5XJSHZ2UPIUGVR
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, Jonathon Pendlum <jonathon.pendlum@ettus.com>, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZDTT3RQ64IJRRBM7RS5XJSHZ2UPIUGVR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1281395502580838476=="

--===============1281395502580838476==
Content-Type: multipart/alternative; boundary="000000000000107aaf05e8a70fae"

--000000000000107aaf05e8a70fae
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 14, 2022 at 1:55 PM Kevin Williams <zs1kwa@gmail.com> wrote:

> Thanks Brian. I think the core gets generated in a way which respects
> back-pressure, so unless a TREADY is seen the core does not generate output
> samples. I have observed this by simulating the core in isolation.
>
On 14 Sep 2022, 17:49 +0200, Brian Padalino <bpadalino@gmail.com>, wrote:
>
> I believe the AXI spec says that data should be presented when valid, and
> the tready signal just accepts that data.  You can't rely on tready to be
> asserted before asserting tvalid.
>
> With that being said, I have no idea if this is the source of any of your
> issues.
>
> Brian
>
>
I don't quite understand what you said.  To copy from the AXI protocol spec
(
https://documentation-service.arm.com/static/60d5b244677cf7536a55c23e?token=)
section 2.2:

  "A Transmitter is not permitted to wait until TREADY is asserted before
asserting TVALID. Once TVALID is
asserted, it must remain asserted until the handshake occurs.

  A Receiver is permitted to wait for TVALID to be asserted before
asserting TREADY. It is permitted that a
Receiver asserts and deasserts TREADY without TVALID being asserted."

Waiting for TREADY to be asserted is invalid as a transmitter.

Is something not compliant and causing deadlock?

Brian

--000000000000107aaf05e8a70fae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Sep 14, 2022 at 1:55 PM Kevin William=
s &lt;<a href=3D"mailto:zs1kwa@gmail.com">zs1kwa@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">



<div>
<div name=3D"messageBodySection">
<div dir=3D"auto">Thanks Brian. I think the core gets generated in a way wh=
ich respects back-pressure, so unless a TREADY is seen the core does not ge=
nerate output samples. I have observed this by simulating the core in isola=
tion.</div></div></div></blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div><div name=3D"messageBodySection">
</div>
<div name=3D"messageReplySection">On 14 Sep 2022, 17:49 +0200, Brian Padali=
no &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank">bpadalino@g=
mail.com</a>&gt;, wrote:<br>
<blockquote type=3D"cite" style=3D"border-left:thin solid grey;margin:5px;p=
adding-left:10px">
<div dir=3D"ltr">I believe the AXI spec says that data should be presented =
when valid, and the tready signal just accepts that data.=C2=A0 You can&#39=
;t rely on tready to be asserted before asserting tvalid.
<div><br></div>
<div>With that being said, I have no idea if this is the source of any of y=
our issues.</div>
<div><br></div>
<div>Brian</div></div></blockquote></div></div></blockquote><div><br></div>=
<div>I don&#39;t quite understand what you said.=C2=A0 To copy from the AXI=
 protocol spec (<a href=3D"https://documentation-service.arm.com/static/60d=
5b244677cf7536a55c23e?token=3D">https://documentation-service.arm.com/stati=
c/60d5b244677cf7536a55c23e?token=3D</a>) section 2.2:</div><div><br></div><=
div>=C2=A0 &quot;A Transmitter is not permitted to wait until TREADY is ass=
erted before asserting TVALID. Once TVALID is</div>asserted, it must remain=
 asserted until the handshake occurs.</div><div class=3D"gmail_quote"><br>=
=C2=A0 A Receiver is permitted to wait for TVALID to be asserted before ass=
erting TREADY. It is permitted that a<br>Receiver asserts and deasserts TRE=
ADY without TVALID being asserted.&quot;</div><div class=3D"gmail_quote"><b=
r></div><div class=3D"gmail_quote">Waiting for TREADY to be asserted is inv=
alid as a transmitter.</div><div class=3D"gmail_quote"><br></div><div class=
=3D"gmail_quote">Is something not compliant and causing deadlock?</div><div=
 class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Brian</div></di=
v>

--000000000000107aaf05e8a70fae--

--===============1281395502580838476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1281395502580838476==--
