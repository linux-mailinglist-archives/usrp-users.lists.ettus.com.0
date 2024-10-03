Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F3A98F2D8
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 17:43:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 716D238578F
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 11:43:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727970221; bh=ilZb1HKZMORh52DywBpBzhlBjMkU15+VPad9tnIWbxg=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=mUjao32BfU578bg0R7IY+8fzpr/H9/nJ+uiIn0LEjZQlAAihT09QxeTaxpoWWAJHe
	 uD2wgNlT0dN6Q/wnaGK71t7SGmwUUGTyEHq+bGIW+QYn3sad94oH+55jyuMCq4Cf+Q
	 xynScK1+LSTR1YPvEvXPVVm2HM7BTHOIAewGUByUlNwOOk6yqatdC7ta+LMn1MBNbV
	 9njp2d4NledhaoZhraKqmminxP/oBEnhM/OYB7sAcycylPbAZVN8caY9VrNbJRldY9
	 McVDgS5Khvt9/EhmENGzbRf1MGMIrKygcI0oULNr+6F87k1Mq9qQLFJM35gTwKMu1M
	 0fmnMmbEvoAtQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20C873854EE
	for <usrp-users@lists.ettus.com>; Thu,  3 Oct 2024 11:42:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727970164; bh=qtiqh+466IdKipoFaZfWgHmBbRM2Zz2kn/Sv7N6ydWw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=NhYWZgTs+hn5udOqDiSexVfWBuNmBiQGnzPnKTpRkUjA0EUHBzRqZAaDnaP9YXA5o
	 tyd3WG2odB/qxfmAN7WdNaUnQQ1EekT27mSznlbNLaIVwL5bKCXxanJurPq+pjsxt8
	 V2JD6k498T+2Ainbi8KjaT2aRwG/79hR0esgMezbCu2vkVgL0SJqSKlH95zvTBSGMR
	 8uTpjnF5t42X9RNXtdrAo3JiSzbTfqmVqH4rj58/EuHwkqnOZcGxxfKoLF8b0ykH7X
	 EFkAGxG5XPspAF4R0Ww1KNY/NqWXBLVh3dXEMLJHBv+4u7vnCwpn579wJfaks0xYHm
	 awRU2MX02JIJQ==
Date: Thu, 3 Oct 2024 15:42:44 +0000
To: usrp-users@lists.ettus.com
Message-ID: <KVyhWm9kVisG4HGVEfGRNJZx0obRLpDs9O6dqEn9tv8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: iMan4OLWVYET38UBwW8cl0h7XHnCvA8T0TWKagcVew@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: SXSE6ABD5PXKM3NGKRKMCWRGW5VTVS57
X-Message-ID-Hash: SXSE6ABD5PXKM3NGKRKMCWRGW5VTVS57
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SXSE6ABD5PXKM3NGKRKMCWRGW5VTVS57/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============6315151156373097607=="

This is a multi-part message in MIME format.

--===============6315151156373097607==
Content-Type: multipart/alternative;
 boundary="b1_KVyhWm9kVisG4HGVEfGRNJZx0obRLpDs9O6dqEn9tv8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_KVyhWm9kVisG4HGVEfGRNJZx0obRLpDs9O6dqEn9tv8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> Now the situation is different: most recent linux-xlnx is 6.6 and USRP =
still uses the same kernel.

Yeah=E2=80=A6I=E2=80=99ll have to look at that.   I=E2=80=99m actually bu=
ilding UHD 4.7.0, but there=E2=80=99s nothing newer than 5.10 in meta-ett=
us, and my current 4.7 image on the board is showing 5.10.37-x4xx.   I=E2=
=80=99m building the FPGA design with Vivado 2022.2, so I had to upgrade =
all of the IP, but it all went as smoothly as any other tool upgrade. :-)

I just cloned the linux-xlnx repo, and I=E2=80=99m looking through it now=
.   I=E2=80=99ll check the kernel version that they=E2=80=99re building i=
n the 2022.2 tools and start there.

I=E2=80=99m going to start poking at the repo with =E2=80=98git bisect=E2=
=80=98, so if you hear any grumbling, it=E2=80=99s probably me, continual=
ly cloning over the mistakes I made. :-)

Mike

--b1_KVyhWm9kVisG4HGVEfGRNJZx0obRLpDs9O6dqEn9tv8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<blockquote><p>Now the situation is different: most recent linux-xlnx is =
6.6 and USRP still uses the same kernel.</p></blockquote><p>Yeah=E2=80=A6=
I=E2=80=99ll have to look at that.   I=E2=80=99m actually building UHD 4.=
7.0, but there=E2=80=99s nothing newer than 5.10 in meta-ettus, and my cu=
rrent 4.7 image on the board is showing 5.10.37-x4xx.   I=E2=80=99m build=
ing the FPGA design with Vivado 2022.2, so I had to upgrade all of the IP=
, but it all went as smoothly as any other tool upgrade. :-)</p><p>I just=
 cloned the linux-xlnx repo, and I=E2=80=99m looking through it now.   I=E2=
=80=99ll check the kernel version that they=E2=80=99re building in the 20=
22.2 tools and start there.</p><p>I=E2=80=99m going to start poking at th=
e repo with =E2=80=98git bisect=E2=80=98, so if you hear any grumbling, i=
t=E2=80=99s probably me, continually cloning over the mistakes I made. :-=
)</p><p>Mike</p>


--b1_KVyhWm9kVisG4HGVEfGRNJZx0obRLpDs9O6dqEn9tv8--

--===============6315151156373097607==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6315151156373097607==--
