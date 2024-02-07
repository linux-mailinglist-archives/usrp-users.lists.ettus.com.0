Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B720884CFD1
	for <lists+usrp-users@lfdr.de>; Wed,  7 Feb 2024 18:31:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A582D384C12
	for <lists+usrp-users@lfdr.de>; Wed,  7 Feb 2024 12:31:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707327097; bh=GjWHtY3C1sgXMQdjSqrY7gifVcztJoTUjSAAc+ppsPY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=NYEXjFqGJbo+buaY6ccSERVR+M2eEPimjPzgrT4PsJZzCOSsRflv0rUzIolPqQfk2
	 gmfRYvhTYSy67WzjbKu3ZK1CJv2jKmpMZGjulbLmhOlV1y6s3aUGWJ+Swl+C58UWdy
	 +qOVtmxzVokk1T5Cdw2ZbGiUsHQq5QIu4DHVIX++d23iLSzMnkghBu4RFt/oktZY37
	 2kJJ0J8rrQWf1mFjHiQXHX2Lk5/Vcs/Uq9K4Ae1ITkpIdghpiV1wD+aHylBvzxJG7p
	 TKE7Jvit1XrtFsqy76K2D7R/tcMIwlxquZ/L1btxXZUE2FPkCAwPcZPRBZax+tjUA6
	 ItRK4/8cqEVcA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 52624380BE1
	for <usrp-users@lists.ettus.com>; Wed,  7 Feb 2024 12:31:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707327085; bh=8uj7Bc3rwXz6f9TayWC0H0anTrAvlJN36Ugi1iO1UM4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=N5FXStOEcvKGeVr+TNQ5Ml0jHaTHoeYnXVJAsi57A1AJ8TpO4/I2l8JOELW/XGx4S
	 mhXEeWbh3MPQIPjXDnEb2YLKoaC6mgPSwvCx+nqkrsd+KQ6rZuIzxIZg1f1te77KvY
	 m9/li+aGusoPH89xvUdTyLx7zedl7MyJuE1CJ06sEOIjGvBGCnbjerTKBPc5qUwd0Q
	 qtAgekkElS3hP3O3zvDsQWC52MTF6Rr4vSIH8FYl+MqQ2ynxJZyVA0F1SK70IqSgnv
	 yTsbT/rZt6G6JPXkOYQx9JQJjVZsxErbYChdN02yjFvmawUv7nNT6mpL6Z/lGxUw/X
	 Pk2VmAwIQzjUg==
Date: Wed, 7 Feb 2024 17:31:25 +0000
To: usrp-users@lists.ettus.com
From: zackkomo@utexas.edu
Message-ID: <ycO4uoWBdjHTZ44eIeq8Z7lu2Zr13xUvr7k7c88DXE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: AN0jECr3lF8bPyKpF12XR8OsXBYlEDEsAYcDp4egqY@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: TKWCRJYSBTVZUWM66EI2UIXOTKFXOE5T
X-Message-ID-Hash: TKWCRJYSBTVZUWM66EI2UIXOTKFXOE5T
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Align multi-channel captures with different rx_stremers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TKWCRJYSBTVZUWM66EI2UIXOTKFXOE5T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5652521604787254063=="

This is a multi-part message in MIME format.

--===============5652521604787254063==
Content-Type: multipart/alternative;
 boundary="b1_ycO4uoWBdjHTZ44eIeq8Z7lu2Zr13xUvr7k7c88DXE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ycO4uoWBdjHTZ44eIeq8Z7lu2Zr13xUvr7k7c88DXE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Actually I was running it wrong=E2=80=A6 The md.time_spec on each of my t=
hread/channel=E2=80=99s first call to rx_streamer->recv returns the same =
full and fractional seconds from md.time_spec, but my method of checking =
against the estimated time form the GPS signal still returns about a 700n=
s difference.

--b1_ycO4uoWBdjHTZ44eIeq8Z7lu2Zr13xUvr7k7c88DXE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Actually I was running it wrong=E2=80=A6 The md.time_spec on each of m=
y thread/channel=E2=80=99s first call to rx_streamer-&gt;recv returns the=
 same full and fractional seconds from md.time_spec, but my method of che=
cking against the estimated time form the GPS signal still returns about =
a 700ns difference.</p>


--b1_ycO4uoWBdjHTZ44eIeq8Z7lu2Zr13xUvr7k7c88DXE--

--===============5652521604787254063==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5652521604787254063==--
