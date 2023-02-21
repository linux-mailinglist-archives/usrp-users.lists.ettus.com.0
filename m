Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6238A69DD49
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 10:52:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 32EB6383C88
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 04:51:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676973117; bh=pybpODUY2EX6ug4hUqs8KoVQlwUihZzbSW/lT8TsoKk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xAV/jFgizRH7qSe7NAijZL2U8qg6BNpZNtma7GXPGcjJMKIVoBXnc4eq3HRW8DjGk
	 pkdvZIGBnXs1vZ1ilL2pLQfJLQpeT9adQ9tNjv6kEbNukYyXKlnOj0hSRHLZ1IKc7H
	 QH4pSAHtylpBQwSAcMSZP5Yv0mB6MTJzXUqEnc6jkLCMDsqss+hjcjmLu2spYUAGg4
	 JxY0SoYBvrPFfDG/9xV6yAXmcso9uA9MkxDs6EBSO4tF4OZGPmMcnMut6htbj8fxnJ
	 stPKW9u4qldZd7odLMFbYu1B53l6fHU1AtugVw291soS8SRTKFi2qsgIxXc634B8L9
	 YMVboOO4scKuA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86796381976
	for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 04:51:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676973068; bh=X4HBp6p9VU9yohU6n6oiuz3/QAkngr9Hd6h1s24REKI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ZcPtxbKJyk4ljwOf+Rs5RFS+rN7TYW5JIMjiTryfBsB7VKOF+eOHDVFtMiY6Y8SXq
	 RqxMeFNrRwe++8A/ZEKy6Peipw4IgNv9iYS6BxrIRyYpJo+xd/tKzD0zaedYi4ny5D
	 tQJts13CTUvPAgN/E/ILC8b7HcGWHDJBIvvKIRKDvlZA6+4ZsB7PavNEyaeAmmtYXO
	 JI6J5tpar6279yKJD4f9ceAOd/CY7RaqoJ4HdAzbL551RF9ec/b16FCnbGKiotkLw9
	 DgF4Th0rY6JDP/N9ekwDk7kAT7/JeGQaCt94Qzc9ZR8YppXfHmFfMV7vqjSUhK20+F
	 4eRcB+VJCGQ7w==
Date: Tue, 21 Feb 2023 09:51:08 +0000
To: usrp-users@lists.ettus.com
From: ali.mahbas@brunel.ac.uk
Message-ID: <YbJG1Y3gfFEPMO2om77FPpVaCiSC5PizAlecRtnp0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFche=jjBZRbXHa_JhS-+KoYa=4DbnfG7AVkANSGx8-whUdybQ@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: IWCAAUXADIZJREBJFHOWS4ZXPXCX7FWF
X-Message-ID-Hash: IWCAAUXADIZJREBJFHOWS4ZXPXCX7FWF
X-MailFrom: ali.mahbas@brunel.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 - All LEDs are off
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IWCAAUXADIZJREBJFHOWS4ZXPXCX7FWF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0595094086958290990=="

This is a multi-part message in MIME format.

--===============0595094086958290990==
Content-Type: multipart/alternative;
 boundary="b1_YbJG1Y3gfFEPMO2om77FPpVaCiSC5PizAlecRtnp0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YbJG1Y3gfFEPMO2om77FPpVaCiSC5PizAlecRtnp0
Content-Type: text/plain; charset=us-ascii

Hi Wade,

Thank you for your response.

This one has been suggested by the ETTUS support. Luckily it helped to solve the issue. Thank you though.

Out of interest and for the future reference (as we have a number of USRPs), what would the options be if a device is damaged?

Kind regards,

Ali

--b1_YbJG1Y3gfFEPMO2om77FPpVaCiSC5PizAlecRtnp0
Content-Type: text/html; charset=us-ascii

<p>Hi Wade,</p><p>Thank you for your response.</p><p>This one has been suggested by the ETTUS support. Luckily it helped to solve the issue. Thank you though.</p><p>Out of interest and for the future reference (as we have a number of USRPs), what would the options be if a device is damaged?</p><p><br></p><p>Kind regards,</p><p>Ali</p>


--b1_YbJG1Y3gfFEPMO2om77FPpVaCiSC5PizAlecRtnp0--

--===============0595094086958290990==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0595094086958290990==--
