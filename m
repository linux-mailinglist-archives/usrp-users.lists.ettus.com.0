Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4DB7A4AFC
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 16:10:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D9693385EF8
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 10:10:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695046224; bh=DFV5gGzzC1ygPh9fUdSaXToklop3pSuOXUOaWKQCm0w=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=iDn2nci91mCxjBZOkkA0kl5Ku7in8sYCfsnZTVtWCBDmSAbCXN7aeWEUPb7SZMm0O
	 +320DtGJDalQ2QghsLZt0LYBCxWr4ZFEojYKWoWtlUNUIVRCNmMabPNqlo06Bt4kyE
	 OROEbJ3FqjhJaN/zrV4BALXMPr4gQztUI++fVE+yMMEpWBDPaYmzCHiJoBcp+Ib0KI
	 3kkxaLKHujhIsQ0pyxGmeo9DRsI/WCHNzVTG7js657nmSP0HPrNQkiGdRxyplliCqm
	 Higtc0JcuVVr8pKbn+8lbdexPvLrXCTWtmhbCHP2p+RW22ChU1fiJ2pbiz9bB+CCYT
	 sHfkBzKWIH7Aw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A102385DE7
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 10:09:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695046172; bh=NSO9uisyvextFRrS9lNG4nuWLic1GvZjTtW5GYWVAkg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Jm5XeUaE2oIc0ns09e4CFSr+5CRn82efE1of/bGaYlL4X9e+7yw9Un9aug0JvuBKO
	 gnLO0iIshc3dfr9p12s6bV4QuWzEFAN2wsXv5/R28f07TW4/7aUsFJm4McrIbJhWWs
	 QWI53/9LBuSQ7WRQOUfCS8QfZLiSSEqhybGwCgxAmfNoy82esfyFNWabeVuZIhGWVF
	 p0mqJGtlD0rdM7+PtsaHFNT2KLB/jVJ0FLFOUAZ7woFgTWu/hJYI9hUyHTX2vdpJfb
	 EYcg7kQojsRql1feGnGtGaOOHw95y/IHZ35rLQCEiSXG8CdYxzB6oM9cq7wefhHboe
	 hA3qbl8KnR8KQ==
Date: Mon, 18 Sep 2023 14:09:32 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <5RnC2plypU3R3YKSjZaYX8ojGRwqpx2bqpBRcJhSRk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 800b15d7-a048-89ff-f023-41c5410279db@gmail.com
MIME-Version: 1.0
Message-ID-Hash: V2EMNPGITJE2N2PO63NXNYUJIBRZKBYA
X-Message-ID-Hash: V2EMNPGITJE2N2PO63NXNYUJIBRZKBYA
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Delay between TX and RX channels
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V2EMNPGITJE2N2PO63NXNYUJIBRZKBYA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1824930852652085956=="

This is a multi-part message in MIME format.

--===============1824930852652085956==
Content-Type: multipart/alternative;
 boundary="b1_5RnC2plypU3R3YKSjZaYX8ojGRwqpx2bqpBRcJhSRk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_5RnC2plypU3R3YKSjZaYX8ojGRwqpx2bqpBRcJhSRk
Content-Type: text/plain; charset=us-ascii

Thank you, Marcus,

Yes, I am trying with correlation peak.

Yes, for radar application the TX and RX IQ samples with same size saved to two files. I need to calculate and remove that delay. 

Does this group delay is fixed or changing during the TX/RX?

--b1_5RnC2plypU3R3YKSjZaYX8ojGRwqpx2bqpBRcJhSRk
Content-Type: text/html; charset=us-ascii

<p>Thank you, Marcus,</p><p>Yes, I am trying with correlation peak.</p><p>Yes, for radar application the TX and RX IQ samples with same size saved to two files. I need to calculate and remove that delay. </p><p>Does this group delay is fixed or changing during the TX/RX?</p>


--b1_5RnC2plypU3R3YKSjZaYX8ojGRwqpx2bqpBRcJhSRk--

--===============1824930852652085956==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1824930852652085956==--
