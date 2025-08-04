Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B5AB1A58C
	for <lists+usrp-users@lfdr.de>; Mon,  4 Aug 2025 17:11:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EF42C385DD1
	for <lists+usrp-users@lfdr.de>; Mon,  4 Aug 2025 11:10:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754320257; bh=+/gaia3aQkombS9Dnoi5sIhMQLMzW8RfajhMmsqZq6A=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EVFCwkTEWG+KGgNmdKApCxYKEVhrQLrZZHpqEADdo0KfRE+m+Itnfjo+5Qz0bq8LB
	 bLT+3X9ArzQgdbI5qVSIgod/RkboozO40GZcJlldTN9RiZOiq3kTuCMYzgtf9vFxJZ
	 XtWWfEn0/ZSkyZjb3n7zkTDhtIGusXNMMuOmZ2VCJtO0BRrSY+R8zyZIwyheEzp79o
	 VU70PTJ7UPWuETJRWLtqZmvDqZOYZ6STcXgUZdlBli3p4wzQ5DSWKT/54prgvL5ydb
	 8jEP30SNovJ/eTEueRISzqmSmSnLEKz3sOg08jvzoQavMEZePbu5rBExWk8K812oBh
	 o8T/O0h6a/kxg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC2B7385C5A
	for <usrp-users@lists.ettus.com>; Mon,  4 Aug 2025 11:10:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754320226; bh=OUT6AySn4W9crw5RnqYt6frjrv0HkYdTHLf/rNTI/NE=;
	h=Date:To:From:Subject:From;
	b=EEUW0yf9/wIoukPbdgh5+LKNiPCWQH7zArzI4j+A/gzAKhhHqZ0ODSDv3V8L+M7qU
	 HVH814yPFzx20wDAKHY2VwRh1kvy/OHj23lS/tFrz82ONz/1+GB35Gi0TT1yx42IvH
	 hOPVseBUxkGDTZMuhZo9CBRaGDwLZY44UlKPZ0kEU85oXG7mkUGe/mzNG5XuWy99F+
	 zfH29RUyCeuqkqUDsSyCnOAF+Yjq1fTH/RZVWudyglFLeMSx0Duf/lDM52GqOGPYEN
	 v9YPcOXSKZC9RVQzji0kiGmOvSpISzindUEIW7/gqgG0SuJ8r750TnhFNWeAtR/KeA
	 jUpfGib/h4fxg==
Date: Mon, 4 Aug 2025 15:10:26 +0000
To: usrp-users@lists.ettus.com
From: gechb21@gmail.com
Message-ID: <WH61oPt2oe8Oodkd0Yex04qNxewfZGKS6qS9E5hXBM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: TFDDTFJNFGJG73ZBE2NATVOXXORVHG6O
X-Message-ID-Hash: TFDDTFJNFGJG73ZBE2NATVOXXORVHG6O
X-MailFrom: gechb21@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Subject=3A_Inquiry_Regarding_Maximum_FPGA_Buffer_Capacity_for_Transmission_on_USRP_X310__=C2=A0?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TFDDTFJNFGJG73ZBE2NATVOXXORVHG6O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1059380556275757149=="

This is a multi-part message in MIME format.

--===============1059380556275757149==
Content-Type: multipart/alternative;
 boundary="b1_WH61oPt2oe8Oodkd0Yex04qNxewfZGKS6qS9E5hXBM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_WH61oPt2oe8Oodkd0Yex04qNxewfZGKS6qS9E5hXBM
Content-Type: text/plain; charset=us-ascii

```
Hello, 
```

I am currently working with USRP X310 devices equipped with UBX-160 daughterboards for both transmission and reception of data streams. To ensure continuous transmission without encountering memory underflow issues, I would like to know the maximum buffer memory size that the FPGA on the X310 can support for handling transmit data.

Could you please provide guidance or recommendations on this?

Thank you,

Getaneh Berie

--b1_WH61oPt2oe8Oodkd0Yex04qNxewfZGKS6qS9E5hXBM
Content-Type: text/html; charset=us-ascii

<pre><code>Hello, </code></pre><p>I am currently working with USRP X310 devices equipped with UBX-160 daughterboards for both transmission and reception of data streams. To ensure continuous transmission without encountering memory underflow issues, I would like to know the maximum buffer memory size that the FPGA on the X310 can support for handling transmit data.</p><p>Could you please provide guidance or recommendations on this?</p><p>Thank you,</p><p>Getaneh Berie</p>


--b1_WH61oPt2oe8Oodkd0Yex04qNxewfZGKS6qS9E5hXBM--

--===============1059380556275757149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1059380556275757149==--
