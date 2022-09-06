Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FD75AE65F
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 13:21:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D5F33818B9
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 07:21:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662463283; bh=55JflI3TaxuvJlCWm6hJ0gjaiHZVWkggfXM/1gjIPt0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=HIWaV4gMkGAxZ+ef0LSO5+hLEAEM71pGQFTWyYG411ysxi84J+d+A9SfYrOeZkz+H
	 dHBEkAT1yVwuV1tpNwePf2h4c99Pa5nYZvESsSv2pzPNmcbQMORWtOKtDpLLshCjjr
	 vWq/qOG9ys9VGhd/6Yq1uos8oa1y/WeRlPnAWuQd7nusKmkEX86N6t0EXzIhlFyMOY
	 6pCo7s7q6DD8GVcXBf2L2Q7JJ7q/TD68H3A028vUHndg+OmXZAzVHL+VPGxiIz7MMq
	 BckLJmMSryxVNK7OqePfkQ/AENQh5b4hrShYJEYOCAlQ8+HNO/TYTZRgd8e5Cgin1k
	 cu3ssNNKA9/Yw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1615381467
	for <usrp-users@lists.ettus.com>; Tue,  6 Sep 2022 07:20:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662463235; bh=ZsdhPDGjj75d5nM4l63Yh0/V7sOdlXp8h4d1FXGB8i4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Fa4/wSpMWkn0SVykBHAzAV33Fmr27WZpI6m7ZmKQfnyKvAfAOAWI7z60SMoguku3Q
	 013ewIY07HSr8gPVrW3fR9I7Siyj32QJtKM4y4pqd+NF7YhjOMU3KNwKxbSqM03nEc
	 ZUEiv0qvdXpQhlu0qCGHNg9OrXhCE1jvXvBYppNgz0mYFYL1lmawBeijOWHZRCg4d4
	 urGKsvgH2PsOdBieF/fBR/5+Q3P1XYAC8ZhwQ3o7uGOf9QA/CNo5kEpJUezvw7hN5q
	 WSwAYvfwFeHAKupjlnqgP/ohl6nv86AW9huMVfgw3N56PC4yyUOQKsuU+HbPTWHxyW
	 KRyxrkIZmO2GA==
Date: Tue, 6 Sep 2022 11:20:34 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <9qFW0Q2FUuD1pHGcpwnnOJAbaiuRP2AQQ4wqsqGfc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: df5427c7-7856-9bcd-6228-79d385413434@o2.pl
MIME-Version: 1.0
Message-ID-Hash: MHTIUUQSWHIMQNDWYX3TQ53NOABC33G5
X-Message-ID-Hash: MHTIUUQSWHIMQNDWYX3TQ53NOABC33G5
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question: maximum single channel sample rate on X410 with DPDK
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MHTIUUQSWHIMQNDWYX3TQ53NOABC33G5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4343167796467800332=="

This is a multi-part message in MIME format.

--===============4343167796467800332==
Content-Type: multipart/alternative;
 boundary="b1_9qFW0Q2FUuD1pHGcpwnnOJAbaiuRP2AQQ4wqsqGfc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_9qFW0Q2FUuD1pHGcpwnnOJAbaiuRP2AQQ4wqsqGfc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Piotr Krysik wrote:

> Hello all,
>
> Has anybody tried to use DPDK with USRP X410?
>
> If yes - can you share what was maximal sample rate for a single channe=
l
> that you were able to stream over 10G or 100G Ethernet connection
> without loss and what was your setup (hardware and software)?

I=E2=80=99ve seen a lot of questions regarding performance with DPDK. Cou=
ld anybody confirm that DPDK worked correctly for UHD 4.1 or later.

Best Regards,\
Piotr Krysik

--b1_9qFW0Q2FUuD1pHGcpwnnOJAbaiuRP2AQQ4wqsqGfc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Piotr Krysik wrote:</p><blockquote><p>Hello all,</p><p>Has anybody tri=
ed to use DPDK with USRP X410?</p><p>If yes - can you share what was maxi=
mal sample rate for a single channel
that you were able to stream over 10G or 100G Ethernet connection
without loss and what was your setup (hardware and software)?</p></blockq=
uote><p>I=E2=80=99ve seen a lot of questions regarding performance with D=
PDK. Could anybody confirm that DPDK worked correctly for UHD 4.1 or late=
r.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_9qFW0Q2FUuD1pHGcpwnnOJAbaiuRP2AQQ4wqsqGfc--

--===============4343167796467800332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4343167796467800332==--
