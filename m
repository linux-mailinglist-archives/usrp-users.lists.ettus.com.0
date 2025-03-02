Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 074E0A4B29A
	for <lists+usrp-users@lfdr.de>; Sun,  2 Mar 2025 16:30:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F0E813852E6
	for <lists+usrp-users@lfdr.de>; Sun,  2 Mar 2025 10:30:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740929443; bh=35exVpbUkMBekQveglasuD8wgDCZe1K6LljtFrYQaeo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FW66ytisBCMQUUJbu/VQJ0aPMZQM7RTstfuYT+n39vMyUzE2fuAtGpxUDNlcTmWo0
	 Ted8WvroEet9WE1Kk67Q1vbeaTxbmWvRJTSOoU3oP2ywdWZgOY5Yb/F1uUqDwrE2Ej
	 J2ALAcldPCZ+Xufy/aFCJa7cT7LhfGTmJX6MzcN044CMngjm1/zyYxnGqvM4OvaoVl
	 naJzYeCqcreiJs+XRP0DIwvujq/d5dke/rTGa/jwu7FD4lMzhNpOB7u3gcwd8y2fAw
	 IIR4nqjQH7oXDg0OJ2UGmjwezsgeox0HMW+I3+u0jmotXJHwRJgM036UZI2KZNkmdZ
	 LJDl22+q66tIw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDBB63852C3
	for <usrp-users@lists.ettus.com>; Sun,  2 Mar 2025 10:30:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740929439; bh=/Q7/FiTV8CzwBZgEgaOVX8Ay/GSkhM2W8g44TfP+xKc=;
	h=Date:To:From:Subject:From;
	b=t7MqdlsxuIl5OdX9tHVLQfAWDe/O6HSoXp6o2p1BWvEa3PyCa7MKMFkrqWmvMMV7n
	 p6QkoA19UrQ2tuSHrvyZzWDQke1U/fqygP229vtxbXNxlpC12rU4l11zvPLStyWhb4
	 dlrQRrreKBsHbAmT6s8uaCb/sFDScrhvM8m0cvbRB+oSoX0SRQ/yQdcNmaMFCeTHyu
	 1qaAiGHx/faG2ii0fEVf0pUSAIDKIxD9zdpAFy6IuuYuCe3HLAm3TnPUd99ogY2jJe
	 oyqjUIsyPP4xS0fBD6ZAU6sf2JzqlwSvHchO60bAnlVrQE59L3pA9GXfG8VX4zZB/+
	 ANuqEJ1bDg0ew==
Date: Sun, 2 Mar 2025 15:30:39 +0000
To: usrp-users@lists.ettus.com
From: ardelgado@gradiant.org
Message-ID: <NfC7ne7Ls3hGYVuE6vLdDhXUcd3es10GpanSZKas@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: DIJWFJBIWQ4JO5IPDAGJ3CSOP4IAEULO
X-Message-ID-Hash: DIJWFJBIWQ4JO5IPDAGJ3CSOP4IAEULO
X-MailFrom: ardelgado@gradiant.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Octoclock test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DIJWFJBIWQ4JO5IPDAGJ3CSOP4IAEULO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7507586593285020096=="

This is a multi-part message in MIME format.

--===============7507586593285020096==
Content-Type: multipart/alternative;
 boundary="b1_NfC7ne7Ls3hGYVuE6vLdDhXUcd3es10GpanSZKas"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_NfC7ne7Ls3hGYVuE6vLdDhXUcd3es10GpanSZKas
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!\
\
We are testing the Octoclock-G. In this case, we attempted to connect thi=
s dispositive to an X410. The problem is determinating when the USRP and =
the Octoclock are synchronized. \
\
The test_sync_clock script should confirm this, but we are unsure of the =
results. With both devices on, the test passes. However, when i turn off =
one device and turn on again the test still passes ,no matter what i do, =
the result is always correct.\
\
Is there another way to confirm the synchronization? I read about checkin=
g certain register with uhd_usrp_probe, but i didn=E2=80=99t find anythin=
g relevant.\
\
I would appreciate any insights from someone who has tested the OctoClock=
 and knows the best approach.\
\
Best regards,\
=C3=81lvaro

--b1_NfC7ne7Ls3hGYVuE6vLdDhXUcd3es10GpanSZKas
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi!<br><br>We are testing the Octoclock-G. In this case, we attempted =
to connect this dispositive to an X410. The problem is determinating when=
 the USRP and the Octoclock are synchronized. <br><br>The test_sync_clock=
 script should confirm this, but we are unsure of the results. With both =
devices on, the test passes. However, when i turn off one device and turn=
 on again the test still passes ,no matter what i do, the result is alway=
s correct.<br><br>Is there another way to confirm the synchronization? I =
read about checking certain register with uhd_usrp_probe, but i didn=E2=80=
=99t find anything relevant.<br><br>I would appreciate any insights from =
someone who has tested the OctoClock and knows the best approach.<br><br>=
Best regards,<br>=C3=81lvaro</p>


--b1_NfC7ne7Ls3hGYVuE6vLdDhXUcd3es10GpanSZKas--

--===============7507586593285020096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7507586593285020096==--
