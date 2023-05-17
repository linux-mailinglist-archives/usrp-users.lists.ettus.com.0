Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22318706E1B
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 18:27:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4EE1738491C
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 12:27:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684340845; bh=KqDS7PDU8d5dOrTxxewzKLOyKvhr8S6nnGIEY6CLhZ0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zOKU0/FnGU9QVeEGT0YpsCYb6G1lKhb9KjxoYAvrWAzDUDx6OfIs3R9YxnOsOdfSg
	 8CMf2WE8AbiKtP4E6KACyIZp7+QZlcy/+rrxSlf8doktO0CixPgcLWhGxgADZGAc+m
	 xkern0HkgUnmydmk3RqXZZ3LjWMiK9xohsBP8CFzG+IMPCXp2nfgKuN0YRbWFsl92p
	 cFOAhCKdACrUijN2tgbo7bD8eFe7DzCvW+n/jxDgSkllaekOwxKm6SilsPoiJ8BCjn
	 Tf/u2N2koru+aJ7gJII7yNyYWoutLI8JU2oEUt94g6p3C985gIbLCTUXYrlnIYHqRT
	 mUyHITBpqDWmA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 259A438086A
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 12:26:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684340785; bh=UiatKg2xSGtUzupi++SKyNq83MoQ16Cuatpmk9d8p9g=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=UmQgyfMQYnkrR+k8zsOYUwJChYtxU+o1pPO3HFyK7kCCSjmojBSDdTyUmYvWAj+Bp
	 FqrKt8TAQgYbGxAmND4O2+0mYfJ3PgDNQv2DwmHQtRs0vxvCL5Tj5S0WrWfsFa4HgK
	 clJ4aIU3+z5tjX+K2qpvrWrDgiSl/pYHYrkniHW2mU4TuHSdbVWxvUbJNbvfCeqRru
	 q7wTJ7bK7dtMK1RbYviNKtpoC0Iw8F6iH0P09Ct/fjYQx7ox8p9B2wixJyhXUo908g
	 xFYZm1n30EdUk8rBenNHXCMai1eg72oKwcDzWrz08l3CYWA4jweAd+IhPSVrk3XBt7
	 gKLi8gjHDCH6w==
Date: Wed, 17 May 2023 16:26:25 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <3W3nyen7Ismx0gHGsUgTz62p9iTJdk49GfU6FXqg8KY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: ed9ddb42-5875-a0c9-43ea-faeda0c1705a@gmail.com
MIME-Version: 1.0
Message-ID-Hash: ULQMBCGSB4RVN72MFKF6YCGFNSWWGVRR
X-Message-ID-Hash: ULQMBCGSB4RVN72MFKF6YCGFNSWWGVRR
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ULQMBCGSB4RVN72MFKF6YCGFNSWWGVRR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8980455748999582570=="

This is a multi-part message in MIME format.

--===============8980455748999582570==
Content-Type: multipart/alternative;
 boundary="b1_3W3nyen7Ismx0gHGsUgTz62p9iTJdk49GfU6FXqg8KY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3W3nyen7Ismx0gHGsUgTz62p9iTJdk49GfU6FXqg8KY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

On an external host. =20

As you know, the sfp1 interface is not connected to the internal switch (=
going to the i7, only sfp0).  But we are not using the i7.  Instead, we a=
re using sfp1, connected to a different host, which should work similar t=
o an X310 (with external host).

Thanks,

=E2=80=94Cy

--b1_3W3nyen7Ismx0gHGsUgTz62p9iTJdk49GfU6FXqg8KY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>On an external host.  </p><p>As you know, the sfp1 in=
terface is not connected to the internal switch (going to the i7, only sf=
p0).  But we are not using the i7.  Instead, we are using sfp1, connected=
 to a different host, which should work similar to an X310 (with external=
 host).</p><p>Thanks,</p><p>=E2=80=94Cy</p>


--b1_3W3nyen7Ismx0gHGsUgTz62p9iTJdk49GfU6FXqg8KY--

--===============8980455748999582570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8980455748999582570==--
