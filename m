Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6E66212AA
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 14:41:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C9CBB38369B
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 08:41:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667914903; bh=c14z17R8vtWr7qyip0jpMryYGs0YqEMxwvek+suTiBw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0G/lY8OW8N38/PorTJMEo0tVxa/0c+oRDIE1l58fieDOlr6yoahDNkL9rbTpebOeD
	 Lbz9Yg/zbtF9+sPBZNwx7PU/pd8GFdOiRPvtE9TVZlJ0PGJo7kdlBseddPNzFveRNq
	 K+n+OrWGh2bUFZRnAIN7CNREp8yF1XJd8R1OobS8uNKayhgGaOkpnZ7rPeKmCGIAR5
	 JdyowcDhRsIXxiuKMabjvUtvOyMl7ils1dIYHzavzSl+A/bNxmADBXaB44UrxQwtdT
	 JJqhznQZJYs7F5XGd+h+XAJTCYqscdroOMLvH1k7T5hwrgbi5nn7RJD7+hp3VpXpBu
	 xJ1u+tg3fwKPA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56C23380DD2
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 08:39:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667914787; bh=EZsrU+ZIjeKMrZbFkBzw3nbty/4fW8Yxf/AZGYbBf90=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=d2/rjz/8xvxAU9MG2U8FLiZ6O4PH8/JJfcOhqfF04YaQxCCl5iJrBHLgWrvXnPV3r
	 uzJSZsIaJB/aLYD5LWm8ji0aOI5iXggMActzcNf2pCYNmnUjVykMvIQ/kTKU5hyqpu
	 1kHTwVSkfqQ5/wMDmen0OV4G9qXPzpHvVASS4krosIzLL7l4W4Rr6xZEpbyVevdvmF
	 VktcBwlARRsEkhsMGoh966WCg79eXnWDxXMZgZpIgDbHZqAYuW89tNXYHCS8QZtb97
	 dMXQOT+GHjmqclX1RWcr38J+N5nUb2/7uVDvqGlnuQYt/d69Z3TBpEfEJvanwHydTR
	 t63NFUWLQUX3Q==
Date: Tue, 8 Nov 2022 13:39:47 +0000
To: usrp-users@lists.ettus.com
From: ali.mahbas@brunel.ac.uk
Message-ID: <gCLNgIlQBjAUGbws0FKp9VltkGQ8ONWE9hm1Zbajjc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: gB1FPqDTwPKsxhSmkvTrAeJZy4ehSpXwCnOTjJBEAg@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: D5AHAYRPH6IJJZUHNHIVH5HAXQTXP7AY
X-Message-ID-Hash: D5AHAYRPH6IJJZUHNHIVH5HAXQTXP7AY
X-MailFrom: ali.mahbas@brunel.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 undetectable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D5AHAYRPH6IJJZUHNHIVH5HAXQTXP7AY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6105369402348082365=="

This is a multi-part message in MIME format.

--===============6105369402348082365==
Content-Type: multipart/alternative;
 boundary="b1_gCLNgIlQBjAUGbws0FKp9VltkGQ8ONWE9hm1Zbajjc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_gCLNgIlQBjAUGbws0FKp9VltkGQ8ONWE9hm1Zbajjc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Marcus,

UPDATE

I just did what you told me. it is detected when I use the safe mode. I c=
hanged the IP address by using NI-USRP Configuration Utility. Although it=
 tells me that IP has been updated, I have the same issue when I dont use=
 the safe mode.

It is only detectable on the safe mode.=20

by the way, it shows me =E2=80=98update needed=E2=80=99 on the image stat=
us - IN-USRP Configuration Utility.=20

Thank you again

--b1_gCLNgIlQBjAUGbws0FKp9VltkGQ8ONWE9hm1Zbajjc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear Marcus,</p><p><br></p><p>UPDATE</p><p><br></p><p>I just did what =
you told me. it is detected when I use the safe mode. I changed the IP ad=
dress by using NI-USRP Configuration Utility. Although it tells me that I=
P has been updated, I have the same issue when I dont use the safe mode.<=
/p><p>It is only detectable on the safe mode. </p><p><br></p><p>by the wa=
y, it shows me =E2=80=98update needed=E2=80=99 on the image status - IN-U=
SRP Configuration Utility. </p><p><br></p><p>Thank you again</p>


--b1_gCLNgIlQBjAUGbws0FKp9VltkGQ8ONWE9hm1Zbajjc--

--===============6105369402348082365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6105369402348082365==--
