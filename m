Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BB77C9E13D5
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2024 08:18:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8024E3858D6
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2024 02:18:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733210306; bh=HHtjvcJlyfItGe5ExcQuQbacRtru68IG1CWZ6OVBvGM=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=Jc7B733eYxqLOv5LNOj/BmNjHDYdGNk+bQiC3FxNBWYSKmJYu1aEOnWxiQHv4lRYm
	 FW5gS+6xvbNVjzK0KB4diYz3Sv04wjbel9UaUBKkPSJ01aUSMgHJbDONddpSTQCeVg
	 Jlvsd1XCBYYT5n7fZdevTqJhQ7aVkhouIIUgMaiqh6jRI7WhR979GtEWlbTN88UO/O
	 9U3W7yzNrO96bLLtq9fFHVGb7pkPjP/l+cl48FnjRAHxXh2H76CZK0fr9VnHD+k8Tb
	 98DOE8vKSm+47xgnpWB/i5aWQIywr5JQ9865mAvYhWCBLm3iNkA17VHydGDcP/mIZU
	 njfn/VG/d8kKg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5FF23858D6
	for <usrp-users@lists.ettus.com>; Tue,  3 Dec 2024 02:17:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733210265; bh=ewxLtBNYwhS7NruBzX3hTmRc+ueBWeWg8ScI+a4b9Fg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ehc6JpZn8PbozcBx5njbNMelVJVlcCqUONv8R6fDBd7nuamBJoYxivhWQHFDp0PfC
	 hq7seWfB7UkdIK5MwD7scSl/DChyqZFed9Yh0/nwkzCYQQRHnzCsmFPqK9RcopcNc+
	 UBj7a9y9YToPmHg59e2WAp9bIHjklOizVl3i8pz/ntUJ06ZskLE31Kby3d0UI5P+gv
	 W98s8MN+rYUlexubjpBO4Rn5qNKaSEawAIGwvw0T5Y5fYPC2k6sNA+MFCgPoMIhwcG
	 aIv/VJwVmGyAUq2ri03ysaLoQgY3PFXCDCF6Od+RUgwdTWrQCWVwOTcb81G2eBIv2W
	 /hr4Vl9gtz6GQ==
Date: Tue, 3 Dec 2024 07:17:45 +0000
To: usrp-users@lists.ettus.com
Message-ID: <DtNk1iz8cTkD8En5inQ2h3tIb7YhwyTY1NEIIFIgOlY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAO=xj9VQiDaA2u3mtQ+RLEqSWf6ZQf04qJBPsBNT_mWB9Bz=Uw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: B7N2Q72FFQJMIN7K3O4YPXRSDEXDVWRD
X-Message-ID-Hash: B7N2Q72FFQJMIN7K3O4YPXRSDEXDVWRD
X-MailFrom: joerg.hofrichter@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD, DPDK compatibility question
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B7N2Q72FFQJMIN7K3O4YPXRSDEXDVWRD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "joerg.hofrichter--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: joerg.hofrichter@emerson.com
Content-Type: multipart/mixed; boundary="===============7848025535603066532=="

This is a multi-part message in MIME format.

--===============7848025535603066532==
Content-Type: multipart/alternative;
 boundary="b1_DtNk1iz8cTkD8En5inQ2h3tIb7YhwyTY1NEIIFIgOlY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_DtNk1iz8cTkD8En5inQ2h3tIb7YhwyTY1NEIIFIgOlY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Houshang,

yes, UHD 4.7.0.0 is compatible with DPDK 21.11.6

Kind regards,\
J=C3=B6rg

--b1_DtNk1iz8cTkD8En5inQ2h3tIb7YhwyTY1NEIIFIgOlY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Houshang,</p><p>yes, UHD 4.7.0.0 is compatible with DPDK 21.11.6</p=
><p>Kind regards,<br>J=C3=B6rg</p>


--b1_DtNk1iz8cTkD8En5inQ2h3tIb7YhwyTY1NEIIFIgOlY--

--===============7848025535603066532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7848025535603066532==--
