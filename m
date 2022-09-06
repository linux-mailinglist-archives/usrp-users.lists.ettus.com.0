Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 098D45AE609
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 12:57:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B6D2638303F
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 06:57:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662461837; bh=f+yDith2TwdTNA8LiynbLmNTOQixDbKM+xpQBKw483o=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=BwxlwlnA8yhCpMMFV9jA9i6G9UuJDxLbrQ/t0NrlATNgBl2pAifWHnTGGG2WS2Cl+
	 5SmWDBesuo7HicNgrCNEj9WiDeR5AYANY/quOmrxTRJbRcfDQ+BuMRsBFPeSzcYvav
	 fJ3dV0kFY+CCwy6e5mmeYyps3hIUdA/gYq48YKBrmaurfbuJtU2WGzs9nXa7738Ufa
	 DnsiXWf/EWRuoEy5L/tNK8PIG73H360Ii3h8b4zKhZ9SMX6AatMMOlTQSAs53F2ki0
	 nbVJrZbZuwnu9+t3c6LUCiWOvfYRBQkWUCz5sc0Obc09BkGi6g2/rfEar4RcLzATEh
	 dQVWExWEOG82g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 745623812DB
	for <usrp-users@lists.ettus.com>; Tue,  6 Sep 2022 06:56:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662461786; bh=9e0i8JDKpbZ09MeaTIyGryzNmzDPpCRrrmFh/uXrewY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=R+Jc4wo9YfxdonbX+FXQ5rqiGFXY+ahpZTc/b0OvOwnYF6BbuCHo2rR2BOftTu60G
	 8U1BrNvXTZ065+M2xLyI7tT/QlmwDg4cF4IqC0vCi0UPXkhkB/BlF0GUuXK9/PVUeS
	 jd7u/Danz0MMqsd3O/Re0SCRKbUIvhzZZRg4+anA4j/xeCVv4R3upbg9IR/lnBs2r4
	 h2+8DEXXRYBwF9TUa2Npt5DzsJelw9WUwznkr8HSU7qY5nF5kTMNoAYQCIOX2rVW35
	 9B4Ipw6E5GC71UluYZro2nZ2ixenbK3sKD+YSxkfnK6VZonA9cEhngbk3iCH6tMfSG
	 jKJGMvYc2Bsuw==
Date: Tue, 6 Sep 2022 10:56:26 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <7AUEsR9P77hW8bSeMrLN0QdhhvZOGC0JDTC0YoYUVZk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 5fd92252-5239-c013-0e42-5ff6a74db4e5@gmail.com
MIME-Version: 1.0
Message-ID-Hash: CBL4PHPTBJQPPAA2LLE7PNGIONSNRQIC
X-Message-ID-Hash: CBL4PHPTBJQPPAA2LLE7PNGIONSNRQIC
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CBL4PHPTBJQPPAA2LLE7PNGIONSNRQIC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5360249855079257818=="

This is a multi-part message in MIME format.

--===============5360249855079257818==
Content-Type: multipart/alternative;
 boundary="b1_7AUEsR9P77hW8bSeMrLN0QdhhvZOGC0JDTC0YoYUVZk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_7AUEsR9P77hW8bSeMrLN0QdhhvZOGC0JDTC0YoYUVZk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Fruits aside, that was a valid question. Cause of bad performance when co=
mbining DPDK with GNU Radio is a topic that needs to be addressed.

My hypothesis regarding the cause was:

DPDK needs few processor cores for itself only. GNU Radio runs a lot of t=
hread (one thread per block +) and it doesn=E2=80=99t care that it tries =
to run on cores that are busy with DPDK related work. And that causes pro=
blems.

The resulting solution that solved the problem for me:

For every block of the flow-graph run set_processor_affinity with a list =
of all processor cores minus DPDK cores, that you set in the /etc/uhd/uhd=
.conf file.

Best Regards,\
Piotr Krysik

--b1_7AUEsR9P77hW8bSeMrLN0QdhhvZOGC0JDTC0YoYUVZk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>Fruits aside, that was a valid question. Cause of bad perfor=
mance when combining DPDK with GNU Radio is a topic that needs to be addr=
essed.</p><p>My hypothesis regarding the cause was:</p><p>DPDK needs few =
processor cores for itself only. GNU Radio runs a lot of thread (one thre=
ad per block +) and it doesn=E2=80=99t care that it tries to run on cores=
 that are busy with DPDK related work. And that causes problems.</p><p>Th=
e resulting solution that solved the problem for me:</p><p>For every bloc=
k of the flow-graph run set_processor_affinity with a list of all process=
or cores minus DPDK cores, that you set in the /etc/uhd/uhd.conf file.</p=
><p>Best Regards,<br>Piotr Krysik</p>


--b1_7AUEsR9P77hW8bSeMrLN0QdhhvZOGC0JDTC0YoYUVZk--

--===============5360249855079257818==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5360249855079257818==--
