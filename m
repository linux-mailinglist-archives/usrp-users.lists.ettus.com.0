Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66ACA3AA9DD
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 06:21:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30BD838458E
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 00:21:55 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B93E13841EE
	for <usrp-users@lists.ettus.com>; Thu, 17 Jun 2021 00:21:01 -0400 (EDT)
Date: Thu, 17 Jun 2021 04:21:01 +0000
To: usrp-users@lists.ettus.com
From: dave_abel@bigpond.com
Message-ID: <PO2av3sUZRGh6fK5mmcEZe8OTc5iT8xTvE6VzsBxjfc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: IJ5Q7EC6N4QSYV4MPFVBJVR5J6CWTHSA
X-Message-ID-Hash: IJ5Q7EC6N4QSYV4MPFVBJVR5J6CWTHSA
X-MailFrom: dave_abel@bigpond.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B205mini 10 MHz reference
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IJ5Q7EC6N4QSYV4MPFVBJVR5J6CWTHSA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8617626831956020709=="

This is a multi-part message in MIME format.

--===============8617626831956020709==
Content-Type: multipart/alternative;
 boundary="b1_PO2av3sUZRGh6fK5mmcEZe8OTc5iT8xTvE6VzsBxjfc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_PO2av3sUZRGh6fK5mmcEZe8OTc5iT8xTvE6VzsBxjfc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m confused by the specs for the 10 MHz reference for the B205mi=
ni.

 In kb.ettus.com/B200/B210/B200mini/B205mini#Timing_Reference_Input, and =
in the schematics, the minimum level is specified as 0/1.8V minimum and t=
he maximum 0/5V.   The limits are also given as 10 dBm to 27 dBm.

27 dBm into a 50 ohm load translates to 5Vrms, 7.07 V peak, 14.15 Vpp.

10 dBm translates to 0.7 Vrms, 0.99 Vpeak, 2.00 Vpp.

A 17 dB difference in power (between 27 dBm and 10 dBm) indicates a volta=
ge ratio of about 7. =20

What am I getting wrong, please?

Thanks.

Dave

--b1_PO2av3sUZRGh6fK5mmcEZe8OTc5iT8xTvE6VzsBxjfc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99m confused by the specs for the 10 MHz reference for the B20=
5mini.</p><p> In kb.ettus.com/B200/B210/B200mini/B205mini#Timing_Referenc=
e_Input, and in the schematics, the minimum level is specified as 0/1.8V =
minimum and the maximum 0/5V.   The limits are also given as 10 dBm to 27=
 dBm.</p><p>27 dBm into a 50 ohm load translates to 5Vrms, 7.07 V peak, 1=
4.15 Vpp.</p><p>10 dBm translates to 0.7 Vrms, 0.99 Vpeak, 2.00 Vpp.</p><=
p>A 17 dB difference in power (between 27 dBm and 10 dBm) indicates a vol=
tage ratio of about 7.  </p><p>What am I getting wrong, please?</p><p>Tha=
nks.</p><p>Dave</p>


--b1_PO2av3sUZRGh6fK5mmcEZe8OTc5iT8xTvE6VzsBxjfc--

--===============8617626831956020709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8617626831956020709==--
