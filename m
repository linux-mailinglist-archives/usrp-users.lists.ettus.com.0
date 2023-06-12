Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9F972D060
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jun 2023 22:21:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4145380BEA
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jun 2023 16:21:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686601283; bh=jW0GLub7rNALFcRLuFTVCP+t62M96wjMxmdMlFXjqKg=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=SETEnYkD1VX5xU5/cb+hAUThNTJgCWaG9FxDOspLUN6Z9ZwkmdZesLpiDumrxZdpC
	 /OBY1iNUqBj05QVJEqfzTmM6d139gaq7y+Q9065jqnfxqKWhDb8gt5rdJUw6X5Nueu
	 E1KmdZg6KV9JFEICfZk7jcJhJF7cBbo4URni5NwfuZ2FTn8tbSluu13/8ri5oTcqRk
	 o+eWpcI2YEJ/8O7VX2kCiznPakB6Ds7VOZGHTxJn58SUpvM+lmDeAuZhc6DGYPoq10
	 /ZPms+38P++kOwpv/C5hxL6eDpIy72AO8LjdO2JPtW66ig3BU2K5tzc1IKQkPRN+29
	 aRJ8+q0UNGVEQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE47B38494C
	for <usrp-users@lists.ettus.com>; Mon, 12 Jun 2023 16:20:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686601258; bh=i7RPm6/sHHOloBF86P7UFff2ywAPdK/67bILaJBsc5w=;
	h=Date:To:From:Subject:From;
	b=EB2gLEgkCJAE7os6vygT7wxE94TR7CmR4OAFE5kVym3aRRNuDQMPCL81txqbEzb0E
	 vGdd9LISIjGkVFePQcUfg6Rii5XnSKKcLTl9jiHdLO3IzfVb9zparHODAmgQuiszS+
	 hnoqUJ6h0Ni/D71dKuxDkQICvFNRGO5NfwINOgn8+g+MhKDx0/0moh0KXffTTuRlVR
	 hRLp6kTR7WvMddaEPzl73S9b6+XfzgJDQnrcRO11yYEFZfUyFCYyRIc+jiSfkVlFi9
	 qWlrriA4T/dmlYLZsMsiTyvqGsO3KugJLv40iC3fACIzXZyaHWpZo3nqxXKN20C5i8
	 ye6LLgTe99nZg==
Date: Mon, 12 Jun 2023 20:20:58 +0000
To: usrp-users@lists.ettus.com
Message-ID: <Y2TJLNy7YRT0i1dyJ6DzahVEgwKN8a1v9fgRKFaGE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: LWKOWVBTVBJY5LTHSZMBCAE3HDNCAETG
X-Message-ID-Hash: LWKOWVBTVBJY5LTHSZMBCAE3HDNCAETG
X-MailFrom: william.haftel@bluehalo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using dual 10G ethernet synchronously x310s
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LWKOWVBTVBJY5LTHSZMBCAE3HDNCAETG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Will Haftel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: william.haftel@bluehalo.com
Content-Type: multipart/mixed; boundary="===============0527787592778407172=="

This is a multi-part message in MIME format.

--===============0527787592778407172==
Content-Type: multipart/alternative;
 boundary="b1_Y2TJLNy7YRT0i1dyJ6DzahVEgwKN8a1v9fgRKFaGE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Y2TJLNy7YRT0i1dyJ6DzahVEgwKN8a1v9fgRKFaGE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to stream data at 200 Ms/s with 2 x310s and am having trouble=
 figuring out the make args for this configuration.  I have been able to =
use addr and second_addr on 1 device to enable dual 10g eth, but this syn=
tax doesn=E2=80=99t seem to work when combining with addr0 and addr1 for =
multiple x310s.  Is this configuration supported?

Thanks

--b1_Y2TJLNy7YRT0i1dyJ6DzahVEgwKN8a1v9fgRKFaGE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I am trying to stream data at 200 Ms/s with 2 x310s and am h=
aving trouble figuring out the make args for this configuration.  I have =
been able to use addr and second_addr on 1 device to enable dual 10g eth,=
 but this syntax doesn=E2=80=99t seem to work when combining with addr0 a=
nd addr1 for multiple x310s.  Is this configuration supported?</p><p><br>=
</p><p>Thanks</p>


--b1_Y2TJLNy7YRT0i1dyJ6DzahVEgwKN8a1v9fgRKFaGE--

--===============0527787592778407172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0527787592778407172==--
