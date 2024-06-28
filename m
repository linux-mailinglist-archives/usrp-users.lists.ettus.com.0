Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B716591B5C2
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 06:45:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 972F13858F3
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 00:45:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719549927; bh=ic0nuGgcaNWH88JVj2OT5nX7ohd1HzGJajtebOjJTU0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=V83ZDKBtfqeEmccG9IUSnORcPCYcwxWyQSfc5TgpJcTJhK39080rrOh+WM1HvHaDQ
	 z/Ie3i6rlrEymhragPPKRrv74GgWamOOcwdDk22P3KATzfuf5sPU2COAmD82wEMJG7
	 z2vz5GWHt0gXsERW4hSf5fcLUdKtEkCRfUtmImx5eXJwLPlHvAqoS/W45m97gX+j+7
	 somqZ+KN98zHgc88NHa+adefMJEvQVG+n1o4OfEmnGZPKC94EOnQ9KYYS+AgtHcRRh
	 MqtibxM6/epQTfY7V7Hkpub4TQy33qYjeJC2NYTyog+xqHNjsYb9zRm7IAGHwuCzXJ
	 8RjxchVEGO6Ng==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 74266385512
	for <usrp-users@lists.ettus.com>; Fri, 28 Jun 2024 00:44:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719549880; bh=7OzN3YjCxZamPGTDwlMl6HOqGuzxqxF/Ow0Sr8FuyeM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=jbwevq3d4PdqGdWt+Ft1JJwlIWAqmUteDghVcdF36J9wEx4OE9Np9mUdtTQE7Pe9w
	 4mECj6DCGmPjXTLIfT543DhbcwVMpuXv1CoiufW7CQndRcvqmcC4B6Kko8uQSPsrIR
	 n+ztoIRI+hIweVYhc8DN8GLNFL2cqelN4vcuOnCdDFc4Tmtk6/zomiOxCUWepYOdsm
	 BBDQt65KKg0UYwGTnbWOQ6Dqcsv2N2kp8gZeZ7sASa5Rn3JvTHWyLwEiyP2wp+pPtU
	 U0MsvdqMPHiLpqdd47nqC5fXuOM4TwW03KPlZW2ZZBf7WwU0nPKhUkk80Zk8qaest/
	 A3AP3Ap0PCRgw==
Date: Fri, 28 Jun 2024 04:44:40 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <RmAlOPxmfbUJYH2Mizc2jE284ofJ3IvOUGkMgjpElg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: BtVEkT0z4bSk5R5pCzMltQsO7rnZGHok8apyWinrz6o@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: OWVAMD6QJRFYI26EIYKIPSRCLIHEOSFR
X-Message-ID-Hash: OWVAMD6QJRFYI26EIYKIPSRCLIHEOSFR
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OWVAMD6QJRFYI26EIYKIPSRCLIHEOSFR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3547521251712814294=="

This is a multi-part message in MIME format.

--===============3547521251712814294==
Content-Type: multipart/alternative;
 boundary="b1_RmAlOPxmfbUJYH2Mizc2jE284ofJ3IvOUGkMgjpElg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_RmAlOPxmfbUJYH2Mizc2jE284ofJ3IvOUGkMgjpElg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Here is some interesting info that I could not explain. =20

* **Ran on server at 200Msps, got S=E2=80=99s with uhd thread priority at=
 0.90**

* **Ran on server at 100Msps, got S=E2=80=99s with uhd thread priority at=
 0.90**

* **Ran on server at 6.25Msps, got S=E2=80=99s with uhd thread priority a=
t 0.90**

Why would I get S=E2=80=99s at 6.25Msps boggles my mind.  This is the 192=
.168.30.2 address.

Then on the USRP PC (I think you called it a SOM), keeping mind this is a=
 2974, with IP 192.168.40.2 address.  Remember this is an internal switch=
.

* **Ran on USRP PC at 200Msps, got U=E2=80=99s with uhd thread priority a=
t 0.90**

* **Ran on USRP PC at 100Msps, no U=E2=80=99s after 12 min with uhd threa=
d priority at 0.90**

Notice NO U=E2=80=99s for 100Msps.

**While doing this, I noticed some odd behavior.**=C2=A0 With Tx running =
on 40.2 (the USRP PC), I could not start a test on 30.2 (on the server).=C2=
=A0 30.2 would give an error

Error: LookupError: KeyError: No devices found for ----->

Empty Device Address

Also doing this:  uhd_usrp_probe

\[INFO\] \[UHD\] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0

Error: LookupError: KeyError: No devices found for ----->

Empty Device Address

They should run independently?

--b1_RmAlOPxmfbUJYH2Mizc2jE284ofJ3IvOUGkMgjpElg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Here is some interesting info that I could not explain.  </p><ul><li><p>=
<strong>Ran on server at 200Msps, got S=E2=80=99s with uhd thread priority =
at 0.90</strong></p></li><li><p><strong>Ran on server at 100Msps, got S=
=E2=80=99s with uhd thread priority at 0.90</strong></p></li><li><p><strong=
>Ran on server at 6.25Msps, got S=E2=80=99s with uhd thread priority at 0.9=
0</strong></p></li></ul><p>Why would I get S=E2=80=99s at 6.25Msps boggles =
my mind.  This is the 192.168.30.2 address.</p><p><br></p><p>Then on the US=
RP PC (I think you called it a SOM), keeping mind this is a 2974, with IP 1=
92.168.40.2 address.  Remember this is an internal switch.</p><ul><li><p><s=
trong>Ran on USRP PC at 200Msps, got U=E2=80=99s with uhd thread priority a=
t 0.90</strong></p></li><li><p><strong>Ran on USRP PC at 100Msps, no U=
=E2=80=99s after 12 min with uhd thread priority at 0.90</strong></p></li><=
/ul><p>Notice NO U=E2=80=99s for 100Msps.</p><p><strong>While doing this, I=
 noticed some odd behavior.</strong>&nbsp; With Tx running on 40.2 (the USR=
P PC), I could not start a test on 30.2 (on the server).&nbsp; 30.2 would g=
ive an error</p><p>Error: LookupError: KeyError: No devices found for -----=
&gt;</p><p>Empty Device Address</p><p>Also doing this:  uhd_usrp_probe</p><=
p>[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0</p><p=
>Error: LookupError: KeyError: No devices found for -----&gt;</p><p>Empty D=
evice Address</p><p>They should run independently?</p><p><br><br></p><p><br=
></p><p><br></p>

--b1_RmAlOPxmfbUJYH2Mizc2jE284ofJ3IvOUGkMgjpElg--

--===============3547521251712814294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3547521251712814294==--
