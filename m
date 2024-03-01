Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3118D86E7BA
	for <lists+usrp-users@lfdr.de>; Fri,  1 Mar 2024 18:51:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 650273853C4
	for <lists+usrp-users@lfdr.de>; Fri,  1 Mar 2024 12:51:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709315478; bh=LYAyeK20ft5sj+/Xpx4viOd4PvHRn3GOP1vcFLcCbhA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=aVxSZa/CgO8Z1U8xrLCpXfIO9dHn2Ml0odTkszLQRcasJeF1XkehuXv5/SJPerMAf
	 6aUusJ/MzD77hhGyviY3uKCHChp9q8auqKjG2piD6L6KAXytHTcfkS04dWfGNCRgLg
	 LejoMExf04yaXYpwMJGZXoZFmqsMP5nT+xAGubZZoI6iALnN7eFGBvFTscn+KwheNm
	 YhB/W700iDYilGOzaMDYro3TFNjDIllZOh0Pjebng5G/UkiAou2n8qGclkh1Qu2m3n
	 /ZI0A3oV1TWwPcO8qAMuMjQkkmVwyc/s8jgn92rtCBJtg2hDJ6bj0MISAxpYAlGX/G
	 Jo2bcyq3KOgLg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 019783852BD
	for <usrp-users@lists.ettus.com>; Fri,  1 Mar 2024 12:51:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709315470; bh=3i+k3oPgDBSAs+wklkBMgc2JcPQZBcof2d6utXU/irs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=wzqBUGWvPxazcbmaZj+lK9tQX7R51ywEDUdSeNAwbhp6psahzaLTfF5W4zaW4uyGC
	 LDMZFa81Bbz971Aomlp9CC0XGUsirAJgEEeg7orkIF9PaPv5SKH87ZODNhRhH8nE8d
	 FVM5EGH/kcqfQgnD1QWeyMKW6UH50pVxYOzIVBgi9ZH745HLTvIa0BLUzaQhVbD81b
	 dT9662dpUG0nyNzY/lfD2e1VP2rBXVlGTcM9z0dF7JkIxs5ykUomRymbXPEw68ulVZ
	 K3ZO58bRsZWguLEvS7Oq0db3Sl0mXTJi7WBeNOhbyMzwjkNFMXtivjpZ2sbwyJJEZR
	 UyYEzUCVyKCyw==
Date: Fri, 1 Mar 2024 17:51:10 +0000
To: usrp-users@lists.ettus.com
From: pav.vieira@gmail.com
Message-ID: <Maq03hIJPYpXjI3bsfuU65783z0IGrfni3uHy4W8U@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: cdbJcYMr8pGRK0kFdO95VBBKeyHffyOdhWhK1eeY@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 6ZU2BRWHWEZFMG5CZZRCHGVBWZJTESIL
X-Message-ID-Hash: 6ZU2BRWHWEZFMG5CZZRCHGVBWZJTESIL
X-MailFrom: pav.vieira@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM signal transmission by x310 presents a peak
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6ZU2BRWHWEZFMG5CZZRCHGVBWZJTESIL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0861912236111261841=="

This is a multi-part message in MIME format.

--===============0861912236111261841==
Content-Type: multipart/alternative;
 boundary="b1_Maq03hIJPYpXjI3bsfuU65783z0IGrfni3uHy4W8U"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Maq03hIJPYpXjI3bsfuU65783z0IGrfni3uHy4W8U
Content-Type: text/plain; charset=us-ascii

in time... the NUMPY vector is of type complex 128 or complex 64.

--b1_Maq03hIJPYpXjI3bsfuU65783z0IGrfni3uHy4W8U
Content-Type: text/html; charset=us-ascii

<p>in time... the NUMPY vector is of type complex 128 or complex 64.</p>


--b1_Maq03hIJPYpXjI3bsfuU65783z0IGrfni3uHy4W8U--

--===============0861912236111261841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0861912236111261841==--
