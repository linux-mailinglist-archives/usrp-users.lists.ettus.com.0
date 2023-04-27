Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9136F0B4A
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 19:45:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5F7A383F77
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 13:45:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682617558; bh=6zSFwn+ha/kW9GcCJUGmEqRG203hEk2U6PYIkuhxq/A=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CN4ovli5bgmtFfc3OiB8fBhhc+4VxsfcNounBpmrCGG6+hN1iARyeqesaa2RU4b6F
	 o/ZSoYZ8VPKxcw8+ck8tCXAi51t79VLCsf9fKeyjaHbbIvdq9S1H25D8Tt93CQY4Vu
	 /2/2W8Ikj7qjir0bHGAWidocB5VFXf6q97AEKnplCugETSeI60JBTiCTfGgLtWPMdX
	 7kl21uza+iEOSGU4RHqRyw82fpS5EBHG+FhqXQIy/xNeifz1qfzUVOo3KTv6CON/St
	 2YuitCOtFy2qa0Sj5lB/PW9ma+jpinCNsvRXCH6yfxy4AoFjGZ+s+xvDlDEZfrNaXM
	 wefH/nHhmn3jQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BAFDA384677
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 13:45:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682617512; bh=eOHX6HLJHbDYuVZbZpQYzBsJgAAgOvgoGGhK6ZhsQ8k=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=V3+uw5K083b7MvVOYPi4uKFixMFCBZ/bXILu1EDnWeY5QBQHxStmHp2aTXwTYgwjq
	 /yEqXg+MYOrUXXwHwmNR4nnUZwXhJiu4WSrYZxe3GelTdLcFJVWvyCD6b8ofdCPJDF
	 NlL5o1HqBs7dJxd18YSJ7AqberzctsPb03Q1ooBz4du4e0LnVYVizJ9q567brA5kmq
	 KnUInvWNZvPHbpjvc5xlfJe8T4aoScnBsq8djY1dbuMT2zd4T1KjE/w5a1OZi4Mz9z
	 Hv9jDx34E45RV4cCOafkLg3I1XZypzQsD0ugfkgFv9bNWCd1995Szin1DKfc5nPFzF
	 HZPt9VqEk4uvw==
Date: Thu, 27 Apr 2023 17:45:12 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <2YLk2Sb1V9f9se7RFlT6GZj18jnduEl6ElBMc6Ie74@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 97ee42a1-1e00-5686-d86b-8f425255aca3@gmail.com
MIME-Version: 1.0
Message-ID-Hash: IUPW4QGPRAJBYUFPEFKHQYRP4FQTSUDS
X-Message-ID-Hash: IUPW4QGPRAJBYUFPEFKHQYRP4FQTSUDS
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IUPW4QGPRAJBYUFPEFKHQYRP4FQTSUDS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4626125305132937559=="

This is a multi-part message in MIME format.

--===============4626125305132937559==
Content-Type: multipart/alternative;
 boundary="b1_2YLk2Sb1V9f9se7RFlT6GZj18jnduEl6ElBMc6Ie74"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_2YLk2Sb1V9f9se7RFlT6GZj18jnduEl6ElBMc6Ie74
Content-Type: text/plain; charset=us-ascii

I am using this [card](https://www.amazon.com/10Gtek-X540-T2-Converged-Network-Adapter/dp/B01HMGWOU8?th=1), which as the intel x540 controller. The lights on the ethernet card do light up, but the lights of the SFP port on the N321 does not. I verified it works when working with the 10/100/1000 Mb Ethernet (mgmt address). I am using the SFP+ to Rj45 adapter that comes with the N321

--b1_2YLk2Sb1V9f9se7RFlT6GZj18jnduEl6ElBMc6Ie74
Content-Type: text/html; charset=us-ascii

<p>I am using this <a href="https://www.amazon.com/10Gtek-X540-T2-Converged-Network-Adapter/dp/B01HMGWOU8?th=1" title="">card</a>, which as the intel x540 controller. The lights on the ethernet card do light up, but the lights of the SFP port on the N321 does not. I verified it works when working with the 10/100/1000 Mb Ethernet (mgmt address). I am using the SFP+ to Rj45 adapter that comes with the N321</p>


--b1_2YLk2Sb1V9f9se7RFlT6GZj18jnduEl6ElBMc6Ie74--

--===============4626125305132937559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4626125305132937559==--
