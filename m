Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA1D9396AC
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 00:41:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1820C3858F8
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 18:41:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721688095; bh=8R8rp6qdHuuZrnVoXO1iAZVDVGNgkD1mfU/V0AUXcUc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cd4CimNsVuEgKrJKPMPiD5ekgdfDMF1OsuLpJjt/KZJuYMjZfR41Z+QhJ3lID/bIJ
	 yx4fqBeZqseZt2Xp62RmEPrTlblBQPqfLIY2S88q/UrVxMKsLOor0+9B4s1w/kpXqN
	 DBYZo592I4+Tp6g4WNIXbQI6dTcolltNA5N3tlY2kfQ0FJZOgjatc9weDgmosBJY6q
	 +YjRNW/KSTppxGNIyIRiNvFYha/ZbqKl9FnfYT+3PagccnHnIjzG3wlAhz1f6i0sSW
	 N2nOwUgZ62/RYGgOj4hxlzKvR99rTQNqgXpaomwSf1FqWC9VB78PJyMGbWuBCNhOl7
	 0nhax8DEOSv6g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C85C38595A
	for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 18:39:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721687995; bh=vWLy6cXaU4J7NzJbUxz8vb22Io2TT/if9eNJHGkkz7A=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=gHIiMsDAAttmwElg1qj2cg6Qmm/+h2HYma0+4paEsE70Ueql3/fbWI66nSr2BCKAY
	 bd8OHv8ExwIjLgJZQ+jHn8UJe8MD/6KKs1a9J55LhQS0RxqUfANxYsIxOJZzlPkAPI
	 pAYD4nNY7XIyrMFKX+WXBMSXX7ex8YMdtxEttsBf3YWs9/fZ/h2cDE8bwMIVu7SneN
	 aOtcAj9Phcx9aPctYkCPtpJOy4VvTmmqQLfOVg60A8VlNAW4Y0gGXD5xtQFqG1hRXQ
	 dDL8xNH6NomHb74BLyT9hcvv5tavdVEuR8qVPmssTFWsf4FFrGFGv+Z2iKjNGxB6HE
	 /Or15YqfeghYg==
Date: Mon, 22 Jul 2024 22:39:55 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <YVhburlEwqYkoh6RysZwjV88YBZaiZK2feRZmvCSJYo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTQdEvf23e212-_7_izsk7PKkJACcAFPn6cFXmkOHqj7cA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: WHFXMPAVIGYFI6FCVBR4M5IUOA2ZXNSN
X-Message-ID-Hash: WHFXMPAVIGYFI6FCVBR4M5IUOA2ZXNSN
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Buffers - 200Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WHFXMPAVIGYFI6FCVBR4M5IUOA2ZXNSN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7341923679898721186=="

This is a multi-part message in MIME format.

--===============7341923679898721186==
Content-Type: multipart/alternative;
 boundary="b1_YVhburlEwqYkoh6RysZwjV88YBZaiZK2feRZmvCSJYo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YVhburlEwqYkoh6RysZwjV88YBZaiZK2feRZmvCSJYo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thanks for the answer in 2).

What about 1)=C2=A0**FPGA Rx Buffer Size:**

* What is the FPGA Rx buffer size on the X310?

--b1_YVhburlEwqYkoh6RysZwjV88YBZaiZK2feRZmvCSJYo
Content-Type: text/html; charset=us-ascii

<p>Hi Marcus,</p><p>Thanks for the answer in 2).</p><p>What about 1)&nbsp;<strong>FPGA Rx Buffer Size:</strong></p><ul><li><p>What is the FPGA Rx buffer size on the X310?</p></li></ul>


--b1_YVhburlEwqYkoh6RysZwjV88YBZaiZK2feRZmvCSJYo--

--===============7341923679898721186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7341923679898721186==--
