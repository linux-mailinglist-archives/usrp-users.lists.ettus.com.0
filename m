Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A46D36CC173
	for <lists+usrp-users@lfdr.de>; Tue, 28 Mar 2023 15:53:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC639384675
	for <lists+usrp-users@lfdr.de>; Tue, 28 Mar 2023 09:53:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680011595; bh=eBwSwrLQGteLFs2gwvMi4fRt4xNnO3vtKpI0uXng++M=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=j+y7DiE1xOGtTLNlG8fYwnTmcc6ua+cp3H11YD9RtSehB1UZpWWVq+s+EbR97ODSS
	 r54L9CGjgaB0UOfv/nqvezBumsSL2/1CPUjDVUgKwEDSyRJGUEr7mkQpKoVVNRVXco
	 /djdm1bs6khJac/BeyKa3RciiP8booP8pbtQmb5pU2Q2fnzUUb+lnONiBZeVvDVEiw
	 KwkIQCDZcNKXJ5k2qsLO4EXH2OlbbTCFR+RKPKWpjk6mxqZ/dGrgMeNtLWYvkOXuXm
	 e/vW4GzmO496wDDimDe10WcuXW6cL4OBHoNQbgsXDGlLJ+cNHfboes7GabBxdbE0Hx
	 3RzjzSA/uPaZg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 080FE38439E
	for <usrp-users@lists.ettus.com>; Sun, 26 Mar 2023 22:13:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679883219; bh=Lbpl3VfaMkX5BUBdApGECuMpuzfMk5kFLo3utVuWPk0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=kSNXIe0YImkmBpIdxqFDtcnSdm//cJTZxK1bj80gsLwDxN1AFCJh5ajicIMhSHoUK
	 XFlO++LqBm6NkPSwPH8DUtxjKV4fp2MeyB4DSTui8ElRmh0XSpTsOj+JMxZnPV+gAu
	 Omkl/5EqXFJq9bYwISvp82ym5eKBQBo67uiGyfhlWqVhYIIbbPWRmNH3YbnKky2DsX
	 5+AUSJfPNp6Bj2yrHLs1FtDWzdbOjVvvbM+6C6XV3BIIo+ntXnr2jcgCfB+tJZOuuC
	 jccu2frG/PzDSRygLLkcB+MEmdUYxAvtxMEIIugZM9J1MeNoA52odbSDCu4K1mXARH
	 wYb2C/KiED1CQ==
Date: Mon, 27 Mar 2023 02:13:39 +0000
To: usrp-users@lists.ettus.com
From: soring@ayecka.com
Message-ID: <YpXFP4QggRrGSSMNy4xiU4alOPUjua9adqRBwdMwA3Q@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: bbb02fc3-03e3-4d18-f5e8-3e33d6c2b5eb@gmail.com
MIME-Version: 1.0
X-MailFrom: soring@ayecka.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
Message-ID-Hash: 4HPWSXD325ZCYVOPWSRIGGNPDLTO72AR
X-Message-ID-Hash: 4HPWSXD325ZCYVOPWSRIGGNPDLTO72AR
X-Mailman-Approved-At: Tue, 28 Mar 2023 09:53:08 -0400
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini i very high lo-leakage, image rejection and aggressive DC correction.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4HPWSXD325ZCYVOPWSRIGGNPDLTO72AR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5414239520924819460=="

This is a multi-part message in MIME format.

--===============5414239520924819460==
Content-Type: multipart/alternative;
 boundary="b1_YpXFP4QggRrGSSMNy4xiU4alOPUjua9adqRBwdMwA3Q"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YpXFP4QggRrGSSMNy4xiU4alOPUjua9adqRBwdMwA3Q
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you.

A. Let me understand. Can I make the lo_offset higher than sampling rate/=
2 ?

B. I will try.  About =E2=80=9CBut, also, consider LO offset in the TX pa=
th as well.=E2=80=9D I don=E2=80=99t want to use a tunable filter. \
\
We did work with other Analog devices component. They are capable of bett=
er performance than they show in your device.

--b1_YpXFP4QggRrGSSMNy4xiU4alOPUjua9adqRBwdMwA3Q
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thank you.</p><p>A. Let me understand. Can I make the lo_offset higher=
 than sampling rate/2 ?</p><p>B. I will try.  About =E2=80=9CBut, also, c=
onsider LO offset in the TX path as well.=E2=80=9D I don=E2=80=99t want t=
o use a tunable filter. <br><br>We did work with other Analog devices com=
ponent. They are capable of better performance than they show in your dev=
ice. </p><p><br></p>


--b1_YpXFP4QggRrGSSMNy4xiU4alOPUjua9adqRBwdMwA3Q--

--===============5414239520924819460==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5414239520924819460==--
