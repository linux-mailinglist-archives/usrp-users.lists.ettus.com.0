Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B65983DF816
	for <lists+usrp-users@lfdr.de>; Wed,  4 Aug 2021 00:45:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 91C093845BC
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 18:45:28 -0400 (EDT)
Received: from smtp65.iad3a.emailsrvr.com (smtp65.iad3a.emailsrvr.com [173.203.187.65])
	by mm2.emwd.com (Postfix) with ESMTPS id 8D809384553
	for <usrp-users@lists.ettus.com>; Tue,  3 Aug 2021 18:44:41 -0400 (EDT)
X-Auth-ID: epoletaev@i-blades.com
Received: by smtp17.relay.iad3a.emailsrvr.com (Authenticated sender: epoletaev-AT-i-blades.com) with ESMTPSA id AE29025571
	for <usrp-users@lists.ettus.com>; Tue,  3 Aug 2021 18:44:40 -0400 (EDT)
Date: Wed, 4 Aug 2021 05:44:31 +0700
From: Ernest Poletaev <epoletaev@i-blades.com>
To: usrp-users@lists.ettus.com
Message-ID: <d8016aba-3086-4e85-93e3-14dbfb3020f6@Spark>
References: <72333d5e-c012-437f-9c35-ab5516e5e6ae@Spark>
X-Readdle-Message-ID: d8016aba-3086-4e85-93e3-14dbfb3020f6@Spark
MIME-Version: 1.0
X-Classification-ID: 76fa97fa-3c13-4f92-a436-c51b2b9207d9-1-1
Message-ID-Hash: AQYM4RTHHUP4MRBFJMW7X26TL4E55YGI
X-Message-ID-Hash: AQYM4RTHHUP4MRBFJMW7X26TL4E55YGI
X-MailFrom: epoletaev@i-blades.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Low power mode
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AQYM4RTHHUP4MRBFJMW7X26TL4E55YGI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7640557610353880705=="

--===============7640557610353880705==
Content-Type: multipart/alternative; boundary="6109c6d4_ded7263_229"

--6109c6d4_ded7263_229
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hello,

Power consumption is low until processing is started for the first time after FPGA firmware loaded.
From this point power consumption remains the same even if processing is stopped.

Power cycle will reduce power consumption but result in requiring to load FPGA firmware which is lengthy process.

Is it possible to temporarily reduce B205mini power consumption without requiring to reprogram FPGA?

Using libuhd or with hardware mod or by modifying FPGA source code?

Best Regards,
Ernest

--6109c6d4_ded7263_229
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
<span style=3D=22color:var(--textColor);background-color:var(--background=
Color)=22>Power consumption is low until processing is started for the fi=
rst time after =46PGA firmware loaded.</span><br />
=46rom this point power consumption remains the same even if processing i=
s stopped.<br />
<br />
Power cycle will reduce power consumption but result in requiring to load=
 =46PGA firmware which is lengthy process.<br />
<br />
Is it possible to temporarily reduce B205mini power consumption without r=
equiring to reprogram =46PGA=3F<br />
<br />
Using libuhd or with hardware mod or by modifying =46PGA source code=3F</=
div>
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

--6109c6d4_ded7263_229--

--===============7640557610353880705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7640557610353880705==--
