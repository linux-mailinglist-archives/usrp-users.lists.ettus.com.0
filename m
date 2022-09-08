Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A25C05B14A1
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 08:34:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 163CE383CE9
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 02:34:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662618887; bh=AMi5PSBpYVImqwmXsuVd7wbVP77/3lg/u1wieO5vo3c=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=T1bwBBjQyqYk7D9MGwuoYzDhg/vZNLrKAEzYvjTEk3m+lwSADVlINkOP67roQEaWM
	 JMZolN//evHjatvmaqY44jul1ICFWSSfHWQTce+BqX82U7OnbAv3K0xSSeUdbxrom8
	 guFp/3R0G5yTrM6s573M6Ht9ye8bvTfMTT5Jv9V54ttRRHEiSME4W3XS7g/pCVQG5x
	 nSfMP5K+oT3bJd46LU6HhaTlAaT2Nm1r9MF7bnGCgcvf1iiGz7RFJompC8bHHRVuqc
	 gxMvbjnE5u0LEg2SU/ja4q0n2fZmbz5o0fTLRktInZZMerDs1d9FP/m143VRG4NOjC
	 ufqq7pLsImeug==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28C3F383D21
	for <usrp-users@lists.ettus.com>; Thu,  8 Sep 2022 02:32:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662618765; bh=+nFOiFQG8IXmR8pPO5VyCfGtytFHLxThMYiIV+GIYEI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=XzVPjTVHNd4b1NBrZ029vP4v3+KjXeSjBEeT6ScnDL8PssWVci9dRpCPof4Tnvavb
	 WylQ/ZcbqXwTB5AsBWwLO0CElIWLn0Ks/Zkfz2QneIQx8uAsMGv3IZ+GHGisyL0S4i
	 OEseUg5rzrXgx2VWqzUCUTVyfazQ+/YuaP8C9tHX+S3VoILprbE9hZYlCH7Tcl3ngE
	 b++MJPJIakbFNrvpGpEtJAb4aVZKmPck2HzRvzWJdbwEJHapfStKj8VmvyvOkvZ6DJ
	 E74J/WWc3naMzjvXsly3sdpVMgg+B4ZqMZFpi+8GNb7ziFw9tq847QecmlvCbUoBX9
	 I2z+oHUoiv0+g==
Date: Thu, 8 Sep 2022 06:32:45 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <7H40eyhjubrR25N4HmVPsOdLJKPyGfqwzuPoA5ALGxo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: BN2P110MB174714BFC58D11A99F1AA99EB7419@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
MIME-Version: 1.0
Message-ID-Hash: WJRFFXEMOXMJAMQPAXUNNXFFY4EQ6OFW
X-Message-ID-Hash: WJRFFXEMOXMJAMQPAXUNNXFFY4EQ6OFW
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320: Periodic phase jumps w/ any external clock?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WJRFFXEMOXMJAMQPAXUNNXFFY4EQ6OFW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5648601004103068551=="

This is a multi-part message in MIME format.

--===============5648601004103068551==
Content-Type: multipart/alternative;
 boundary="b1_7H40eyhjubrR25N4HmVPsOdLJKPyGfqwzuPoA5ALGxo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_7H40eyhjubrR25N4HmVPsOdLJKPyGfqwzuPoA5ALGxo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I=E2=80=99ve seen on X310 that the supply power of GPSDO is controlled by=
 FPGA pin. Maybe there is something similar on E320.

BTW. on X310 that pin isn=E2=80=99t used, at least not for anything good.=
 It changes its state for a moment every time someone loads FPGA bitstrea=
m over PCIe interface. Taking into account that for every run of an appli=
cation working over PCIe FPGA bitstream is reloaded, on each application =
start GPSDO is being power cycled and it has to wait for a lock for about=
 10 minutes. This makes GPSDO + PCIe practically useless combination. I r=
eported the issue over a year ago but NI folks didn=E2=80=99t bother to r=
espond:=20

https://lists.ettus.com/empathy/thread/Q3DY5SEKXMQ33W6MOTU5LTUS7LMC3DH5?h=
ash=3DQ3DY5SEKXMQ33W6MOTU5LTUS7LMC3DH5#Q3DY5SEKXMQ33W6MOTU5LTUS7LMC3DH5

Best Regards,\
Piotr Krysik

David Raeman wrote:

> This is very helpful, thanks for the response Piotr!  I was starting to=
 speculate that maybe there is some cross-talk in the clocking front-end =
switch (U55), enough to quasi-periodically perturb the PLL. I don't belie=
ve UHD turns off the GPSDO's TCXO when the external clock is selected, so=
 they'd both be coming into the switch ports. This is complete speculatio=
n, but I don't see many avenues for how the internal and external clockin=
g paths differ.
>
> Even though the E320's GPSDO cannot be removed, I can experiment with e=
xplicitly powering it down. Thanks for the suggestion!

--b1_7H40eyhjubrR25N4HmVPsOdLJKPyGfqwzuPoA5ALGxo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I=E2=80=99ve seen on X310 that the supply power of GPSDO is=
 controlled by FPGA pin. Maybe there is something similar on E320.</p><p>BT=
W. on X310 that pin isn=E2=80=99t used, at least not for anything good. It =
changes its state for a moment every time someone loads FPGA bitstream over=
 PCIe interface. Taking into account that for every run of an application w=
orking over PCIe FPGA bitstream is reloaded, on each application start GPSD=
O is being power cycled and it has to wait for a lock for about 10 minutes.=
 This makes GPSDO + PCIe practically useless combination. I reported the is=
sue over a year ago but NI folks didn=E2=80=99t bother to respond: </p><p>h=
ttps://lists.ettus.com/empathy/thread/Q3DY5SEKXMQ33W6MOTU5LTUS7LMC3DH5?hash=
=3DQ3DY5SEKXMQ33W6MOTU5LTUS7LMC3DH5#Q3DY5SEKXMQ33W6MOTU5LTUS7LMC3DH5</p><p>=
Best Regards,<br>Piotr Krysik</p><p><br></p><p>David Raeman wrote:</p><bloc=
kquote><p>This is very helpful, thanks for the response Piotr!  I was start=
ing to speculate that maybe there is some cross-talk in the clocking front-=
end switch (U55), enough to quasi-periodically perturb the PLL. I don't bel=
ieve UHD turns off the GPSDO's TCXO when the external clock is selected, so=
 they'd both be coming into the switch ports. This is complete speculation,=
 but I don't see many avenues for how the internal and external clocking pa=
ths differ.</p><p>Even though the E320's GPSDO cannot be removed, I can exp=
eriment with explicitly powering it down. Thanks for the suggestion!</p></b=
lockquote>

--b1_7H40eyhjubrR25N4HmVPsOdLJKPyGfqwzuPoA5ALGxo--

--===============5648601004103068551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5648601004103068551==--
