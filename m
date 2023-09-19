Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A465B7A5ACF
	for <lists+usrp-users@lfdr.de>; Tue, 19 Sep 2023 09:25:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 58441384E9C
	for <lists+usrp-users@lfdr.de>; Tue, 19 Sep 2023 03:25:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695108312; bh=g4UFOMclFva+7W++DwDsNRCQ3hDt3BCRUkjpf+qv5ME=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Nb9WoqNq8oSusHtcQYnkKmggFGZ+SrqspxvN6POJ0wMCebbW+WrNLntmtyHkSZ6XU
	 QMneyi2BkeaLVR6MMvhMw6MPbZVgCK0CmicfxUDlrIc6U/P3rRGHZPXZMgUnW0oxlN
	 ZNGwmfeInpMjTAbg18YhjBQ8nMHTN5xqe43uhDg8fQmHwqZjk5QFWbJwJWbZ0FheCw
	 Kbi7Uw1LrSQAcsiD9XpXthFLC0Umg7irChMJeHksfVFGHUpSm2Yn11sCwZne55dNzh
	 6KG1cp9yYWvStDVQRgldLpncroE2lcYQSYTP7PyIvZhKOlxCfNh6739RTq42Ro9kEl
	 9gYprR+/CZHVw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45ACD384E18
	for <usrp-users@lists.ettus.com>; Tue, 19 Sep 2023 03:24:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695108294; bh=UScaGh8WRhPVZeVH+hGIOJQ36MkNvGewvjeITmOl0sI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=NYFnsJ8RJ5JALJiAsvlqO+UljNtgxubD/N9vuC0bFE4cFrTmsv0Cb1AX9n/jIYOF+
	 VERKOQcLzf5joYtSQCjRx0QvrMSFllzinNcFLI4m3j/GK8jlaaLIfNBTmdXmLrgDzb
	 Hy04fkA7vTK0C4ZLsVClfpvXky8cqGN3u/SYIqVmjM79Jc4I0Y1+vma4s22jUu1eX0
	 ZvXp8IUhYVd5Zv5mmJQWyCxV88rUKjouIxHpHGchdNxQXANkm82SBPjIyit1sFbKme
	 JW5ddoSQ61/dgI2JDX0LFpBh/JXvtLpbemmKQkWJIFQUz/emvA0OqKbJCzfM7jrDFy
	 sH8sbbXQywvJQ==
Date: Tue, 19 Sep 2023 07:24:54 +0000
To: usrp-users@lists.ettus.com
From: ouzan_ts@hotmail.com
Message-ID: <8tgp67TWZySZBgo36drX2iYAR0dsvnusaC8JSP9PWxI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 166d3c97-51a5-9968-0bf5-a69ac6924630@gmail.com
MIME-Version: 1.0
Message-ID-Hash: X6NCI5IZQAJFFICCJRRRFBWAMXIPTHWE
X-Message-ID-Hash: X6NCI5IZQAJFFICCJRRRFBWAMXIPTHWE
X-MailFrom: ouzan_ts@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Bypassing_U807_and_U805_=28SKY13335=E2=88=92381LF=29?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X6NCI5IZQAJFFICCJRRRFBWAMXIPTHWE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5115146424232561246=="

This is a multi-part message in MIME format.

--===============5115146424232561246==
Content-Type: multipart/alternative;
 boundary="b1_8tgp67TWZySZBgo36drX2iYAR0dsvnusaC8JSP9PWxI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_8tgp67TWZySZBgo36drX2iYAR0dsvnusaC8JSP9PWxI
Content-Type: text/plain; charset=us-ascii

Dear Marcus,\
\
Thank you for your reply. I think your RF engineers have an aim to have the pads on the PCB for bypassing the switches. In other case, why do you have these pads if they haven't tested if they are working ? Is it possible if you could ask your RF engineers which component values we need to locate on these pads ?\
\
50-54 dB TX/RX isolation is very low as a dynamic range of many applications. For our application, this is our main problem. That is why we want to try to bypass and see if the isolation of the card increases. There is no data about the TX/RX isolation of AD9364 in its datasheet. There is some information in the forums indicating that the TX1/RX1 isolation is measured as 65 dB.\
\
<https://ez.analog.com/rf/wide-band-rf-transceivers/design-support/f/q-a/79257/ad9361-tx-rx-isolation>

<https://ez.analog.com/rf/wide-band-rf-transceivers/design-support/f/q-a/114155/ad936n-rx-tx-isolation>

<https://ez.analog.com/rf/wide-band-rf-transceivers/design-support/f/q-a/80405/ad9361-isolation-measurement/280677>

--b1_8tgp67TWZySZBgo36drX2iYAR0dsvnusaC8JSP9PWxI
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Dear Marcus,<br><br>Thank you for your reply. I think your RF engineers =
have an aim to have the pads on the PCB for bypassing the switches. In othe=
r case, why do you have these pads if they haven't tested if they are worki=
ng ? Is it possible if you could ask your RF engineers which component valu=
es we need to locate on these pads ?<br><br>50-54 dB TX/RX isolation is ver=
y low as a dynamic range of many applications. For our application, this is=
 our main problem. That is why we want to try to bypass and see if the isol=
ation of the card increases. There is no data about the TX/RX isolation of =
AD9364 in its datasheet. There is some information in the forums indicating=
 that the TX1/RX1 isolation is measured as 65 dB.<br><br><a href=3D"https:/=
/ez.analog.com/rf/wide-band-rf-transceivers/design-support/f/q-a/79257/ad93=
61-tx-rx-isolation">https://ez.analog.com/rf/wide-band-rf-transceivers/desi=
gn-support/f/q-a/79257/ad9361-tx-rx-isolation</a></p><p><a href=3D"https://=
ez.analog.com/rf/wide-band-rf-transceivers/design-support/f/q-a/114155/ad93=
6n-rx-tx-isolation">https://ez.analog.com/rf/wide-band-rf-transceivers/desi=
gn-support/f/q-a/114155/ad936n-rx-tx-isolation</a></p><p><a href=3D"https:/=
/ez.analog.com/rf/wide-band-rf-transceivers/design-support/f/q-a/80405/ad93=
61-isolation-measurement/280677">https://ez.analog.com/rf/wide-band-rf-tran=
sceivers/design-support/f/q-a/80405/ad9361-isolation-measurement/280677</a>=
<br><br></p>

--b1_8tgp67TWZySZBgo36drX2iYAR0dsvnusaC8JSP9PWxI--

--===============5115146424232561246==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5115146424232561246==--
