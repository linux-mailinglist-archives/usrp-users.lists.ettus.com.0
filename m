Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 493786F4922
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 19:29:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 91FED3846EF
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 13:29:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683048586; bh=qJDp7XhSXPKFBXYBwfs3Q/NiYL1kVvyhTWsESUwiFUQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dKTqMiiL+nSioXGGCVNzJbLkEpoAjm2Ddez9Nb9c6QF2rGYBggibH4oWCrZwlQ7oc
	 8F2kMW+7h3IaUlg6U0Sm5lhXkuRGkWArxY8BCZqBwjp0YGxOQ+0lFqLvMBUphPmevm
	 b7wIJxEYpyYmcy5J9arOBB+lfAvP/XAY+ekHxpqpQg97VvNMfNTxyvrYmyDxXDzw21
	 bxsnoDDUwiXDSrtc3fG6wqEO6sfF5JNGqip5tpZyydEG2iIQJTfnuB1v1ZNGWOqDGk
	 jRSm2WCEOn7r9RCTrfhHQL3GdEBuMvRRTd8pXujxKJ3ehaOLjTaEBW3mdKGULzrDNc
	 v9ck+75SQUFog==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30428384655
	for <usrp-users@lists.ettus.com>; Tue,  2 May 2023 13:29:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683048549; bh=pjAYy6zLsmv2BMXL9FwGJ0F4tBTHYW6+wcxkROypFpQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Gm34OKMVi6QuDu5doHZTt6ClrMAxyx5K7KD4tXhDXZ999appWxQ98AzTg0Xrw8mNn
	 by6lCB3KPNgu1d2M6Of58l3Zi8bxb84UvxdbwycvVUJHE1MwrFu7IUC7mG9shendym
	 VlpHp9LOEH2qOp9rT1KxIhTJQ/LkrXmzxu5FcVyLCYTB7nrylO7GgyGX6f5hmP6Ec+
	 SW0a3Si2iqFmjMj1LXAa+Swjlzx4/i5xsJRg2uPMjq3ue1OUJhUjDSY7nAu6dT4ilY
	 miOEsEi9LJSpvG4j2j7jcQfJoMCEKVL+w9ESxw9ZymQt84KewE3LMQZS111XsSCM97
	 fpdpG0m3pR0QQ==
Date: Tue, 2 May 2023 17:29:09 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <eH5GoPzVostEnNVdl5JGsxyKifaVpTjAPQZqWrwo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK6yCOs27HODKvEV7PtXxsdEDXoYiCsBdGczsj5G5=GOPA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2Z6EGPXETT55JC5L2NS2XLSGIVZXQLKP
X-Message-ID-Hash: 2Z6EGPXETT55JC5L2NS2XLSGIVZXQLKP
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Tail of every transmit trimmed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2Z6EGPXETT55JC5L2NS2XLSGIVZXQLKP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2606272031582968286=="

This is a multi-part message in MIME format.

--===============2606272031582968286==
Content-Type: multipart/alternative;
 boundary="b1_eH5GoPzVostEnNVdl5JGsxyKifaVpTjAPQZqWrwo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_eH5GoPzVostEnNVdl5JGsxyKifaVpTjAPQZqWrwo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> Are you using any interpolation or is it going directly to the TX DAC?

I=E2=80=99m using a base UHD FPGA image at the moment. I tune the frequen=
cy directly using the analog LO. The DSP component of the tune request is=
 set to 0. Is there some other setting that may have triggered the DUC?

--b1_eH5GoPzVostEnNVdl5JGsxyKifaVpTjAPQZqWrwo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<blockquote><p>Are you using any interpolation or is it going directly to=
 the TX DAC?</p></blockquote><p>I=E2=80=99m using a base UHD FPGA image a=
t the moment. I tune the frequency directly using the analog LO. The DSP =
component of the tune request is set to 0. Is there some other setting th=
at may have triggered the DUC?</p>


--b1_eH5GoPzVostEnNVdl5JGsxyKifaVpTjAPQZqWrwo--

--===============2606272031582968286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2606272031582968286==--
