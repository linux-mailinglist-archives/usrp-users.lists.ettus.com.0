Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D89399D429F
	for <lists+usrp-users@lfdr.de>; Wed, 20 Nov 2024 20:41:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7115B3861FC
	for <lists+usrp-users@lfdr.de>; Wed, 20 Nov 2024 14:41:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732131665; bh=6sj7ycu+MvWrHNMkEsVu45lEalBKQRuk0ojhUu/FHcU=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=UUm6gUS9tZnfFc5UwN6kXbVCIz1LVQfTVcxw3HlxREK547hRSQlAfupqzToxZaygI
	 y61LC1I+YHTq3kKIFyqINv6lhLuEEsp7YCsS9LDfLDuXN1lRRXnxHxIdRShHqOANej
	 Pg7WEcuRFKKdLUHs12kxIyUFmZyPxUvPnjW4zDruXQLknUPHolOaiLw3S5mZte6Y3h
	 N7EHvexzR/oadrZKoB8T0AdH4oka/Cqnf2F7IYtL35x/1M1qzJWDqSUOWFi8tmoCw0
	 YN3P2iN238AhXRG4Bat1p2mzXNAWOC/CRnTtcFRKIFCGEU3Nw6FWlL0PwrfVeviI+f
	 q+/QBgl0Dq/fw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1C963861A2
	for <usrp-users@lists.ettus.com>; Wed, 20 Nov 2024 14:40:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732131636; bh=gmNTi6dP6+VXphfIOfbjc6KxzhEb3eAvoCLY+VSfg0w=;
	h=Date:To:From:Subject:From;
	b=G0w18t9iFChLr5biJwguiUYqn2mseH/r9DGV1rqNSJ4wmWAnISREI2XkZusYFPED5
	 ADn07vne1HUlTpZXijttm3EEYgUBM2F9bo9DKD6a0wLca2LvzOggPyV2zcm6Wl/BWv
	 dH0zMH+SAwy5L7S3IIs+aDOIR/7E36evqcVbuBl9OWczUukhWoXhWP5qgLOlanXLua
	 +udtkzN7xJLPtRzKVh0Xp/yPcC46+eLzacBw5tcc8PdkR5VJTuStn5h7EkjmbHQ7r4
	 7aRFUzuqaMahhHhQSl9IBwi38rllHE4a+Z72oQOi14178OmlR9WtJXJe7i1ATWlvNK
	 cfdG5Zv1KjiPA==
Date: Wed, 20 Nov 2024 19:40:36 +0000
To: usrp-users@lists.ettus.com
From: jason@gardettoengineering.com
Message-ID: <kZftg1uRfg0M9aHO1ljKI4u2PWcQvyUZjxYqkTOVA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: TVZM2GCKV6GVJ5EF62B6WMAFA2U5HKR4
X-Message-ID-Hash: TVZM2GCKV6GVJ5EF62B6WMAFA2U5HKR4
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] starting radios in parallel
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TVZM2GCKV6GVJ5EF62B6WMAFA2U5HKR4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6191697037367028885=="

This is a multi-part message in MIME format.

--===============6191697037367028885==
Content-Type: multipart/alternative;
 boundary="b1_kZftg1uRfg0M9aHO1ljKI4u2PWcQvyUZjxYqkTOVA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_kZftg1uRfg0M9aHO1ljKI4u2PWcQvyUZjxYqkTOVA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have a project where I have to start up a series of N320 radios.=C2=A0 =
Currently we do it sequentially and that can take some time.=C2=A0 Is the=
re a way to do them in parallel? I thought I saw somewhere that the drive=
r was the limiting factor for being able to have separate threads start u=
p the devices at the same time to speed things up, is that really the cas=
e?

--b1_kZftg1uRfg0M9aHO1ljKI4u2PWcQvyUZjxYqkTOVA
Content-Type: text/html; charset=us-ascii

<p>I have a project where I have to start up a series of N320 radios.&nbsp; Currently we do it sequentially and that can take some time.&nbsp; Is there a way to do them in parallel? I thought I saw somewhere that the driver was the limiting factor for being able to have separate threads start up the devices at the same time to speed things up, is that really the case?</p>


--b1_kZftg1uRfg0M9aHO1ljKI4u2PWcQvyUZjxYqkTOVA--

--===============6191697037367028885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6191697037367028885==--
