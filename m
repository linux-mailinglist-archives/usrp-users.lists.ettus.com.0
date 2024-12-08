Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5056B9E8761
	for <lists+usrp-users@lfdr.de>; Sun,  8 Dec 2024 20:03:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 065B2385B1C
	for <lists+usrp-users@lfdr.de>; Sun,  8 Dec 2024 14:03:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733684622; bh=tZ5Q5G2pRV4ME7eEmJ7gp4KE7NWi8+MQ29BLQaDnC2A=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=pzkXaW3Wd+nFi0x+g/xGkikCLBkvaRMstuGqqOZ1Eb0wTYWhGwSshI3xf4ARCeJFc
	 w3PhqoHlrRqw6ppy7SGrM86pfKM7Q/beQ6xSCbQbpWzhpmnZi0FONU500izQXQ8swF
	 zdXRUJccRLAgCxE7g7v/yT7HAU3hXySWf568VF06TGVs2VE82uanaywPn7zjmsJ59G
	 I3/eadmLcSeLbk1+yjKu4MgIWOnayVR1wFFLrhuA+WK2CEYFVjrXDu8ycK4KB8BLfT
	 +PkkEvV7T4Ks+rt23nR1WZC+IvIDjD8BUoH93C6jKuCipCaW3lcTkTO6vNSobDnAJX
	 69ZEdYMHNORDQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2392B3859C5
	for <usrp-users@lists.ettus.com>; Sun,  8 Dec 2024 14:02:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733684569; bh=XzCl5bpJR8VTHnHLRfe741Wpj1N24L6NUYRFeNKJsM8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=GamsE+JECh46acla/VL1H7tCzHXBAWfpwYyoiEh9go43yBBFJNz6UGUhyhsrMb3ym
	 WwP8XWzgE7K5mNm2q0Tp7CXAW2j5OmeJkAMcEU18XZ2lNfqWV7z89W/jk0F4kKXDvy
	 aCQYKAfftCUCOjWT/d5w1C2B3aQ7QJs3MDLHYypPKS/TTTw/ucP036kC8yooVC79av
	 ufUcYCptFo76FYkLLeyiI3ZWUbJlq9AXBYo3d1a6gz/gHAxvTAahNLCuDhlBgJIfam
	 sOEjJbLS9Xle2N68dVZzeLHW8bnMJypfk8kInt1OWMaV5aJ28qW03zw+UAupQCxlkb
	 HfSqxEKP5KDYA==
Date: Sun, 8 Dec 2024 19:02:49 +0000
To: usrp-users@lists.ettus.com
From: steve.wakelam@roke.co.uk
Message-ID: <pY3EDiYVPEnGiJhiaUBnUFSYboQmU9mfHQwIvAmZQr8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: ad7d5782-d715-4b0e-b5c8-0ecb58fc8b2f@gmail.com
MIME-Version: 1.0
Message-ID-Hash: NCYEWSHTWJJYCRPIWGRC7MCMMZ3BKBX3
X-Message-ID-Hash: NCYEWSHTWJJYCRPIWGRC7MCMMZ3BKBX3
X-MailFrom: steve.wakelam@roke.co.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus X310 - Streaming Data TO the SDR
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NCYEWSHTWJJYCRPIWGRC7MCMMZ3BKBX3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0080699129635838485=="

This is a multi-part message in MIME format.

--===============0080699129635838485==
Content-Type: multipart/alternative;
 boundary="b1_pY3EDiYVPEnGiJhiaUBnUFSYboQmU9mfHQwIvAmZQr8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_pY3EDiYVPEnGiJhiaUBnUFSYboQmU9mfHQwIvAmZQr8
Content-Type: text/plain; charset=us-ascii

Thanks will give those a look

--b1_pY3EDiYVPEnGiJhiaUBnUFSYboQmU9mfHQwIvAmZQr8
Content-Type: text/html; charset=us-ascii

<p>Thanks will give those a look</p>


--b1_pY3EDiYVPEnGiJhiaUBnUFSYboQmU9mfHQwIvAmZQr8--

--===============0080699129635838485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0080699129635838485==--
