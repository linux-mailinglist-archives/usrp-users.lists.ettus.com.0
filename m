Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8565B15D4
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 09:42:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55C1C383E45
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 03:42:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662622922; bh=Ws9H+ONJhEV1ytdC62qBuYkmAnVHFWYPEQD0GfnO4HE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Od6tpLJldq0oGo5zac3ZVkUNX2BMHu8DmVqsrUZB1y2yzUP03kE2dMWzAK2jkYABq
	 F1R4Qjfb1wB9MtSrytjT9/05lbRk+eHjJtW5RfiMnWV0nDR5lu3XxSx5WzIiv3Fovz
	 VatQp+xWETY9nZeLgD+QYtL3sME1MLcZZHnuxl0KWZ5tAPveZHtFY5qo0FLVYQuglo
	 hb9cLHb4fML5NO496pBfZKdPkgDPaCaK8vnQE2mcCRch6K5T/5ieY317MnZL5sLr29
	 klAOxCP8P1iEK9frQ0wyVHaYc3nPGvebbhAda5mxFjp0A5UdfE71YCR0IHFsZw3r1m
	 qHa8tUT9GPHqw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC31E383D96
	for <usrp-users@lists.ettus.com>; Thu,  8 Sep 2022 03:40:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662622804; bh=ZeKCAweEj/ir+6KI5BRjiLv+9j6/mNrIp6qBkuwwGaM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ORvX3XvizhflF5FVsXIr8tzTzDPKhl/NwpplJXxg73amOkjuqxwd2vOoEUJV4ZCHz
	 wUpxmyDLp4VZ96hNtAwLhI3QhXZ6o6BgkHouK1yvWUiq/Yhl/Hhr1yErUgasVzQM3M
	 tO+a27Fdbf54prj3WVQYPJY7uE8R7n/86GViIxvkg7hu8XKeOroqB3nj60Ossx+dfl
	 MKwa9QJja/LKdcrMIEayz6USPLAC9jVD0lgWGubkhjDpIsbtCs3BKr6Xbsx1i/WVLM
	 Uyd0byjChb1Esex2HV9pJfJA4wCPvbtKbrBRA/691hHAFlQH4Rw19yslDIjPPstLty
	 anMxK0J8V5sTQ==
Date: Thu, 8 Sep 2022 07:40:04 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <YJiDKxkrsvUbHgSRejsJx8CNdas6bTkjVDPFtVyQGI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 7H40eyhjubrR25N4HmVPsOdLJKPyGfqwzuPoA5ALGxo@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 23SC2T6WXLOVSA6AEX2VVIMEKFXCOD3J
X-Message-ID-Hash: 23SC2T6WXLOVSA6AEX2VVIMEKFXCOD3J
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320: Periodic phase jumps w/ any external clock?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/23SC2T6WXLOVSA6AEX2VVIMEKFXCOD3J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5060963198875041275=="

This is a multi-part message in MIME format.

--===============5060963198875041275==
Content-Type: multipart/alternative;
 boundary="b1_YJiDKxkrsvUbHgSRejsJx8CNdas6bTkjVDPFtVyQGI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YJiDKxkrsvUbHgSRejsJx8CNdas6bTkjVDPFtVyQGI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Ha!

It=E2=80=99s there on E320 and you can control it with device argument:

enable_gps          | Enable/disable power to the GPSDO.                 =
                          | N3xx, E320        | enable_gps=3D0

Here in the table at the bottom:

https://files.ettus.com/manual/page_configuration.html

Best Regards,\
Piotr Krysik

perper@o2.pl wrote:

> Hello,
>
> I=E2=80=99ve seen on X310 that the supply power of GPSDO is controlled =
by FPGA pin. Maybe there is something similar on E320.
>
> BTW. on X310 that pin isn=E2=80=99t used, at least not for anything goo=
d. It changes its state for a moment every time someone loads FPGA bitstr=
eam over PCIe interface. Taking into account that for every run of an app=
lication working over PCIe FPGA bitstream is reloaded, on each applicatio=
n start GPSDO is being power cycled and it has to wait for a lock for abo=
ut 10 minutes. This makes GPSDO + PCIe practically useless combination. I=
 reported the issue over a year ago but NI folks didn=E2=80=99t bother to=
 respond:
>
> https://lists.ettus.com/empathy/thread/Q3DY5SEKXMQ33W6MOTU5LTUS7LMC3DH5=
?hash=3DQ3DY5SEKXMQ33W6MOTU5LTUS7LMC3DH5#Q3DY5SEKXMQ33W6MOTU5LTUS7LMC3DH5
>
> Best Regards,\
> Piotr Krysik
>
> David Raeman wrote:
>
> > This is very helpful, thanks for the response Piotr!  I was starting =
to speculate that maybe there is some cross-talk in the clocking front-en=
d switch (U55), enough to quasi-periodically perturb the PLL. I don't bel=
ieve UHD turns off the GPSDO's TCXO when the external clock is selected, =
so they'd both be coming into the switch ports. This is complete speculat=
ion, but I don't see many avenues for how the internal and external clock=
ing paths differ.
> >
> > Even though the E320's GPSDO cannot be removed, I can experiment with=
 explicitly powering it down. Thanks for the suggestion!

--b1_YJiDKxkrsvUbHgSRejsJx8CNdas6bTkjVDPFtVyQGI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Ha!</p><p>It=E2=80=99s there on E320 and you can control it with device =
argument:</p><p>enable_gps          | Enable/disable power to the GPSDO.   =
                                        | N3xx, E320        | enable_gps=3D=
0</p><p>Here in the table at the bottom:</p><p>https://files.ettus.com/manu=
al/page_configuration.html</p><p>Best Regards,<br>Piotr Krysik</p><p>perper=
@o2.pl wrote:</p><blockquote><p>Hello,</p><p>I=E2=80=99ve seen on X310 that=
 the supply power of GPSDO is controlled by FPGA pin. Maybe there is someth=
ing similar on E320.</p><p>BTW. on X310 that pin isn=E2=80=99t used, at lea=
st not for anything good. It changes its state for a moment every time some=
one loads FPGA bitstream over PCIe interface. Taking into account that for =
every run of an application working over PCIe FPGA bitstream is reloaded, o=
n each application start GPSDO is being power cycled and it has to wait for=
 a lock for about 10 minutes. This makes GPSDO + PCIe practically useless c=
ombination. I reported the issue over a year ago but NI folks didn=E2=80=
=99t bother to respond:</p><p>https://lists.ettus.com/empathy/thread/Q3DY5S=
EKXMQ33W6MOTU5LTUS7LMC3DH5?hash=3DQ3DY5SEKXMQ33W6MOTU5LTUS7LMC3DH5#Q3DY5SEK=
XMQ33W6MOTU5LTUS7LMC3DH5</p><p>Best Regards,<br>Piotr Krysik</p><p>David Ra=
eman wrote:</p><blockquote><p>This is very helpful, thanks for the response=
 Piotr!  I was starting to speculate that maybe there is some cross-talk in=
 the clocking front-end switch (U55), enough to quasi-periodically perturb =
the PLL. I don't believe UHD turns off the GPSDO's TCXO when the external c=
lock is selected, so they'd both be coming into the switch ports. This is c=
omplete speculation, but I don't see many avenues for how the internal and =
external clocking paths differ.</p><p>Even though the E320's GPSDO cannot b=
e removed, I can experiment with explicitly powering it down. Thanks for th=
e suggestion!</p></blockquote></blockquote><p><br></p>

--b1_YJiDKxkrsvUbHgSRejsJx8CNdas6bTkjVDPFtVyQGI--

--===============5060963198875041275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5060963198875041275==--
