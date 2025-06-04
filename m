Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B64ACDEBF
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jun 2025 15:13:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26ABE385646
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jun 2025 09:13:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749042819; bh=TgrwUo53p6t1iOPKNshwW6pWl66QUzZJnHzBJ/SLqzk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vqn6zxZlYKy+VBv5FyXZVy9J2wEgO9GfrtoGUn+rMGrh4yMMXotfOrYSnoQkGQCmj
	 jW642E9Dz7n+C5NYr6EcQ5KFZ7z/lkYIokHT5J62A1ImxArNifZumHMTsP+cciXyFQ
	 XQVYHUpZyWGPIb63sQGqxE7EKEF9Y9IffZsN63hUO+Q+JGRvyYHSpRxaItE5iJfXs3
	 hvR0AzBuCu6Uw607c0+huudZahhzUoRp7Tyut4i4Gi/MkaMIp+AXkHGsfmqK9E2Z0E
	 p9QWDY/IRcgIOon4zvpClaNQuiRpJogpwc59YpKguVWyRAhGxTcxEkRD7r/jtGdvYa
	 vc6sPZxekJP7w==
Received: from iis-mail.ee.ethz.ch (aletsch.ee.ethz.ch [129.132.148.197])
	by mm2.emwd.com (Postfix) with ESMTPS id 59644385B06
	for <usrp-users@lists.ettus.com>; Wed,  4 Jun 2025 09:12:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (4096-bit key; unprotected) header.d=iis.ee.ethz.ch header.i=@iis.ee.ethz.ch header.b="ESMUO22d";
	dkim-atps=neutral
Received: from smtpclient.apple (iis-dhcp-157-88.ee.ethz.ch [129.132.157.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by iis-mail.ee.ethz.ch (Postfix) with ESMTPSA id 3DD5EA05DC
	for <usrp-users@lists.ettus.com>; Wed,  4 Jun 2025 15:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iis.ee.ethz.ch;
	s=20250315; t=1749042761;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=ufTBs/b5GF9p5j/JorJ8zYHf877N3Th2uT0qud/Jnjs=;
	b=ESMUO22dKtp/fbWByRHi+dvRpoKJZkrWW1WaPuUPZqTNGmBeyzg02LP5wbHwOR7MZ8c85v
	FRNfpcH3mqy8rKTcNO3dwnuzkta/dDKF9TirB1BaReyud7cxtup+fxjNyii2VZCFXE9D3e
	q2ld6AZy/XeFOiZQnCywBftwmnvj5cXS1rzziuDuyQf8kqM5b38jYo6jJH3eM3/AQLthYb
	UXFG4mvjWqE/hWoUgxyWphRbMCFw42bFuDt/J/nWteNio+Vs5dNVJP4OXOT4z93x2VxBiU
	X0bC65Sz7LHdzh0mVWfYnNHRAqjW/jE0YLhJ1PS0z8x37Y63pHVO1BecK6I8umpPTq3z91
	GHk4ofSoyS1GUgAU11Z/H6D+gXzGjrwo8q/B8qwXdxATwY8a/us8TLhRmf7q6ni92XVJK6
	MV4AMTbURpVILyodZ6a1jthdS33+hJZL8LaInBrC708zcIbnbdlCK7pMstD8ULWutfMZks
	+Sc5/Iio0Lbzp3Gfp1ULM938DmbSGJKxsPMgq2fBLyUz3jrGnBkK1UczfPn9N/0IaTnkNL
	QKMcUvOwDkcGyiXGeCv/iPuYEnHcu5NdowG87qywp5DHG7RRYmKWQJqj/JRfm3Nd8rhj22
	KhEA04np99TyMqwwbb6U0YUwB3gFVeVBwcyoo+gH51x60CSps9D1Y=
From: Frederik Zumegen <fzumegen@iis.ee.ethz.ch>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Message-Id: <E4C41E70-C109-4196-A8EF-19E669AF1551@iis.ee.ethz.ch>
Date: Wed, 4 Jun 2025 15:12:31 +0200
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3826.600.51.1.1)
Message-ID-Hash: KTH4OWEBKB3B6TBU5BQHDONG7H7YS354
X-Message-ID-Hash: KTH4OWEBKB3B6TBU5BQHDONG7H7YS354
X-MailFrom: fzumegen@iis.ee.ethz.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP X410: sampling phase alignment - phase calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KTH4OWEBKB3B6TBU5BQHDONG7H7YS354/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5706146802959569031=="


--===============5706146802959569031==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1DC5B1CD-9FF7-452F-BD9B-2DE96ABC79B5"


--Apple-Mail=_1DC5B1CD-9FF7-452F-BD9B-2DE96ABC79B5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Dear usrp-users,

I am working with a USRP X410 model to receive OFDM signals on all four =
channels. I am also using a ULA as my radiating elements (antennas). =
=46rom the received signal, I wish to acquire AoA information based on =
the phase of the channel estimates that I compute from the received =
known OFDM symbols.

My first question is: must I set up a phase calibration procedure =
manually, like this application note =
<https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Device=
s> suggests, to calibrate the phase offsets between all four Rx =
channels? Or does the X410 have a built-in procedure that can calibrate =
the phase offsets between channels?

Second: can someone explain to me which parts of the RF frontend cause =
the phase offset between channels? I have so far tried to understand the =
frontend based on the ZBX circuit diagram =
<https://files.ettus.com/manual/page_zbx.html>.

Third: can someone point me to resources that present an implementation =
for a manual phase calibration procedure for the X410, if needed?

I appreciate any help or shared experiences on this matter.

Best regards,
Frederik=

--Apple-Mail=_1DC5B1CD-9FF7-452F-BD9B-2DE96ABC79B5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;">Dear =
usrp-users,<div><br></div><div>I am working with a USRP X410 model to =
receive OFDM signals on all four channels. I am also using a ULA as my =
radiating elements (antennas). =46rom the received signal, I wish to =
acquire AoA information based on the phase of the channel estimates that =
I compute from the received known OFDM =
symbols.</div><div><br></div><div>My first question is: must I set up a =
phase calibration procedure manually, like&nbsp;<a =
href=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP=
_Devices">this application note</a>&nbsp;suggests, to calibrate the =
phase offsets between all four Rx channels? Or does the X410 have a =
built-in procedure that can calibrate the phase offsets between =
channels?</div><div><br></div><div>Second: can someone explain to me =
which parts of the RF frontend cause the phase offset between channels? =
I have so far tried to understand the frontend based on the&nbsp;<a =
href=3D"https://files.ettus.com/manual/page_zbx.html">ZBX circuit =
diagram</a>.</div><div><br></div><div>Third: can someone point me to =
resources that present an implementation for a manual phase calibration =
procedure for the X410, if needed?</div><div><br></div><div>I appreciate =
any help or shared experiences on this =
matter.</div><div><br></div><div>Best =
regards,</div><div>Frederik</div></body></html>=

--Apple-Mail=_1DC5B1CD-9FF7-452F-BD9B-2DE96ABC79B5--

--===============5706146802959569031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5706146802959569031==--
