Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBEF909F85
	for <lists+usrp-users@lfdr.de>; Sun, 16 Jun 2024 21:32:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC9CE3851FE
	for <lists+usrp-users@lfdr.de>; Sun, 16 Jun 2024 15:32:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718566338; bh=/bhP1OxrN4UGPmOhIvyqngKpAMpPohxqGp961X0pt4U=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jXnumZRRq6D5MYqafDVS0CByOwwXYnqrmE0X66zsinjZ7CcUW/pcMyhz3a0X+m1Sv
	 Pftz4VJiioG+HQBCarhHu2E4diMXaQaxGPOAkScqlGJ4XJxv0rm/k4SxGdlyRuY+cq
	 w+GHd+nJe/xO8yvgSzX1oM1AARZ2i5P5O6g0KCW/8H8RZuPJqgztRD2hW0GhsF3WqD
	 87j3PWWqP+6KBRrIJrvj52AXjfmDMA0fX/m3CHuhqINukxXUJwVi2mqJ6FakkIVxrv
	 lscnyW7ZVlOCdzv5YocOXlpv02ANyWYiAmNJSUofVT7mNtKjgPm3tQsNnVSRSaSth2
	 6dO01RMVMRZpA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BAFB8385099
	for <usrp-users@lists.ettus.com>; Sun, 16 Jun 2024 07:16:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718536573; bh=taETiZTjUF6Sj+odjUgqxzoVAFw6WgI8i9e7Xy5Kw3I=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=UFbDQL5Avp3C/q/dXkZzENbv1/LlC2T/z0KT+miO3PsZHTg6KongJdkNbBMdHg+4v
	 cDq1hJgS1ieBYEz3Cd54WCkw2zlft+A9UxVCfpuhTQBTgBMh9FiPU+nGHGBAQ4nbqU
	 J1J8vJgKDqMtgErQWEKm9/bDIISWx78EJNtIi3Wz8KXbANyADXTunkWxW/u0FFrMbM
	 9Alvy9rhXsS1jiabApAfjVpw3REOl8wC9EDHU/0bt4274XUD/61yyYTkK6bWjLhfqm
	 2Ui1zDju2ag6bnOsCE1YEdlva649gPE+WUOdSh5oJCo07MIUk2wT55Usq3fwlzVp0S
	 k0uGFx9oH3V6A==
Date: Sun, 16 Jun 2024 11:16:13 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <Hygj6nlEXl9ebCbEYuH7I9JKyZBjq7LuDKobmyB6UE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: JVdGpy7yE2Dig8Mwc3QCoicOucJKYvofDfN8wefok@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: AI3PTOSWRR7LA7RE4PDYXV3GXDKCV5ZU
X-Message-ID-Hash: AI3PTOSWRR7LA7RE4PDYXV3GXDKCV5ZU
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to put additional RFNoC block in Rx-Tx loopback?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AI3PTOSWRR7LA7RE4PDYXV3GXDKCV5ZU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3660521426687486340=="

This is a multi-part message in MIME format.

--===============3660521426687486340==
Content-Type: multipart/alternative;
 boundary="b1_Hygj6nlEXl9ebCbEYuH7I9JKyZBjq7LuDKobmyB6UE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Hygj6nlEXl9ebCbEYuH7I9JKyZBjq7LuDKobmyB6UE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello all,

I found the reason of the problem and a solution that works for sample ra=
te lower than master clock rate (245.76MHz by default for X410).

So the root cause of the issue is that clock used for processing in the =E2=
=80=98rfnoc_block_gain=E2=80=99 is =E2=80=98rfnoc_chdr=E2=80=99 clock (th=
is is set in =E2=80=98gain.yml=E2=80=99). This clock has 200MHz by defaul=
t for X410.\
Taking into account that gain block processes one sample per clock cycle,=
 rate of =E2=80=98rfnoc_chdr=E2=80=99 is too small to process whole strea=
m of samples coming at the output of DDC block with decimation equal to 1=
.

Moreover in the =E2=80=98[rfnoc_radio_loopback](https://github.com/EttusR=
esearch/uhd/blob/master/host/examples/rfnoc_radio_loopback.cpp#L123)=E2=80=
=99 example =E2=80=98rate=E2=80=99 parameter is applied directly to radio=
 rfnoc block and not to DDC. So no matter what is set there the decimatio=
n is always 1.

To make it work it was necessary to change the decimation to higher value=
 by setting a proper rate with use of the set_output_rate function of the=
 DDC block controller.

However I would like to make the example work even when there is no decim=
ation. Therefore I tried to switch it to =E2=80=98ce=E2=80=99 which has r=
ate 266.66(6)Mhz AFAIK by changing =E2=80=98control=E2=80=99 and =E2=80=98=
data=E2=80=99 clock domains in =E2=80=98gain.yml=E2=80=99 to =E2=80=98ce=E2=
=80=99. I changed also =E2=80=98noc_shell_gain.v=E2=80=99 and =E2=80=98rf=
noc_block_gain.v=E2=80=99 by partially mimicking what I=E2=80=99ve seen i=
n =E2=80=98moving_avg=E2=80=99 example. But probably I did something wron=
g as the design doesn=E2=80=99t pass timing check.

So the question is how to switch =E2=80=98rfnoc_block_gain=E2=80=99 examp=
le to use =E2=80=98ce=E2=80=99 clock instead of =E2=80=98rfnoc_chdr=E2=80=
=98 and limit possibility of a mistake?

Best Regards,\
Piotr Krysik

--b1_Hygj6nlEXl9ebCbEYuH7I9JKyZBjq7LuDKobmyB6UE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello all,</p><p>I found the reason of the problem and a solution that w=
orks for sample rate lower than master clock rate (245.76MHz by default for=
 X410).</p><p>So the root cause of the issue is that clock used for process=
ing in the =E2=80=98rfnoc_block_gain=E2=80=99 is =E2=80=98rfnoc_chdr=
=E2=80=99 clock (this is set in =E2=80=98gain.yml=E2=80=99). This clock has=
 200MHz by default for X410.<br>Taking into account that gain block process=
es one sample per clock cycle, rate of =E2=80=98rfnoc_chdr=E2=80=99 is too =
small to process whole stream of samples coming at the output of DDC block =
with decimation equal to 1.</p><p>Moreover in the =E2=80=98<a href=3D"https=
://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc_radio_loopb=
ack.cpp#L123">rfnoc_radio_loopback</a>=E2=80=99 example =E2=80=98rate=
=E2=80=99 parameter is applied directly to radio rfnoc block and not to DDC=
. So no matter what is set there the decimation is always 1.</p><p>To make =
it work it was necessary to change the decimation to higher value by settin=
g a proper rate with use of the set_output_rate function of the DDC block c=
ontroller.</p><p><br></p><p>However I would like to make the example work e=
ven when there is no decimation. Therefore I tried to switch it to =
=E2=80=98ce=E2=80=99 which has rate 266.66(6)Mhz AFAIK by changing =
=E2=80=98control=E2=80=99 and =E2=80=98data=E2=80=99 clock domains in =
=E2=80=98gain.yml=E2=80=99 to =E2=80=98ce=E2=80=99. I changed also =
=E2=80=98noc_shell_gain.v=E2=80=99 and =E2=80=98rfnoc_block_gain.v=E2=80=
=99 by partially mimicking what I=E2=80=99ve seen in =E2=80=98moving_avg=
=E2=80=99 example. But probably I did something wrong as the design doesn=
=E2=80=99t pass timing check.</p><p><br></p><p>So the question is how to sw=
itch =E2=80=98rfnoc_block_gain=E2=80=99 example to use =E2=80=98ce=E2=80=
=99 clock instead of =E2=80=98rfnoc_chdr=E2=80=98 and limit possibility of =
a mistake?</p><p>Best Regards,<br>Piotr Krysik</p>

--b1_Hygj6nlEXl9ebCbEYuH7I9JKyZBjq7LuDKobmyB6UE--

--===============3660521426687486340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3660521426687486340==--
