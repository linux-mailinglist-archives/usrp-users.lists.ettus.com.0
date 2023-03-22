Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD316C4F68
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 16:28:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1914384018
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 11:28:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679498894; bh=zpEK7Zil9Pkp90zGZp17pZ9qF0TAxc4X17hgrzVVwf4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=z74iz9UHJJMjONjaVlrjxwHgHFtJA97knRfWHsiNNRKF+wxXOtsMHYq8uaEk4BSzi
	 2ui/8KoEljNeqncV1P1L8GfYDxcmz4Z4fZBurfxKcLbJRaO9F88TYGLxdioeXfT++L
	 A1HnkiKQ6zEf0L/m6bLRneF5byfoyxh3qIxHotdgvRsgmkggSE0KfdqGW4croCeXBh
	 HCJYeCUjlHHtUJQu6SABi+KHoM2x7f6w/7+CISuAesR99grtzaDdTymToe+bsNrvz4
	 /16X1iGDZhLDtsZXaGUQXjHzOK6GAMOOx5tp1/Vya1Bt8Y8lkGb2yFcRVcWfDJUwGl
	 xDO2MRhYPWhHQ==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 34CA6384018
	for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 11:28:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Kpyi7u5v";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id r11so74545765edd.5
        for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 08:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679498888;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OAoRW7iObR4AXy0K/IsUhIPqLGOrJmpt/W2wDmm7wpk=;
        b=Kpyi7u5vF+pzbafwGmTZY8Od7r1rR2mLoehpKidmB5Dx/lMpEin97FRotgjQML43TW
         HjKEkP9qGWoCc7o+uWJTcVD9z0US7vSUNoFFsVTS9w8Y/6APY/UHKB9YH9cR6mFt7hjT
         eXaFhztmSu+cmR3InQhq/JUnm3B93+nuVRiFBaAqf7d7sFKDzMqi4g8y15D5KESgkeI4
         TNLR0ISNkEfG4O8u1NUIsXeeeVxt0JBTIEaRJuyUT+hT5Pz3ngwHE9ePs3kQwDPMsZDz
         E8C1Io/X7LaIu358sZmv9BBTR7MNpgElT2Xp0XVxZ6nM0TiUuOvkTT8PkpeQYCBjOZQP
         5x8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679498888;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OAoRW7iObR4AXy0K/IsUhIPqLGOrJmpt/W2wDmm7wpk=;
        b=TBzDuZ8Ol+mspBxbEDvpewWUfnt8xkgS5wBgpqjfJ+/ddRO090bDnUdVvCis/YAH/Z
         kq+SMxdX0mpwY/zNsR7oXPbpd1XY7NLiXEnbkW2psFr+PYz1v9w+TgrgAH7AyjSVdKTo
         6CreK6ZBLkzMwSJBBPrNemVjgqvsE5r8DMqbo/bdfhPVyLnG5GbnlCIDt7ZpzFyoMSPn
         hcFpDnXc0pfFFHpmoyNNjvWvXXvjgS9jhB/9abpm3KQC8uK/9qUm0TFlIs03ZAyRWMMF
         fl9MD37EdSpEvMo1ARq3KJAepj9GEUqqoUpILuobKxoc6jZBgkHWskFZj6Jgh6eavzQh
         oifQ==
X-Gm-Message-State: AO0yUKXTa6YG0VGCaQqBBzZ6pqYZxn0Qz7To4DtL2E/oLSFfFqkMmazr
	QtdiIIWeVSOPNfjEXmJ9isNEdfk4ALyhJTLMTYyvqzbf
X-Google-Smtp-Source: AK7set8StN3ZPQJ5K99GKeGmaQQCJjEDtupSXjJ7HTaITO5ofP95So1rzAmErvXXDIOJb05gJvLacjpiJXRLdyjbJlw=
X-Received: by 2002:a17:906:b889:b0:931:51c0:7459 with SMTP id
 hb9-20020a170906b88900b0093151c07459mr3524912ejb.4.1679498887664; Wed, 22 Mar
 2023 08:28:07 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 22 Mar 2023 11:27:56 -0400
Message-ID: <CAEXYVK4cuWzo5NfJRAsqKBeCdLZ=Un-X7NY=r0-aOGy=X3sSTA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: GU6KEM2QYUEH2BZJCDFJ24NUBXDPCTCH
X-Message-ID-Hash: GU6KEM2QYUEH2BZJCDFJ24NUBXDPCTCH
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 Overflow with Custom FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GU6KEM2QYUEH2BZJCDFJ24NUBXDPCTCH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2535819353100920240=="

--===============2535819353100920240==
Content-Type: multipart/alternative; boundary="0000000000009996d505f77ece8f"

--0000000000009996d505f77ece8f
Content-Type: text/plain; charset="UTF-8"

I've built up a custom FPGA based on the 400 MHz image, and I have a bit of
an asymmetric scenario going on here.  The TX side of things has a custom
block and it feeds the TX port at 491.52 MHz.

The RX side I only need to receive at 30.72 Msps, so I instantiate a
2-channel DDC and connect it statically:

  - radio0/out_0 -> ddc0/in_0, ddc0/out_0 -> ep0/in0
  - radio0/out_1 -> ddc0/in_1, ddc0/out_1 -> ep1/in0

When I set up my clock domains, I noticed there was a mix between the
different setups, so I went with radio_2x for the DDC:

  - srcport: radio, dstblk: radio0, dstport: radio
  - srcport: raio_2x, dstblk: ddc0, dstport: ce

This is how the X410_200 image seems to do it, so I figured it'd be fine.

When I try to receive at the sample rate, I immediately get an overflow.
To test it's just the FPGA being problematic, I set the program to receive
from radio 1 which doesn't use the DDC and I receive the appropriate 491.52
Msps with no overflows.

So my question is why is adding the DDC problematic?  The only other
difference I can see is the CHDR_WIDTH is 512 for my image and 64 for the
X410_100 and X410_200 images?

Any insight would be useful and welcome.

Thanks,
Brian

--0000000000009996d505f77ece8f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve built up a custom FPGA based on the 400 MHz image=
, and I have a bit of an asymmetric scenario going on here.=C2=A0 The TX si=
de of things has a custom block and it feeds the TX port at 491.52 MHz.<div=
><br></div><div>The RX side I only need to receive at 30.72 Msps, so I inst=
antiate a 2-channel DDC and connect it statically:</div><div><br></div><div=
>=C2=A0 - radio0/out_0 -&gt; ddc0/in_0, ddc0/out_0 -&gt; ep0/in0</div><div>=
=C2=A0 - radio0/out_1 -&gt; ddc0/in_1, ddc0/out_1 -&gt; ep1/in0</div><div><=
br></div><div>When I set up my clock domains, I noticed there was a mix bet=
ween the different setups, so I went with radio_2x for the DDC:</div><div><=
br></div><div>=C2=A0 - srcport: radio, dstblk: radio0, dstport: radio</div>=
<div>=C2=A0 - srcport: raio_2x, dstblk: ddc0, dstport: ce</div><div><br></d=
iv><div>This is how the X410_200 image seems to do it, so I figured it&#39;=
d be fine.</div><div><br></div><div>When I try to receive at the sample rat=
e, I immediately=C2=A0get an overflow.=C2=A0 To test it&#39;s just the FPGA=
 being problematic, I set the program to receive from radio 1 which doesn&#=
39;t use the DDC and I receive the appropriate 491.52 Msps with no overflow=
s.</div><div><br></div><div>So my question is why is adding the DDC problem=
atic?=C2=A0 The only other difference I can see is the CHDR_WIDTH is 512 fo=
r my image and 64 for the X410_100 and X410_200 images?</div><div><br></div=
><div>Any insight would be useful and welcome.</div><div><br></div><div>Tha=
nks,</div><div>Brian</div></div>

--0000000000009996d505f77ece8f--

--===============2535819353100920240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2535819353100920240==--
