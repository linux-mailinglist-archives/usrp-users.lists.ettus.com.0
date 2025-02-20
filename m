Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C76EA3E37A
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 19:11:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E33D385BBA
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 13:11:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740075062; bh=dJ62FfLpymTB/vUjrJvcAi7oQrxe2eYaIsjiLJN0ink=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=JmTy/Im4sxzHhf/xTkuKf6AS4ubfgm6y+aMm009fRFHRfhk6su0JVc10i/6LFrlJH
	 1rQChGztDjpAUdVSeeUL2C2PeSZjhBiJi533nR7DCN6CteoNdja+I2NIda+dHiL/CX
	 Zl7Wyg+YyI/aO+KhCyI2+TY5huNZrzMQD08u0RWrDVL4tczdwCYier+29/WGvyX+0L
	 gpBxNkyznlw2NXZGJMVqlHkzxBz1yv4H5ot770tA3iAZiTAxdW+EX1j7wWhIXK4BR0
	 PTebk1TWus4ecW0QedvDfnlD9dz523A/2s3LsPRItGDdzaKaYR+ourEfdKVR7SdkEf
	 oLub2bcp/3w4A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A444384D48
	for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2025 13:10:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740075010; bh=AWPiyBO6sELzacypmlTlYM0Jf370F3zy9ZUe3gvxnb8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=YwQ4qp0PkQB/FxCYlbrMgiVa1BPCpZQg9lB8NpDlQWuJOOyhB5T2LGNSemGEN9gKH
	 vZ1pcvjCaS6pkTrrLilUNVrHQMQjWNl98EzebBiDL894GhHM8xK74bwaHrqtUDgYtw
	 aIAKpzhxYnmIAh+9Po0Uc1SVhozLzDKqag1A9qH29qxTthDy5nD0ujbOvjcSC2iP6p
	 R+ZGYqGFmGEMTlSv8uQo2fJKqTaiKCtwAg1ESTun7FUQsqqhYudW8ghGu01tT1mA9H
	 ymm3zu4Xesq1Tq18bvQWX0l6VbP48y4Ir1RxHBbgICNZszjOq1Efbyt9Ow57+yEIJc
	 Okw9237kwCJgQ==
Date: Thu, 20 Feb 2025 18:10:10 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <18ZOUlb0HtyEQXmXAO16QPN1XnlaT1vFZ3u9WEP5Dog@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A7V6KifEi5kOsrFGO2zOZt2ROinWh3gEcSOOEEdPnZ4Ug@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: MXWH344E5GZRCEUS2WRGHDCMCWLAJ3SM
X-Message-ID-Hash: MXWH344E5GZRCEUS2WRGHDCMCWLAJ3SM
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MXWH344E5GZRCEUS2WRGHDCMCWLAJ3SM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7025875242064236556=="

This is a multi-part message in MIME format.

--===============7025875242064236556==
Content-Type: multipart/alternative;
 boundary="b1_18ZOUlb0HtyEQXmXAO16QPN1XnlaT1vFZ3u9WEP5Dog"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_18ZOUlb0HtyEQXmXAO16QPN1XnlaT1vFZ3u9WEP5Dog
Content-Type: text/plain; charset=us-ascii

Hi Martin,

I am not able to provide the test code, likely need to do this via NI/Emmerson partner contacts.

Thanks for your help so far.

Kind regards

Marino

--b1_18ZOUlb0HtyEQXmXAO16QPN1XnlaT1vFZ3u9WEP5Dog
Content-Type: text/html; charset=us-ascii

<p>Hi Martin,</p><p>I am not able to provide the test code, likely need to do this via NI/Emmerson partner contacts.</p><p>Thanks for your help so far.</p><p>Kind regards</p><p>Marino</p><p><br></p><p><br></p>


--b1_18ZOUlb0HtyEQXmXAO16QPN1XnlaT1vFZ3u9WEP5Dog--

--===============7025875242064236556==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7025875242064236556==--
