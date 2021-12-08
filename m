Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D0546DCDA
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 21:16:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8EBC4384883
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 15:16:04 -0500 (EST)
Received: from mail.egr.msu.edu (boomhauer.egr.msu.edu [35.9.37.164])
	by mm2.emwd.com (Postfix) with ESMTPS id D7CB9384438
	for <usrp-users@lists.ettus.com>; Wed,  8 Dec 2021 15:15:00 -0500 (EST)
Received: from boomhauer (localhost [127.0.0.1])
	by mail.egr.msu.edu (Postfix) with ESMTP id 09FAABD873
	for <usrp-users@lists.ettus.com>; Wed,  8 Dec 2021 15:15:00 -0500 (EST)
X-Virus-Scanned: amavisd-new at egr.msu.edu
Received: from mail.egr.msu.edu ([127.0.0.1])
	by boomhauer (boomhauer.egr.msu.edu [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YwED-PI9GgMx for <usrp-users@lists.ettus.com>;
	Wed,  8 Dec 2021 15:14:59 -0500 (EST)
Received: from EGR authenticated sender merlojas
From: Jason Merlo <merlojas@egr.msu.edu>
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
Message-Id: <B67BC271-3FD1-4728-ACFC-B1F0B655662C@egr.msu.edu>
Date: Wed, 8 Dec 2021 15:14:59 -0500
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3693.20.0.1.32)
Message-ID-Hash: TL2K4NI4V6EBER45VWIUUTONWHPVO73N
X-Message-ID-Hash: TL2K4NI4V6EBER45VWIUUTONWHPVO73N
X-MailFrom: merlojas@egr.msu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] In-place Local Clock Update
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TL2K4NI4V6EBER45VWIUUTONWHPVO73N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5503521557880056285=="


--===============5503521557880056285==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_EB24ED23-72FE-4935-B2EA-D147099E7DCB"


--Apple-Mail=_EB24ED23-72FE-4935-B2EA-D147099E7DCB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi All,

I=E2=80=99m currently working to synchronize multiple X310=E2=80=99s =
clocks without a PPS input, however right now the best method I can find =
to update the clock from a host PC (using the C++ API) is to query the =
current time from the USRP device (using =
usrp::multi_usrp::get_time_now), add a time delta to the current time, =
then send back the new clock time to the USRP device (using =
usrp::multi_usrp::set_time_now).  Unfortunately, this method introduces =
large timing errors due to the nondeterministic nature of packet =
processing on both he CPU and network stack.

I=E2=80=99m wondering if anyone knows of any other techniques for an =
"in-place" time update. I.e., is there a method for the host PC to send =
a time delta to the USRP which would be added to the clock register in a =
single operation?

I see there are other get/set_time_now functions in the =
rfnoc::mb_control and rfnoc::radio_control  classes, but I=E2=80=99m not =
sure if these would allow me to accomplish this using only the C++ API. =
I can=E2=80=99t seem to find much documentation on this aside from the =
examples in the =E2=80=9Cuhd/host/examples/rfnoc*=E2=80=9D folder.

If it=E2=80=99s not possible to accomplish this using a purely C++ =
approach, is it possible to do this through a custom RFNoC block?  I =
don=E2=80=99t have experience with RFNoC at the moment and I=E2=80=99m =
not sure if that register is exposed to user blocks, or if so, if the =
register update would be deterministic in time, but if there=E2=80=99s =
motivation I would be willing go down the RFNoC path.

Thanks in advance,
Jason=

--Apple-Mail=_EB24ED23-72FE-4935-B2EA-D147099E7DCB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Hi =
All,<div class=3D""><br class=3D""></div><div class=3D"">I=E2=80=99m =
currently working to synchronize multiple X310=E2=80=99s clocks without =
a PPS input, however right now the best method I can find to update the =
clock from a host PC (using the C++ API) is to query the current time =
from the USRP device (using <font face=3D"Menlo" =
class=3D"">usrp::multi_usrp::get_time_now</font>), add a time delta to =
the current time, then send back the new clock time to the USRP device =
(using&nbsp;<span style=3D"font-family: Menlo;" =
class=3D"">usrp::multi_usrp::set_time_now</span>). &nbsp;Unfortunately, =
this method introduces large timing errors due to the nondeterministic =
nature of packet processing on both he CPU and network stack.</div><div =
class=3D""><br class=3D""></div><div class=3D"">I=E2=80=99m wondering if =
anyone knows of any other techniques for an "in-place" time update. =
I.e., is there a method for the host PC to send a time delta to the USRP =
which would be added to the clock register in a single =
operation?</div><div class=3D""><br class=3D""></div><div class=3D"">I =
see there are other&nbsp;<span style=3D"font-family: Menlo;" =
class=3D"">get/set_time_now</span>&nbsp;functions in the <font =
face=3D"Menlo" class=3D"">rfnoc::mb_control</font> and <font =
face=3D"Menlo" class=3D"">rfnoc::radio_control</font>&nbsp; classes, but =
I=E2=80=99m not sure if these would allow me to accomplish this using =
only the C++ API. I can=E2=80=99t seem to find much documentation on =
this&nbsp;aside from the examples in the =E2=80=9Cuhd/host/examples/rfnoc*=
=E2=80=9D folder.</div><div class=3D""><br class=3D""></div><div =
class=3D"">If it=E2=80=99s not possible to accomplish this using a =
purely C++ approach, is it possible to do this through a custom RFNoC =
block? &nbsp;I don=E2=80=99t have experience with RFNoC at the moment =
and I=E2=80=99m not sure if that register is exposed to user blocks, or =
if so, if the register update would be deterministic in time, but if =
there=E2=80=99s motivation I would be willing go down the RFNoC =
path.</div><div class=3D""><br class=3D""></div><div class=3D"">Thanks =
in advance,</div><div class=3D"">Jason</div></body></html>=

--Apple-Mail=_EB24ED23-72FE-4935-B2EA-D147099E7DCB--

--===============5503521557880056285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5503521557880056285==--
