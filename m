Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C67C38447C5
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jan 2024 20:07:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7036384DE9
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jan 2024 14:07:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706728058; bh=eXNqM3sLdNbDXxq9agh2khF5mR+l+NC9IH/+WUb6gS4=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=QZtL0sUwnX77XX5OtD2J9eHPYr0f34hSSGf40efKuqOttLNKisWcIft6s+pfSZn4R
	 0PDhD2N4jRDyPIHj4ZBpB20k+Hx2S+3Ki/r9GLInfIKX/teoztV/KoOoesL6hmBSNT
	 icn2RzHPOTemJTcabInSpSqhso52Vvyd4LTxMLJmVKdxewV0+mNjujarTOEGxFleyF
	 Zd3HtOIx2jSXJcAaKDBLpYrsZJvr2XuFMmmwuqB/fVYwbg3DBBMCZ9WDOoknUN7XNJ
	 UrC/0CKYQjl2wr1XQP5wrHAguorXR8rsbUZJq6epOumiS8SyxBS6CDQcuuQMEk8Vcs
	 dz0iKDR3Czu8A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98B34380B09
	for <usrp-users@lists.ettus.com>; Wed, 31 Jan 2024 14:07:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706728027; bh=ZKWHZfDaIpybcpHwQ45mLaEo3ElRpP61q+tD4GKxtx4=;
	h=Date:To:From:Subject:From;
	b=vK7MRANB9pWNAvYWqZ8Jj6ASR6WT/KNYCxOTyvcstf+4pg3a1LjrbWp/PtxXV7/aq
	 r1gE8BZ4yTb+F8EKBNAc12A0RQKSAETHZJ/Dl0mSwwqWoipdL1HpLWGrVYW/PyZV1m
	 zrCB57yrT81Vr7eAjw1Ulk2vmh64vBqm8HEXIYrNJXUJcUg3fdcKatbVCdFh7tftAF
	 uL+jXWmOR6aUa9JzqfE+RhxjKoB/pkdFuhQV0Lw3kw9ttMDYdl+tczLum6JQiHUIJB
	 MVDZ5Sg/9xyjlk2z3RUye0UaOU3HORfDGUFUeQ6ApD+UPpuymGfSruniIiXTpyZR7d
	 KLYGiX1YJGDLQ==
Date: Wed, 31 Jan 2024 19:07:07 +0000
To: usrp-users@lists.ettus.com
From: a.lapini@ifac.cnr.it
Message-ID: <0pxXn61blHnbsMbyqjZ6C9ITSw2lVrTPeJJewdRZX0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: FITRWEEV7WOW5FACJEGZX2PMEZWD27QD
X-Message-ID-Hash: FITRWEEV7WOW5FACJEGZX2PMEZWD27QD
X-MailFrom: a.lapini@ifac.cnr.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC Python API for timed GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FITRWEEV7WOW5FACJEGZX2PMEZWD27QD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8890440702559964009=="

This is a multi-part message in MIME format.

--===============8890440702559964009==
Content-Type: multipart/alternative;
 boundary="b1_0pxXn61blHnbsMbyqjZ6C9ITSw2lVrTPeJJewdRZX0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_0pxXn61blHnbsMbyqjZ6C9ITSw2lVrTPeJJewdRZX0
Content-Type: text/plain; charset=us-ascii

Hi everyone,

I have almost done developing a customized FPGA block for the x410 in the RFNOC framework and an associated PC application based on the Python RFNOC API. I have still to add a control for an external switch and I would like to use the card's GPIO, but I have no specific experience on this.

The external switch is required to toggle among 6 states on a known scheduled basis, where the time periods between transitions are relatively long (from tens to hundreds milliseconds). The amount of actuation delay is not an issue, but the toggling signal should be synchronous with the processing (the delay of the piloting signal should vary at most some milliseconds).

Watching [Martin Braun's presentation](https://www.youtube.com/watch?v=ppD06ZETnek&t=1420s), I thought that "timed toggles" could be a solution. Nevertheless, I cannot find the methods "set_command_time()" and "get_time_now()" in RFNOC API objects such as RfnocGraph or RadioControl. I am working with UHD 4.3.

1) Are those methods or similar one available somewhere in the Python RFNOC API? If not, is there a plan B?

2) Generally speaking, do you think my approach is good or you would suggest a better way to do it in RFNOC?

Thank you in advance,

Alessandro

--b1_0pxXn61blHnbsMbyqjZ6C9ITSw2lVrTPeJJewdRZX0
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi everyone,</p><p>I have almost done developing a customized FPGA block=
 for the x410 in the RFNOC framework and an associated PC application based=
 on the Python RFNOC API. I have still to add a control for an external swi=
tch and I would like to use the card's GPIO, but I have no specific experie=
nce on this.</p><p>The external switch is required to toggle among 6 states=
 on a known scheduled basis, where the time periods between transitions are=
 relatively long (from tens to hundreds milliseconds). The amount of actuat=
ion delay is not an issue, but the toggling signal should be synchronous wi=
th the processing (the delay of the piloting signal should vary at most som=
e milliseconds).</p><p class=3D"">Watching <a href=3D"https://www.youtube.c=
om/watch?v=3DppD06ZETnek&amp;t=3D1420s">Martin Braun's presentation</a>, I =
thought that "timed toggles" could be a solution. Nevertheless, I cannot fi=
nd the methods "set_command_time()" and "get_time_now()" in RFNOC API objec=
ts such as RfnocGraph or RadioControl. I am working with UHD 4.3.<br><br></=
p><p>1) Are those methods or similar one available somewhere in the Python =
RFNOC API? If not, is there a plan B?<br><br></p><p>2) Generally speaking, =
do you think my approach is good or you would suggest a better way to do it=
 in RFNOC?</p><p>Thank you in advance,</p><p>Alessandro<br><br></p>

--b1_0pxXn61blHnbsMbyqjZ6C9ITSw2lVrTPeJJewdRZX0--

--===============8890440702559964009==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8890440702559964009==--
