Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 992C8A32D9A
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 18:37:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A0D33860D2
	for <lists+usrp-users@lfdr.de>; Wed, 12 Feb 2025 12:37:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739381851; bh=NVtULmi80ZRnOe3XNDySzOh+FDCotRG4Wz9QXEzdwN0=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Afku+PMqEzt4XN2Vm37RxnpE3gO16NXALZLBAen3bb2psTRxFREwUtKeCJ/ZiDR0L
	 v4quTpQpBTBmZxc+cEVde4oakG/ifP8hJuYAG91Aka6RIVsPwKf81ef/g4EYbunGD4
	 wfcSvinOspJ2gkxklCCHvXwNozS4qwoeXMwpDVo5apfLopAaULiPB61V9YzEMEYVU3
	 +Wcdk/7Bcimb9FtYKaWjjtYz7gORf8/Lf7Wj8xAE9xz7bANAUOFePPGTiR3axnm7fa
	 oZcxeM3WZoF3IzO1oz4j0V21TnR4M4f04AEwMz49V6hyiyJlFJt2EH8/BFIp1yflFl
	 AcyJnS/3gvoUQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B246385BE5
	for <usrp-users@lists.ettus.com>; Wed, 12 Feb 2025 12:36:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739381815; bh=WU1cCJlTlabOSVnoFd1t+JCFB6E7D9iilxyGF02Kbgg=;
	h=Date:To:From:Subject:From;
	b=x2JLBA4M+yJzgfzYGTadCKw7kRbJ00HxfUPaxoOibPLkpZemf3kZ6ll8/Gj59Enj/
	 dAwX7UvEIjlpvp/K9ayhu9eL2hcK3lMpDTomqc9AJLkZcIy+T0F/a5HpLgPs9JLtbz
	 5XzO0hN8AEFEmNeFBC+/O2f3jpRn4ptUVDyUyVuFW/ZYAjw2goTeGxnS/eG11GMzKG
	 PghxmREQnvcsonv6s7ti1w6StSdfMMYSuFvyE3vAag1sUNYEAdgy8pfkbDIcN/SDSW
	 i6LmipZNhwpUk6zjHEzNgbCuVMTXIgrA6q8riWM99fZqwKGnJ04wrmlTctvL07xoNO
	 18mxVRiP4YeFA==
Date: Wed, 12 Feb 2025 17:36:55 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <mETAuMU7KOCQVKmdXyC6Gav3btAQVarhDbRQSLvHHJg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: PMCHQRM5QZBDASUZ7X3CQLI3MJ6UBFJG
X-Message-ID-Hash: PMCHQRM5QZBDASUZ7X3CQLI3MJ6UBFJG
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PMCHQRM5QZBDASUZ7X3CQLI3MJ6UBFJG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0506063052603485677=="

This is a multi-part message in MIME format.

--===============0506063052603485677==
Content-Type: multipart/alternative;
 boundary="b1_mETAuMU7KOCQVKmdXyC6Gav3btAQVarhDbRQSLvHHJg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_mETAuMU7KOCQVKmdXyC6Gav3btAQVarhDbRQSLvHHJg
Content-Type: text/plain; charset=us-ascii

Hi All,

Is there a mechanism to set a timeout when reading or writing registers for a OOT NOC block?

Thanks,

Marino

--b1_mETAuMU7KOCQVKmdXyC6Gav3btAQVarhDbRQSLvHHJg
Content-Type: text/html; charset=us-ascii

<p>Hi All,</p><p>Is there a mechanism to set a timeout when reading or writing registers for a OOT NOC block?</p><p>Thanks,</p><p>Marino</p><p><br></p>


--b1_mETAuMU7KOCQVKmdXyC6Gav3btAQVarhDbRQSLvHHJg--

--===============0506063052603485677==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0506063052603485677==--
