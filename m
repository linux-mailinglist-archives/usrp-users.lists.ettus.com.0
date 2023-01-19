Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CDB673DF9
	for <lists+usrp-users@lfdr.de>; Thu, 19 Jan 2023 16:52:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 571D33845D0
	for <lists+usrp-users@lfdr.de>; Thu, 19 Jan 2023 10:52:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674143530; bh=NoZv6D5BnSwziB7UD3MzvMp88t/iK3dmQTCP44DSPm4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CHxkP0M6CMS47gdeqC4wp8oBqoIPlzGCGZN+4cD42zYMK8BFojuo6ybwz0pMKBMFl
	 7Zmty+NaGXCM2zbbiiL4y5P8RGu8q/AAqdppNZ8/yEYOS2fi7zcyM02on6E72yfu8Y
	 UBDPoL5pMCocClEQZx+z21Hjr1z6i/OQDF4Ewd55t4Fnyhfw1auHKiHgq5/lRkpHd1
	 6ViAkgFe4ILqIhw6EqmGkYkDQgEnKZBpMqWyYg3ekJMvV/XYbLk/pZ9UQ0gTHHv/gk
	 Sun38qhZNfrvHQUDtE62VBWX+nVc4tJivtFAWVtQsKNwD0/5+E97rUuG3cjJgcQb39
	 sGZOFmRI0w+fA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C7AE383AB9
	for <usrp-users@lists.ettus.com>; Thu, 19 Jan 2023 10:50:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674143449; bh=XZdsQ4Ju8oneZPEJXxg1eD+Nmhb6XALMa8gX49sDW3o=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=cb8u1Es+PD1wEpjeOCnACaMfOEeSHgbBbbPumOT3BfEZj6uPcS++O9hL6oZmWxU/I
	 XPzkYEOR0TrLdcdZhX8bWI5boGiL01NNzF2e4J+tNvRO4G6bjxxzTDGIAPWWeusWQ0
	 OzfB/NcylJ+dOgY5K5XqaaMAw4CfpeBxNT8JuoOoTrYf7yqwOrkbS2s/YotJeSXysj
	 BfVPZAtfovxBm1bSWetNVfw+RyK9yipcmDluzQjnWby3S/g1Tg/O8AgaGXu0fr0o3z
	 85ZyJnzhc1Y4dBBKjpMVz42ZOIgSP4GkiQh9kk8qzNUfAaDaNjyks6LUFbHiiu5lOf
	 bpR994f1ZBCYg==
Date: Thu, 19 Jan 2023 15:50:49 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <3FeGotFEM05H0fJfzo30HrBIZl2MBLna87Th2M6Mc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK7xhGxu-QN+AUVX9dgSmOk8Y=PQcOVHLkFEAA+9mBM-Vg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: WF4H45V5IWJP5ZJD6HF3O4AJR4RAIZQR
X-Message-ID-Hash: WF4H45V5IWJP5ZJD6HF3O4AJR4RAIZQR
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running "make xsim"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WF4H45V5IWJP5ZJD6HF3O4AJR4RAIZQR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2842561977098965125=="

This is a multi-part message in MIME format.

--===============2842561977098965125==
Content-Type: multipart/alternative;
 boundary="b1_3FeGotFEM05H0fJfzo30HrBIZl2MBLna87Th2M6Mc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3FeGotFEM05H0fJfzo30HrBIZl2MBLna87Th2M6Mc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Running =E2=80=9Cmake xsim=E2=80=9D worked there for me, I think I unders=
tand this much better now. I believe running the simulations for RFNoC bl=
ocks will suffice for me, but I was curious if there was a top level simu=
lation.

Thanks,

Joe

--b1_3FeGotFEM05H0fJfzo30HrBIZl2MBLna87Th2M6Mc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Running =E2=80=9Cmake xsim=E2=80=9D worked there for me, I think I und=
erstand this much better now. I believe running the simulations for RFNoC=
 blocks will suffice for me, but I was curious if there was a top level s=
imulation.</p><p><br></p><p>Thanks,</p><p>Joe</p>


--b1_3FeGotFEM05H0fJfzo30HrBIZl2MBLna87Th2M6Mc--

--===============2842561977098965125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2842561977098965125==--
