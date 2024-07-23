Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3C7939CD4
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 10:36:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3542C38596F
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 04:36:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721723771; bh=ICoJxpEVJQ8DhdsCeR6O7Nv8B0JQfs9yTev6eIN3DOg=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=MGt2IjsS6BgNroygsiC7fHvIFgDNNwAUaf7hP9hu4L7GNeRwbdLHAj9BJajjq+GYv
	 GEDn0IwY7XaNDBKjEnlIgATrhgJgoD9zL4C4fSJ88mFifCyhIh+EMEUeEzh774fVek
	 XWwerEDLSfWkjOYKkmJyGzO90UJYcyvl5dJnyoVLx+knFdDXPcrZeKVfCCyz93eCo9
	 glQf6xYNVt0jcqxA7C9rDqZzyZK0ry5RyEZ1mfXCy0Jxi5io1ROYhjlWZ4ozppQpyc
	 lTcf+f15Uwn1bMz1MqC/sIsfJoB90fmV8gF0xmSGW5vqxbmoh2+d+6sj7ABxCSwKUB
	 ZTbHupsK4DulQ==
Received: from sfmail01.tubitak.gov.tr (sfmail01.tubitak.gov.tr [193.140.80.192])
	by mm2.emwd.com (Postfix) with ESMTPS id 36AE33856AB
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 04:35:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=tubitak.gov.tr header.i=@tubitak.gov.tr header.b="D7/md/LE";
	dkim-atps=neutral
X-ASG-Debug-ID: 1721723716-0f24755d039f3e0001-5wTQH4
Received: from mta02.tubitak.gov.tr (mta02.tubitak.gov.tr [193.140.13.216]) by sfmail01.tubitak.gov.tr with ESMTP id ls0OWjupYx6Qko4E (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO) for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 11:35:16 +0300 (EAT)
X-Barracuda-Envelope-From: emre.yildiz@tubitak.gov.tr
X-Barracuda-Effective-Source-IP: mta02.tubitak.gov.tr[193.140.13.216]
X-Barracuda-Apparent-Source-IP: 193.140.13.216
Received: from localhost (localhost [127.0.0.1])
	by mta02.tubitak.gov.tr (Postfix) with ESMTP id 0406C22983E
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 11:35:16 +0300 (+03)
Received: from mta02.tubitak.gov.tr ([127.0.0.1])
 by localhost (mta02.tubitak.gov.tr [127.0.0.1]) (amavis, port 10032)
 with ESMTP id yPn9x5rBrMKq for <usrp-users@lists.ettus.com>;
 Tue, 23 Jul 2024 11:35:15 +0300 (+03)
Received: from localhost (localhost [127.0.0.1])
	by mta02.tubitak.gov.tr (Postfix) with ESMTP id C719021A6D7
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 11:35:15 +0300 (+03)
DKIM-Filter: OpenDKIM Filter v2.10.3 mta02.tubitak.gov.tr C719021A6D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tubitak.gov.tr;
	s=3CB53094-0179-11EB-B19A-889BD1D29365; t=1721723715;
	bh=/f7tDpmTkQcK6qC/S/mN1oVMYXogVI38eOn+Xc10BE4=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=D7/md/LEuUHIPOwb5LPBekcZOh4votpfG5SPy10IwENG/xPd1JwwCPGZSiUTsZvLr
	 Tlv8c6tRVvVKL7f8UG1F/5FTsMNlzXc7JcO6Pywbtf0/tyZ+cPRparRh2VVsABD40d
	 xqXzEiQsN2vsDBkSaFzOYd2z9vNi4dYj2+hcuBCVtGAt69uqEGSfR7n5wEyrOi9vbR
	 uhnP7wfEBMzhUlupGEGPE2FJsxm+RrGGsZ8q42QXYfBG5FFTg0oyFMlDCkezCnNAPT
	 aRoR40OQZeH2L1Th1IaaTSaT5jAmJhgPoUBuQ2Lptrzp7hC//fYvVXDflgvcWm3GCC
	 h4gwP0KC6XTbQ==
X-Virus-Scanned: amavis at mta02.tubitak.gov.tr
Received: from mta02.tubitak.gov.tr ([127.0.0.1])
 by localhost (mta02.tubitak.gov.tr [127.0.0.1]) (amavis, port 10026)
 with ESMTP id C0jAQ7TQvzD8 for <usrp-users@lists.ettus.com>;
 Tue, 23 Jul 2024 11:35:15 +0300 (+03)
Received: from mail03.tubitak.gov.tr (mail03.tubitak.gov.tr [10.250.10.121])
	by mta02.tubitak.gov.tr (Postfix) with ESMTP id A5A5922983E
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 11:35:15 +0300 (+03)
Date: Tue, 23 Jul 2024 11:35:15 +0300 (TRT)
To: usrp-users@lists.ettus.com
Message-ID: <488162280.16396629.1721723715565.JavaMail.zimbra@tubitak.gov.tr>
MIME-Version: 1.0
X-ASG-Orig-Subj: E320_XG_ETH Vitis or SDK development
Thread-Index: PuZnx0AQZTly2UJ1hFjSv/FK20sUSA==
Thread-Topic: E320_XG_ETH Vitis or SDK development
X-Barracuda-Connect: mta02.tubitak.gov.tr[193.140.13.216]
X-Barracuda-Start-Time: 1721723716
X-Barracuda-Encrypted: TLS_AES_256_GCM_SHA384
X-Barracuda-URL: https://193.140.80.192:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at tubitak.gov.tr
X-Barracuda-Scan-Msg-Size: 1961
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0527 1.0000 -1.6828
X-Barracuda-Spam-Score: -1.68
X-Barracuda-Spam-Status: No, SCORE=-1.68 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.128009
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Message-ID-Hash: RAEZC5Q5Z4VMOPF2P5HVZXMDXTZZINIE
X-Message-ID-Hash: RAEZC5Q5Z4VMOPF2P5HVZXMDXTZZINIE
X-MailFrom: emre.yildiz@tubitak.gov.tr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320_XG_ETH Vitis or SDK development
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RAEZC5Q5Z4VMOPF2P5HVZXMDXTZZINIE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?Emre_YILDIZ_=28B=C4=B0LGEM_=C4=B0LTAREN=29_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: Emre YILDIZ =?utf-8?Q?=28B=C4=B0LGEM_=C4=B0LTAREN=29?= <emre.yildiz@tubitak.gov.tr>
Content-Type: multipart/mixed; boundary="===============0341478567686872643=="

--===============0341478567686872643==
Content-Type: multipart/alternative;
	boundary="=_8f4a583c-8a14-4a6d-bac0-d55aa14bd599"

--=_8f4a583c-8a14-4a6d-bac0-d55aa14bd599
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Dear USRP users and Ettus support team , 



I synthesized your Vivado project for XG Ethernet from the E320 FPGA folder. I noticed that the AXI crossbar connects the e320_core design with the e320_ps side. I understand that the e320_core design processes commands based on timestamps. However, I could not find an example project for Vitis that helps me understand how this is controlled on the SDK or Vitis side. 

Specifically, I observed that the e320_core part is connected to the m_axi_xbar which maps to the address range 0x4001_0000 to 0x4001_3FFF. I believe the timekeeper accesses this range with specific offsets, but please correct me if I am wrong. 

I am aiming to develop and deploy a design on the board using Vitis. 

Could you please assist me with this? 


Thank you. 

--=_8f4a583c-8a14-4a6d-bac0-d55aa14bd599
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: arial, helvetica, sans-serif; font-s=
ize: 12pt; color: #000000"><div>Dear USRP users and Ettus support team ,</d=
iv><div><br><p style=3D"margin: 0px;" data-mce-style=3D"margin: 0px;">I syn=
thesized your Vivado project for XG Ethernet from the E320 FPGA folder. I n=
oticed that the AXI crossbar connects the e320_core design with the e320_ps=
 side. I understand that the e320_core design processes commands based on t=
imestamps. However, I could not find an example project for Vitis that help=
s me understand how this is controlled on the SDK or Vitis side.</p><p styl=
e=3D"margin: 0px;" data-mce-style=3D"margin: 0px;">Specifically, I observed=
 that the e320_core part is connected to the m_axi_xbar which maps to the a=
ddress range 0x4001_0000 to 0x4001_3FFF. I believe the timekeeper accesses =
this range with specific offsets, but please correct me if I am wrong.</p><=
p style=3D"margin: 0px;" data-mce-style=3D"margin: 0px;">I am aiming to dev=
elop and deploy a design on the board using Vitis. <br><br>Could you please=
 assist me with this?</p><p style=3D"margin: 0px;" data-mce-style=3D"margin=
: 0px;"><br>Thank you.</p></div></div></body></html>
--=_8f4a583c-8a14-4a6d-bac0-d55aa14bd599--

--===============0341478567686872643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0341478567686872643==--
