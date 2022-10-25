Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 900F560D6E2
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 00:16:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BF5C383BC5
	for <lists+usrp-users@lfdr.de>; Tue, 25 Oct 2022 18:16:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666736169; bh=pV17Zdq9YfJe1FqTzHi8URUmWER1oilzxg0E0yQBUig=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=hLyHDghAbrQfwLEFGfN9kNQUF/1eLxE6K2eguOngNohpvkDFsl2Aa1twwdls+x97q
	 NxFKQMt8Hk1CIh5E6zHQvggAEf+DoraMYOLu5NvEcH72tQMYeBHV134egRvlQAY2gG
	 4NpMt9gB/HYAbprhqzWKB9wxSHBswc4elhtLRktzRI3YovyH5baw7kFqnWz+TfKYb9
	 n+zZuKAnYcYLmwnd4N08COdpNtRwNrxwu5um5fTlq37AdJodzPaY5J538vfcLNrwmg
	 Yt+GRzZZRx42mzjoio9Fj9zFYlNdL55nJrmE/YfBJ/FTtT1+D9PaPQ21V0VGsicT0U
	 2J3swvUs965XQ==
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 29AB13809D1
	for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 18:15:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SnRVeUii";
	dkim-atps=neutral
Received: by mail-ot1-f46.google.com with SMTP id r13-20020a056830418d00b0065601df69c0so8751943otu.7
        for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 15:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=P/heEPR6lGaLfjczctq1xRl/RRu75/NO7Ix4DAiGgWs=;
        b=SnRVeUiiZqAiuaxBEd+XccGtPjfKAWsrvEMJ5oabsYqLRx0q2A3QE9CF6UON9pXDxF
         sJjWIsyDhKE4NzhtKHi1zce8Ejqb+Zsb05A4hIErmUHHq0tdyl9emRd+YRQ+ltEIyZVC
         N0lkFpbPrcW7Wj7dObbArmpCBgrsLg3JZ+vpkvzVGu7/kqZSzuw/M4u2luaw0j1osyjo
         GQeGu53IFxUEUYr/ZjLQkUr3SDPllFCKh0WEJFLagW8s3ilrmbSLBCqQQK4KgqGWbYEC
         EJQBIn0vQ5+ThE1s2aMeBUWw08Be+xzA+OJBtrfNT9wZ6BmN6wXC696ANwHBj4LHQ8n8
         QmxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P/heEPR6lGaLfjczctq1xRl/RRu75/NO7Ix4DAiGgWs=;
        b=Bh0AaQGGPx/9FsmdUvlvjRf4KMyDaDzCMmdlmx86HtEHejeZ0QKWLfUy1Es98fpLLc
         JPho6ZoZn7gjGOHa93PfZIGN7h1uAuvQMI+lArGP0Bvma7v7Qm6sfihD2kxeU5aEN99J
         1Gn7eqf2bZo5h6Q/LoKrRGSsHFm62P4QOgTQKmMDsjDHsKuEXWAJS67lPLsjVkun/+Nt
         7IBHe5QefguDJWJak05aqvNyLZ0+BV0p/URZcw+Dgf06IVrkXN+XbQxOqHj8BtZSPYJN
         90KGfu0yqkF72EE+uzx8zxPjnXKcBJg5MD/710iWPhKiljZBQbsyYXhUn7KVAzywj4Bp
         W39g==
X-Gm-Message-State: ACrzQf33GqTto4UH4nJBDbdBVV4YWX9Mq0Wr1U3Fyc/0fZ0qPC+1dfpc
	1ySt1YHmfJTwz0FrDlUhI5pzXb15eg7KBb0JmQDoPeGe
X-Google-Smtp-Source: AMsMyM6cY9Dbm9vM/+BG+Vm5IY/0YsFS+g0IzLHi93wKK13q3m2eWbRR3gb4fsB4ZoJ+A9htDnfMyf1nenN4lkr+9gQ=
X-Received: by 2002:a05:6830:2005:b0:662:28ac:de19 with SMTP id
 e5-20020a056830200500b0066228acde19mr11715269otp.116.1666736122000; Tue, 25
 Oct 2022 15:15:22 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 25 Oct 2022 18:15:10 -0400
Message-ID: <CAEXYVK4siP3O0-qP24bpp=Phjj0JRt1rB9n0R=9CxDOyTCiyTQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: O3A27BGE4ZO3MXQRTBYYDSXBBUISLHO7
X-Message-ID-Hash: O3A27BGE4ZO3MXQRTBYYDSXBBUISLHO7
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] TwinRX Channel Isolation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O3A27BGE4ZO3MXQRTBYYDSXBBUISLHO7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3149566772750694986=="

--===============3149566772750694986==
Content-Type: multipart/alternative; boundary="0000000000007c7b3805ebe33e17"

--0000000000007c7b3805ebe33e17
Content-Type: text/plain; charset="UTF-8"

I have an application where I am using both channels of the TwinRX without
using LO sharing.  I am using channel 0 as a single frequency channel, and
I am using channel 1 to tune to different frequencies.

I am noticing that some transients happen on channel 0 - the fixed
frequency channel - as I am changing channel 1.  This happens with even
terminated inputs on both channels.  I also notice that if I change the
rate at which I am changing channel 1, the spectrum, on average, is much
cleaner but the transients stay there from a "max hold" perspective.  So
once the LO has settled, things don't seem to be as noisy.

My setup does not install the LO sharing cables, so those MMCX connectors
are left floating/open.

My question is if Ettus has seen this or knows about this?  As I stated
previously, I don't need the LO sharing feature of the TwinRX and I am
worried that constantly retuning the PLLs might be causing the noise and
distributing it to the fixed frequency channel?  If that is the case, are
there some resistors or modifications I might be able to make to the TwinRX
that could remove this as a source of noise knowing I never want to perform
the LO sharing?  If I didn't connect the MMCX LO sharing ports, am I
already removing this as a possible noise source?

Lastly, a thought is that the noise might be coming from digital switching
noise to reprogram the LOs.  How feasible is this?

Thanks,
Brian

--0000000000007c7b3805ebe33e17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have an application where I am using both channels of th=
e TwinRX without using LO sharing.=C2=A0 I am using channel 0 as a single f=
requency channel, and I am using channel 1 to tune to different frequencies=
.<div><br></div><div>I am noticing that some transients happen on channel 0=
 - the fixed frequency channel - as I am changing channel 1.=C2=A0 This hap=
pens with even terminated inputs on both channels.=C2=A0 I also notice that=
 if I change the rate at which I am changing channel 1, the spectrum, on av=
erage, is much cleaner but the transients stay there from a &quot;max hold&=
quot; perspective.=C2=A0 So once the LO has settled, things don&#39;t seem =
to be as noisy.</div><div><br></div><div>My setup does not install the LO s=
haring cables, so those MMCX connectors are left floating/open.</div><div><=
br></div><div>My question is if Ettus has seen this or knows about this?=C2=
=A0 As I stated previously, I don&#39;t need the LO sharing feature of the =
TwinRX and I am worried that constantly retuning=C2=A0the PLLs might be cau=
sing the noise and distributing it to the fixed frequency channel?=C2=A0 If=
 that is the case, are there some resistors or modifications I might be abl=
e to make to the TwinRX that could remove this as a source of noise knowing=
 I never want to perform the LO sharing?=C2=A0 If I didn&#39;t connect the =
MMCX LO sharing ports, am I already removing this as a possible noise sourc=
e?</div><div><br></div><div>Lastly, a thought is that the noise might be co=
ming from digital switching noise to reprogram the LOs.=C2=A0 How feasible =
is this?</div><div><br></div><div>Thanks,</div><div>Brian</div></div>

--0000000000007c7b3805ebe33e17--

--===============3149566772750694986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3149566772750694986==--
