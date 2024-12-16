Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AD79F2BB7
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 09:25:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5ED5E384CAE
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 03:25:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734337525; bh=E8kqlpZBoajyxQnRZkookZ3GAOp6psW2uFNLpsUwzVc=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=BZegUclQ8MgY2ggKzI/bBCTAU9chgnPM5qlwSwVe+RDrLfiSOkcGiN/Pkeo1bRZkV
	 Ik18Ke2ZJwMCCCxAWavlMbVxRTIRdv71ehNdg+vh8hx+XlwbMUIRjUVL8xYeTJVPRh
	 CNFdVuQp7Ao5d9mnAm7QjIBBbBfRkMi+vOgFzqOHrtsHEoeH9qgIpCY0gLg4MsidA/
	 FgxcY0tRArURw9RPtFyWS9lRFBbtNL03Wk+LS8uxthjT6HwImbRmdmQN59a3lzEVz2
	 t4n7ZOqygQztzjrS5pb4fBkrjxxJSndfyq/ActY/JRc8NeYPOTTVhd/R7rDBctY1pV
	 pb3ON08HQgg4Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2CF5A3854D1
	for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 03:24:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734337472; bh=4B/44rq+pcFiG49OvPwVRwy5xQOCQw8XkFPBkBXhYSs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=X00NTitgWu1CK+TMkTK/inmf8xncnR/TNwoPFNLEBnGEvwsmJBKwqbdOYGWYo3cop
	 /meM//a3uqy1l1MDvZeRZ7ebpGqjPrUPIiBzOmwvGOKa5m1OMBo/wNcizUAKrq3EEc
	 nGJ2Q4eFPZR56DAXBi75P12p+xd5dCZRQCGo2PJ1OUpd8bRtV+WoTrW1V4wp7C2gxy
	 xixqX0c8oocXOaoVtFpNz0m7WksvuCZbb9kZUT7v1hFvJQtLAhJ3b9HsNtcLp2nYO5
	 5EcPvwojFkWc+InXtWx56PvcHAAjVGXdD46l9AnQ9VBMF2DqalGQm69LMuzjPy0r3C
	 1SV31MP6HsaGQ==
Date: Mon, 16 Dec 2024 08:24:32 +0000
To: usrp-users@lists.ettus.com
Message-ID: <d7T7tM0aGWW5uar78IXvjlWUHGOBTpA1UWbvn9igs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 0GeW5wQELK8LawMFObDDGAZ4rNe6MTTrdfErOIxZpNk@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 2FTK3O2OJODT5NYDWTOKIGBMDTKZ2IM3
X-Message-ID-Hash: 2FTK3O2OJODT5NYDWTOKIGBMDTKZ2IM3
X-MailFrom: joerg.hofrichter@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N300 device not found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2FTK3O2OJODT5NYDWTOKIGBMDTKZ2IM3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "joerg.hofrichter--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: joerg.hofrichter@emerson.com
Content-Type: multipart/mixed; boundary="===============2287917864744309673=="

This is a multi-part message in MIME format.

--===============2287917864744309673==
Content-Type: multipart/alternative;
 boundary="b1_d7T7tM0aGWW5uar78IXvjlWUHGOBTpA1UWbvn9igs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_d7T7tM0aGWW5uar78IXvjlWUHGOBTpA1UWbvn9igs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

you could check if MPM (the daemon on the USRP which UHD connects to) rep=
orts any error during initialization. Log onto the device via ssh (ssh ro=
ot@192.168.10.2) and execute the following command:

journalctl -b -u usrp-hwd --no-pager

Kind regards,\
J=C3=B6rg

--b1_d7T7tM0aGWW5uar78IXvjlWUHGOBTpA1UWbvn9igs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>you could check if MPM (the daemon on the USRP which UHD con=
nects to) reports any error during initialization. Log onto the device vi=
a ssh (ssh root@192.168.10.2) and execute the following command:</p><p>jo=
urnalctl -b -u usrp-hwd --no-pager</p><p>Kind regards,<br>J=C3=B6rg</p>


--b1_d7T7tM0aGWW5uar78IXvjlWUHGOBTpA1UWbvn9igs--

--===============2287917864744309673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2287917864744309673==--
