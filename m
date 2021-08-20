Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 310CC3F24D5
	for <lists+usrp-users@lfdr.de>; Fri, 20 Aug 2021 04:38:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 76F9238465F
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 22:38:44 -0400 (EDT)
Received: from smtp93.ord1d.emailsrvr.com (smtp93.ord1d.emailsrvr.com [184.106.54.93])
	by mm2.emwd.com (Postfix) with ESMTPS id F3C3B384475
	for <USRP-users@lists.ettus.com>; Thu, 19 Aug 2021 22:38:02 -0400 (EDT)
X-Auth-ID: epoletaev@i-blades.com
Received: by smtp4.relay.ord1d.emailsrvr.com (Authenticated sender: epoletaev-AT-i-blades.com) with ESMTPSA id E398A400AB
	for <USRP-users@lists.ettus.com>; Thu, 19 Aug 2021 22:38:01 -0400 (EDT)
Date: Fri, 20 Aug 2021 09:37:52 +0700
From: Ernest Poletaev <epoletaev@i-blades.com>
To: USRP-users@lists.ettus.com
Message-ID: <1b996e1a-0459-4785-a783-dfc70eea7dd3@Spark>
References: <3b8d8d34-d94e-4572-a165-c441678fe8ca@Spark>
X-Readdle-Message-ID: 1b996e1a-0459-4785-a783-dfc70eea7dd3@Spark
MIME-Version: 1.0
X-Classification-ID: c5190332-981c-4ba4-82b6-7c55520cc713-1-1
Message-ID-Hash: Z46KMG2BANVT5I2XZUGE5C56U6DO2MAE
X-Message-ID-Hash: Z46KMG2BANVT5I2XZUGE5C56U6DO2MAE
X-MailFrom: epoletaev@i-blades.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] libUHD Crash on USB disconnect
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z46KMG2BANVT5I2XZUGE5C56U6DO2MAE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4668221691474169853=="

--===============4668221691474169853==
Content-Type: multipart/alternative; boundary="611f1586_721da317_24c"

--611f1586_721da317_24c
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hello,

I'm trying to get rid of crash when device is disconnected from USB durin=
g operation.

Reproduced on libuhd 3.x as well on latest release.

In stack it seems error occurs during destructor and probably caused by i=
ncorrect memory releasing.

Stack:=C2=A0https://i.imgur.com/jMnMKsx.png

It seems there is issue on GitHub=C2=A0https://github.com/EttusResearch/u=
hd/issues/68=C2=A0that related to the problem.

Issue was opened in 2016 and still not fixed.

I understand that if you have SDR application that terminated when you di=
sconnect device it feels almost OK.
In my case my app doing many other things aside of SDR and crashing whole=
 app is not an option.

Any idea how this can be fixed=3F

Best Regards,
Ernest

--611f1586_721da317_24c
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Hello,<br />
<br />
I'm trying to get rid of crash when device is disconnected from USB durin=
g operation.<br />
<br />
Reproduced on libuhd 3.x as well on latest release.<br />
<br />
In stack it seems error occurs during destructor and probably caused by i=
ncorrect memory releasing.<br />
<br />
Stack:&=23160;<a href=3D=22https://i.imgur.com/jMnMKsx.png=22 target=3D=22=
=5Fblank=22>https://i.imgur.com/jMnMKsx.png</a><br />
<br />
It seems there is issue on GitHub&=23160;<a href=3D=22https://github.com/=
EttusResearch/uhd/issues/68=22 target=3D=22=5Fblank=22>https://github.com=
/EttusResearch/uhd/issues/68</a>&=23160;that related to the problem.<br /=
>
<br />
Issue was opened in 2016 and still not fixed.<br />
<br />
I understand that if you have SDR application that terminated when you di=
sconnect device it feels almost OK.<br />
In my case my app doing many other things aside of SDR and crashing whole=
 app is not an option.<br />
<br />
Any idea how this can be fixed=3F</div>
</div>
<div name=3D=22messageSignatureSection=22><br />
<div class=3D=22match=46ont=22>
<div dir=3D=22auto=22>Best Regards,
<div dir=3D=22auto=22>Ernest</div>
</div>
</div>
</div>
</body>
</html>

--611f1586_721da317_24c--

--===============4668221691474169853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4668221691474169853==--
