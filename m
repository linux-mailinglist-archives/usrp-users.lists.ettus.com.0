Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F226F5860
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 14:57:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C2B453845EC
	for <lists+usrp-users@lfdr.de>; Wed,  3 May 2023 08:57:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683118677; bh=kBDPbMKUo2q1DGdzILPdIzY1lm5lUn4JSdKM1EE6qKA=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=fQ+SwnMxRZP0CHw9BALFwHJ9LSo453cKtrpzievk3kUX5zwy8vHWjBXVppy9lTecD
	 q7U8UDXXmlz9S2lIwyUKZnYV/Q0W9/p4euNxHLPPP51ykNPX2Wd837phG4uCaCwXMg
	 m076eeiTanNmVlVOFODEphBWXmoN99FfU7w1GVg5cI9WbucK8Q9HtYXSeF5O/OgN7h
	 x9JhRv1/PnU5Z8DJk59QfGuzlduHt1baMIxLz/ABce0t9EgpvTyaN5hwj/3nS6KPOO
	 CJ8LG7HsiQYpu4FaSasC9EP93HrIVzNzzYn7NU8CJk0WT/FwP1a+W96C59GOvX3GwL
	 jVsAQy1JvDzng==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BD0FC384507
	for <usrp-users@lists.ettus.com>; Wed,  3 May 2023 08:57:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683118639; bh=YMMYzssrYnd26DW1qDRmajOSN74TBPt37ZeDbgRJ/us=;
	h=Date:To:From:Subject:From;
	b=nkw9rq/QGutXPf9qt4NWlsLToOdWIRP7O/s5TxN2Ruf+bTMwYOiQLdAUtgPqykopn
	 0ZuTEfTV3fhB4cHJLLgbKyvqnBpRHpiDc3iRbQOiw7LRcXEt6yqevksKy1rvtcuH8v
	 Im3lq7PiGR23mcjVWiJd0Axcjr2ZKZSjQRbDLFiDB4x1+9kvtH4mkmzAhcYVKxsiw7
	 LNVuxTNQJSun8onefq5hJWIl4ISe/uRgiLQuV1JhcrCGDKWVUw9vkr7d8hjVG2ABIs
	 AEiIQ3wkAxzv67uvsX6fXZtQjGAuXfgsnGE2UZ08Fp7qO825E/86rRk6qPfBYuodsb
	 JOscXN5ea6Cow==
Date: Wed, 3 May 2023 12:57:19 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <qERvk9iOSpnEho6WkhmHjFUj2kRp0Qn11dsmng7MKw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 2HMG7RPVQBJD4BIFSCLJ66PNLOVYKD5L
X-Message-ID-Hash: 2HMG7RPVQBJD4BIFSCLJ66PNLOVYKD5L
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] connecting to USRP through multiple 10GbE link
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2HMG7RPVQBJD4BIFSCLJ66PNLOVYKD5L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8012793812510219371=="

This is a multi-part message in MIME format.

--===============8012793812510219371==
Content-Type: multipart/alternative;
 boundary="b1_qERvk9iOSpnEho6WkhmHjFUj2kRp0Qn11dsmng7MKw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qERvk9iOSpnEho6WkhmHjFUj2kRp0Qn11dsmng7MKw
Content-Type: text/plain; charset=us-ascii

Hi,

Can anyone share a sample GNU Radio flowgraph or .py for the case of connecting USRP to PCIe with several 10GbE link. I am trying to send and receive to USRP through more than one 10GbE link. my PCIe has four 10GbE link. thank you.

--b1_qERvk9iOSpnEho6WkhmHjFUj2kRp0Qn11dsmng7MKw
Content-Type: text/html; charset=us-ascii

<p>Hi,</p><p>Can anyone share a sample GNU Radio flowgraph or .py for the case of connecting USRP to PCIe with several 10GbE link. I am trying to send and receive to USRP through more than one 10GbE link. my PCIe has four 10GbE link. thank you.</p>


--b1_qERvk9iOSpnEho6WkhmHjFUj2kRp0Qn11dsmng7MKw--

--===============8012793812510219371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8012793812510219371==--
