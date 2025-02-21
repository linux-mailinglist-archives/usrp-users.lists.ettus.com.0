Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C642EA3F383
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 12:55:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84EE1385BF1
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 06:55:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740138947; bh=d88ZGtd1pu49wW94ADGnEj83nLCWw3+dStYZMO4qZr4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cm9ifY9rQIFgn7JL5kGnEdKLipmaG2wngb0qWQyVjCyB+PukrkBzjr+S5lOXLJH5t
	 EhRltdqjGeGuwDvMdd4FIo8wtG1EXJS6ZP0Yb7QHg0uSE61/l7u2eq+Eub78qSmjT0
	 +Zi6vVVhiY6bjdYjypw48iuqZ9lqgKj8ebORErzu6x2pf9FhwnZXyPtiRn2+oYkctC
	 SX/R2eptQRhMWn3wfv+apjZZfj9qXdkdHtsyslKiSlQzAqVAOLiIVJdaLtOr41jHsn
	 5dWqDra3C0oIiEAj6H12M8lbzj/g/6CkZ+v8irjQS0Sku1nlQCvBzengm9rItgDjP7
	 9GjOF4dfDVs7w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04EAE385BCC
	for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 06:54:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740138898; bh=wASWlCXcQYhnFK9NsFxhBfdAX2yQj6YADp8XaNWzyso=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=nQYAzPQXI28BCOHppzKZAoMloXER6CBqfpa3/47/LXmQdDIW4eHAiuuCB2g02eduM
	 dJDZUmLncnjTzKxgAOOmBaDaMQmcKqUt7UKP41y+5t4C25zHchCLAnRxbz7z6oJNxs
	 pV/ul9X6nZmO4tT+IQTU0lJMOFwLtMEoHgeptcbmd/I/92d7cX2pgrU0W9hV6+L0GT
	 ru1asrji8ClC2d7JrsOQy1zhviSZEvrzaQUDgCM5V9CQGULmQB6EzLUE+2YpzNGtnu
	 PPdJborY6XnVPJ6T39huhAY5ZSfAJz+icTnBGSpJ1Sbunhp9xhG241jRHpV2G2ezM8
	 tV0n3Q1wUn8lA==
Date: Fri, 21 Feb 2025 11:54:58 +0000
To: usrp-users@lists.ettus.com
From: anjana.krishnan@technosci.com
Message-ID: <sjXrQPQKOG67eb28aNUtX1AmuSrgYrp7NI3NJgrVB9I@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A6RT4Ak1Kgt8JDyygrNp+tEbws7SZDSjyFELr4FQK_1OA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: KHOPZMOVXHWZUMQ3PWV6CH7DML4BFHJL
X-Message-ID-Hash: KHOPZMOVXHWZUMQ3PWV6CH7DML4BFHJL
X-MailFrom: anjana.krishnan@technosci.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build UHD image from GRC file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KHOPZMOVXHWZUMQ3PWV6CH7DML4BFHJL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5907836756071021771=="

This is a multi-part message in MIME format.

--===============5907836756071021771==
Content-Type: multipart/alternative;
 boundary="b1_sjXrQPQKOG67eb28aNUtX1AmuSrgYrp7NI3NJgrVB9I"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_sjXrQPQKOG67eb28aNUtX1AmuSrgYrp7NI3NJgrVB9I
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Martin,

Thank you for the quick reply.

I had installed UHD and GNU Radio building from the source, referring to =
document =E2=80=98Building and Installing the USRP open-source Toolchain =
(UHD and GNU Radio) on Linux =E2=80=98.

Should the previous versions be uninstalled and then reinstalled with the=
 latest version. With UHD-4.8 which GNU Radio version would be compatible=
.

Thank you.

--b1_sjXrQPQKOG67eb28aNUtX1AmuSrgYrp7NI3NJgrVB9I
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Martin,</p><p>Thank you for the quick reply.</p><p>I had installed =
UHD and GNU Radio building from the source, referring to document =E2=80=98=
Building and Installing the USRP open-source Toolchain (UHD and GNU Radio=
) on Linux =E2=80=98.</p><p>Should the previous versions be uninstalled a=
nd then reinstalled with the latest version. With UHD-4.8 which GNU Radio=
 version would be compatible.</p><p><br></p><p>Thank you.</p>


--b1_sjXrQPQKOG67eb28aNUtX1AmuSrgYrp7NI3NJgrVB9I--

--===============5907836756071021771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5907836756071021771==--
