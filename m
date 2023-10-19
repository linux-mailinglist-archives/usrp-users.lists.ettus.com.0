Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F917CFDA3
	for <lists+usrp-users@lfdr.de>; Thu, 19 Oct 2023 17:17:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 857FC3858F1
	for <lists+usrp-users@lfdr.de>; Thu, 19 Oct 2023 11:17:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697728652; bh=oQoX53b62+yKKf7ozCd0szYkgZ7RvwIq0IUZoDmQfl0=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YbCsVStuAg7XwXQM1EFcPhj4hUsx9QEuCi5084rSX90Er+KHHlc3mqIgNUUfRyqvd
	 q0Px7KUit2MmTvdbqyEvlAvNzb+8EJRYhhegWN8JBr+AKnfhESPVRJux7bar5XlIyJ
	 I8dHQHM0qnuQnPiJRHIxcjjdcGM5Xhe2ISMSNPnI/7KKtssm7BHsL6ORuruQHOMAgu
	 Ui/fkWjwyz7pD6GQNx5LYC1aDZFFj90Pk5D5dOB+xN29ecV34AlqZ/Jw6P6qbzRfTO
	 BlpArXnwfR/HzYy81VsV1AUEih545rhjHAg7ShLVteepy7YF735x6g99gU8vcAr3ne
	 gGOBd3/dGN68g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9748E385306
	for <usrp-users@lists.ettus.com>; Thu, 19 Oct 2023 11:16:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697728609; bh=iSogTfrfBwURC1iytnwRB6Jnwbh8K4FPIdROxmciAcw=;
	h=Date:To:From:Subject:From;
	b=Bnavzv9OcPzLqrb/CMhyAyL6qAjArK7m+cPyvyoUzNp65g0ioBLmv8nJ+3a1jpoT3
	 zFTQELI21W1dY3qHyUcGGl3Hj9AjlyG9jz7poOM+znhAUJGQyjGG/yphcU+i/Buj3w
	 BZU+xGX5/iaocZk83y97uxiiEPWeZLSBSW2MHbMkvbVVb+nYxH9WQSw0og4A0hXwV4
	 eHpanhK6SsAXZ92BdOo/GTtceaFgobzJ/yL0rUKMam65+0tWAbxyS8yomXqCgBwkUK
	 5wTCP5TLnkz9uu4F7MgcW75egwkjWH2Gf+iz1bgwCLkTEQkWvrm7BMO0ERIYxIL6Ya
	 qf3lfkzL1FFyg==
Date: Thu, 19 Oct 2023 15:16:49 +0000
To: usrp-users@lists.ettus.com
From: mmason@mitre.org
Message-ID: <1QdlHEpHi3NC9pSHVqr0BMvgyLBk3DNMOqYhxaF7YAE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: AZKS5LFG5WJVFA5E3P7KFDWG6DSFGC6B
X-Message-ID-Hash: AZKS5LFG5WJVFA5E3P7KFDWG6DSFGC6B
X-MailFrom: mmason@mitre.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP X310 Error: Unknown setting registry name: CORDIC_FREQ
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AZKS5LFG5WJVFA5E3P7KFDWG6DSFGC6B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5113260404268588734=="

This is a multi-part message in MIME format.

--===============5113260404268588734==
Content-Type: multipart/alternative;
 boundary="b1_1QdlHEpHi3NC9pSHVqr0BMvgyLBk3DNMOqYhxaF7YAE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_1QdlHEpHi3NC9pSHVqr0BMvgyLBk3DNMOqYhxaF7YAE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

We have 1x USRP X310 SDR connected to a server running the Linux OS. We f=
ollowed the online instructions and ran the commands below to install the=
 latest FPGA image on the USRP. We can PING the USRP (default addr 192.16=
8.10.2) from the server (added static network addr 192.168.10.1). However=
, USRP_FIND_DEVICES fails to locate the device, and UHD_USRP_PROBE and GN=
U Radio return an =E2=80=9CUnknown setting registry name: CORDIC_FREQ=E2=80=
=9D error.

Looking for an approach to resolve this issue.

--b1_1QdlHEpHi3NC9pSHVqr0BMvgyLBk3DNMOqYhxaF7YAE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>We have 1x USRP X310 SDR connected to a server running the Linux OS. W=
e followed the online instructions and ran the commands below to install =
the latest FPGA image on the USRP. We can PING the USRP (default addr 192=
.168.10.2) from the server (added static network addr 192.168.10.1). Howe=
ver, USRP_FIND_DEVICES fails to locate the device, and UHD_USRP_PROBE and=
 GNU Radio return an =E2=80=9CUnknown setting registry name: CORDIC_FREQ=E2=
=80=9D error.</p><p>Looking for an approach to resolve this issue.</p>


--b1_1QdlHEpHi3NC9pSHVqr0BMvgyLBk3DNMOqYhxaF7YAE--

--===============5113260404268588734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5113260404268588734==--
