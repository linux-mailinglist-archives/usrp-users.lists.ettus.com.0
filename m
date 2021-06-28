Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 940AB3B6801
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jun 2021 19:57:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30B9B38464C
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jun 2021 13:57:10 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 020C938404C
	for <usrp-users@lists.ettus.com>; Mon, 28 Jun 2021 13:56:15 -0400 (EDT)
Date: Mon, 28 Jun 2021 17:56:15 +0000
To: usrp-users@lists.ettus.com
From: rblack@swri.org
Message-ID: <a3PVJC5fGD8T0XE9NVw3i5mX2V7LWW3xIeM53XvVg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 60D4B1DC.9000303@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 37HSRVIYF45BP7FXDVLOPPT7VX3FMEZO
X-Message-ID-Hash: 37HSRVIYF45BP7FXDVLOPPT7VX3FMEZO
X-MailFrom: rblack@swri.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc radio transmit control
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/37HSRVIYF45BP7FXDVLOPPT7VX3FMEZO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5527285988500767337=="

This is a multi-part message in MIME format.

--===============5527285988500767337==
Content-Type: multipart/alternative;
 boundary="b1_a3PVJC5fGD8T0XE9NVw3i5mX2V7LWW3xIeM53XvVg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_a3PVJC5fGD8T0XE9NVw3i5mX2V7LWW3xIeM53XvVg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi and thanks.  The reference was a good read,  but I don=E2=80=99t think=
 it quite covers my application.  It describes how to send commands to th=
e Radio Block to initiate transmission at a specific precise time.  But I=
 need to repeatedly gate the transmit signal on/off very rapidly (microse=
c),  and it does not seem like the radio block command que is appropriate=
 for that?

What I=E2=80=99m talking about could be done with a modulation block in t=
he normal UHD,  but in RFnoc for UHD 4.0 I think there are only a few blo=
cks supported. =20

Any ideas?

thanks rb

--b1_a3PVJC5fGD8T0XE9NVw3i5mX2V7LWW3xIeM53XvVg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi and thanks.  The reference was a good read,  but I don=E2=80=99t th=
ink it quite covers my application.  It describes how to send commands to=
 the Radio Block to initiate transmission at a specific precise time.  Bu=
t I need to repeatedly gate the transmit signal on/off very rapidly (micr=
osec),  and it does not seem like the radio block command que is appropri=
ate for that?</p><p>What I=E2=80=99m talking about could be done with a m=
odulation block in the normal UHD,  but in RFnoc for UHD 4.0 I think ther=
e are only a few blocks supported.  </p><p>Any ideas?</p><p><br></p><p>th=
anks rb</p>


--b1_a3PVJC5fGD8T0XE9NVw3i5mX2V7LWW3xIeM53XvVg--

--===============5527285988500767337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5527285988500767337==--
