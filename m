Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D5B998CDC
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 18:09:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2608E385AE4
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 12:09:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728576590; bh=OfjZ2qJ3mqM5rfysPmqjDKjwlypeaUM9bpUbaytUaqg=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=sLZtRkFBVvl6JBHDdExHlCfauaEiEqHB4/dvQzZQpCAvsd4ri7wnXgTjV1z8z9SJX
	 dFUe8d3dZDCiOTZkG5dvJdj9ow9V0GdH+Bv2ZKRPYRU6FFYjllWMMb/lcqMyvYrd76
	 +tWZR+RwpTXPYXezCTpUiTfYqwrTS8l5j0VbPK40eJ2AXj9RH5Q/g3MQfnsCEbRVNv
	 xeI55I3iCHpMptdpozkmcN8anFSPttu+DW8ZoIVrB9G4spWE74j5D/KpnbaZOZeMgR
	 g0s+NnfPp9KWM500Wppi3GpVQV3Xkj8dt1SEpxmf5bbUJWK+KOlKG1z6aKwuI7pa/I
	 YPr0FA4Cn9xFw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8EC53381065
	for <usrp-users@lists.ettus.com>; Thu, 10 Oct 2024 12:09:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728576571; bh=Imqv7mMysrqNVKH2CVb2iAc4wUaZiiP6N9YbyTvXueI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=iRRzYw46tixJQLsQKgAzPEe+M4b9dVFu+SfDkDt60m4QiE889aGHZZwl7T6wAS1tL
	 EHLYXTE7rWJ3cWa9MsIrppBgx1elu41Hhik+V54Z/fRRNQtFd1FN5qN7CrQq8qemVP
	 n/tpDz6DJJR8KP9g0ifgFylLxri9jgXX6XJ71zYEiYpWoQbtlz5eKtsCpR8W34Pfjg
	 ivKzeK7tiBh2DHcnK2bMQYPlno7pbHWmePeeQ1iKBK/TZzV95pBTVyYP0t3hCYAS/W
	 Z1j36IHqwcCCGNZoHAK+ADhnQ/Z9UNYTjh3AOJyzcFaPBAlwIp0dFV2ysh/kTnOTf1
	 y+T5n18GU35tg==
Date: Thu, 10 Oct 2024 16:09:31 +0000
To: usrp-users@lists.ettus.com
Message-ID: <OrtDgAyUn9Uzl3hTFxHdnAPaMuk9sxR1broWBV7bo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: ibyCa56nYp7goJhmNUkA06rx68zabxvegXBJjCElBzg@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: Q2BEZ424FPPY5R5NX4EZ6EI7JUGXSHCR
X-Message-ID-Hash: Q2BEZ424FPPY5R5NX4EZ6EI7JUGXSHCR
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q2BEZ424FPPY5R5NX4EZ6EI7JUGXSHCR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============0669707003184925873=="

This is a multi-part message in MIME format.

--===============0669707003184925873==
Content-Type: multipart/alternative;
 boundary="b1_OrtDgAyUn9Uzl3hTFxHdnAPaMuk9sxR1broWBV7bo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_OrtDgAyUn9Uzl3hTFxHdnAPaMuk9sxR1broWBV7bo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

Thanks.   The PXE boot info is fantastic.   I don=E2=80=99t have it set u=
p yet, but I=E2=80=99m going to start setting everything up today.   I=E2=
=80=99ll start with just getting JTAG tftpboot running, and then start se=
tting up NFS/PXE boot.

Once this is working, it will REALLY simplify testing the rootfs.   I fee=
l like overwiting the eMMC for an occasional image upgrade is fine, but i=
t=E2=80=99s a bit sketchy to overwrite it several times a day during deve=
lopment work.

> The reset over control port is not optional as the bootmode (jtag) is s=
et there. As it is sometimes not reliable (i.e. it happens control port i=
s not accessible) I additionally reset power of the device with remotely =
controlled power strip.

\:-) That=E2=80=99s why I keep the boards on my desk!   I used to sit at =
a desk in the lab to be close to the equipment and lab benches, but I mov=
ed out because of all of the fan noise in there.   It was deafening.   As=
 soon as I moved out, I missed having all of my boards next to me, so I m=
oved them to my desk=E2=80=A6and now my office is almost as loud as the l=
ab.

Cheers,

Mike

--b1_OrtDgAyUn9Uzl3hTFxHdnAPaMuk9sxR1broWBV7bo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Piotr,</p><p>Thanks.   The PXE boot info is fantastic.   I don=
=E2=80=99t have it set up yet, but I=E2=80=99m going to start setting every=
thing up today.   I=E2=80=99ll start with just getting JTAG tftpboot runnin=
g, and then start setting up NFS/PXE boot.</p><p>Once this is working, it w=
ill REALLY simplify testing the rootfs.   I feel like overwiting the eMMC f=
or an occasional image upgrade is fine, but it=E2=80=99s a bit sketchy to o=
verwrite it several times a day during development work.</p><blockquote><p>=
The reset over control port is not optional as the bootmode (jtag) is set t=
here. As it is sometimes not reliable (i.e. it happens control port is not =
accessible) I additionally reset power of the device with remotely controll=
ed power strip.</p></blockquote><p>:-) That=E2=80=99s why I keep the boards=
 on my desk!   I used to sit at a desk in the lab to be close to the equipm=
ent and lab benches, but I moved out because of all of the fan noise in the=
re.   It was deafening.   As soon as I moved out, I missed having all of my=
 boards next to me, so I moved them to my desk=E2=80=A6and now my office is=
 almost as loud as the lab.</p><p>Cheers,</p><p>Mike</p>

--b1_OrtDgAyUn9Uzl3hTFxHdnAPaMuk9sxR1broWBV7bo--

--===============0669707003184925873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0669707003184925873==--
