Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D3CAE01A2
	for <lists+usrp-users@lfdr.de>; Thu, 19 Jun 2025 11:23:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 25AE4385DD2
	for <lists+usrp-users@lfdr.de>; Thu, 19 Jun 2025 05:23:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750325037; bh=A4FnlBQpS7J6kr0NMt4o++nfXIk8sxR1kfcrxORq4Bw=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=aknqjG7T2Z91Mtiw7ZzPZDFOmSsDPFBl6Kwocrd/3GhwFq9pErhiqN4nDA5VEX/Ll
	 FhUd1KQApejwdgoDWHzG++21GS3SY9/aMpT/sjb74Xjeh4jW5y3CXJfLPPJE2idFwp
	 t0AmprwhOtT9UxrxqDLhCeI1clLjpFcgKCb/XUwTYwTdhVAUlsC/ybXexI7nhKH2rI
	 ppXzbkIkbmH66IsVXmdyM5Mkw9NbEMRc8O85hZpGgqIl05ihiKKNWmW0/tY+GirOVx
	 +PmTQqyQDuyLjjXbD/29wtuvQjSVo3e/M8NnD+nC1HOycAtULwnNE4lwrKbtQERfyL
	 4sMB2f26/unug==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0065B385E85
	for <usrp-users@lists.ettus.com>; Thu, 19 Jun 2025 05:22:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750324977; bh=rgC5R9NhXPEPa3ay13SF1R55cRifJfc/+1lXj2reK1g=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=NWd+oWR+Fak8OXLZbw+SIHatbDRnow4JFNEAyMQ7IpzchYtmCcQZzyDPe7UrVkq3s
	 mZ/ZD7G8AUsK0z5dPDXY0v5UNwBqMJB+1FYL0BkwirZ6N0/7Lzd4ylqsl0xcMkTu66
	 YVzrR9iAMLScrGRWRfFjlAIrIIQLZuaKsEcJ3c5EYl23bU9HJaYLL3A2jYKRDLVjS1
	 gtpymp2Og1hAxcyOkzFXYTmnUFNlHW7nsr8d4bhL+vkGX97iVS7PQqAyeDxhrL6pDI
	 H8/XSg+IGHZe4BsB0Aqsmn+ruXcC5QTODZ/ZBkfDA0N9ZnQolsZggrRzzwxOduXdLf
	 +2Ku8HBQzFZ2g==
Date: Thu, 19 Jun 2025 09:22:56 +0000
To: usrp-users@lists.ettus.com
Message-ID: <dC7lvBbZDtR0JMSFyDVvrCdbj0Ki1p95dnOSsPfY0c@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 1162576844.1012378.1750260050258@mail.yahoo.com
MIME-Version: 1.0
Message-ID-Hash: JLTMUAVBTWL2FKCZ3VH4NQRTURJQQN6P
X-Message-ID-Hash: JLTMUAVBTWL2FKCZ3VH4NQRTURJQQN6P
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ADC Self Cal in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JLTMUAVBTWL2FKCZ3VH4NQRTURJQQN6P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============4123584892129739792=="

This is a multi-part message in MIME format.

--===============4123584892129739792==
Content-Type: multipart/alternative;
 boundary="b1_dC7lvBbZDtR0JMSFyDVvrCdbj0Ki1p95dnOSsPfY0c"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_dC7lvBbZDtR0JMSFyDVvrCdbj0Ki1p95dnOSsPfY0c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,\
\
How are you setting your clock/time source?\
\
If you are setting the clock/time source using the \`set_clock_source()\`=
 or \`set_time_source()\` function to set your external sources, you migh=
t want to try setting these via the [device arguments](https://uhd.readth=
edocs.io/en/latest/page_usrp_x4xx.html#x4xx_usage_args) when opening your=
 USRP session (MultiUSRP or RFNoC).\
\
For example use something like this : =E2=80=9Caddr=3D<IP of your x410>,c=
lock_source=3Dexternal,time_source=3Dexternal=E2=80=9C\
\
The reason for this is, that if you open a session without giving these d=
evice arguments, the session will be established with default arguments, =
which for the clock and time source are \`internal\`(unless otherwise spe=
cified in the mpm.conf).

Then, once you change the clock settings to external after the session al=
ready has been established, it will reinitialize with the new settings. T=
his could potentially be where the two calibrations you are seeing are co=
ming from.\
\
Regards,\
\
Niels.

---

zhou wrote:

> Hello Community,
> I have two X410s with UHD 4.5. They are sync with an OctoClock, so I am=
 using external clock and time.The problem is that whenever I start a tes=
t, X410s do ADC self calibration twice, in the 1st time, they calibrate w=
ith internal clock, and the 2nd time is due to my configuration of extern=
al clock. Self cal takes time.
> I need to run the test many times for debug, which means that this self=
 cal is run many times, but all hardware connections and software configu=
rations are not changed in test, so I hope the ADC calibration can be don=
e only once and the cal results can be reused (e.g., save in a file and X=
410s just load them at the beginning of each test). This will save a lot =
of cal time and this is the best solution.
> If not the best, I can accept a suboptimal solution - calibrate once ra=
ther than twice. This means that I need to configure external clock in ma=
ke command. Is it possible to configure make for this purpose?
> Any suggestion will be appreciated.
> Kind regards,H.

--b1_dC7lvBbZDtR0JMSFyDVvrCdbj0Ki1p95dnOSsPfY0c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,<br><br>How are you setting your clock/time source?<br><br>If you are=
 setting the clock/time source using the `set_clock_source()` or `set_time_=
source()` function to set your external sources, you might want to try sett=
ing these via the <a href=3D"https://uhd.readthedocs.io/en/latest/page_usrp=
_x4xx.html#x4xx_usage_args" title=3D"">device arguments</a> when opening yo=
ur USRP session (MultiUSRP or RFNoC).<br><br>For example use something like=
 this : =E2=80=9Caddr=3D&lt;IP of your x410&gt;,clock_source=3Dexternal,tim=
e_source=3Dexternal=E2=80=9C<br><br>The reason for this is, that if you ope=
n a session without giving these device arguments, the session will be esta=
blished with default arguments, which for the clock and time source are `in=
ternal`(unless otherwise specified in the mpm.conf).</p><p>Then, once you c=
hange the clock settings to external after the session already has been est=
ablished, it will reinitialize with the new settings. This could potentiall=
y be where the two calibrations you are seeing are coming from.<br><br>Rega=
rds,<br><br>Niels.<br><br></p><div contenteditable=3D"false" class=3D""><hr=
></div><p>zhou wrote:</p><blockquote><p>Hello Community,
I have two X410s with UHD 4.5. They are sync with an OctoClock, so I am usi=
ng external clock and time.The problem is that whenever I start a test, X41=
0s do ADC self calibration twice, in the 1st time, they calibrate with inte=
rnal clock, and the 2nd time is due to my configuration of external clock. =
Self cal takes time.
I need to run the test many times for debug, which means that this self cal=
 is run many times, but all hardware connections and software configuration=
s are not changed in test, so I hope the ADC calibration can be done only o=
nce and the cal results can be reused (e.g., save in a file and X410s just =
load them at the beginning of each test). This will save a lot of cal time =
and this is the best solution.
If not the best, I can accept a suboptimal solution - calibrate once rather=
 than twice. This means that I need to configure external clock in make com=
mand. Is it possible to configure make for this purpose?
Any suggestion will be appreciated.
Kind regards,H.</p></blockquote><p><br></p>

--b1_dC7lvBbZDtR0JMSFyDVvrCdbj0Ki1p95dnOSsPfY0c--

--===============4123584892129739792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4123584892129739792==--
