Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF111A25371
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2025 09:00:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84AB7385696
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2025 03:00:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738569648; bh=pk/0T04ktvMl/pzWFcb7p+nr0o9LHyzzLGuTArBt1PA=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=nuBQJ6o4n2z3KGoRa+68mTzJ59QKiErnD3wo/o0qd4VYGPr6JC//hIHjon2m8qTu4
	 0Iaac2Rm5DQJvpjKfAkK1BUcQbVPBo9fdOuR7hMDtmAs7T+MwCX6suGP3lu3tDvxH2
	 wxSql45ChlfyaurtPOphonlrQD/4mfc1B2FXyl5otcP2UwoyP37eMovHQ7vjThj52G
	 PKDYoW+piBQWI0TBPjnyMYOTnp6OK1FHDBNwrAP4PXK3dDpaGQQig+VE2cQAqEg/RT
	 YYaKfSxEjqbseAIoNlc7uHydQbXpbzqBcfl5zHeg1liSw1dEMB/EOLeeBIhTPbXsvT
	 boq5OidiWeIbQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E32DD38555D
	for <usrp-users@lists.ettus.com>; Mon,  3 Feb 2025 03:00:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738569613; bh=c05cZV10yutiaRbDo8JgAYasM7ArO5456vCVlbKZdYE=;
	h=Date:To:From:Subject:From;
	b=hnQxb2g09yFmoswm6I+rqSs5mye6CatTcNxVdpxOEKHz/KusIoMHofktnDVPeEtQg
	 eticQgoVaU4MRajbEagbEf+N3Wpg/1jBgeHNk/IRSrm8KnIAlR4GfB/aDuKK2YVFZo
	 e1gLEsQk3B0PuT1KF9UCBImdRUwnyVNs16EchrdVp2lbOo7OmgjgtB5wr++rwwsK6i
	 BERgxI0DojDwWe6cw/7KM4r1WOdAV92YpLN6UhR33Wgnb3vZM2r5RnFJAaKXPAxPSn
	 8Yyz8nOmP9847lcNbmv6I2IChb5mOTCzRMqHpL9u1zAie5nuMExL1Nzx+pq4mHADyT
	 M+vm2Cqo5uR0Q==
Date: Mon, 3 Feb 2025 08:00:13 +0000
To: usrp-users@lists.ettus.com
From: meni.dali@sabra-microsystems.com
Message-ID: <uPJVlX7IHGuwmncsHhYjvUFCYLcT1mpqRxKLNKr3fo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: FAOHO2L7OY2IK3W664JL2O7KCHFNCTAV
X-Message-ID-Hash: FAOHO2L7OY2IK3W664JL2O7KCHFNCTAV
X-MailFrom: meni.dali@sabra-microsystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 Front Panel GPIO to RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FAOHO2L7OY2IK3W664JL2O7KCHFNCTAV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0156433363444729184=="

This is a multi-part message in MIME format.

--===============0156433363444729184==
Content-Type: multipart/alternative;
 boundary="b1_uPJVlX7IHGuwmncsHhYjvUFCYLcT1mpqRxKLNKr3fo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_uPJVlX7IHGuwmncsHhYjvUFCYLcT1mpqRxKLNKr3fo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I need to establish direct routing between the USRP X410's front panel GP=
IO pins and custom RFNoC blocks.

Specifically, I want to read the GPIO signals directly into my RFNoC bloc=
k.

Does anyone have experience implementing such direct GPIO-to-RFNoC connec=
tion on the X410?

Any examples or technical documentation would be helpful.

=C2=A0

Thanks

--b1_uPJVlX7IHGuwmncsHhYjvUFCYLcT1mpqRxKLNKr3fo
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>I need to establish direct routing between the USRP X410's front panel GPIO pins and custom RFNoC blocks.</p><p>Specifically, I want to read the GPIO signals directly into my RFNoC block.</p><p>Does anyone have experience implementing such direct GPIO-to-RFNoC connection on the X410?</p><p>Any examples or technical documentation would be helpful.</p><p>&nbsp;</p><p>Thanks</p>


--b1_uPJVlX7IHGuwmncsHhYjvUFCYLcT1mpqRxKLNKr3fo--

--===============0156433363444729184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0156433363444729184==--
