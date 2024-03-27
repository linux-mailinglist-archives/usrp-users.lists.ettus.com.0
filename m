Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4B588EFC7
	for <lists+usrp-users@lfdr.de>; Wed, 27 Mar 2024 21:04:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5DA753867A6
	for <lists+usrp-users@lfdr.de>; Wed, 27 Mar 2024 16:04:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711569897; bh=BJoP2Qsw17D2C5o+pb5M7sRQdZdfGspUszhihTbL+Xs=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=nlH4NWMapkGA/fy95T+Ww7X2UyBFI+i5q/D09zAzF+acjQZPKs3S6RDeofM6QYpDD
	 tsKokpwajycFgqNiTj/Szg9c1Ao9hps12DP/8Zxta/TKU+re7zp7kT3uBCp9XmsHwZ
	 g8ZxS13JM7U/pbtZsUMGSXnDuKE2sKfy/nNZqb4pjEpQy0SAEQlEr/E51yMxwlesw6
	 CCJUnFqxOEgMaDudK/UzwwZNOAuB5ecxcqXSR2dRbxBw/kWB8PsNXQOt02LR3yB964
	 POuOy+2uhFZ/h5mrWRSP4sMtNgBkTb0o6LHMtsQmV2dMgTnlHkejh0yfHARe9sY9Ph
	 ArPYY8bN+D4EA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1510C385C62
	for <usrp-users@lists.ettus.com>; Wed, 27 Mar 2024 16:04:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711569882; bh=hm0XCVV6jEZL3ZNaImDSxS6lFMFg+LqIuRQCN37PvXU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=kbXNNlnrLQaVi6NYOfUD0YxYoXwTtyqbl2KH7VzbFPWKsu34mbhR7zvepx6BDIimD
	 x8DJBlfYct4Tof5723WENfEIDPyKeqafC5+1SiGCP1oBhjz/2tbwQwhho7DTM9yrVh
	 CktUgdmJqBgdeUi0meD0iuP+ZDUONTW3SYMOlL5ca65kS41bzF/o1Iz8vuw19K3XM+
	 u6GAenF50BXTxZaahtoZdoj2lwMA3yY82FYwJN4Mi7fOEz+q209nstwdjABLUuG2Xc
	 yT5HoW5XeIQ0WLMkEsoDLm0dvhpqx6LOZ+xREdWYqI5ebXONdHF3eSec/3c5KaTAt1
	 zRjZc3KvZLyLw==
Date: Wed, 27 Mar 2024 20:04:42 +0000
To: usrp-users@lists.ettus.com
Message-ID: <uc6mjxsRLSVW35mQTMhRDfQe6Z0yI25dq3rsx7IHg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=iRArTvaQ0igauyN0gD_43Jt_d997T4-mW8Th0QHTkGBw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: SCZHAODURUDTDDOXNU5FK7WRG64JURLS
X-Message-ID-Hash: SCZHAODURUDTDDOXNU5FK7WRG64JURLS
X-MailFrom: chris.pineda@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unable to Simulate RFNoC FFT Module in Questa/Modelsim
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SCZHAODURUDTDDOXNU5FK7WRG64JURLS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "chris.pineda--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: chris.pineda@chaosinc.com
Content-Type: multipart/mixed; boundary="===============6813600040352752462=="

This is a multi-part message in MIME format.

--===============6813600040352752462==
Content-Type: multipart/alternative;
 boundary="b1_uc6mjxsRLSVW35mQTMhRDfQe6Z0yI25dq3rsx7IHg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_uc6mjxsRLSVW35mQTMhRDfQe6Z0yI25dq3rsx7IHg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99ve tried `make modelsim` and it has the same issue. That=E2=80=99=
s interesting that you=E2=80=99re able to get it to work.=20

\
Do you mind if I ask what version of ModelSim/Questa you=E2=80=99re using=
? Also to confirm that you=E2=80=99re using Vivado 2021.1 with the AR pat=
ch? And lastly if it=E2=80=99s at all possible to share what=E2=80=99s in=
 your library section? I=E2=80=99m definitely at a loss for why I=E2=80=99=
m having these issues despite having seemingly set it up correctly.=20

Thank you!

--b1_uc6mjxsRLSVW35mQTMhRDfQe6Z0yI25dq3rsx7IHg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99ve tried <code>make modelsim</code> and it has the same issu=
e. That=E2=80=99s interesting that you=E2=80=99re able to get it to work.=
 </p><p><br>Do you mind if I ask what version of ModelSim/Questa you=E2=80=
=99re using? Also to confirm that you=E2=80=99re using Vivado 2021.1 with=
 the AR patch? And lastly if it=E2=80=99s at all possible to share what=E2=
=80=99s in your library section? I=E2=80=99m definitely at a loss for why=
 I=E2=80=99m having these issues despite having seemingly set it up corre=
ctly. </p><p><br></p><p>Thank you! </p>


--b1_uc6mjxsRLSVW35mQTMhRDfQe6Z0yI25dq3rsx7IHg--

--===============6813600040352752462==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6813600040352752462==--
