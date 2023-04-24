Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A84526ED8B7
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 01:20:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A9B63848D0
	for <lists+usrp-users@lfdr.de>; Mon, 24 Apr 2023 19:20:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682378404; bh=JYJ8zvCXOarH1KwKMnN91DDn1KdIhB4IJXTC4PAWOh0=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=w4OMpnN8V1+adRHW+hj7wgWHb//QvB5YgpRGFqxi9yvYg3M4/KVPZVNKaAVMnA5i9
	 BgrfXoblWpecapmhIAcdM916Hi52xsOOz4WiZznWPMjwTH2BoMoDl7rb/sajdsyoqK
	 SzQstf6JS4jXelR+cxAPQYfW5KwFdiYDUZBZkSZuczk03H4dr0vO+V/QE8W03j9LY4
	 fUO01Pv8kQbTLMSqTb3eAy6f+23nqt2eGg4xODnzQemFw09yvV2mXcG2sfWAjzTKqa
	 a6lNgTFiepgeCfkBu7xvBqiDd5u5oSaLnP9r+UZ6Z8xa8F0FEQpo13c+MP3aqoQbnq
	 XdhUm7gdfjEtg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8CB5E3848B8
	for <usrp-users@lists.ettus.com>; Mon, 24 Apr 2023 19:19:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682378368; bh=FGGsBhoSBL+hgqBD3edVMOXm7qOx6hPxSkRnFL58iuA=;
	h=Date:To:From:Subject:From;
	b=e8dwxTgx9rBGMNyyUtYQy3YRojxLZVPHd+u60/otAbS9dBodns8PuIfW0XhSDfIPv
	 q+j78PF+isvnaazyuNYIK26pe/LnIWuEt/z9CptuDq2vO7ljD6HDCKFTiMxegEFKch
	 5JZHgaqFerDCcZt0VmXbrecY/tS7vzXlNChwphgNTyA9Aek2MnjqpNgkI4n5WbOdJu
	 QKPhg08hkxrJj5JtaW89NbKkJM6hfdoE2S/rRXhJr3Bnzg1I454e1kO40ZVG5wZRFK
	 ttVlXeRANLaFxTRHMteabVE2Ogvh6TZkXvAsN48UuWeYHYX0d+9Faci7YYdWedTtpD
	 MdiTWKpmQ0vIQ==
Date: Mon, 24 Apr 2023 23:19:28 +0000
To: usrp-users@lists.ettus.com
From: nriedel@serranosystems.com
Message-ID: <OFgc6FFKgD1zOd8CDHCF8sg2D0fhtv18cMTDf46Q@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: TWH67MRR252DK3QHKCDG2R5G6ZOAA74Q
X-Message-ID-Hash: TWH67MRR252DK3QHKCDG2R5G6ZOAA74Q
X-MailFrom: nriedel@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Multicast support on x300/x310 with UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TWH67MRR252DK3QHKCDG2R5G6ZOAA74Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1775484068959505452=="

This is a multi-part message in MIME format.

--===============1775484068959505452==
Content-Type: multipart/alternative;
 boundary="b1_OFgc6FFKgD1zOd8CDHCF8sg2D0fhtv18cMTDf46Q"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_OFgc6FFKgD1zOd8CDHCF8sg2D0fhtv18cMTDf46Q
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

We would like to have several workstations processing data from a single =
X300 or X310 USRP.

Does UHD support streaming to a multicast destination with the X300/X310 =
devices?  =20

What needs to be done on the =E2=80=9Cremote=E2=80=9D devices to receive =
the multicast data?  There is a description of setting up remote streamin=
g (with unicast data) here: https://files.ettus.com/manual/page_stream.ht=
ml#stream_remote

However, it is not clear from the description what should be run on the r=
emote devices to actually receive the data.

Thank you!

Neal Riedel

--b1_OFgc6FFKgD1zOd8CDHCF8sg2D0fhtv18cMTDf46Q
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>We would like to have several workstations processing data f=
rom a single X300 or X310 USRP.</p><p>Does UHD support streaming to a mul=
ticast destination with the X300/X310 devices?   </p><p>What needs to be =
done on the =E2=80=9Cremote=E2=80=9D devices to receive the multicast dat=
a?  There is a description of setting up remote streaming (with unicast d=
ata) here: https://files.ettus.com/manual/page_stream.html#stream_remote<=
/p><p>However, it is not clear from the description what should be run on=
 the remote devices to actually receive the data.</p><p>Thank you!</p><p>=
Neal Riedel</p><p><br></p>


--b1_OFgc6FFKgD1zOd8CDHCF8sg2D0fhtv18cMTDf46Q--

--===============1775484068959505452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1775484068959505452==--
