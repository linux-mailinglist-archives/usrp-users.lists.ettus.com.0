Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0F6A06A9C
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2025 03:03:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA689385E92
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2025 21:03:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736388201; bh=EPa59lRG3oI+JzZNXbI2bSOaDezxq8NGZbJL6THG5YA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zT+8cGglShVMkCV1+oLeD2TPc9KPlHZ/22ysq6et6KLZLJx6RpeQwoSs9Uu4RTwQh
	 LlK0HPeTk10cIdFSCtg75cquhhmFJGTZI8X+b9liwlVqgyIE4au/oUnjIKmEq9l2FH
	 8zZt3t930AR4zqU21FKC5pq2o1zJjE7s9wMq3HAkQ/83GROKer7Scw4Dw/Fii9Wh6Y
	 zCkfmaRv4v73WtLxDr9lx98soaMvVhD+A3XKG052FBjv3rG/SjWPq2k+rED/k0pcil
	 FZxNSg1ljs/YiA/n5zTrPJRLe2VD4FXqL+W1zlhmprzwaoukiW2uLs5Sv0qI2JY7ZZ
	 Kh8gvL2aD1qtg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 977C1385E7F
	for <usrp-users@lists.ettus.com>; Wed,  8 Jan 2025 21:02:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736388157; bh=lQySeduXtxIPwcnZoIJN32KRmB40RkmqwY4TIs7DObE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=UBZf8hYmfc4vDdfJyCfgdsqNbkxN2fV2gSHbTlaiErsP1SFyBxNOQlwqk6D4dSz+X
	 y0egPKQHHC/43H265jEMpRNnIcqSfiIFBNHf4qnti+qDR9BGjXimGz3NKNNyWtBy7h
	 zDSjECTB3ohjfYIatjoo2DKOD4kusNthrkiWyGliipIYNLnwkqQjBCk+zNN8jFw4cm
	 x8zS+zD7Cib7MIa9U7m1uTK6VLT8DL0/MAw6sfvH3hJRKHdLXjXyEgXiVxK4C5iDA0
	 jzbvVBBcm3B/fK4vO7bVgHS6C0ypaVBKpUbd5kFIJ/yx1KZhcBWyDWQjx6O31Nze2X
	 4QIF16AP/eagA==
Date: Thu, 9 Jan 2025 02:02:37 +0000
To: usrp-users@lists.ettus.com
From: nriedel@serranosystems.com
Message-ID: <xZnq67c6k8BLxyN1UzqZnvW7RFrPIFtL1GCh14PE4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTS4RRDcowE0_BiqVF=AckDZh+ohSf7y8kV4sOCZ5mom5A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: LBUFNIDNODODWS6DYS4LWW264RHKTCCE
X-Message-ID-Hash: LBUFNIDNODODWS6DYS4LWW264RHKTCCE
X-MailFrom: nriedel@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LBUFNIDNODODWS6DYS4LWW264RHKTCCE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0024127917364562719=="

This is a multi-part message in MIME format.

--===============0024127917364562719==
Content-Type: multipart/alternative;
 boundary="b1_xZnq67c6k8BLxyN1UzqZnvW7RFrPIFtL1GCh14PE4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_xZnq67c6k8BLxyN1UzqZnvW7RFrPIFtL1GCh14PE4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks Martin & Rob!

We have our code working following Martin=E2=80=99s suggestion (set the T=
S in each packet, no EOB).  We have seen occasional sequence errors but o=
ther than that it looks pretty good.

We will give Rob=E2=80=99s suggestion a try.  Some extra buffering could =
make it easier to meet our average throughput requirements by making the =
averaging longer.

Both are good suggestions!

Neal

--b1_xZnq67c6k8BLxyN1UzqZnvW7RFrPIFtL1GCh14PE4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks Martin &amp; Rob!</p><p>We have our code working following Mart=
in=E2=80=99s suggestion (set the TS in each packet, no EOB).  We have see=
n occasional sequence errors but other than that it looks pretty good.</p=
><p>We will give Rob=E2=80=99s suggestion a try.  Some extra buffering co=
uld make it easier to meet our average throughput requirements by making =
the averaging longer.</p><p>Both are good suggestions!</p><p>Neal </p>


--b1_xZnq67c6k8BLxyN1UzqZnvW7RFrPIFtL1GCh14PE4--

--===============0024127917364562719==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0024127917364562719==--
