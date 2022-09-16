Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C33E35BB379
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 22:26:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C9343837AC
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 16:26:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663359995; bh=lWKnmW615HbTPxTEO4kA0szgFpeoWvCAYKg9GL1wB1w=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0WBncwYZ7TLJ1OJBZkx8kuRLB/KPqW7vAIM5ALDO8f1iWs4d+AFiTgAR//EZlBz4O
	 Zfma4caicZj5XXNEWsUS5rtF4FhVxow1nSF/R+Wv0pPiMObI82jX60wYwEqrUvjKPe
	 iFMyAXWAE+Ak8qo4vE1KNiyKtjOUhpIZ9umIkgDHo1cq/UZhyHFl4HZaUAbQlphK2M
	 kYSb2dMql3L/FzbPh+T0TEOw3mYf+/vcC5RVunG8rUcg1+uTkAF8is3XkO0oIo2arZ
	 3+7aRzNN/l4wixXa1N5OfE0ptQPI8Vss1cbOoY2nCKw0SrPMUDGdN0cEirWb8EFjx1
	 OTFx2xAKfd4vg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 503E6381918
	for <usrp-users@lists.ettus.com>; Fri, 16 Sep 2022 16:25:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663359940; bh=eHBMV5VHfnU63eEe0HUW6leChdP4f0vBM1cIFzae6NY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=lXMDq+DWwM5GfzRKyvFFrzPYkjjucDTb6phye754i1zPHNm4Ns6px5LFEixB67UyU
	 eLyDbokmZaZQXyYZHWWqz8EsmcrGwEqzgEH/GZDALfxbFUqgMikx2c8gwqiX1Swh32
	 3nmELcD00YSRGWgUYTdSBfPZYDnkdA6mfIxr91m1lDAya3I14PMjzqFpKqxb5bEmCg
	 gBsxICSgKQ8gPKuyKLUJ3RPnuDJTr2++N7a09gCnN6yuyPdQexYD0IckHBSIkhsPHS
	 e56+wWt5Geql3P2TmBYOyMDcwEHFUblWBG1jSNyAxfqpkUS+hffI57S729jbkM9lR3
	 5Eb37r9JYiXgQ==
Date: Fri, 16 Sep 2022 20:25:40 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <1XjFeZuxJCE4wbZQgmUQYUbtQzoD6MBlvUBkWoW78@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: df5427c7-7856-9bcd-6228-79d385413434@o2.pl
MIME-Version: 1.0
Message-ID-Hash: GPWU7TAVOERJ6TEJBTTPVDPURFJXWWYW
X-Message-ID-Hash: GPWU7TAVOERJ6TEJBTTPVDPURFJXWWYW
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question: maximum single channel sample rate on X410 with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GPWU7TAVOERJ6TEJBTTPVDPURFJXWWYW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6353294653538497016=="

This is a multi-part message in MIME format.

--===============6353294653538497016==
Content-Type: multipart/alternative;
 boundary="b1_1XjFeZuxJCE4wbZQgmUQYUbtQzoD6MBlvUBkWoW78"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_1XjFeZuxJCE4wbZQgmUQYUbtQzoD6MBlvUBkWoW78
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

It seems that I have to answer my own question. Currently I succeeded to =
get 245.76MSamp/s in benchmark_rate for single channel with DPDK over sin=
gle 10Gbit link for an RFSoC device similar to USRP X410.

My setup:

* UHD 4.3, Ubuntu 20.04, DPDK 19.11 installed from packages

* command: benchmark_rate  --rx_subdev "A:0" --rx_channels 0 --args=3D"ad=
dr=3D192.168.10.2,mgmt_addr=3D192.168.0.39,use_dpdk=3D1" --rx_rate 245.76=
e6

* Hardware: AMD Ryzen Threadripper 2990WX, 128GB RAM, motherboard Asus X3=
99

This is not a mind-blowing rate, because I=E2=80=99m able to get quite st=
able 245.76 MSamp/s without DPDK.

But it is a good start taking into account number of different strange st=
eps during DPDK installation and setup and very poor performance at the b=
eginning.

Solutions to some issues were totally counterintuitive. I.e. in the end I=
 still had one \~oveflow per second at 245.76MSamp rate. The solution was=
 to run the program WITHOUT root rights/sudo (what requires additional st=
eps that were described by Rob Kossler).

=E2=80=94\
Best Regards,\
Piotr Krysik

Piotr Krysik wrote:

> Hello all,
>
> Has anybody tried to use DPDK with USRP X410?
>
> If yes - can you share what was maximal sample rate for a single channe=
l
> that you were able to stream over 10G or 100G Ethernet connection
> without loss and what was your setup (hardware and software)?

--b1_1XjFeZuxJCE4wbZQgmUQYUbtQzoD6MBlvUBkWoW78
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>It seems that I have to answer my own question. Currently I=
 succeeded to get 245.76MSamp/s in benchmark_rate for single channel with D=
PDK over single 10Gbit link for an RFSoC device similar to USRP X410.</p><p=
>My setup:</p><ul><li><p>UHD 4.3, Ubuntu 20.04, DPDK 19.11 installed from p=
ackages</p></li><li><p>command: benchmark_rate  --rx_subdev "A:0" --rx_chan=
nels 0 --args=3D"addr=3D192.168.10.2,mgmt_addr=3D192.168.0.39,use_dpdk=3D1"=
 --rx_rate 245.76e6</p></li><li><p>Hardware: AMD Ryzen Threadripper 2990WX,=
 128GB RAM, motherboard Asus X399</p></li></ul><p>This is not a mind-blowin=
g rate, because I=E2=80=99m able to get quite stable 245.76 MSamp/s without=
 DPDK.</p><p>But it is a good start taking into account number of different=
 strange steps during DPDK installation and setup and very poor performance=
 at the beginning.</p><p>Solutions to some issues were totally counterintui=
tive. I.e. in the end I still had one ~oveflow per second at 245.76MSamp ra=
te. The solution was to run the program WITHOUT root rights/sudo (what requ=
ires additional steps that were described by Rob Kossler).</p><p>=E2=80=
=94<br>Best Regards,<br>Piotr Krysik</p><p><br></p><p>Piotr Krysik wrote:</=
p><blockquote><p>Hello all,</p><p>Has anybody tried to use DPDK with USRP X=
410?</p><p>If yes - can you share what was maximal sample rate for a single=
 channel
that you were able to stream over 10G or 100G Ethernet connection
without loss and what was your setup (hardware and software)?</p></blockquo=
te>

--b1_1XjFeZuxJCE4wbZQgmUQYUbtQzoD6MBlvUBkWoW78--

--===============6353294653538497016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6353294653538497016==--
