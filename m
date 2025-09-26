Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0217BA2D36
	for <lists+usrp-users@lfdr.de>; Fri, 26 Sep 2025 09:39:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A889C386536
	for <lists+usrp-users@lfdr.de>; Fri, 26 Sep 2025 03:39:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758872357; bh=fsMqemI8zujQ/ckwUFssuGNQqN1aOwy9DLP1diXPV0Y=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=WAKbunjimSMC3nhS6BonzCtALL7p6Q89G35PeCGqd5gwsvfcz+yanvctI99i6AKh1
	 IUE/MXz3wGHgXaEhzm7iscu8M7pHCayJQhVBp08li5fIXohN7Xv+W1G8gNGr5I+Boh
	 zsAwk0vuoTR2PhghNPZdtj9cEbBMLKr4nfY7C4W4pRX75/BUWsrBwHBANtCb3JhO6u
	 om9t9gaoqXfPIE2P9LT6bJmohrG1lWMD/9UlQcCH6cNNvbJDvLF3jcbBLUuNU57U4J
	 GG+XGhY8gdxDd86TBr0PeVtD3EGoL0JtHG5GWHSMpm6voGsPm13IRGZ9IQ7wF70Z47
	 7TxXM5syblJug==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0B8E3386504
	for <usrp-users@lists.ettus.com>; Fri, 26 Sep 2025 03:38:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758872314; bh=zeizG85AXkA/EMuBH/COLvPBHgTBpsdtGep2LxCXxiw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=NJPWn44AQcBPB2xDeJcKonT/91tmQ/jfLLWKyG8QpkRypaRcFx3xLMoqya1AfCqE0
	 6YY+xlK3k+II+NVnINjfmLIBCvH1G6xl11HhWDZ4FHt6KkkaPxh+o40prAG5P/zxwL
	 9n+Wx2AjbtcXkNef3TnAZqC2vwlh9jitcqglYCDNVXVf1x5XMKSH6G3LeJ3H9JYmw+
	 MTCpm9+zCSU3qoimCGu0QEcpt9lUYIWKdyxbLnPMMt+TOq87zRM/29FvNC6JmGPJ9r
	 mSYhCgNpcEiYrGUvpTqtizbwntJkNivEutp0rtZFEqSh6pv4dyGgydydZ0uCAEvWSo
	 /he4hJLvWHL1w==
Date: Fri, 26 Sep 2025 07:38:34 +0000
To: usrp-users@lists.ettus.com
Message-ID: <2NEluc1tYIOusdJUrnT7I2xvRdbF4q5gyr6vn00sc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: ROwRJLXXQQJUvNrBaFtwiznAgjNBTVp7A1zyLlQqH4@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 36UK4CZZSIWS35MOG77N35DFVPCK4AVC
X-Message-ID-Hash: 36UK4CZZSIWS35MOG77N35DFVPCK4AVC
X-MailFrom: peter.gu@tum.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting Started RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/36UK4CZZSIWS35MOG77N35DFVPCK4AVC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Peter Gu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: peter.gu@tum.de
Content-Type: multipart/mixed; boundary="===============3828196553058895366=="

This is a multi-part message in MIME format.

--===============3828196553058895366==
Content-Type: multipart/alternative;
 boundary="b1_2NEluc1tYIOusdJUrnT7I2xvRdbF4q5gyr6vn00sc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_2NEluc1tYIOusdJUrnT7I2xvRdbF4q5gyr6vn00sc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I was able to set the MCR via device args in RFNoC Graph. I got it from a=
n example=E2=80=A6however i found nothing in the [documentation](https://=
wiki.gnuradio.org/index.php?title=3DRFNoC_Graph_(Device) "documentation")=
 about that. Am I looking into the wrong specs or is the idea to look int=
o the c code?=20

Moreover, with Ch0 bandwidth also set to 1.6GHz now, I still cannot detec=
t the cosine signal in loopback mode=E2=80=A6did i still miss something?

Best,

Peter

--b1_2NEluc1tYIOusdJUrnT7I2xvRdbF4q5gyr6vn00sc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I was able to set the MCR via device args in RFNoC Graph. I got it fro=
m an example=E2=80=A6however i found nothing in the <a href=3D"https://wi=
ki.gnuradio.org/index.php?title=3DRFNoC_Graph_(Device)" title=3D"document=
ation">documentation</a> about that. Am I looking into the wrong specs or=
 is the idea to look into the c code? </p><p><br></p><p>Moreover, with Ch=
0 bandwidth also set to 1.6GHz now, I still cannot detect the cosine sign=
al in loopback mode=E2=80=A6did i still miss something?</p><p>Best,</p><p=
>Peter</p>


--b1_2NEluc1tYIOusdJUrnT7I2xvRdbF4q5gyr6vn00sc--

--===============3828196553058895366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3828196553058895366==--
