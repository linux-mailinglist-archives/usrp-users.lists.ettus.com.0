Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9245EAD7C7B
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jun 2025 22:35:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 886A738640B
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jun 2025 16:35:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749760534; bh=qXLfIoLcnGCxYVpXCLfGlrQxOOhrcZRQ7u3yy0tqmGg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Oj20KQV7v0F2Nos7tUiHXEPZHB7ogIgYuHVVZdj+q7MIe++dKPUlNeu2vpLEpnFDj
	 i4MkteLkgVga8Y1AsAzXVFR+VPaPIr+3Y55Tn4g3eLVB1/6QNb35ylKyz7r11zmWIZ
	 Vv8erzWWeoUHJF1LZ6jA4lZhSa09x9qmR01i7M8qKzs7srQ+qKTy6eLmvPFkqmDYO0
	 Cc0RwSAQ6NJxugI2PugAYa3vSeHZgnPYwV+k3/O83SWhBehqbK9u0hp9BXZu1ofYi+
	 SSpm0f70xvszX8hgy74qraO0ooa4KLbDiYz3JYSdBcX5PhP9A2jRMA+P6bzHZ02XTC
	 BsfV16xZor6JA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33EB0386380
	for <usrp-users@lists.ettus.com>; Thu, 12 Jun 2025 16:34:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749760497; bh=wDQ7EMZ8RhXyCxzH3kZ4cEnzoNGqgEFetu38YwFvJio=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=bc5l/uFp4r3VchNuSKpFqVednQHXa4603DOEEQOm4bu3k0sJxL6Y8+kHUpTOkcW88
	 aDetmjg1kHcfu30ecdgpdCqrTo8sJokWma5j6p6HvMEfFCQqJF0NbhFS3Djjx87G8b
	 QBveqF7K4Un5l3DlF9lPkw9RDsqv1oTrhJhZGw/yB9XJnAR9OACUh6PNSvJaQErPBW
	 BcA7UemkwaNFOgDsStRy1cS/i2q4jl0CQeIshNLwamAe54g14/F7K0+hR+undZxQLB
	 GF54G2mj6bMn0aDz5mx4w4yu0STtlDoLVQY0pxfjj4pIe2zBntcXOfnzOAzAyPK5K7
	 dgUYWVVWEWRyg==
Date: Thu, 12 Jun 2025 20:34:57 +0000
To: usrp-users@lists.ettus.com
From: tommytsui@w5tech.com
Message-ID: <bWVYQx24wI1e17NTKr1zOWM6FBpmBwgl4UKAnooQ7k@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTTon+5jg3KAJu-NkPbXNQApBj3h1ZzW0GXOWEq=KqW=6Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: NZTSNDYT57KCZHNYMS4MZSDMPRVB43WF
X-Message-ID-Hash: NZTSNDYT57KCZHNYMS4MZSDMPRVB43WF
X-MailFrom: tommytsui@w5tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tx_offset and rx_offset parameter usage on UHD calibration utilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NZTSNDYT57KCZHNYMS4MZSDMPRVB43WF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8964565930298654281=="

This is a multi-part message in MIME format.

--===============8964565930298654281==
Content-Type: multipart/alternative;
 boundary="b1_bWVYQx24wI1e17NTKr1zOWM6FBpmBwgl4UKAnooQ7k"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_bWVYQx24wI1e17NTKr1zOWM6FBpmBwgl4UKAnooQ7k
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Thank you so much for your explanation. It explains the root cause of the=
 issue that I have been experiencing. You are correct that the WBX card I=
 compared with is actually WBX-120, not WBX-40 as I first thought. The WB=
X-120 don=E2=80=99t have any model name marking on the cards, but when I =
ran uhd usrp probe on another X310 which still has WBX cards installed, t=
he probe reported the radio cards WBX-120.=20

The formula that you provided explains perfectly the WCDMA constellation =
begins to degrade when the lo_offset > 16MHz.

The 3G WCDMA signal has 5MHz bandwidth. UBX-40 has 40MHz bandwidth. =C2=A0=
Max lo_offset <=3D (40 =E2=80=93 5) /2 or 17.5MHz.

Tom

--b1_bWVYQx24wI1e17NTKr1zOWM6FBpmBwgl4UKAnooQ7k
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Rob,</p><p>Thank you so much for your explanation. It explains the =
root cause of the issue that I have been experiencing. You are correct th=
at the WBX card I compared with is actually WBX-120, not WBX-40 as I firs=
t thought. The WBX-120 don=E2=80=99t have any model name marking on the c=
ards, but when I ran uhd usrp probe on another X310 which still has WBX c=
ards installed, the probe reported the radio cards WBX-120. </p><p>The fo=
rmula that you provided explains perfectly the WCDMA constellation begins=
 to degrade when the lo_offset &gt; 16MHz.</p><p>The 3G WCDMA signal has =
5MHz bandwidth. UBX-40 has 40MHz bandwidth. &nbsp;Max lo_offset &lt;=3D (=
40 =E2=80=93 5) /2 or 17.5MHz.</p><p><br></p><p>Tom</p>


--b1_bWVYQx24wI1e17NTKr1zOWM6FBpmBwgl4UKAnooQ7k--

--===============8964565930298654281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8964565930298654281==--
