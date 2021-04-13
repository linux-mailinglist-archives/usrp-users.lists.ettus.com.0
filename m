Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 979E535D877
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 09:06:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3AD4384B5C
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 03:06:02 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ABD5538413B
	for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 03:05:10 -0400 (EDT)
Date: Tue, 13 Apr 2021 07:05:10 +0000
To: usrp-users@lists.ettus.com
From: brendan.horsfield@vectalabs.com
Message-ID: <RtZT7leRyCObeYPJIkfTMN6EQ3TDAuUZHf98J08@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: RVYTN3ENJNPYZRR52IFORIIQRINRL4JD
X-Message-ID-Hash: RVYTN3ENJNPYZRR52IFORIIQRINRL4JD
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Contradictory overflow messages when recording rx samples with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RVYTN3ENJNPYZRR52IFORIIQRINRL4JD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5132075342025916739=="

This is a multi-part message in MIME format.

--===============5132075342025916739==
Content-Type: multipart/alternative;
 boundary="b1_RtZT7leRyCObeYPJIkfTMN6EQ3TDAuUZHf98J08"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_RtZT7leRyCObeYPJIkfTMN6EQ3TDAuUZHf98J08
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,

I am using a Python script to capture a short burst of rx samples from my=
 B210.  The script is based heavily on the Ettus example =E2=80=9Cbenchma=
rk_rate.py=E2=80=9D, with a couple of additional tweaks I took from the E=
ttus GitHub repo (https://github.com/EttusResearch/uhd/blob/master/host/p=
ython/uhd/usrp/multi_usrp.py).

In my script I am calling my rx sampling function repeatedly using a =E2=80=
=9Cfor" loop.  Any errors that occur during sampling are stored in a uhd.=
types.RXMetadata() object, just like in the original Ettus script.  =20

Here=E2=80=99s the strange part:

While the script is running, the letter =E2=80=98O=E2=80=99 is printed on=
 the screen about 50% of the time, which I believe is an overflow warning=
 from the Fastpath logger.  However, the number of errors being detected =
by the RXMetadata() object is almost zero.  How can this be?

Some questions:

* How seriously should I take the Fastpath =E2=80=98O=E2=80=99 warning?  =
What does it actually mean?  Does it mean that this burst of samples will=
 be corrupted/incomplete?

* Why is the RXMetadata object not returning an error every single time t=
hat the Fastpath logger does?=20

Thanks,=20

Brendan.

--b1_RtZT7leRyCObeYPJIkfTMN6EQ3TDAuUZHf98J08
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi All,</p><p>I am using a Python script to capture a short burst of rx =
samples from my B210.  The script is based heavily on the Ettus example =
=E2=80=9Cbenchmark_rate.py=E2=80=9D, with a couple of additional tweaks I t=
ook from the Ettus GitHub repo (https://github.com/EttusResearch/uhd/blob/m=
aster/host/python/uhd/usrp/multi_usrp.py).</p><p>In my script I am calling =
my rx sampling function repeatedly using a =E2=80=9Cfor" loop.  Any errors =
that occur during sampling are stored in a uhd.types.RXMetadata() object, j=
ust like in the original Ettus script.   </p><p>Here=E2=80=99s the strange =
part:</p><p>While the script is running, the letter =E2=80=98O=E2=80=99 is =
printed on the screen about 50% of the time, which I believe is an overflow=
 warning from the Fastpath logger.  However, the number of errors being det=
ected by the RXMetadata() object is almost zero.  How can this be?</p><p>So=
me questions:</p><ul><li><p>How seriously should I take the Fastpath =
=E2=80=98O=E2=80=99 warning?  What does it actually mean?  Does it mean tha=
t this burst of samples will be corrupted/incomplete?</p></li><li><p>Why is=
 the RXMetadata object not returning an error every single time that the Fa=
stpath logger does? </p></li></ul><p>Thanks, </p><p>Brendan.</p>

--b1_RtZT7leRyCObeYPJIkfTMN6EQ3TDAuUZHf98J08--

--===============5132075342025916739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5132075342025916739==--
