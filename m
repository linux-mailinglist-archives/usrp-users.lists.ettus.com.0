Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A2AAC6B9F
	for <lists+usrp-users@lfdr.de>; Wed, 28 May 2025 16:23:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B6B7384EDB
	for <lists+usrp-users@lfdr.de>; Wed, 28 May 2025 10:23:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748442187; bh=muIwVNEFAOD1tJZsgl8InlQREjGEPZ4W3a+bkxMJzeA=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Vsld+8+M2epoSGVhUq5qFJL16cJiAn+T/cogmM1xK+o/wxxwT3qQ/Rd59dz0q7hbf
	 p3p9wSqA6T57Co2Gjc/8EGgmlPad7AzkORMIKg/QflnnUatimoPBfG89XH6tFaMv4b
	 EcaIByNkEiweSBt5KRyA58P+wC4KZPa3NckhcV0LVr0xiBj24qBMEwnjkpD0x18Zm+
	 th0lfWFTrYSanBCW4N/uP2+2s+rU76XNUTHPjE7RNc45lArenzu0vqzOeTvnY5ZGvS
	 WFHACbwO+VgGGo/JZ7QRAwC83poJpmtRuE/+kTWeWkVeIkauVFy8R8dl1Y+DhcKIT2
	 oBvOS7Fi2UgVA==
Received: from mx-p1.obspm.fr (mx-p1.obspm.fr [145.238.193.20])
	by mm2.emwd.com (Postfix) with ESMTPS id 9C7C8384536
	for <usrp-users@lists.ettus.com>; Wed, 28 May 2025 10:22:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=obspm.fr header.i=@obspm.fr header.b="BeiDk+oY";
	dkim-atps=neutral
X-AuthUser: bfang
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=obspm.fr; s=mail;
	t=1748442160; bh=Ljoku+b0B2heRZDjDjfG//A0IncN28y98FXY2K+R0gE=;
	h=Date:To:From:Subject:From;
	b=BeiDk+oYPyrRl9EZLBLN08SC+rdA1zWREzzeqLPPp4yDOdIDLbdpSdtl1OrhyTe6m
	 syJQ20z8KqVvroQal1yMmUQMyOBPlxcX4UM50Gh8zSRiszlhnSpxunQoquV1S8Shhp
	 3962tzayyTzEe4+5gwaGcENnezwQu6rCxLNjFRARmtnsz1+NDVKjxbJxstR3m6IxP9
	 7F5oQXvN/DlzwPrZ1D7ZvknFU9UghTHlDeGjcfFYZtiZNiUAnpUoxXoI8lWnTmcSim
	 PHqZ+WV7iAcs4vNo199wUOas8qXd5L2l7ShDAnHogcN0TP0VKjqaM2V9Nq7eJpKDwn
	 oM7dptYGQ2Eag==
Received: from [145.238.67.77] (syrtepc008.obspm.fr [145.238.67.77])
	(authenticated bits=0)
	by mx-p1.obspm.fr (8.15.2/8.15.2/DIO Observatoire de Paris - 15/04/10) with ESMTPSA id 54SEMet41087522
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 28 May 2025 16:22:40 +0200
Message-ID: <18f804c2-24b2-48bb-bc32-ffbf6d0127aa@obspm.fr>
Date: Wed, 28 May 2025 16:22:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
From: Bess FANG <bess.fang@obspm.fr>
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2 (mx-p1.obspm.fr [145.238.193.20]); Wed, 28 May 2025 16:22:40 +0200 (CEST)
X-Virus-Scanned: clamav-milter 1.0.7 at mx-p1
X-Virus-Status: Clean
Message-ID-Hash: ULRTIZE3YPAOVH5L65AWSJNEO5JYZN2Q
X-Message-ID-Hash: ULRTIZE3YPAOVH5L65AWSJNEO5JYZN2Q
X-MailFrom: bess.fang@obspm.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] handling of absence of signal in UHD4.1
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ULRTIZE3YPAOVH5L65AWSJNEO5JYZN2Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hello,


I recently changed from UHD3.9 to UHD4.1 on an X310 + basic RX. I was 
surprised to find that without connecting a signal, a simple flowgraph 
of USRP source - complex to phase - buffer - file sink gives 0, without 
any noise. For comparison, the same flow graph on the same device in 
UHD3.9 records the phase noise from the unconnected RX channel.

Anyone knows if any modifications in UHD could explain this behaviour ? 
Some kind of automatic resolution adjustment ? Or a change in default 
resolution ?

Thanks a lot in advance.


Cheers,

Bess

-- 
--
Bess FANG-SORTAIS (PhD)
Astronome-Adjointe
Laboratoire Temps Espace
Observatoire de Paris
61 avenue de l'Observatoire
75014 Paris

Tel: 01 40 51 22 91
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
