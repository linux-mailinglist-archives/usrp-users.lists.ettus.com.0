Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1457B6F47CD
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 17:55:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D322638480C
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 11:55:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683042939; bh=xMtl/x4z/R6qYVGIwqSyz+WVvYKJUnPl3koWaUzgJeI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DXOXu7MAhATuInYhEtTQ9/zVAexl+piXmrj8Zh2/AlUzPwHwbI0Ut9TJi9e5KUjqp
	 yKdP4LFbpf890VSR/u/Q0i9Rz16QR3m1zFrS3SuMuVOegiV++lmBuulaAiI6nwcCIW
	 wyaSWEt3XiCVEfOAL+/b4lF3rK2JHOXmmGA259NOy+qN30ruwtfH0n6IuSbPnCS376
	 TQcieXnD34SFlx39mOjo/3dZOU213E6sBcdibo45yrjFsw710RiI/NUpwty8Z9V4xv
	 rrZX1u05UXeSPc5i4Wjm8DzjCyoV/wvlucQ4/rBJ1/sAzozTBrKRxlyAUy42Qj/i7w
	 DhIqP0rlz9dbg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 860EC384785
	for <usrp-users@lists.ettus.com>; Tue,  2 May 2023 11:54:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683042892; bh=lpN/xJmXzh1tG6IKiNWBCmOwd1evngritsWiv267yco=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=vXBgLF2PB/IghIhv5GhKjJqssSgjlHATrIbgimyODJkIEbVL7LD4mbFQtErVpOQQz
	 qC9sLNbCauLKU2ZG51DqU/LhHlOHbi1Kw7LMQgQp/4u/q/8c16q9ApWCjkYvKO9SM6
	 TnmKfUgJ7ynLHlvLwCOhfs+U/+10XsMDOYrP7ydHPM+AyEaKCGv8FLpw0egwzDVj9s
	 PTuntP4XkpDTq9l7nMpLX+Iybs90GRUiUXRSLtWNlTAkk9P25zKs1cmDzAXqjMHXxy
	 r5qZOPKvv0INcM15OzxmFV1kXXuSzn26e0mOVf7ka3Zmw+qDmm+YCHdezQEgYFl7GU
	 sIjK6QOta4mEQ==
Date: Tue, 2 May 2023 15:54:52 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <Gx3Ebnyi2jdLIB5hO8uItoCTpVQvDiCvo1zccf9nbeU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 7fa3179f-e538-4809-211f-f75875cae60b@gmail.com
MIME-Version: 1.0
Message-ID-Hash: C7Q7ZJZVFHCN5O44GT7GDBDEB3DQSPTS
X-Message-ID-Hash: C7Q7ZJZVFHCN5O44GT7GDBDEB3DQSPTS
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C7Q7ZJZVFHCN5O44GT7GDBDEB3DQSPTS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7948010831142256925=="

This is a multi-part message in MIME format.

--===============7948010831142256925==
Content-Type: multipart/alternative;
 boundary="b1_Gx3Ebnyi2jdLIB5hO8uItoCTpVQvDiCvo1zccf9nbeU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Gx3Ebnyi2jdLIB5hO8uItoCTpVQvDiCvo1zccf9nbeU
Content-Type: text/plain; charset=us-ascii

Hi Marcus,

I performed some tests with a spectrum analyser and a signal generator as you have suggested and the problem seems to be in the RX side. Here are the results : 

* If I do 1 way transmission \[RF0, TX/RX\] ==> \[RF1, RX2\] : OK, it works everytime

* If I do 1 way transmission \[RF1, TX/RX\] ==> \[RF0, RX2\] : OK,  it works everytime

* If I do both ways transmission (Full Duplex \[RF0, TX/RX\] ==> \[RF1, RX2\] & \[RF1, TX/RX\] ==> \[RF0, RX2\])  : NOT OK,  I see that the TX works well everytime (I see the signals in the Spectrum Analyser) but the RX only works sometimes even when I use a signal generator replacing the USRP TX.

--b1_Gx3Ebnyi2jdLIB5hO8uItoCTpVQvDiCvo1zccf9nbeU
Content-Type: text/html; charset=us-ascii

<p>Hi Marcus,</p><p>I performed some tests with a spectrum analyser and a signal generator as you have suggested and the problem seems to be in the RX side. Here are the results : </p><ul><li><p>If I do 1 way transmission [RF0, TX/RX] ==&gt; [RF1, RX2] : OK, it works everytime</p></li><li><p>If I do 1 way transmission [RF1, TX/RX] ==&gt; [RF0, RX2] : OK,  it works everytime</p></li><li><p>If I do both ways transmission (Full Duplex [RF0, TX/RX] ==&gt; [RF1, RX2] &amp; [RF1, TX/RX] ==&gt; [RF0, RX2])  : NOT OK,  I see that the TX works well everytime (I see the signals in the Spectrum Analyser) but the RX only works sometimes even when I use a signal generator replacing the USRP TX.</p></li></ul><p><br></p>


--b1_Gx3Ebnyi2jdLIB5hO8uItoCTpVQvDiCvo1zccf9nbeU--

--===============7948010831142256925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7948010831142256925==--
