Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 281326F1C5A
	for <lists+usrp-users@lfdr.de>; Fri, 28 Apr 2023 18:12:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3391F383F3A
	for <lists+usrp-users@lfdr.de>; Fri, 28 Apr 2023 12:12:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682698377; bh=R3Jitk6izcDKZH3nqEiJBMGcuypTGd5lfBjpHu1Biog=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PsOpPmImSpUzruqU6VeU5M6vQKTt2JpPCBlAHJLkTl7JNdV/5I6VRqEiTSoOqpjNr
	 GWAkyqbptKwc6J1lM72lXnqY7Keb+0Bri5nUg4dxJcOl7hQ5sFZbxtkXUebiHKa5QM
	 8CEmp3VctBnqnM5epUv9rkY2MNejEOzD09YyvimQ/snZKP+5H3SSCXTqgZqpLDRqZ5
	 58mY2rkmNcrNZJkYXmNuTZqYUXasxc2shV70gvQgnjiVBls+mjsVtgX0D1mYSlxpft
	 hT3DE0k9GpNpFbIXnc68mDo3R5zJMNn1hrPV0Lb8dsetbARGIzZt9u7Ya/+wqJVuqM
	 JN3au01rSdmkQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC12A383E1B
	for <usrp-users@lists.ettus.com>; Fri, 28 Apr 2023 12:12:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682698336; bh=B4JsmYsqLQCWwPQu29jZI10KOW8RhXp4Kb7UZoWBlaA=;
	h=Date:To:From:Subject:From;
	b=LqeFfIK308o+wwFaZTEmvASWhjQY3MdOQhOKGBDTl5t5mXSLo98zWFk0jXSDCXhb6
	 kxFM//sLSfUwAgX08wafk2ea5b40PpQNsY5OaYN676RGgCuEDRIrpsO4kMdI5kS+ZN
	 pfS6Ma0fseiKQE/wLWXyEn+KrlhS8s4GGsMyzxoqb0H9r07I4L1cx7A4nmx53mKEH/
	 CE3CPq/S1iCJwQIK34C22BGLFalm1JnFgsmMNSfcsSzN3uSrhrAnDMn9w2CMURQDnU
	 QNwVuKw1QpFcEOj+wpgkeU957cwywH3H3lk6hLNLWElhzmf5LE4lH5FDe2afWxO2Ao
	 W+ZV0074rceQQ==
Date: Fri, 28 Apr 2023 16:12:16 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <qeoBMt9Mm6haBZeqB3dBdNyMxwfEaYeBda5AgPOfw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6L4HX6W2G3ICCCUT7OE7LSUUYEQ2Y6ZL
X-Message-ID-Hash: 6L4HX6W2G3ICCCUT7OE7LSUUYEQ2Y6ZL
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using PPS/TrigIn to collect bursts of samples in C++ UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6L4HX6W2G3ICCCUT7OE7LSUUYEQ2Y6ZL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2031401606563170889=="

This is a multi-part message in MIME format.

--===============2031401606563170889==
Content-Type: multipart/alternative;
 boundary="b1_qeoBMt9Mm6haBZeqB3dBdNyMxwfEaYeBda5AgPOfw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qeoBMt9Mm6haBZeqB3dBdNyMxwfEaYeBda5AgPOfw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I have an application where I collect timed bursts of samples every perio=
d of time for an amount of time. For example, Every millisecond, collect =
samples for 100 microseconds.=20

I=E2=80=99ve used GPIO and other synchronization methods successfully bef=
ore, but I am wondering if its possible using the PPS on the ettus n321, =
where a square wave with period 1 ms is passed rather than 1 second, then=
 using timed commands in C++ to carry out the burst collection on every r=
ising edge of the square wave.=20

Thanks

Joe

--b1_qeoBMt9Mm6haBZeqB3dBdNyMxwfEaYeBda5AgPOfw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I have an application where I collect timed bu=
rsts of samples every period of time for an amount of time. For example, =
Every millisecond, collect samples for 100 microseconds. </p><p>I=E2=80=99=
ve used GPIO and other synchronization methods successfully before, but I=
 am wondering if its possible using the PPS on the ettus n321, where a sq=
uare wave with period 1 ms is passed rather than 1 second, then using tim=
ed commands in C++ to carry out the burst collection on every rising edge=
 of the square wave. </p><p><br></p><p>Thanks</p><p>Joe</p>


--b1_qeoBMt9Mm6haBZeqB3dBdNyMxwfEaYeBda5AgPOfw--

--===============2031401606563170889==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2031401606563170889==--
