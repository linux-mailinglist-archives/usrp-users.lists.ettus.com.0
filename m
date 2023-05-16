Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A9F705ABA
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 00:43:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE4E9384BEC
	for <lists+usrp-users@lfdr.de>; Tue, 16 May 2023 18:43:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684277025; bh=0VSfEoafoHIaZHMZAST7CzQjzej5hCCg50y/2lhkIYM=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=QQcCe0gOX6bsEJpB7HgNCnXPLzxK6jxy7M0AySoWspVpPJZVjUUs3SryDGYznVX/T
	 gu8Li48YZK8ReQoJG1D0Emn2EPe1ccJekNJ0zEGx5WgDGXg5skCxjH0InWs8YXoaoF
	 1F98HkM8eETXZoOwU8AlJxaL8VfV69vPnNOtpCse49/+7TnRVVyhynIHBTbO9oo+VX
	 6vW8wpl3H3QQ/e03VGrRtu5yHa0du6GBYBbgtZ5ID5Avf2Pnyipp/tUo4iDomVQjRE
	 LwTYx5FLv9eEUMPYjIh1lmwjEy+BgC3+hrbjCV61/J3duX6wnhf9S52l+sMJDECDWT
	 xVs8a/f3diSPw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7B9F384B3D
	for <usrp-users@lists.ettus.com>; Tue, 16 May 2023 18:42:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684276966; bh=knytVq/HXueCoEshDORAj19jgr7aWOsufeZtAJ3sNC8=;
	h=Date:To:From:Subject:From;
	b=nTV/0Wv5JomwdjsLpBFPts5WjQWxKpgHa74qRe6CCerRvtZNiKvQyxXsosY+uYhVU
	 twf6QvxYXFYR/XJByrGhqzWfyA7DYqqoDObYk5BSWVXO89JOMYWSPxX4mL3kUHr0Bt
	 B55IclPPkeJ5XKoMoQpFgCeVW8AlZOfXySC1gjr9Q5UKfrYemDHtJVbQxXLDKfIMeP
	 8oFmVjsiOUCp2tTF4dyU22JYs4NBEv9IkXuJnqlOUDwt+ivI4RE/gJkVhyHUt97NkS
	 UVkRJzymxOZ6UDanG4DXqhYxPzIojUB6OODi1A0gv28Lytk/fuhgX76KCY5JZPPLsR
	 igyeZaUQaAmSw==
Date: Tue, 16 May 2023 22:42:46 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <bbdssfZP66eCOPtb3bkdZ88vJnw0TCxU43IG8cpVM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6WURG2D62EU76J4R4V3WUUQ3ANWJLDXL
X-Message-ID-Hash: 6WURG2D62EU76J4R4V3WUUQ3ANWJLDXL
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x410 rx_frontend properties
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6WURG2D62EU76J4R4V3WUUQ3ANWJLDXL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2039641006068936634=="

This is a multi-part message in MIME format.

--===============2039641006068936634==
Content-Type: multipart/alternative;
 boundary="b1_bbdssfZP66eCOPtb3bkdZ88vJnw0TCxU43IG8cpVM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_bbdssfZP66eCOPtb3bkdZ88vJnw0TCxU43IG8cpVM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently working with the x410. I am curious about part of the outp=
ut of uhd_usrp-probe =E2=80=94tree. Particularly, these properties=E2=80=A6

/blocks/0/Radio#0/dboard/rx_frontends/0/LO1/enabled

/blocks/0/Radio#0/dboard/rx_frontends/0/LO1/test_mode

I dont recall seeing documentation on this, and I struggled to find any r=
eference to these in the UHD software. Does anybody have insight into wha=
t properties these represent. Querying it with a string, int, vector, and=
 double all yield a type error.

Thanks

Joe

--b1_bbdssfZP66eCOPtb3bkdZ88vJnw0TCxU43IG8cpVM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am currently working with the x410. I am curious about =
part of the output of uhd_usrp-probe =E2=80=94tree. Particularly, these p=
roperties=E2=80=A6</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/LO1/enab=
led</p><p>/blocks/0/Radio#0/dboard/rx_frontends/0/LO1/test_mode</p><p><br=
></p><p>I dont recall seeing documentation on this, and I struggled to fi=
nd any reference to these in the UHD software. Does anybody have insight =
into what properties these represent. Querying it with a string, int, vec=
tor, and double all yield a type error.</p><p>Thanks</p><p>Joe</p><p><br>=
</p>


--b1_bbdssfZP66eCOPtb3bkdZ88vJnw0TCxU43IG8cpVM--

--===============2039641006068936634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2039641006068936634==--
