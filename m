Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA78610E3D
	for <lists+usrp-users@lfdr.de>; Fri, 28 Oct 2022 12:17:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BB35E3809A9
	for <lists+usrp-users@lfdr.de>; Fri, 28 Oct 2022 06:17:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666952235; bh=CM/9GRU11+vqow2XYf0w6YKS9Z1+hUKSSCZeFs3C4AE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=wmx+QCeTUb/36urt50TutysKuEX+6I43E3UTqbMHQkI9+B6tOTe/+McZ5oGE0v+NP
	 SbbZ4Aprsup/jAAFCO20NjSGeVB2BXwjYaz2wPdbfhkUsY9UpmdneqXVSa5aWaEJeK
	 NiQEssZAt5IRr6E3Hq3WBzIZ7SplPEfwxcPnm21CpHjQKMr7Hi+01mAOQKZX0Xthcw
	 j0y0ERi6AE2zEn65az9FmJp7Q50iwVI0CkKUFbGA9vwKFQot/EogVHNk3gt2Ne7P44
	 JOWishdfnp10o8xPZARoqb6p59ilYWYudlXwAi98K8yy8AwmNdCKVzc5pZkf3IfnLO
	 0pwqdPt8YPXrg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07695380787
	for <usrp-users@lists.ettus.com>; Fri, 28 Oct 2022 06:15:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666952134; bh=I90AAzlb/yTQ+u+TwdXnZV6E+RQRWjm8yujcNpAo8MI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=RYX9B9AC+t0x3KSWV8I1xoqjofjWUNw9Bm+mrLX4OK361GfiLKb7GMXiFizDiN2ke
	 5TMEhPjNKw/wsSAQqiKjxG8JuKoMhSJgoBsabuuVT79/Rj1pEl0lpB9Vpia5f1vmvw
	 ySHteTm7kI8449PMiFDL24cwaZWFkHypsHDMXez84E1CWm9oJh4/Z2/wUzqMutiia9
	 c6lkLtvma0usHVqtDmZaJ2CQ2fK2r3bdikgmzAfWpMp3muBeUGMMe+Rjtu4MAfjdgp
	 3kOROzw2AgBV9HFh5NYPRIbiH3GQPssr0WWIxrBMN8fJidiWPzK3mn4BbE7qa22INF
	 HzLpKspLmHopw==
Date: Fri, 28 Oct 2022 10:15:34 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <5Kk5brD5qLw2zmry83Z2MK6DndDEoxqJcNVa0MES88@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 1XjFeZuxJCE4wbZQgmUQYUbtQzoD6MBlvUBkWoW78@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 5TNADVTKN6Z5WOPXIKIV42PLSQRCC64W
X-Message-ID-Hash: 5TNADVTKN6Z5WOPXIKIV42PLSQRCC64W
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question: maximum single channel sample rate on X410 with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5TNADVTKN6Z5WOPXIKIV42PLSQRCC64W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6776272923776493710=="

This is a multi-part message in MIME format.

--===============6776272923776493710==
Content-Type: multipart/alternative;
 boundary="b1_5Kk5brD5qLw2zmry83Z2MK6DndDEoxqJcNVa0MES88"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_5Kk5brD5qLw2zmry83Z2MK6DndDEoxqJcNVa0MES88
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

perper@o2.pl wrote:

> Hello,
>
> It seems that I have to answer my own question. Currently I succeeded t=
o get 245.76MSamp/s in benchmark_rate for single channel with DPDK over s=
ingle 10Gbit link for an RFSoC device similar to USRP X410.
>
> My setup:
>
> * UHD 4.3, Ubuntu 20.04, DPDK 19.11 installed from packages
>
> * command: benchmark_rate  --rx_subdev "A:0" --rx_channels 0 --args=3D"=
addr=3D192.168.10.2,mgmt_addr=3D192.168.0.39,use_dpdk=3D1" --rx_rate 245.=
76e6
>
> * Hardware: AMD Ryzen Threadripper 2990WX, 128GB RAM, motherboard Asus =
X399
>
> This is not a mind-blowing rate, because I=E2=80=99m able to get quite =
stable 245.76 MSamp/s without DPDK.
>
> But it is a good start taking into account number of different strange =
steps during DPDK installation and setup and very poor performance at the=
 beginning.
>
> Solutions to some issues were totally counterintuitive. I.e. in the end=
 I still had one \~oveflow per second at 245.76MSamp rate. The solution w=
as to run the program WITHOUT root rights/sudo (what requires additional =
steps that were described by Rob Kossler).
>
> =E2=80=94\
> Best Regards,\
> Piotr Krysik
>
> Piotr Krysik wrote:
>
> > Hello all,
> >
> > Has anybody tried to use DPDK with USRP X410?
> >
> > If yes - can you share what was maximal sample rate for a single chan=
nel
> > that you were able to stream over 10G or 100G Ethernet connection
> > without loss and what was your setup (hardware and software)?

Little update: currently with the same setup but with different clocks co=
nfiguration I can record 256MS/s. This is with use of single 10GbE connec=
tion.

I can=E2=80=99t use multiple connections simultaneously to transfer more =
channels with maximum rate yet. If someone tried that with USRP X410 I wo=
uld be grateful for information how it worked (or didn=E2=80=99t work).

Best Regards,\
Piotr Krysik

--b1_5Kk5brD5qLw2zmry83Z2MK6DndDEoxqJcNVa0MES88
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>perper@o2.pl wrote:</p><blockquote><p>Hello,</p><p>It seems that I have =
to answer my own question. Currently I succeeded to get 245.76MSamp/s in be=
nchmark_rate for single channel with DPDK over single 10Gbit link for an RF=
SoC device similar to USRP X410.</p><p>My setup:</p><ul><li><p>UHD 4.3, Ubu=
ntu 20.04, DPDK 19.11 installed from packages</p></li><li><p>command: bench=
mark_rate  --rx_subdev "A:0" --rx_channels 0 --args=3D"addr=3D192.168.10.2,=
mgmt_addr=3D192.168.0.39,use_dpdk=3D1" --rx_rate 245.76e6</p></li><li><p>Ha=
rdware: AMD Ryzen Threadripper 2990WX, 128GB RAM, motherboard Asus X399</p>=
</li></ul><p>This is not a mind-blowing rate, because I=E2=80=99m able to g=
et quite stable 245.76 MSamp/s without DPDK.</p><p>But it is a good start t=
aking into account number of different strange steps during DPDK installati=
on and setup and very poor performance at the beginning.</p><p>Solutions to=
 some issues were totally counterintuitive. I.e. in the end I still had one=
 ~oveflow per second at 245.76MSamp rate. The solution was to run the progr=
am WITHOUT root rights/sudo (what requires additional steps that were descr=
ibed by Rob Kossler).</p><p>=E2=80=94<br>Best Regards,<br>Piotr Krysik</p><=
p>Piotr Krysik wrote:</p><blockquote><p>Hello all,</p><p>Has anybody tried =
to use DPDK with USRP X410?</p><p>If yes - can you share what was maximal s=
ample rate for a single channel
that you were able to stream over 10G or 100G Ethernet connection
without loss and what was your setup (hardware and software)?</p></blockquo=
te></blockquote><p><br></p><p>Little update: currently with the same setup =
but with different clocks configuration I can record 256MS/s. This is with =
use of single 10GbE connection.</p><p>I can=E2=80=99t use multiple connecti=
ons simultaneously to transfer more channels with maximum rate yet. If some=
one tried that with USRP X410 I would be grateful for information how it wo=
rked (or didn=E2=80=99t work).</p><p>Best Regards,<br>Piotr Krysik</p><p><b=
r></p>

--b1_5Kk5brD5qLw2zmry83Z2MK6DndDEoxqJcNVa0MES88--

--===============6776272923776493710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6776272923776493710==--
