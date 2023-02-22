Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3F369F92C
	for <lists+usrp-users@lfdr.de>; Wed, 22 Feb 2023 17:40:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F626380A71
	for <lists+usrp-users@lfdr.de>; Wed, 22 Feb 2023 11:40:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677084030; bh=n2OFoRjY93NlvarLWhMOnOKf90FxDAt7EyBCIDlU/o4=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=NMnVh7UKdGA0FVubn8d14/0THjRJrhjLJR0QmfRS0mStsXOF9xAAdy5099e0A95RD
	 02qwBkaOnrnhIWBeMoZUd1lbuA8zygavLJOzdlD1t5lv7kK+H+kmuFWE9rSYQlJO1T
	 I5xQ6iS+HmSEgAqkddTIO/Kzl2fWVLCAXbH7eTbhkMg+pSzOyvKhBy2Lhy0ZoHOYlB
	 A4DXqLJ2BFC8nntoN52aJzfeXz8ckBhH8PZhoP5vsec9dY7oK1fIf08VwIXlFLQguO
	 WQPsjcPyUVUhAV+sO7DLxTlfx/LOaePzv1Dkg6RXNJvw8ItviXn9R8mxbUuqGI9Sdg
	 Pr+3vS38AHBMw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28F23380A71
	for <usrp-users@lists.ettus.com>; Wed, 22 Feb 2023 11:40:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677084025; bh=cm2RvHaCyoi9Xl3rEBu03l4dvIFML+NwyEXwvfkw0No=;
	h=Date:To:From:Subject:From;
	b=zGg9AYJ6c6F59IjpKTPfXjZ2Pd3V9LFpYxmtwGalYmiSY47odOTTgJVu3OWS8P5qW
	 ESt9MP0S2ydVFXiF4jtcoFfpVRp9v4T9fZ+XIRhAzmhvdzgo4HYLL2C+8RRdHtHqua
	 I6GesLDVoJIsoVRDTx7HEfXZgmDRD6AcLKS+yTi/Fyo/eV2UXPQDfS6Gxmrd12Nkjl
	 5rHgpFROYdsbU1T88IKCLMFT2+s63n6LHDPLnKpDgI4lhsXViQ9TIB/y2PNU3whU6R
	 k3WWAZ42tqw4S84Od7hn+UsbqT1Qjb6JvwPEEekZmDICz+kiH9ycKZ2nGDkToNHx+w
	 +6ydKYCL3n6tQ==
Date: Wed, 22 Feb 2023 16:40:25 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <j2wPSNAMd3Z9T2T37cvz7f3f31XugPulpTrYGxolHY8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: LBTVHEJ7FPMFRORCUEKUWT3KKGSVTQ5W
X-Message-ID-Hash: LBTVHEJ7FPMFRORCUEKUWT3KKGSVTQ5W
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Question about test_timed_commands.cpp
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LBTVHEJ7FPMFRORCUEKUWT3KKGSVTQ5W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2947149154540267655=="

This is a multi-part message in MIME format.

--===============2947149154540267655==
Content-Type: multipart/alternative;
 boundary="b1_j2wPSNAMd3Z9T2T37cvz7f3f31XugPulpTrYGxolHY8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_j2wPSNAMd3Z9T2T37cvz7f3f31XugPulpTrYGxolHY8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I have a question regarding one of the uhd api examples.

In =E2=80=9Ctest_timed_commands.cpp=E2=80=9D, there is a comment that say=
s the following for rx streaming=E2=80=A6

`// use a timed command to start a stream at a specific time`

`// this is not the right way start streaming at time x,`

`// but it should approximate it within control RTT/2`

`// setup streaming`

Does this mean using this method is not optimal synchronous TX/RX streami=
ng? Any elaboration is appreciated.

Thanks

Joe

--b1_j2wPSNAMd3Z9T2T37cvz7f3f31XugPulpTrYGxolHY8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I have a question regarding one of the uhd api=
 examples.</p><p><br></p><p>In =E2=80=9Ctest_timed_commands.cpp=E2=80=9D,=
 there is a comment that says the following for rx streaming=E2=80=A6</p>=
<p><code>// use a timed command to start a stream at a specific time</cod=
e></p><p><code>// this is not the right way start streaming at time x,</c=
ode></p><p><code>// but it should approximate it within control RTT/2</co=
de></p><p><code>// setup streaming</code></p><p>Does this mean using this=
 method is not optimal synchronous TX/RX streaming? Any elaboration is ap=
preciated.</p><p>Thanks</p><p>Joe</p>


--b1_j2wPSNAMd3Z9T2T37cvz7f3f31XugPulpTrYGxolHY8--

--===============2947149154540267655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2947149154540267655==--
