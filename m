Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B867A793F
	for <lists+usrp-users@lfdr.de>; Wed, 20 Sep 2023 12:31:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7297385100
	for <lists+usrp-users@lfdr.de>; Wed, 20 Sep 2023 06:31:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695205906; bh=AIGJ2ZwObqGuGAhMEaHn3ViMvwY5I9Qis3FHXMUSFl4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=fiFGrD8z/IQWF1nP1Bdt/PjHRWfRJkKOIegwod3ownm2fCCw8EvSyJUUChpw0uTpd
	 XPb/r4kLMMeIGkC60oF9dNHz5adYZtXqofEjiAi4jdqjugas7yfX/59thpsO2KdKKm
	 sQuECFH2/Sghc0oh5pi9HJy0l3MbWJMTK5cewxyeoWIv0CjZMYvyGC29og2J8oLKnO
	 LtMG6nVmdRbjU5gJqfcIWy2GuToEgnnlOpqSdzj5Kj3pjl2x6GFmd9PUXHqWhQqf+w
	 xtdJs4AEj9T2h5V86Kpb5gD0u7rEpEXaZyunGEpjzELPnlfiYZpJSnbWOQxKV5GRjv
	 MqqNxsJ0z+oqA==
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 53EE8384FE5
	for <usrp-users@lists.ettus.com>; Wed, 20 Sep 2023 06:31:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="Dw3QTiUm";
	dkim-atps=neutral
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2c008042211so53650501fa.2
        for <usrp-users@lists.ettus.com>; Wed, 20 Sep 2023 03:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google; t=1695205888; x=1695810688; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jQcZoAcJ+M+0HSv/NehzkO8FhVRSs2A772I5NYlSvg8=;
        b=Dw3QTiUmSNEWe33VaqOqGnLC/0TgKhB7SxOr2NdR3o9yI9m8iyNjUbDbjKFoNf35/a
         vY1/61PU8vfPWYoEcUO53Cp2Tn5OB9DEsx0IeybYiC/Cuf8/2ZP9bEfXwBIUa3Xf66AE
         t6GGHliw5xutBWTzx5KH1y9QA6oI5lfa2Md2UC9JiJhPlCKyzRjJL0H5Kl0R8ux4gGOk
         9p+uNNSUhd1uORG4PjJ5Ti/Ag8l5FMy8gTMyksEU4hbxvZ0skvNRYlMT+gQ72uvraFjC
         zCK/AtFJAxkdaJknZ2pfnG566I1cMbnwu7EgOaG5wh6SdG6uU1aK+H1Y8yN0lNJa0NAa
         xhmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695205888; x=1695810688;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jQcZoAcJ+M+0HSv/NehzkO8FhVRSs2A772I5NYlSvg8=;
        b=D/+f6BGvrnnTZSRtd3/oXDXAjCP6urfmcsKXtTS/OSAQVodY7QVjpSNDhmlJqSn7yD
         CWIoutOP/pV/LqufdgvaLxIrqn+Mv+1+k4o0rB2OnRnOnU76k8rd0QR//xMjGRkuYSvN
         1ldxstINcmoie2+U8xAyvwJckO4SdIFcNsy1ga96h3fHqTkgShTskBewcOQfEF5W/lNr
         O4wcckdZib1YO0AM5QVz+/jxP8FWY/d4REcfbPO9eSoOWq1IBP3lEuerOZadQ97xiFth
         X4nw0ckFhBKL9WCzJ6MWDHtPU/ThFZD1cEOOmK3qUQd3oAoGMvE880pr2FNNpTFc7Snc
         M7cg==
X-Gm-Message-State: AOJu0Yw/dk4I5Wissp4H+wDW8Ug1vY6uMP+3OSs9qD7WEhEq0wnB0uHQ
	C+QwEyi6gfQ1Uzope5h3pgnfUCgiaDwSr9TL1T6XfhtCuzwdnzQ4
X-Google-Smtp-Source: AGHT+IHPjgZ9QGSEqENpnxt1S4SU2Z0CNpJ0FaYqpx5BwzChjPI81KNVLLsctgxrIizbHHyzLX0nkVQZ8tL9iMsqEcs=
X-Received: by 2002:a2e:9952:0:b0:2b9:3684:165 with SMTP id
 r18-20020a2e9952000000b002b936840165mr1809555ljj.8.1695205888325; Wed, 20 Sep
 2023 03:31:28 -0700 (PDT)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Wed, 20 Sep 2023 12:31:16 +0200
Message-ID: <CAKHaR3na4NGPULYeVV6etRArggUh4Kw0pjvqVjWqNLNvUOri1A@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: IC3NY2JGNNIV6GDNM5VRVQFKA4BIZ6U6
X-Message-ID-Hash: IC3NY2JGNNIV6GDNM5VRVQFKA4BIZ6U6
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 at lower sample rates
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IC3NY2JGNNIV6GDNM5VRVQFKA4BIZ6U6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0527362034681437500=="

--===============0527362034681437500==
Content-Type: multipart/alternative; boundary="000000000000cb8e5b0605c7e0ba"

--000000000000cb8e5b0605c7e0ba
Content-Type: text/plain; charset="UTF-8"

Hi,
i'd be interested in porting an application we developed on X410 to X440
and was wondering if there is any known limitation that would prevent using
X440 at 200 MSPS or even 100 MSPS (although i see support for this has been
discontinued also for X410 in recent UHD versions).
as far as i understand X440 and X410 share the same mainboard and just have
a different front end which would make it straightforward to port code...
is this correct?
thanks,

Dario Pennisi

--000000000000cb8e5b0605c7e0ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>i&#39;d be interested in porting an application we=
 developed on X410 to X440 and was wondering if there is any known limitati=
on that would prevent using X440 at 200 MSPS or even 100 MSPS (although i s=
ee support for this has been discontinued also for X410 in recent UHD versi=
ons).</div><div>as far as i understand X440 and X410 share the same mainboa=
rd and just have a different front end which would make it straightforward =
to port code... is this correct?</div><div>thanks,</div><div><br clear=3D"a=
ll"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail=
_signature"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Ca=
libri,sans-serif;font-size:13.3333px">Dario Pennisi</span><br style=3D"colo=
r:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"><br></div>=
</div></div></div></div>

--000000000000cb8e5b0605c7e0ba--

--===============0527362034681437500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0527362034681437500==--
