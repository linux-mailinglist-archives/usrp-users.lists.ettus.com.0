Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F851AD5F3B
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jun 2025 21:46:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CAF1E385E05
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jun 2025 15:46:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749671161; bh=SntRwPeVfqkJwXRQ5c7FcrfZwRZBqLcUcttgcgcgxG0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=mr/TGqB9QlWv05NLjjQrxL8i0MFf/VLuR8Fmg+QBJzHZFM+pmy8pvPDq/qKqJ/Qds
	 NluBXyMoeNi2aAnc7xXPQi6taJC6Zd8tq7zV9gGCBeJ2vWvR8uigBmLdJQeB1Xnpz3
	 LHHP9sZIm0UDUr72s5BdC463PxuhbQBXqh1rdqKAfkL9RHkgw13kpsOLwIDgUHOJEc
	 NTWsCmidTH620/Z+Jb6GQxmdPCXKSD1cAjzP6CkHrhqAi77DjNhN+jdLltLCmvWMHR
	 DBIiBPlYjBvAMW2tgWgnEXViZGlAoEabIoCbLIvf2rdKCFs1qUSelbx6yplOEIuwHB
	 3vxlg72AmNZNw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 188CE385D7F
	for <usrp-users@lists.ettus.com>; Wed, 11 Jun 2025 15:44:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749671093; bh=bFmnmSLZ5/ZqH/AY6NdcH+lsbLs0TfwLGaOUDpXmjU8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=jQt7RJkUMIZRftPCb2GrcRsBW5F1mIoU64aX6KRGWahhac+GPOiuAetTtyIm1DI5d
	 PZCAW48waLNGVgKQIedb/ajeE5JZsgfBqJn//GV3QqD7Rn7P9UXlc3qaex96g9Dt5r
	 ABAM08JMcq0qpcQfbmY5IIYP9Yx7ZPjEWL7zeYpAJQEKK3ndjhwkUn6xNDQskpq4ao
	 wYvBH7oWfKnb0n9StZG/hCUux25tGC9jBP5V86nMPZianZFV/Br0NWlBD3i+AefEzY
	 yJlmGvP1nIAbSc7K6B6yVGYTdXI58c/YlYusqw2CLX91BKTUnMACXvHyzM9wZfghZ+
	 reWjrFGwu3w0Q==
Date: Wed, 11 Jun 2025 19:44:53 +0000
To: usrp-users@lists.ettus.com
From: tommytsui@w5tech.com
Message-ID: <Zp4Rg9AsXZCz5VncOWxiQ4fj6IWFVUV0n4CqrBX90@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAM4xKrr=Cpoq1OA0SGGgvXa-UsvfFn+0C_hVeRZbJ=4dWChi6A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: HMCAY3W7X2WNQY3WIFOXPQ6ZWWRJNIA2
X-Message-ID-Hash: HMCAY3W7X2WNQY3WIFOXPQ6ZWWRJNIA2
X-MailFrom: tommytsui@w5tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 UBX Tx issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HMCAY3W7X2WNQY3WIFOXPQ6ZWWRJNIA2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8810794862554659600=="

This is a multi-part message in MIME format.

--===============8810794862554659600==
Content-Type: multipart/alternative;
 boundary="b1_Zp4Rg9AsXZCz5VncOWxiQ4fj6IWFVUV0n4CqrBX90"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Zp4Rg9AsXZCz5VncOWxiQ4fj6IWFVUV0n4CqrBX90
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I know this is an old post some years ago. I am curious if the UBX patch =
provided by Michael West still required for the latest UHD 4.8 release?

Would running uhd calibration utilities be able to resolve the issue with=
out applying any patch?

We recently switched from WBX to UBX daughter cards but we experienced a =
different issue on UBX card. A 22MHz lo offset applied to WBX was fine bu=
t not for UBX. Somehow UBX doesn=E2=80=99t like such high lo offset. Redu=
cing lo offset to a much smaller value (12MHz) resolved the issue, but th=
at low lo_offset value doesn=E2=80=99t meet our requirements.=20

Thank you,

Tom

--b1_Zp4Rg9AsXZCz5VncOWxiQ4fj6IWFVUV0n4CqrBX90
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I know this is an old post some years ago. I am curious if t=
he UBX patch provided by Michael West still required for the latest UHD 4=
.8 release?</p><p>Would running uhd calibration utilities be able to reso=
lve the issue without applying any patch?</p><p>We recently switched from=
 WBX to UBX daughter cards but we experienced a different issue on UBX ca=
rd. A 22MHz lo offset applied to WBX was fine but not for UBX. Somehow UB=
X doesn=E2=80=99t like such high lo offset. Reducing lo offset to a much =
smaller value (12MHz) resolved the issue, but that low lo_offset value do=
esn=E2=80=99t meet our requirements. </p><p><br></p><p>Thank you,</p><p>T=
om</p>


--b1_Zp4Rg9AsXZCz5VncOWxiQ4fj6IWFVUV0n4CqrBX90--

--===============8810794862554659600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8810794862554659600==--
