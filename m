Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AD07C8ECC
	for <lists+usrp-users@lfdr.de>; Fri, 13 Oct 2023 23:12:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 91C053859EB
	for <lists+usrp-users@lfdr.de>; Fri, 13 Oct 2023 17:12:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697231546; bh=oHBl2jEMK4dC5JceYNYCPOgsy89wY8WTrrbAHJBpR9w=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=X7Ro3SM3x5vGePS5IAenpuq2EqN99XPwwSOrBWJGd+VQpNRxm6WT9Ey0ffspIJ941
	 eU9sIxdfJZeRukl+1XgYrVI8rHwBFp/g2zF999I2iq0wMOFRIx44IsE0T1OeZvGk+t
	 kxBRy8Ntc+XyPtaot9TcyPV9nVHBuhl9xxZkk3NtvDxuHAJXo5VCTKPO4ToOd1cz/d
	 fBmtVQqV0b52Dpww8GEHheqC5SmRmmBgJNnD43CDAdILiOyPHrDBL4nc4bXNJG00aQ
	 xnMrJgrWCWWQmkht9zna24wcurFDRuU7iZ2r6ql/HpmcgHfe5ViT774WdEMBEJNg93
	 +fFO3SrpvU8UA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3AE7C385055
	for <usrp-users@lists.ettus.com>; Fri, 13 Oct 2023 17:11:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697231503; bh=q3MQDuWh9gFPQJMaJOzQ7cNbhv+fVDI0xNj4/kcIZMk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=i+vPrGLtN9FOhm4x3yqIkPo5cpzLkCINaLbku6200jQauUiM9LGe25ZhW9QIpJYeA
	 6tUPHp60Z2xrIa5QgFvWwBaEhNCqWSnVXXdRXcZDzN6Oo29dSvsxmRBqeMgJgtuqY2
	 IdUF4AA2ZbIMSY6OLJBVqv+BkhWfLlO0XenFL+ZzinorXte0SSzG7vBkZ9QJUjWlvt
	 nNak6VCkiyCq3kIQa75/NEXL9EvUioWog2wN8D+o/SjrroVb9gDYzm6RzHnRXSywDp
	 Hty/se/kg8pCfq29n6y70xHD8gZiY8z2GcbKOP30w0ii9hD2pehp3HGquDqDzzitWm
	 vccd7KlTNzWDQ==
Date: Fri, 13 Oct 2023 21:11:43 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <IrvAIoZzjquRB8RvqUNvCntvHQNeQyODoBOhhAApg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: PH0PR04MB8311754FD474E8848B6F10F2F3D3A@PH0PR04MB8311.namprd04.prod.outlook.com
MIME-Version: 1.0
Message-ID-Hash: TNMLAD34RBKSAFQSDNLBGJLXDLYEDBTS
X-Message-ID-Hash: TNMLAD34RBKSAFQSDNLBGJLXDLYEDBTS
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Not all UHD logs showing after adjusting log level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TNMLAD34RBKSAFQSDNLBGJLXDLYEDBTS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4710959343077379066=="

This is a multi-part message in MIME format.

--===============4710959343077379066==
Content-Type: multipart/alternative;
 boundary="b1_IrvAIoZzjquRB8RvqUNvCntvHQNeQyODoBOhhAApg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_IrvAIoZzjquRB8RvqUNvCntvHQNeQyODoBOhhAApg
Content-Type: text/plain; charset=us-ascii

Using the following steps you mentioned helped display logs.\
`systemctl stop usrp-hwd`\
`usrp_hwd.py -vv`

However, I am a bit confused about the configuration files. I was not able to find an mpm.conf file for the x410. The closest thing I found seems to be the usrp-hwd.conf file, but adding the log_level line to this doesnt seem to effect things(even after rebooting).

--b1_IrvAIoZzjquRB8RvqUNvCntvHQNeQyODoBOhhAApg
Content-Type: text/html; charset=us-ascii

<p>Using the following steps you mentioned helped display logs.<br><code>systemctl stop usrp-hwd<br>usrp_hwd.py -vv</code></p><p>However, I am a bit confused about the configuration files. I was not able to find an mpm.conf file for the x410. The closest thing I found seems to be the usrp-hwd.conf file, but adding the log_level line to this doesnt seem to effect things(even after rebooting).</p>


--b1_IrvAIoZzjquRB8RvqUNvCntvHQNeQyODoBOhhAApg--

--===============4710959343077379066==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4710959343077379066==--
