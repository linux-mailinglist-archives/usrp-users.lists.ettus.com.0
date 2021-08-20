Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 157793F256F
	for <lists+usrp-users@lfdr.de>; Fri, 20 Aug 2021 05:44:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F028B38495E
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 23:44:48 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA2ED384312
	for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 23:44:01 -0400 (EDT)
Date: Fri, 20 Aug 2021 03:44:01 +0000
To: usrp-users@lists.ettus.com
From: km5es@virginia.edu
Message-ID: <bfZCDMXVdVeHuI0Czwn8fTy7s8HKHSqi6OM71qPAemw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 6e3c64c9-7624-1a0e-94b7-23ff57b6e525@gmail.com
MIME-Version: 1.0
Message-ID-Hash: QSXHC7JJSZPTCGYFYMOCXFUBK24GBI44
X-Message-ID-Hash: QSXHC7JJSZPTCGYFYMOCXFUBK24GBI44
X-MailFrom: km5es@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Frequency synchronization with B205-mini and B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QSXHC7JJSZPTCGYFYMOCXFUBK24GBI44/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0627439311281994085=="

This is a multi-part message in MIME format.

--===============0627439311281994085==
Content-Type: multipart/alternative;
 boundary="b1_bfZCDMXVdVeHuI0Czwn8fTy7s8HKHSqi6OM71qPAemw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_bfZCDMXVdVeHuI0Czwn8fTy7s8HKHSqi6OM71qPAemw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks again for your input. I believe you are referring to measuring the=
 phase between two antenna inputs or polarizations. What I intend to do i=
s different: I need to measure the phase of the antenna beam itself. Ever=
y antenna has a geometrically varying electric-field pattern. Those e-fie=
ld vectors are complex values consisting of both magnitude and phase. We =
need to measure both. Without phase sync between the transmitter and rece=
iver, this measurement would break. The GPSDO=E2=80=99s might work but th=
ey have their own systematics to worry about=E2=80=A6

--b1_bfZCDMXVdVeHuI0Czwn8fTy7s8HKHSqi6OM71qPAemw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks again for your input. I believe you are referring to measuring =
the phase between two antenna inputs or polarizations. What I intend to d=
o is different: I need to measure the phase of the antenna beam itself. E=
very antenna has a geometrically varying electric-field pattern. Those e-=
field vectors are complex values consisting of both magnitude and phase. =
We need to measure both. Without phase sync between the transmitter and r=
eceiver, this measurement would break. The GPSDO=E2=80=99s might work but=
 they have their own systematics to worry about=E2=80=A6</p>


--b1_bfZCDMXVdVeHuI0Czwn8fTy7s8HKHSqi6OM71qPAemw--

--===============0627439311281994085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0627439311281994085==--
