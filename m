Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C01B65C2CF
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 16:15:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E0AB384072
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 10:15:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672758929; bh=nZkENaM/X5m1/AYPXZDmqBIqvO55v0fieiRMrLDjZr0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WvuG/93cgBmNPco/HQ9jF6IfrGiF5COussxz4e14ljz048A4aVKdeqW3Ggwk5nRgc
	 aiv7ZmQ2Ob96XBVQqMrqEECfLG7Gsbmsd259hxdWGZT7CWa9TPcBq7RMw2Es8pw/oj
	 BN4NbKVKXCAKR4ooHAXklSSwFAz2N2Yqz9HOfes7z06pl4NEzBNvvEURuzYgp+WpK9
	 FgBK9jvJjHBuXQbaWSdFnpD0AfToipZb2TKfr9iKrLPs78g+upcdF7V4IjLfxQteHh
	 nVq3bKg821RsPuUGeHxI22qjmxHy6tS5wS5tHGcrEXxSRw2S0FXbSJj9zkQ0ELc8aj
	 90qi2kxzajndg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BDFF438404A
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 10:14:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672758872; bh=o2rQklkT32HdPNR50jtLPS7zsUkcomJ1ronDeF0g8i8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=lb85VoclV1fDu2z06ihVT6a8zdsyJv6w4MLyuKw0Bg9DQJO+oD6halEh01BrLyEwP
	 LpmEDkCc2dt8QhJ4DoU2B7zCxb05mTdEBHnLmLPSKFXC2fnoW4yazSqOHLGTJYTn8e
	 VuRqLM7EBQXK5rGC6cvS3JuxNPVMIkDGmoKFvuDZiiDZlDYUAMa/q82JgLjz7zb5BC
	 F8SmM3nrX7ScsIbcu/70/5u0DFU3z/s3ZLEBSYL0EkHcrlOcS9HnvqiAmgrbAj5xsy
	 grKJ8yfLrvW1Pl4+hUuZNEIMDRvY6PdJvqQZMzBtUyQ0q9t2SqgpIchm/oV9Rf8aKL
	 K0Lfe4pMxabTA==
Date: Tue, 3 Jan 2023 15:14:32 +0000
To: usrp-users@lists.ettus.com
From: henry.powell.xx@gmail.com
Message-ID: <oaoH3ypG8i9DaeJkv3J70sqRD8lHbEmBsowSjpK6M@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 1e3137bc-53e2-70ac-2c4e-4a253cdf6e95@ettus.com
MIME-Version: 1.0
Message-ID-Hash: 7NEUT6XRDAPYTVM3EO53I2EITG2EA5IC
X-Message-ID-Hash: 7NEUT6XRDAPYTVM3EO53I2EITG2EA5IC
X-MailFrom: henry.powell.xx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RX Channel out of range
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7NEUT6XRDAPYTVM3EO53I2EITG2EA5IC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1590226205704604666=="

This is a multi-part message in MIME format.

--===============1590226205704604666==
Content-Type: multipart/alternative;
 boundary="b1_oaoH3ypG8i9DaeJkv3J70sqRD8lHbEmBsowSjpK6M"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_oaoH3ypG8i9DaeJkv3J70sqRD8lHbEmBsowSjpK6M
Content-Type: text/plain; charset=us-ascii

I installed via Anaconda and the code which i run benchmark is anaconda prompt actually. So, my uhd environment is in anaconda.

--b1_oaoH3ypG8i9DaeJkv3J70sqRD8lHbEmBsowSjpK6M
Content-Type: text/html; charset=us-ascii

<p>I installed via Anaconda and the code which i run benchmark is anaconda prompt actually. So, my uhd environment is in anaconda.</p>


--b1_oaoH3ypG8i9DaeJkv3J70sqRD8lHbEmBsowSjpK6M--

--===============1590226205704604666==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1590226205704604666==--
