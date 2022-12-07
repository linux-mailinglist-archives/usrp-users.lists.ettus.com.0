Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7B9645682
	for <lists+usrp-users@lfdr.de>; Wed,  7 Dec 2022 10:32:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AEFF73840DB
	for <lists+usrp-users@lfdr.de>; Wed,  7 Dec 2022 04:32:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670405555; bh=dLmWY33XZ6Di30HgbFeVE5BKWUrogpI6tXiHAXdMFEc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bvzkZPE5CazGhzNqLbt8rwNWCRVNfhAXC2hN+RSDVvjhLll5hzFEunw95Ivtn465/
	 OWwFSDc2RhgInNEusI/9FXKkPib/Kb4gvsSVeTB9VhqbMkpb0rbdAJtLRyPtNHDfaU
	 iYVMg58kUglk4YOkNdFQ9xCnWTGEm5ZGTHpA+BJbdFH9txWYt3Glo3ysnfxkeZINZ7
	 0Y1EQcZSruHhvWRocMgAaKvYPaZPof7uHnWme9ejdg8INaUlF2LVMrt4Ev2w23KkhL
	 lmne2OeIeQCwpgAaEMg8koHb6AAE7j5FtJp0NYduKw/2QvUAndXuk5oqQ4oM4IMVt1
	 WuT/k7RDWZz+g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98D3B383C52
	for <usrp-users@lists.ettus.com>; Wed,  7 Dec 2022 04:31:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670405504; bh=a3+3p02GxN9mIAK7SYWUzDT5+FrTynWSJfs1SDmvaHs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=kSVaLsiEyq7jxRj3dawB/mnocf1t4ckiXvOLGa44kqojNWnJN0k6cqTQQ7hDL4Opu
	 M+3t+Ki6MG921NT9FIVsHrMDpV0WaOe1psLc2yplizT7oTUl2mGHyR3E8SFaiB6Wq0
	 gYjDC7Zr7wVMxIQsJGUomsP/YlHugz1c2coHQDViAWx1q5ExWpPhrJhfTI4rZvs/Ir
	 f1mXOaQiEGv7nvzPNxZRxv1wXo205o8Fubl88KszQbZY0CphQLDF+7UUPV26X0Hx1w
	 K6dGXuIJoMfO3Y+HcMQqGu/1n1KXjtgVYmKJJCR4Dhv00aAozt3X4w+otFH9KU9rlb
	 JlJjJ+pE/zVEg==
Date: Wed, 7 Dec 2022 09:31:44 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <BiPXHBN35B9jTLptzQCXjUNoEbtbAyffiyA6KN5w@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTSwws+TzXsXRiKh2y8RyrjT16CrVLSe09xs+NzmOsmy0g@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: SULASL4QKVQ7PNUXCTSEFDPBPTO7TSWS
X-Message-ID-Hash: SULASL4QKVQ7PNUXCTSEFDPBPTO7TSWS
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Single multi-usrp or multiple, synchronised usrp -- which is best ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SULASL4QKVQ7PNUXCTSEFDPBPTO7TSWS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4679196144422388132=="

This is a multi-part message in MIME format.

--===============4679196144422388132==
Content-Type: multipart/alternative;
 boundary="b1_BiPXHBN35B9jTLptzQCXjUNoEbtbAyffiyA6KN5w"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_BiPXHBN35B9jTLptzQCXjUNoEbtbAyffiyA6KN5w
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I can see difference that could be associated with having two rx streamer=
s instead of one.

I have following situation:

* computer with 2x Intel Xeon Silver 4214R @ 2.40GHz,

* streaming of two 256MS/s channels through two SFP+ links using DPDK,

* both channels are stored to a single ramdisk with use of hacked benchma=
rk_rate\
  example with added file writes to benchmark_rx_rate function.

In case when multi_streamer option isn=E2=80=99t used I get overflows. Wi=
th this option turned on\
there are no overflows.

=E2=80=94\
Best Regards,\
Piotr Krysik

--b1_BiPXHBN35B9jTLptzQCXjUNoEbtbAyffiyA6KN5w
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I can see difference that could be associated with having=
 two rx streamers instead of one.</p><p>I have following situation:</p><u=
l><li><p>computer with 2x Intel Xeon Silver 4214R @ 2.40GHz,</p></li><li>=
<p>streaming of two 256MS/s channels through two SFP+ links using DPDK,</=
p></li><li><p>both channels are stored to a single ramdisk with use of ha=
cked benchmark_rate<br>example with added file writes to benchmark_rx_rat=
e function.</p></li></ul><p>In case when multi_streamer option isn=E2=80=99=
t used I get overflows. With this option turned on<br>there are no overfl=
ows.</p><p>=E2=80=94<br>Best Regards,<br>Piotr Krysik</p>


--b1_BiPXHBN35B9jTLptzQCXjUNoEbtbAyffiyA6KN5w--

--===============4679196144422388132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4679196144422388132==--
