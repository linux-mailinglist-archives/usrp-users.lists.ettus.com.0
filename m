Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 607C3A221F8
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2025 17:43:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7F4B386153
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2025 11:43:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738169026; bh=PzhyeFOzYqHx8kupLE1170u2DqjeqF0/7ZofnQqbP4k=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=0go41dvaSoBV5IoFja2ECpj89r53/MNppuU1s0u2KUJm+ZrVdRrAOl48egc4BSxM7
	 KhwVtjyb57o5C1G4RZmDF/WcjIdnMIJgZ2sWxGQ0WBu4r5Zex+DPM9xUccNdm/yM5Y
	 TFRHwUnq96HVshJqPw3ywg06+0tQ35FjgkrNsUtCvBa+/a1m5SV6b+smvo3NPhBU3C
	 iXIogMbLCFG8+l6oz0nIF+5x8WU2yyoOGfORXZS2/hZz8w75hGkTG84mBArXKJFTBx
	 ul8yGS806h/aMeDtUqHxgHKxdiEyyQF128Fdy3dQ7uRsd7dRTaPn6nqqcXTs3+mcrt
	 9I7qqWfAFilTg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7F1E386120
	for <usrp-users@lists.ettus.com>; Wed, 29 Jan 2025 11:43:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738169014; bh=N7e168d9PyvREl82irnV/Oozb42hrOMLYeEtXJotY/Y=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=CRoyUdQgKGdNoC433loKJINVS5A5noNNAljkxktEGLwKvx7hqj9Q4cV4vAd1SOHG8
	 0ob8nKKTgqa6Te1oOKyaoErkJYLqwI5e9+ZhwJbeLHhkKV2Rl0z9ixEq90Cxy94i1i
	 0evg6O7cc9Fq+FY8dSl2tSPxfpJyaIgrIuAgRFx6ekkauUhgtIl+qjmDp1yqRRxf+g
	 lEHIrvpbXwAvqkION3FpKML8FXN6k2HCQs5TeXaOaXc/FeXPjqg/KmhcTgV9guSix0
	 vK9gpraWOI6cmfq9hadrd2en2D3TGg3nBp9DHuqwKh2Dsty+bFnp2np0cKqDAgySWz
	 mMPIG/ZUyPAYw==
Date: Wed, 29 Jan 2025 16:43:34 +0000
To: usrp-users@lists.ettus.com
Message-ID: <27cHOCUF1GX3QXi6if4EzBytdyRE7WznGWTdYhdO1jw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 48f69cc0cee24dd48f6441f4d72e4c0b@h-da.de
MIME-Version: 1.0
Message-ID-Hash: UHR6R2IVD2DADQ7OAPDNZCJJW5QTZRFH
X-Message-ID-Hash: UHR6R2IVD2DADQ7OAPDNZCJJW5QTZRFH
X-MailFrom: william.haftel@bluehalo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Connection to X310 fails but pinging works?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UHR6R2IVD2DADQ7OAPDNZCJJW5QTZRFH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Will Haftel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: william.haftel@bluehalo.com
Content-Type: multipart/mixed; boundary="===============4284296757835753471=="

This is a multi-part message in MIME format.

--===============4284296757835753471==
Content-Type: multipart/alternative;
 boundary="b1_27cHOCUF1GX3QXi6if4EzBytdyRE7WznGWTdYhdO1jw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_27cHOCUF1GX3QXi6if4EzBytdyRE7WznGWTdYhdO1jw
Content-Type: text/plain; charset=us-ascii

I think your interfaces on the host should have IP addresses ending with .1 instead of .2 since the USRP has the .2 addresses.

The pings you are doing are just pinging yourself, not the USRP.

--b1_27cHOCUF1GX3QXi6if4EzBytdyRE7WznGWTdYhdO1jw
Content-Type: text/html; charset=us-ascii

<p>I think your interfaces on the host should have IP addresses ending with .1 instead of .2 since the USRP has the .2 addresses.</p><p><br></p><p>The pings you are doing are just pinging yourself, not the USRP.</p>


--b1_27cHOCUF1GX3QXi6if4EzBytdyRE7WznGWTdYhdO1jw--

--===============4284296757835753471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4284296757835753471==--
