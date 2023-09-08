Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF734798026
	for <lists+usrp-users@lfdr.de>; Fri,  8 Sep 2023 03:27:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C6B7A384D6C
	for <lists+usrp-users@lfdr.de>; Thu,  7 Sep 2023 21:27:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694136429; bh=yIiAVLglsLj0//pgW9f1QVUr1ZLez/Dc6YyYgAfFjJI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KDrCf1ES8lDooCUaM1AVvaQycq+6oH2u8b8t/kEVNZvBx3A8KEHBxVysGK6cqSD9Q
	 rdUSd/cJossn6nP+doIK5/puUXiTp8AdU96SyCj0Iv5b+W4S2QPzK+hEqds4a1jsEa
	 v1WvWRPdTabF9NoaL9Hv3m2Z9KAaWcPONUPVIhfe88hiLlYwQ4Ywx9NzgVPXXYwy2H
	 5HPvy+TU/3Ur07qSMceIznYlKGMsoX0pOtw6f5NbA0ilKIRHGHp2ufdrXgbe/g66kO
	 31LQdUragMC7qvdTiVC0zSpevy+M/YPfGnnmRGz6hSVt27JYk/SjjRtIOOlXaoNeCv
	 yA4X9g4E/9aAA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A2FB383EB9
	for <usrp-users@lists.ettus.com>; Thu,  7 Sep 2023 21:26:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694136369; bh=ZEyOQaJILNz4Id7ZD7RtWFr+dENSbUGoCoQify+/+m0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=HbWepDaCxuE76pmhV9uCfy5x+wAzLrfzUi/ws1b5BpnqhRabJjtFP72fKG/FC7nQD
	 e/9VGmiEzCRp0qd0B1pBTuM0kWVEEVcp0aF16CZRUGq8I4GWuoghjb47xBSlwmCc/m
	 JkJrKrNNSuDmDAq8y8oCQm8M/FkcUrQGUEdNKUzTxO+So/Ke/fL2QX+i1hBDMMRTgj
	 eNop8Dg4yGpeWK17s2Otdynb8pDBVw76GEYyeKiubUlHDd+hOv56omcMMQq9TphgNK
	 LsEzAwwh7Oa4/AqR/jY7aJf1ZhFh3UlyK1Pw+ABXsTEr+TXDwMvMyIbWbOb5zd+JqH
	 8fxzh8q4cWcHA==
Date: Fri, 8 Sep 2023 01:26:09 +0000
To: usrp-users@lists.ettus.com
From: 1920swapnil@gmail.com
Message-ID: <L7DLnQC693GHJbp4IVEQHBAcBt3XHthesOwaDalLG4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 2e267455-926e-73c6-52b3-40bd84500882@gmail.com
MIME-Version: 1.0
Message-ID-Hash: HVE2F63AN35JKUNIFUGV5ARKVNSM5WCG
X-Message-ID-Hash: HVE2F63AN35JKUNIFUGV5ARKVNSM5WCG
X-MailFrom: 1920swapnil@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set the gain settings in C++ API for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HVE2F63AN35JKUNIFUGV5ARKVNSM5WCG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0169317690444184707=="

This is a multi-part message in MIME format.

--===============0169317690444184707==
Content-Type: multipart/alternative;
 boundary="b1_L7DLnQC693GHJbp4IVEQHBAcBt3XHthesOwaDalLG4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_L7DLnQC693GHJbp4IVEQHBAcBt3XHthesOwaDalLG4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Maybe I didn=E2=80=99t clarify properly, the standard example =E2=80=98rx=
_samples_to_file=E2=80=99 example works correctly if I don=E2=80=99t prov=
ide any gain argument, but fails when I do. I understand my own examples =
would require me to debug, but I would like to understand why the standar=
d examples don=E2=80=99t work for my specific set of arguments, whether t=
hat=E2=80=99s because my arguments are incomplete/incorrect or if that=E2=
=80=99s because that=E2=80=99s the expected result for a b210.

--b1_L7DLnQC693GHJbp4IVEQHBAcBt3XHthesOwaDalLG4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Maybe I didn=E2=80=99t clarify properly, the standard example =E2=80=98=
rx_samples_to_file=E2=80=99 example works correctly if I don=E2=80=99t pr=
ovide any gain argument, but fails when I do. I understand my own example=
s would require me to debug, but I would like to understand why the stand=
ard examples don=E2=80=99t work for my specific set of arguments, whether=
 that=E2=80=99s because my arguments are incomplete/incorrect or if that=E2=
=80=99s because that=E2=80=99s the expected result for a b210.</p>


--b1_L7DLnQC693GHJbp4IVEQHBAcBt3XHthesOwaDalLG4--

--===============0169317690444184707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0169317690444184707==--
