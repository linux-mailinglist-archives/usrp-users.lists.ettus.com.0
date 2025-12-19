Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FB6CCF7CE
	for <lists+usrp-users@lfdr.de>; Fri, 19 Dec 2025 11:55:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5D543863FA
	for <lists+usrp-users@lfdr.de>; Fri, 19 Dec 2025 05:55:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1766141724; bh=gJm+ok+kns9AObhdU95DhwWUkvsG2S9xg6LljnHuGT8=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=D4aDReecc3U4Kkwf2WMejc9guXpypPffb7yuFxji5agv/x3l5szDNzRWjtJFpB0VO
	 vVoV5HBQuarHJHBorqfC3eFwQ3Bxww7vRW2AEl6YOiChqS6kwzSv+qgPD0d0rvh9r1
	 /pRVfP3lnOYpLr1uNIDHUy2cF6LXuKaoNrhTVOg3aTTBg1k7Gr1YEOM/yTCYmYIFuy
	 HLhEALY4UaQXXsUENAsSeuXOSO4EAvkh1mBeQxP3f6m89GioKQ5TDKsTk7MYAUbRhR
	 xfMGL/MCd76ZcHj7K8ldC13TjrHWie3eJigjiQZKie67/lYUvR5bQH2Mc5bY33NCMI
	 gEClQUTdv7/3w==
Received: from lists.ctbirding.org (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 27B0838632B
	for <usrp-users@lists.ettus.com>; Fri, 19 Dec 2025 05:54:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1766141656; bh=Ag6eqHx3dwU19jiFOy1uB/F7alyTF5+U7LsGkmXcHYw=;
	h=Date:To:From:Subject:From;
	b=MmdgHBT4XveImjmsFMbMHr8egM1r9W5v2IQVqAhKLZ99dG50diLUcDY8D3UWTwvW9
	 Q8mZoPUNJca/DEuWcCF8BD7tI9/wzDLveJwHQ8AiZNVANif4Z43xhkNH14efGTs4mI
	 UBo0psP+7uP0HG5lHucdDfPCtbTL34K3yTrpGe+26lfcMPFEt2dRn7H7JoGFMYMqZw
	 zPiuKwxWg1PrSgLhFA+hXhRc4Id2kMNLHOf7uwMIVnklFELaVvGN819W3611Fw3NdY
	 Ig72dn9z2xgGe+53BWpLYkNP4oB7er7iHbkpMQ5hp7kEaQdxmS6Fkc86GEgqsW6/nV
	 o+im2JqWOTMMg==
Date: Fri, 19 Dec 2025 10:54:16 +0000
To: usrp-users@lists.ettus.com
From: adri96roll@gmail.com
Message-ID: <WfobIvE6TbpYRJmblJH1mBkfTuesDCPSiUbEtp6gdn0@lists.ctbirding.org>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: Q7EYFQ6NVRK6KD5Y36VVSIKA2ZBG4SJN
X-Message-ID-Hash: Q7EYFQ6NVRK6KD5Y36VVSIKA2ZBG4SJN
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Question about RFNoC Radio/DDC packet timing and spacing
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q7EYFQ6NVRK6KD5Y36VVSIKA2ZBG4SJN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4443175657583611835=="

This is a multi-part message in MIME format.

--===============4443175657583611835==
Content-Type: multipart/alternative;
 boundary="b1_WfobIvE6TbpYRJmblJH1mBkfTuesDCPSiUbEtp6gdn0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_WfobIvE6TbpYRJmblJH1mBkfTuesDCPSiUbEtp6gdn0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am working with RFNoC and trying to better understand how sample data i=
s actually delivered over CHDR after the Radio + DDC block, particularly =
in terms of **packet spacing vs. bus rate**.

My assumption is:

* The RF chain (Radio + DDC) outputs samples at a configured sample rate,=
 e.g., 250 KHz.

* RFNoC groups samples into packets of SPP samples (for example, 64 sampl=
es per CHDR packet).

* When a packet is produced, it is transmitted across the RFNoC fabric at=
 the **fabric clock rate** (e.g., 200 MHz), meaning the packet data appea=
rs as a short **burst** of consecutive valid cycles.

* After that burst, there is a gap (idle time) until enough samples are a=
ccumulated to form the next packet.

So, for example, at:

* Fs =3D 250 kS/s

* SPP =3D 64

Then we would expect:

* One packet every 64 / 250k =3D 256 =C2=B5s

* Packet burst duration =3D 64 cycles at 200 MHz =E2=89=88 320 ns

* Approximately 256 =C2=B5s =E2=80=93 320 ns of idle time before the next=
 packet.

### My questions are:

1. Is this understanding correct?

2. Is RFNoC guaranteed to behave this way, or can buffering cause multipl=
e packets to be sent back-to-back with no idle gap?

3. Is there any official documentation describing packetization timing be=
havior of Radio/DDC  RFNoC fabric?

Thanks in advance!

--b1_WfobIvE6TbpYRJmblJH1mBkfTuesDCPSiUbEtp6gdn0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am working with RFNoC and trying to better understand how=
 sample data is actually delivered over CHDR after the Radio + DDC block, p=
articularly in terms of <strong>packet spacing vs. bus rate</strong>.</p><p=
>My assumption is:</p><ul><li><p>The RF chain (Radio + DDC) outputs samples=
 at a configured sample rate, e.g., 250 KHz.</p></li><li><p>RFNoC groups sa=
mples into packets of SPP samples (for example, 64 samples per CHDR packet)=
.</p></li><li><p>When a packet is produced, it is transmitted across the RF=
NoC fabric at the <strong>fabric clock rate</strong> (e.g., 200 MHz), meani=
ng the packet data appears as a short <strong>burst</strong> of consecutive=
 valid cycles.</p></li><li><p>After that burst, there is a gap (idle time) =
until enough samples are accumulated to form the next packet.</p></li></ul>=
<p>So, for example, at:</p><ul><li><p>Fs =3D 250 kS/s</p></li><li><p>SPP =
=3D 64</p></li></ul><p>Then we would expect:</p><ul><li><p>One packet every=
 64 / 250k =3D 256 =C2=B5s</p></li><li><p>Packet burst duration =3D 64 cycl=
es at 200 MHz =E2=89=88 320 ns</p></li><li><p>Approximately 256 =C2=B5s =
=E2=80=93 320 ns of idle time before the next packet.</p></li></ul><h3>My q=
uestions are:</h3><ol><li><p>Is this understanding correct?</p></li><li><p>=
Is RFNoC guaranteed to behave this way, or can buffering cause multiple pac=
kets to be sent back-to-back with no idle gap?</p></li><li><p>Is there any =
official documentation describing packetization timing behavior of Radio/DD=
C  RFNoC fabric?</p></li></ol><p><br></p><p>Thanks in advance!</p>

--b1_WfobIvE6TbpYRJmblJH1mBkfTuesDCPSiUbEtp6gdn0--

--===============4443175657583611835==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4443175657583611835==--
