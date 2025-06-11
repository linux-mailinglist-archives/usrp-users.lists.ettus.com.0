Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6291AD634B
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jun 2025 01:00:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3183386222
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jun 2025 19:00:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749682801; bh=KhUffKPKEwbyfimfgFErXfGB32vFvItYsVsioWi+Exs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0UKxuOFtQ+3L+H9UlXi1S7CXKXtecNepEUBRRityVeGaLVD6O4onCEoAveyjnLwa5
	 F6T9f6zSt2Ee/lToTRiZ5i8Hjd3r2/TC/K4Fxz1fQNsFziwsw7JX3vTprKgvtmjvpR
	 hptbfXx69OvZdFy3mq2gGXjPB0VHHQJdQ6Cv+mXOOl84p/a3NHTi4OjCY9f6bsogVS
	 jHHGKTG3oPNYh0d4B1YQKghI3vT6QMeeHnSlS18B1Hoq4DICMstLy9c5kdYO9bOwIm
	 S181JVYtouPjnYrE4Bb0PZ/lycU7iDv3e0QMHJVg1C/cbxdH4jHERyPk0V7ihou5CR
	 ZZ2MylorZEF/A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2AC09385B3A
	for <usrp-users@lists.ettus.com>; Wed, 11 Jun 2025 18:58:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749682737; bh=i9GVqzPuDjvy3zC/GaJIz7ap2Fs6ND7fSYvAta+zu3o=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=RDPx5IUFh0FOGZH4phzy5qBuwQO5S7rHqhcyXVOHbKDideUgBTsvGrLKIzoAjGa76
	 iQoUDkrJ5Xy1+jBOf0+iADtWKC9GhwDJPU/xavBtgUtwfvqxJAjUpepZzDSII9df8t
	 y28pLHeqojBUe4deekT6d9btET4u4TbiJRHMnXT1AOeoh2fy7GsSLPI5814ONfnLfy
	 DZ7wNJKkadgE6GfAT5yXMDY2O3+TaP6TefdJr2i/HpITPJAJoGegUoElpWOOZ9iDM/
	 I7aY95mwR6u5ikVwEVXMh/re3kr7wm3rhgbPf2Tv9C0Hknn9QrAViHNGzDU/EecDN4
	 NXErJ7577xAsw==
Date: Wed, 11 Jun 2025 22:58:57 +0000
To: usrp-users@lists.ettus.com
From: tommytsui@w5tech.com
Message-ID: <cHOXhjPOGYttftfh3A9LILE2Xhl6GSEcpu77wggfk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A5WDufQtO_Zf6eYDGt8k9ZX+NneUyajaV0NMpKZk2je6g@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: Y7BKB26FDIT7BU45XJ27LX6GWYQNZKBH
X-Message-ID-Hash: Y7BKB26FDIT7BU45XJ27LX6GWYQNZKBH
X-MailFrom: tommytsui@w5tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tx_offset and rx_offset parameter usage on UHD calibration utilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y7BKB26FDIT7BU45XJ27LX6GWYQNZKBH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7205914026421274183=="

This is a multi-part message in MIME format.

--===============7205914026421274183==
Content-Type: multipart/alternative;
 boundary="b1_cHOXhjPOGYttftfh3A9LILE2Xhl6GSEcpu77wggfk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_cHOXhjPOGYttftfh3A9LILE2Xhl6GSEcpu77wggfk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Martin,

I have been trying to find out whether the lo-offset applies to the first=
 LO or the second LO as there is no documentation on how it applies to a =
specific radio daughter card. From what I have learned, a lo-offset can a=
pply regardless of the RF receive frequency is above or below 500MHz. Whe=
n the RF Rx frequency > 500MHz the first RF stage uses direct frequency c=
onversion. Hence, 1st LO is not used. This leads me to believe lo-offset =
applies the 2nd LO.=20

I tried on Rx frequency below and above 500MHz, same poor constellation q=
uality issue occurred. That is, the Agilent WCDMA signal passed through t=
he X310 frequency conversion produced poor constellation output at 800MHz=
 when lo-offset > 16MHz. When lo-offset at 16MHz or below, the constellat=
ion looks good. Here are the specific details of the test:

X310 with 2 UBX-40 installed, UHD 4.8 FPGA image installed. A simple freq=
uency conversion application similar to UHD example app rfnoc_radio_loop_=
back is used to perform frequency conversion between RX2 input at 240.5MH=
z and Rx/Tx output at 827MHz. An Agilent signal generator output WCDMA mo=
dulated signal to RX2 at 240.5MHz, a R&S spectrum analyzer monitored Rx/T=
x output at 827MHz. The issue is not about the Rx and Tx tune frequency a=
ccuracy or the signal gain. The X310 and UBX40 tuned to the target Rx and=
 Tx frequency accurately, the Rx and Tx signal gain are within expectatio=
n. The issue is the quality of the WCDMA constellation at the Tx output.=20

At first, I thought the issue might be calibration related, but after dis=
cussed with Marcus, I think another culprit is causing the issue.

The fact that when lo-offset was decreased from 20MHz to 16MHz resolved t=
he poor constellation issue indicating it is unlikely due to IQ imbalance=
 or DC offset, but I don=E2=80=99t know what exactly went wrong. I don=E2=
=80=99t have such issue when using WBX-40 boards.

I have X310 master_clock_rate set to 184.32MHz, DDC down sampling and DUC=
 up sampling rate set to 7.68MHz. Increasing the sampling rate to 30.72MH=
z > lo-offset 20MHz still couldn=E2=80=99t resolve the issue.

Tom

--b1_cHOXhjPOGYttftfh3A9LILE2Xhl6GSEcpu77wggfk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p><br></p><p>Hi Martin,</p><p>I have been trying to find out whether the l=
o-offset applies to the first LO or the second LO as there is no documentat=
ion on how it applies to a specific radio daughter card. From what I have l=
earned, a lo-offset can apply regardless of the RF receive frequency is abo=
ve or below 500MHz. When the RF Rx frequency &gt; 500MHz the first RF stage=
 uses direct frequency conversion. Hence, 1st LO is not used. This leads me=
 to believe lo-offset applies the 2nd LO. </p><p>I tried on Rx frequency be=
low and above 500MHz, same poor constellation quality issue occurred. That =
is, the Agilent WCDMA signal passed through the X310 frequency conversion p=
roduced poor constellation output at 800MHz when lo-offset &gt; 16MHz. When=
 lo-offset at 16MHz or below, the constellation looks good. Here are the sp=
ecific details of the test:</p><p>X310 with 2 UBX-40 installed, UHD 4.8 FPG=
A image installed. A simple frequency conversion application similar to UHD=
 example app rfnoc_radio_loop_back is used to perform frequency conversion =
between RX2 input at 240.5MHz and Rx/Tx output at 827MHz. An Agilent signal=
 generator output WCDMA modulated signal to RX2 at 240.5MHz, a R&amp;S spec=
trum analyzer monitored Rx/Tx output at 827MHz. The issue is not about the =
Rx and Tx tune frequency accuracy or the signal gain. The X310 and UBX40 tu=
ned to the target Rx and Tx frequency accurately, the Rx and Tx signal gain=
 are within expectation. The issue is the quality of the WCDMA constellatio=
n at the Tx output. </p><p>At first, I thought the issue might be calibrati=
on related, but after discussed with Marcus, I think another culprit is cau=
sing the issue.</p><p>The fact that when lo-offset was decreased from 20MHz=
 to 16MHz resolved the poor constellation issue indicating it is unlikely d=
ue to IQ imbalance or DC offset, but I don=E2=80=99t know what exactly went=
 wrong. I don=E2=80=99t have such issue when using WBX-40 boards.</p><p>I h=
ave X310 master_clock_rate set to 184.32MHz, DDC down sampling and DUC up s=
ampling rate set to 7.68MHz. Increasing the sampling rate to 30.72MHz &gt; =
lo-offset 20MHz still couldn=E2=80=99t resolve the issue.</p><p><br></p><p>=
Tom</p>

--b1_cHOXhjPOGYttftfh3A9LILE2Xhl6GSEcpu77wggfk--

--===============7205914026421274183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7205914026421274183==--
