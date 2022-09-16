Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F13A5BB45C
	for <lists+usrp-users@lfdr.de>; Sat, 17 Sep 2022 00:20:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C91EE380C1A
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 18:20:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663366840; bh=Drke7Lq+KlSVlFqcirx/qNJIDl3LnUZtKByyuKlprhE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=TiB1zJkpJr7wrir/V5uj8uwPOewKbmq9oBFVlU6EdAEs4kkyuZpYC8Fwy1FXC+rH/
	 KoN8jCp1vcU6EHuEIsuJ7x1iBVdpNVfq31Q7RolrGkSFd0EU6yE1F0KgikaDk+RbPZ
	 TSKoEYQCltyoQInSfHuYTkWfxk+977cZ1AwUz5QfDkmgO/zaKBkvua9wVSfQj8Bvt0
	 p6s61DjZFX+uQR2uSNHltWkhUJSBGBiqpTplnQ7QYgtq17wFCmcayKRnjSbIhsOr+I
	 TAussOW8ggdtiJQaJfOfzcmgsa9uD46/g1jA0Bbh3igfvCZTDfG929bikdZzBz6SU1
	 +BiB4whcupDhQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8508380D8E
	for <usrp-users@lists.ettus.com>; Fri, 16 Sep 2022 18:18:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663366734; bh=WYSyeGnWZtIPPBiy2qxQ3aXCLticotLnyjU7ERR7uR4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=uu0i7A+MmOtcWgMyAfMRAKQt4bpnOlzTUyvadDRsEOlfsnqJnzlknYMMsRsL8J7/w
	 DBJ9E+vs+jM77uDTDwaASBKnCiLAGqfz81DRzj4gdpqzEUjqbPbIzrupwE6S7SImA9
	 BO+38hH8ePZv1H+n7rERzWmTYL7GSTjHgGZaYsGb8ljGgloUtDK4tTgwj1PNWmXmht
	 uQxZMuytT2tk6ZvrxPlfphEtY+xIHeELHZEIgUf8+GyS97OZ0IX2N1DfQtYajPZHrF
	 wGmVXSDyLDK4s29LIWvxuaI6hqYdiTIfIkkK0RiyHqqAGz7iYcc/I7r6sdl4e/lNyd
	 zaDXNusuKaV4w==
Date: Fri, 16 Sep 2022 22:18:54 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <9ZdwbYWn5GGU2xrnA1UQVyOGdie1Qww5zN4HOOPQ7g@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e64dacc5-9266-246f-92cb-de50943bb56b@gmail.com
MIME-Version: 1.0
Message-ID-Hash: Q3VDSBJL7N4JZCXNLV2VVIW55M6I6XJ6
X-Message-ID-Hash: Q3VDSBJL7N4JZCXNLV2VVIW55M6I6XJ6
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question: maximum single channel sample rate on X410 with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q3VDSBJL7N4JZCXNLV2VVIW55M6I6XJ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8028819635372489748=="

This is a multi-part message in MIME format.

--===============8028819635372489748==
Content-Type: multipart/alternative;
 boundary="b1_9ZdwbYWn5GGU2xrnA1UQVyOGdie1Qww5zN4HOOPQ7g"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_9ZdwbYWn5GGU2xrnA1UQVyOGdie1Qww5zN4HOOPQ7g
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Marcus D. Leech wrote:

> On 2022-09-16 16:25, perper@o2.pl wrote:
>
> > Hello,
> >
> > It seems that I have to answer my own question. Currently I succeeded
> > to get 245.76MSamp/s in benchmark_rate for single channel with DPDK
> > over single 10Gbit link for an RFSoC device similar to USRP X410.
> >
> > My setup:
> >
> > * UHD 4.3, Ubuntu 20.04, DPDK 19.11 installed from packages
> >
> >
> > * command: benchmark_rate --rx_subdev "A:0" --rx_channels 0
> >   \--args=3D"addr=3D192.168.10.2,mgmt_addr=3D192.168.0.39,use_dpdk=3D=
1"
> >   \--rx_rate 245.76e6
> >
> >
> > * Hardware: AMD Ryzen Threadripper 2990WX, 128GB RAM, motherboard
> >   Asus X399
> >
> > This is not a mind-blowing rate, because I=E2=80=99m able to get quit=
e stable
> > 245\.76 MSamp/s without DPDK.
> >
> > But it is a good start taking into account number of different strang=
e
> > steps during DPDK installation and setup and very poor performance at
> > the beginning.
> >
> > Solutions to some issues were totally counterintuitive. I.e. in the
> > end I still had one \~oveflow per second at 245.76MSamp rate. The
> > solution was to run the program WITHOUT root rights/sudo (what
> > requires additional steps that were described by Rob Kossler).
> >
> > =E2=80=94
> > Best Regards,
> > Piotr Krysik
>
> The problem is that it's a question with absolutely no generic answer.=C2=
=A0
> People run SDR "stacks" on computers covering
> =C2=A0 literally several generations of CPU design (both Intel and AMD)=
,
> different clock rates, bus speeds, memory speeds,
> =C2=A0 OS versions, different collections of peripheral cards like Ethe=
rnet
> interfaces (1Gig and 10GIg), etc.
>
> Further there likely aren't a huge number of users of the X410 at this
> point, and I suspect that many (not all, mind)
> =C2=A0 users of the X410 don't want to share very much about system
> configuration things.
>
> There's also probably a fair amount of "it depends" as to whether DPDK
> will improve performance or not involving
> =C2=A0 DPDK versions, type of 10GiG hardware, and which kernel version.

I understand that when it comes to X410 the odds are against getting too =
much info from the community.

Regarding different configurations of PCs that people might use: if someo=
ne can pay above 26k $ for X410 (or similar amount money for any other RF=
SoC based board available from retailers) he probably isn=E2=80=99t force=
d to reuse a random PC that he has available. He probably can pair it wit=
h a custom PC built from parts that are proven to work seamlessly, in ord=
er to get as much performance from the USRP as possible. To know what are=
 proven configurations that worked for someone before is quite valuable a=
s it save time and hassle.

In case anyone is interested I can provide more info about specs of the c=
omputer (i.e. the network card used here was Intel 10G 2P X520).

Best Regards,\
Piotr Krysik

--b1_9ZdwbYWn5GGU2xrnA1UQVyOGdie1Qww5zN4HOOPQ7g
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Marcus D. Leech wrote:</p><blockquote><p>On 2022-09-16 16:25, perper@o=
2.pl wrote:</p><blockquote><p>Hello,</p><p>It seems that I have to answer=
 my own question. Currently I succeeded
to get 245.76MSamp/s in benchmark_rate for single channel with DPDK
over single 10Gbit link for an RFSoC device similar to USRP X410.</p><p>M=
y setup:</p><ul><li><p>UHD 4.3, Ubuntu 20.04, DPDK 19.11 installed from p=
ackages</p></li></ul><ul><li><p>command: benchmark_rate --rx_subdev "A:0"=
 --rx_channels 0
--args=3D"addr=3D192.168.10.2,mgmt_addr=3D192.168.0.39,use_dpdk=3D1"
--rx_rate 245.76e6</p></li></ul><ul><li><p>Hardware: AMD Ryzen Threadripp=
er 2990WX, 128GB RAM, motherboard
Asus X399</p></li></ul><p>This is not a mind-blowing rate, because I=E2=80=
=99m able to get quite stable
245.76 MSamp/s without DPDK.</p><p>But it is a good start taking into acc=
ount number of different strange
steps during DPDK installation and setup and very poor performance at
the beginning.</p><p>Solutions to some issues were totally counterintuiti=
ve. I.e. in the
end I still had one ~oveflow per second at 245.76MSamp rate. The
solution was to run the program WITHOUT root rights/sudo (what
requires additional steps that were described by Rob Kossler).</p><p>=E2=80=
=94
Best Regards,
Piotr Krysik</p></blockquote><p>The problem is that it's a question with =
absolutely no generic answer.&nbsp;
People run SDR "stacks" on computers covering
&nbsp; literally several generations of CPU design (both Intel and AMD),
different clock rates, bus speeds, memory speeds,
&nbsp; OS versions, different collections of peripheral cards like Ethern=
et
interfaces (1Gig and 10GIg), etc.</p><p>Further there likely aren't a hug=
e number of users of the X410 at this
point, and I suspect that many (not all, mind)
&nbsp; users of the X410 don't want to share very much about system
configuration things.</p><p>There's also probably a fair amount of "it de=
pends" as to whether DPDK
will improve performance or not involving
&nbsp; DPDK versions, type of 10GiG hardware, and which kernel version.</=
p></blockquote><p>I understand that when it comes to X410 the odds are ag=
ainst getting too much info from the community.</p><p>Regarding different=
 configurations of PCs that people might use: if someone can pay above 26=
k $ for X410 (or similar amount money for any other RFSoC based board ava=
ilable from retailers) he probably isn=E2=80=99t forced to reuse a random=
 PC that he has available. He probably can pair it with a custom PC built=
 from parts that are proven to work seamlessly, in order to get as much p=
erformance from the USRP as possible. To know what are proven configurati=
ons that worked for someone before is quite valuable as it save time and =
hassle.</p><p>In case anyone is interested I can provide more info about =
specs of the computer (i.e. the network card used here was Intel 10G 2P X=
520).</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_9ZdwbYWn5GGU2xrnA1UQVyOGdie1Qww5zN4HOOPQ7g--

--===============8028819635372489748==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8028819635372489748==--
