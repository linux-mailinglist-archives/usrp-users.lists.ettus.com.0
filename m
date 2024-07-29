Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A64C893F4F0
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 14:13:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB7AD385628
	for <lists+usrp-users@lfdr.de>; Mon, 29 Jul 2024 08:13:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722255205; bh=iGL9MOzIYy/3hFB+gkB4E7zSE7huAvr8RTgff1S5DPs=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0ohFqwLoqTP0tYFMEDTfvIVEgNleTQ6Dmk8n0DIQ+q6pCZfBhnG/A37SYhpREGbzG
	 oyK/l/IwIkmwMFf67dxDndoiLGP0opluXUcyHcR/lXOwH4sqM0r4DC1kOglIY5hvU9
	 WPlsMcDBeXw0Dq+osSyIE7cvGdKO4FFEoHx8qZUL9HzMrU6c7k7Z5E2x4zyfNuqw89
	 d+TNqew/AYbpXNs28HupxcgmPeZNNzX550sr0x9taGqQwokn+CRnfccDj3OPnRxfxQ
	 yl2BeWya2ztDUUKeaaeFrF7GtbOeQCcUujJV5g+Ab5ECoSLOKT0cK2gfMfGAyQLmQl
	 sQJ0gSmX792QA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C439385604
	for <usrp-users@lists.ettus.com>; Mon, 29 Jul 2024 08:13:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722255190; bh=FqZSRNiv0YArYCxtpPMkMm22oBEaEgihOeoeD9UTyVs=;
	h=Date:To:From:Subject:From;
	b=TtXgIAAFCht9Onrh6L/eDnI0HIvn9jIgA4mspbs11rLfIISNhG9bKHLsg03xKuUoE
	 BAFrru9fJdvoK16eshDjT+MRtv52ZMim4q7R1LB8b71QFHEuLWzIjdSFkj1R+0qWoJ
	 iE32uGdEv/Jk9Nj8eEbZ9uFO2AqRL6YYIZgV58uxTJtuty/xLI71e2jRZEPA5SgXFD
	 QMYmfrLdQ0Ge6h3R5m9SPpSUZ4SvvJQcTJcoxx52wUq/lVuyfBIAY1p50FsMssXD3s
	 wbBz4P9uuCA9B2OjMbl+tCFZr/S+77dt7WsY45/iEOIzptZAGveSJ+YREqNNsvMmwL
	 YXRrv2QJKv9bQ==
Date: Mon, 29 Jul 2024 12:13:10 +0000
To: usrp-users@lists.ettus.com
From: edenmclaughlin123@gmail.com
Message-ID: <5zlI4xfK4WaPyJ9a351mZm7Ya4EXrkuaYon8nfJZuIQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: FVU4QUOVMIMQYJLIAYC2T7DJFIP4CANO
X-Message-ID-Hash: FVU4QUOVMIMQYJLIAYC2T7DJFIP4CANO
X-MailFrom: edenmclaughlin123@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] About the Port Power Ratings
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FVU4QUOVMIMQYJLIAYC2T7DJFIP4CANO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1171514394284994334=="

This is a multi-part message in MIME format.

--===============1171514394284994334==
Content-Type: multipart/alternative;
 boundary="b1_5zlI4xfK4WaPyJ9a351mZm7Ya4EXrkuaYon8nfJZuIQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_5zlI4xfK4WaPyJ9a351mZm7Ya4EXrkuaYon8nfJZuIQ
Content-Type: text/plain; charset=us-ascii

Hi,\
\
What is the maximum power level for GPS input ports of Ettus SDRs? We are considering testing SDRS with a GPS simulator and test the onboard GPSDO but are concerned of damaging either the board or the GPSDO itself.\
\
Eden.

--b1_5zlI4xfK4WaPyJ9a351mZm7Ya4EXrkuaYon8nfJZuIQ
Content-Type: text/html; charset=us-ascii

<p>Hi,<br><br>What is the maximum power level for GPS input ports of Ettus SDRs? We are considering testing SDRS with a GPS simulator and test the onboard GPSDO but are concerned of damaging either the board or the GPSDO itself.<br><br>Eden.</p>


--b1_5zlI4xfK4WaPyJ9a351mZm7Ya4EXrkuaYon8nfJZuIQ--

--===============1171514394284994334==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1171514394284994334==--
