Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C235072744C
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jun 2023 03:29:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 08FAF384A90
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 21:29:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686187776; bh=Lt5+NvvIStkzrEgOjpmuMFQjIrI47JIQCG828eDRD/8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tj3OFfqSCPMECPnm4gg5rf/x9XgjlzczvBqNRO+Hs6ki4gcVNLy1tj+AvEmXPkRq4
	 s6LlBOekDorIzWLT6D19eDJSyZJNa43Z6+OSLBne76IW4gaIjldUaBxDh1G8KOFY2X
	 CJhr2AnschypQw51GdlPQNevCje/aF2D1AQUBwlL36H5++9Om52xSQqC3Zyaa474Js
	 yAPPhBOTlyTmLqEJgquPulpQGVnLBtds7lm7cRI4LauoMCXhzYZ27tiEsKQQtuGL9h
	 SreruodBJeknuhNN+eiHEF0ranYjRFggNtLtr69WEP5zgJL32Jj5dVNVkKbkM93acn
	 /ZG020E4R9EUw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB8FB384A3E
	for <usrp-users@lists.ettus.com>; Wed,  7 Jun 2023 21:28:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686187703; bh=3sNC0uzldqT4EhCPquBWJ+4C5ryz2NYWpEg8P/QWJAo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=KJF0Q8UkY7aaX1G7bxuSVqTIEowRhmSHJji9pvv1RTq0TOj5MfUK5Kjn2ca0bEkUG
	 dn2PXsoOhMbe8qveOcLZDic9fI/CASFHDEgHZ9KT0Aa1xCWsrSKh9O8lH3q4IJ+uSQ
	 FR2aBTDs7UK6KeU95otYdYf8YN4018tvt+weK6Ao+BlXicTnjr38e3nICoESpO9dbh
	 orle9TzgJi7kih37Q/MNSEgnReHbtluCtSncOFaDJJq8k+g6e5pvs3g4L1Na60sO08
	 B+1gUr6k4g8fc3+OIqW9bMt0GottdHE5r/RV63D57gYeM7kB/dCDAftHwNu8+And+0
	 IQArKu+9xqqZQ==
Date: Thu, 8 Jun 2023 01:28:23 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <N3fKSStSZAGPhU6N5NQRaojaGsm8MFCrw0jLixgRKi8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 3LlMFM2W3kL21bdENzXWV24Ln7Q251RSjnkC9DOuMo@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: ZDD7R4MOBDOW3I3GWUMBOD5KGNBOIQ4L
X-Message-ID-Hash: ZDD7R4MOBDOW3I3GWUMBOD5KGNBOIQ4L
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 TX issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZDD7R4MOBDOW3I3GWUMBOD5KGNBOIQ4L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4105610619803314138=="

This is a multi-part message in MIME format.

--===============4105610619803314138==
Content-Type: multipart/alternative;
 boundary="b1_N3fKSStSZAGPhU6N5NQRaojaGsm8MFCrw0jLixgRKi8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_N3fKSStSZAGPhU6N5NQRaojaGsm8MFCrw0jLixgRKi8
Content-Type: text/plain; charset=us-ascii

If I use the same yml file I pasted above,  I am able to generate an image that properly transmits. However, if I use the same yml file, but when I use the rfnoc_image_builder but with a GUI option, the transmit fails to work. I do not edit anything in the GUI, I just tested the bitstream created as is after invoking rfnoc_image_builder with the GUI option. I would imagine that GUI option or not, the constraints have to be identical. Is there any chance they are not?

--b1_N3fKSStSZAGPhU6N5NQRaojaGsm8MFCrw0jLixgRKi8
Content-Type: text/html; charset=us-ascii

<p>If I use the same yml file I pasted above,  I am able to generate an image that properly transmits. However, if I use the same yml file, but when I use the rfnoc_image_builder but with a GUI option, the transmit fails to work. I do not edit anything in the GUI, I just tested the bitstream created as is after invoking rfnoc_image_builder with the GUI option. I would imagine that GUI option or not, the constraints have to be identical. Is there any chance they are not?</p>


--b1_N3fKSStSZAGPhU6N5NQRaojaGsm8MFCrw0jLixgRKi8--

--===============4105610619803314138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4105610619803314138==--
