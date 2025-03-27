Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A722A72C46
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 10:21:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1FDE385434
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 05:21:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743067307; bh=qE63hyD9UCR0FhLa0vb7X7qC7PckQ0CLlMeFq/86kco=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=hWs2slMoIBOsGJWkARVR/+6L/xhb7b8n8GsOymd4Vsb0UGOwPlkkkMauqIo33zmgt
	 WU4wGVJFZuzLmoFc8cJYcw1W9x20blvlo0WfOCk8iX8lc0J8C4dZyli75USAYPtw12
	 L/7Fa1f0hyUXMcS/AaYubRLIB3/F3aCSOHRR45FPBGNka03p6+IuaOngiWaGVWWt8O
	 6bGwXba2P5Ys1kFeoOZ3Kx9C3O21BJ/Uy/VCKYA20CwxeCiNc+3JOId8MuF0SrY2Rn
	 ufrxwEguL0gNXymBGGUKVi8veaec++imN6FbgHoek60Flen14cTHjLpsa8x9JNcIOq
	 xvxVHYDG6JbpQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86B1B385212
	for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 05:21:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743067287; bh=7/0Rg5a258h+IWcft6HfVFwCyeyFEI4MD9MqOC7aiD0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=n8rDd5wQKxP+35Ct3ghypH35HFiShcha/WgYjDOkmSpYjqWCH67NwLY2/+T1gU2V9
	 lZ63EGD84udXbvoYks0IVzcWgC7VSv6YnmHgvwy9hDX0b0cGCSHemm2nuCdsT1+fTj
	 nxgaMuVSzdQX+j1giSRr2EWyRhSKUq3IjBpz/Ny7taIQS1z05tClpjWKnZDUcHnGeY
	 xh9EZlCBsXQlO9qvsaL+2IiMyh9/f+yeD4Naj8iLxLR/awl30VZ60ku/sN6+jgo8rb
	 hQHq3m0vCBDMYkJWQV/M/OAOb47lmt7TUzoHZDMl2on2/sdj8xSO6HBjCRl/1rc/6v
	 BAPSO0Rf+E2TQ==
Date: Thu, 27 Mar 2025 09:21:27 +0000
To: usrp-users@lists.ettus.com
From: je.amghar@gmail.com
Message-ID: <P8Re8wWAm8FCb8WrrTSpQF5JtXifwZ7ZsRqj5X0m5ac@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: buPmixowFqBNjcHYfLX6r17HUMSoFxZbBs7YZTE1mIg@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: MZTOT4PJ56AVPLCSODLGU3YYNB7P7753
X-Message-ID-Hash: MZTOT4PJ56AVPLCSODLGU3YYNB7P7753
X-MailFrom: je.amghar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X310] set_command_time introduces unexpected delay dependent on sampling rate.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MZTOT4PJ56AVPLCSODLGU3YYNB7P7753/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2085710470815837540=="

This is a multi-part message in MIME format.

--===============2085710470815837540==
Content-Type: multipart/alternative;
 boundary="b1_P8Re8wWAm8FCb8WrrTSpQF5JtXifwZ7ZsRqj5X0m5ac"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_P8Re8wWAm8FCb8WrrTSpQF5JtXifwZ7ZsRqj5X0m5ac
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you both, Marcus and Rob, for your responses! That clarifies things=
=E2=80=94filter latency in the FPGA explains the dependency on sample rat=
e. I hadn=E2=80=99t fully considered that before. A signal change at the =
antenna takes time to propagate, and with different filters engaged at va=
rying sample rates, the delay naturally scales. Appreciate the insights!

--b1_P8Re8wWAm8FCb8WrrTSpQF5JtXifwZ7ZsRqj5X0m5ac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thank you both, Marcus and Rob, for your responses! That clarifies thi=
ngs=E2=80=94filter latency in the FPGA explains the dependency on sample =
rate. I hadn=E2=80=99t fully considered that before. A signal change at t=
he antenna takes time to propagate, and with different filters engaged at=
 varying sample rates, the delay naturally scales. Appreciate the insight=
s!</p>


--b1_P8Re8wWAm8FCb8WrrTSpQF5JtXifwZ7ZsRqj5X0m5ac--

--===============2085710470815837540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2085710470815837540==--
