Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A762473BF44
	for <lists+usrp-users@lfdr.de>; Fri, 23 Jun 2023 22:14:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7F544384AF3
	for <lists+usrp-users@lfdr.de>; Fri, 23 Jun 2023 16:14:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687551290; bh=zaxBBhD8CncBo9RBYzpBsD1F5OmlzvJBA2wAgnUHyUI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LN6StZGwQskVGih4lOukakxUtp7Znc3lMlaMrKK/CJoro9gq6Nx3qzIrV/Q8UsJWl
	 v6CWaXkvZtkjKLtL3JMompT8FG4EOz8FwrStyONhXSRopFT0qeBAnKPG+mkF8bY6Ne
	 gSuU+8nFogsg36bQQp72VrCIl4wOlcAgsfz3oedXSk2eG9KZWelZURuu7RqJeUMn0V
	 DGi8c5rCQVm1mVijADiifw5SHnRm/sAKrhqN4DjDHbuoJ/2l0g5BeBKEg6iUVuZCsr
	 SAJkIFd4CpiCoieHUsyrMKZd/ZteF1Cr6nmgRUkCwhRcTopf5qx/4EcrWvZb4WRSWS
	 Mlsp0mrF2ejlw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4F967384ACA
	for <usrp-users@lists.ettus.com>; Fri, 23 Jun 2023 16:14:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687551267; bh=fVXo8tpkm5ndeNI8Li53Ml7a2+BlonvmDk1bLWU6NwA=;
	h=Date:To:From:Subject:From;
	b=iA+1g3lmNMXWq6PPTeXVGqQh0egVZ69ksb8wC1fpdKwhvYOPQmyLmDnC1rXTw6Z6J
	 hTcepAYli86avmPakv3wgT406Utl2b73yt/J3f1HRPTVO2wJHqfMdhQdQd2clZz8xj
	 Ds5BIto+OceReTvciXP5HMu86hooCJ8zcaAy6O+j4YyJ7oiXPGN+NEszjnOff301Ne
	 5fwtj2OKUWyR5IZLof6SA5Mk5yyCmCtMmm+aOOL80r3KxeyRJa94mxwqLqRuTbzPUW
	 ADjk8hJwxnTGtL5+FhzMU2/2WzWgtYEUQEIXO9J66QqxtOiXy5KxZyxBkiqaB51s8V
	 YSb2bSYx174rQ==
Date: Fri, 23 Jun 2023 20:14:27 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <Wq4plbL4wpZjUgQVqCTsxEN8vLNTTtulfArjZgXs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: PUKWFEEMKE4OR3OO424C6WY5TFWKJSXF
X-Message-ID-Hash: PUKWFEEMKE4OR3OO424C6WY5TFWKJSXF
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] DPDK installation after installing UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PUKWFEEMKE4OR3OO424C6WY5TFWKJSXF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3094149466750272784=="

This is a multi-part message in MIME format.

--===============3094149466750272784==
Content-Type: multipart/alternative;
 boundary="b1_Wq4plbL4wpZjUgQVqCTsxEN8vLNTTtulfArjZgXs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Wq4plbL4wpZjUgQVqCTsxEN8vLNTTtulfArjZgXs
Content-Type: text/plain; charset=us-ascii

Hi,

I already installed UHD. Can I now install DPDK?

Or do I need to uninstall the current UHD first, and then install DPDK and then install UHD?

--b1_Wq4plbL4wpZjUgQVqCTsxEN8vLNTTtulfArjZgXs
Content-Type: text/html; charset=us-ascii

<p>Hi,</p><p><br></p><p>I already installed UHD. Can I now install DPDK?</p><p>Or do I need to uninstall the current UHD first, and then install DPDK and then install UHD?</p>


--b1_Wq4plbL4wpZjUgQVqCTsxEN8vLNTTtulfArjZgXs--

--===============3094149466750272784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3094149466750272784==--
