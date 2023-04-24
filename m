Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E56F16ED30F
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 19:03:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 797BA3844D7
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 13:03:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682355834; bh=XDgbBjjWtyIq45t+JQLI7PJtgg3o2sqcT+gzfI068gw=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=hZ++MpyWmUDVWFmOKNwLTbB4shWzUw+Of//3PtJzUv0dp1yGkVIHfn/HD/pLjNQK6
	 BiE6VlhJnsydqEqi4rTzlAr3r3cnNFLe3rjGDdgvA8QwFqsasDpjpbGjYd97pxU7d7
	 cdXSIglH0GUbjfcbfH/EPrUM1VQJxJ9B8TjTKCbf+XAw/1R8sNTR243mlJWEOVZYbP
	 JmeEIUtnkWbgYNoPnXfxX39twcvggW683AEl0HtN6bwVK7B39yWKniiEQp/ozJM7m6
	 T2UfWJdwou5k07wWygL708rYvBHp1F5PzZDAXwOtJRBnOgNZfqt5iQaZvNc81+Ela3
	 wuPBQcX77D6Hw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 726CB3844D7
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 13:03:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682355793; bh=DRYRhPwa5OmTxXUGeg1MkyPv23xcxHiiGwFw6UgeMvY=;
	h=Date:To:From:Subject:From;
	b=ENFZcVveCUBvucmZ+RFWUzK2BayeWPeiCIE6us6p/CniZmCGTPX4/XnHYXsfiiufy
	 fhBDpZY3ZauRzjiOLqR6KbAZUlCuOpDBfFzjz+lZD+NjQXCwsO//7j2SX35OLLXlrm
	 z/3X7tSnRXN9kRWAZHK/BN9yCCyDa1ZvuYPdW7j2quU4bduuWbh1Sl+9KJiOVjbMfk
	 yk9K8OSLMol/QE8NoatgXafHs9QI7MbBSQCEOP1yhOUV5FKXdrGVKMqFENoQc9Bbyy
	 5VD8dH3rqG7Qkt2g5tx4CjcHP/8UebwCNvc7wfcNWdzCg36L+CKKydbCV1Q8BCWE7F
	 IlP9oH5OvOhXQ==
Date: Mon, 24 Apr 2023 17:03:13 +0000
To: usrp-users@lists.ettus.com
Message-ID: <RhKQmzCaHhewoovO4K8osMtzmOTGiZRFaYUlF1K2Q@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: WDTCKEUBHYQY6VFPV4LGJKJ4ERADUWK3
X-Message-ID-Hash: WDTCKEUBHYQY6VFPV4LGJKJ4ERADUWK3
X-MailFrom: jorge.gonzalez.o@mail.pucv.cl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E312 Tx warning
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WDTCKEUBHYQY6VFPV4LGJKJ4ERADUWK3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "jorge.gonzalez.o--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: jorge.gonzalez.o@mail.pucv.cl
Content-Type: multipart/mixed; boundary="===============6176714440620238787=="

This is a multi-part message in MIME format.

--===============6176714440620238787==
Content-Type: multipart/alternative;
 boundary="b1_RhKQmzCaHhewoovO4K8osMtzmOTGiZRFaYUlF1K2Q"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_RhKQmzCaHhewoovO4K8osMtzmOTGiZRFaYUlF1K2Q
Content-Type: text/plain; charset=us-ascii

hi all

when i try to use a Tx channel on the usrp E312 i get this warning:

\[WARNING\] \[MULTI_USRP\] Calling multi_usrp::recv_async_msg() is deprecated and can lead to unexpected behaviour. Prefer calling tx_stream::recv_async_msg().

does anyone know what it is the nature of this warning, also, when i use the Tx channel, the led indicator goes red and it freaks me out, is there something i can do to resolve this.

i am using GRC 3.8 and UHD 4.3

--b1_RhKQmzCaHhewoovO4K8osMtzmOTGiZRFaYUlF1K2Q
Content-Type: text/html; charset=us-ascii

<p>hi all</p><p>when i try to use a Tx channel on the usrp E312 i get this warning:</p><p>[WARNING] [MULTI_USRP] Calling multi_usrp::recv_async_msg() is deprecated and can lead to unexpected behaviour. Prefer calling tx_stream::recv_async_msg().</p><p>does anyone know what it is the nature of this warning, also, when i use the Tx channel, the led indicator goes red and it freaks me out, is there something i can do to resolve this.</p><p>i am using GRC 3.8 and UHD 4.3</p>


--b1_RhKQmzCaHhewoovO4K8osMtzmOTGiZRFaYUlF1K2Q--

--===============6176714440620238787==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6176714440620238787==--
