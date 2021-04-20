Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 646BE366162
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 23:08:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68E643846E3
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 17:08:10 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D451C3843F7
	for <usrp-users@lists.ettus.com>; Tue, 20 Apr 2021 17:07:16 -0400 (EDT)
Date: Tue, 20 Apr 2021 21:07:16 +0000
To: usrp-users@lists.ettus.com
From: radiogeek381@gmail.com
Message-ID: <qpLiOnc4TVi3Nvvbp9dtrxqlKPw6wcSmNuL05IBiEk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CADjF3PwZ4DQ5aQG7KsKV3=ZMG4zB_2GORZgKb0mBBgV_kwpXqQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: VD2BFMITH7YEHTXF3JGKA5NDCDNF4ZEY
X-Message-ID-Hash: VD2BFMITH7YEHTXF3JGKA5NDCDNF4ZEY
X-MailFrom: radiogeek381@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reflected power on USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VD2BFMITH7YEHTXF3JGKA5NDCDNF4ZEY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2933315300855894641=="

This is a multi-part message in MIME format.

--===============2933315300855894641==
Content-Type: multipart/alternative;
 boundary="b1_qpLiOnc4TVi3Nvvbp9dtrxqlKPw6wcSmNuL05IBiEk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qpLiOnc4TVi3Nvvbp9dtrxqlKPw6wcSmNuL05IBiEk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

With the B210=E2=80=99s noise figure, you=E2=80=99re going to want a pre-=
amp in the line near the antenna anyway.=20

It is worth considering how you want to do that plumbing. =20

With my 10GHz transceivers, I run independent RX and TX lines up to the f=
eed.  The preamp takes the beating (though the isolation on my TX/RX swit=
ch is a bit better and I=E2=80=99m running 15dB lower power).  At least i=
f I blow up a preamp (happened once in 15 years) it is easy to replace co=
mpared to fixing the UBX or B210.=20

Also, it is surprising that the uplink and downlink frequencies are even =
in the same band.  Are you sure of the frequencies?  If so, I=E2=80=99d b=
e curious (as in I=E2=80=99d like to learn) as to what system requirement=
 led to that design choice.

--b1_qpLiOnc4TVi3Nvvbp9dtrxqlKPw6wcSmNuL05IBiEk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>With the B210=E2=80=99s noise figure, you=E2=80=99re going to want a p=
re-amp in the line near the antenna anyway. </p><p>It is worth considerin=
g how you want to do that plumbing.  </p><p>With my 10GHz transceivers, I=
 run independent RX and TX lines up to the feed.  The preamp takes the be=
ating (though the isolation on my TX/RX switch is a bit better and I=E2=80=
=99m running 15dB lower power).  At least if I blow up a preamp (happened=
 once in 15 years) it is easy to replace compared to fixing the UBX or B2=
10. </p><p>Also, it is surprising that the uplink and downlink frequencie=
s are even in the same band.  Are you sure of the frequencies?  If so, I=E2=
=80=99d be curious (as in I=E2=80=99d like to learn) as to what system re=
quirement led to that design choice.</p><p><br></p>


--b1_qpLiOnc4TVi3Nvvbp9dtrxqlKPw6wcSmNuL05IBiEk--

--===============2933315300855894641==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2933315300855894641==--
