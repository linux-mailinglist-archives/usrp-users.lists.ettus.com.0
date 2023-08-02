Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3C576D46F
	for <lists+usrp-users@lfdr.de>; Wed,  2 Aug 2023 18:59:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BA6DF384BAE
	for <lists+usrp-users@lfdr.de>; Wed,  2 Aug 2023 12:59:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690995546; bh=85GPt6rq8626CjeP6mmdVSQb0Fp0N9HxC/aF4f2T/wA=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MW30LUrMYLqmK/SFqGoEg5N4BmFDfifgfk2x6sGU4UyVYFY1Ig5s1pRkwIWOnPPJQ
	 8F8HXobxlQXWSZiJLrfh4rG+pIRhTwnFe3DHi69MhnJ6A3F8bgOYgqvVHM/vSESSeM
	 1tN+5m6v6fbtf+rwKPfxGvh60ORl94d/g70E/QrZJmYd3sTi2Bg5fngfXzEt9ydn9P
	 oeGmBVc7hcQqbbFjLXmz3pMWXk2bFYXn9Oz1d7BAdFRbiaIGfN0xd2W9p1NbdQubvm
	 iJokeP0XOP7YvlUrSkCxjNhXmAugKpJe2QJR/3UrgFdn46nMPGmZ0RY78ofYzss4lL
	 qSW3uGH29qdIA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B959384B88
	for <usrp-users@lists.ettus.com>; Wed,  2 Aug 2023 12:58:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690995532; bh=BrQ2mKAG237rUh45cidsGjvL40LYRmGXb7zYACi+fhs=;
	h=Date:To:From:Subject:From;
	b=0l/3Mlzz6WshXcPOIGKvHInT9NMqZW1eDuGz8Gu7m5FB31nIzpU0YKH3eG2xFgDFN
	 zfHqPUKW6iUrMaoEr8zlwFn7HFIAy8QMAgwKUpSqmCl0TWY33nm5TYgK/K5kVQwR/E
	 FMaarDUbnYTa4NPpfc6DughY/a7AY5ggWQhL1TeeWV9cgFfUqB+xQHCJMVUMOZSW4V
	 QpI+MUpayq6LyUtkFbYvxuBWQX4KPgYoeNx0boQusoK8ABOB3sNekjrC1A8uH8bSA9
	 J6v8JyDOiQA4kigHKgxLONAmuwzr2E9TcrDoIzgja59kj9/a+Oa21BseEljQzGJPXt
	 WHoSYLQfIHHWw==
Date: Wed, 2 Aug 2023 16:58:52 +0000
To: usrp-users@lists.ettus.com
From: kyle.stearns@str.us
Message-ID: <OJZJ2N08VI4ldiGcculcxwCYsJjbI9gAI33fydkHA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: C7JP2JL2XUANYDGIKVY252T27TNHLUT7
X-Message-ID-Hash: C7JP2JL2XUANYDGIKVY252T27TNHLUT7
X-MailFrom: kyle.stearns@str.us
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 Remote Streaming
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C7JP2JL2XUANYDGIKVY252T27TNHLUT7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1146518660181453879=="

This is a multi-part message in MIME format.

--===============1146518660181453879==
Content-Type: multipart/alternative;
 boundary="b1_OJZJ2N08VI4ldiGcculcxwCYsJjbI9gAI33fydkHA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_OJZJ2N08VI4ldiGcculcxwCYsJjbI9gAI33fydkHA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

We have an X310 and are trying to use the remote streaming option. We are=
 using UHD v4.3.0.0 and trying to follow the example on the Device Stream=
ing page in the UHD manual. The problem we are seeing is that the dest_po=
rt that we are setting is not being used, instead it seems like the x310 =
is picking a random port.\
\
=C2=A0Here is the output of find devices:\
\[INFO\] \[UHD\] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.3.0.HE=
AD-0-g1f8fd345\
\--------------------------------------------------\
\-- UHD Device 0\
\--------------------------------------------------\
Device Address:\
=C2=A0 =C2=A0 serial: 3267DF7\
=C2=A0 =C2=A0 addr: 192.168.10.2\
=C2=A0 =C2=A0 addr: 192.168.40.2\
=C2=A0 =C2=A0 fpga: HG\
=C2=A0 =C2=A0 name:\
=C2=A0 =C2=A0 product: X310\
=C2=A0 =C2=A0 type: x300\
\
\
The X310 is connected to a Ubuntu 20.04 box with a 1 gige (x310 sfp0) and=
 10 gige interface (x310 sfp1). Tx_samples_form_file and rx_samples_to_fi=
le work fine. \
\
\
We used the python in the manual but change the stream_args to the follow=
ing: stream_args.args =3D "dest_addr=3D192.168.40.1,dest_port=3D50007,ada=
pter=3Dsfp1,enable_fc=3D0"\
\
\
When I watch the 10 gige interface (enp34s0f0) with tcpdump, I can see th=
e port that the IQ data is being sent to change each time I run the pytho=
n script. We are not sure why that is happening.

--b1_OJZJ2N08VI4ldiGcculcxwCYsJjbI9gAI33fydkHA
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>We have an X310 and are trying to use the remote streaming =
option. We are using UHD v4.3.0.0 and trying to follow the example on the D=
evice Streaming page in the UHD manual. The problem we are seeing is that t=
he dest_port that we are setting is not being used, instead it seems like t=
he x310 is picking a random port.<br><br>&nbsp;Here is the output of find d=
evices:<br>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.3=
.0.HEAD-0-g1f8fd345<br>--------------------------------------------------<b=
r>-- UHD Device 0<br>--------------------------------------------------<br>=
Device Address:<br>&nbsp; &nbsp; serial: 3267DF7<br>&nbsp; &nbsp; addr: 192=
.168.10.2<br>&nbsp; &nbsp; addr: 192.168.40.2<br>&nbsp; &nbsp; fpga: HG<br>=
&nbsp; &nbsp; name:<br>&nbsp; &nbsp; product: X310<br>&nbsp; &nbsp; type: x=
300<br><br><br>The X310 is connected to a Ubuntu 20.04 box with a 1 gige (x=
310 sfp0) and 10 gige interface (x310 sfp1). Tx_samples_form_file and rx_sa=
mples_to_file work fine. <br><br><br>We used the python in the manual but c=
hange the stream_args to the following: stream_args.args =3D "dest_addr=3D1=
92.168.40.1,dest_port=3D50007,adapter=3Dsfp1,enable_fc=3D0"<br><br><br>When=
 I watch the 10 gige interface (enp34s0f0) with tcpdump, I can see the port=
 that the IQ data is being sent to change each time I run the python script=
. We are not sure why that is happening.</p>

--b1_OJZJ2N08VI4ldiGcculcxwCYsJjbI9gAI33fydkHA--

--===============1146518660181453879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1146518660181453879==--
