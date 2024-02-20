Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEEE85B769
	for <lists+usrp-users@lfdr.de>; Tue, 20 Feb 2024 10:28:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7229C383FCE
	for <lists+usrp-users@lfdr.de>; Tue, 20 Feb 2024 04:28:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708421327; bh=ODLqKcsTbh49feZ+Q8UZmKpEHLgpeEdLYy3QVVxArp0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Rl4tG2+EaFo36BKGXQk/L9GLhqF4pxSxsfIP1xrtAIGaYG/2ATbUhnxQlaEwbsfdr
	 7HKJZs+qPEdvm0x5+U3gh+blX6HyT9fTUmHMWYHUp1cLbWl9I1XNqW9xROCMWgp5P9
	 rAKnPUh+UoHHZj7PbdJmjboGryAfgWKLTRn1zpYlct8XYocC2mp1Cl5dtYXofQPr10
	 BF27cMamucUwirMmQ6hRwq77IWa41lIxKo2IsuQg+dM6QdXIYX2GSCSU1gtSHZDa5D
	 mWS2E/8IwxNbrpQXa/0gTJWqwICd4Ax5H6FK97Y7mEjUKjIdJb7AScaC3JqgIbmHho
	 x875tqvnXz1HA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6ADB9383C52
	for <usrp-users@lists.ettus.com>; Tue, 20 Feb 2024 04:28:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708421308; bh=tmwaE3S3nPNO40tYMoublRVP8GX55BXXXLSeJP2ifhc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=WiZ18oxLqzNSQuC0dISwnv+nQxk3W+pHH6a6zdYw+j1m66NzP+6V4AJuAHHVbotzN
	 CHOUgq3XGX/qB1U5QM2wK5esLDdkRzPso3SGilQYrzcVAinRN130PcP/m2dfbTLDQb
	 VsT3tBG+3Ud28Trw51PJjNDuhM0XEdSXz/BGFCO8UyNMXos61pF4mqd6PNZdRDAfxg
	 ewxKFhRza8LE5wc/SafiC+KosQeWhWKem9++2XHRGuVnbujg8j1OdZGfNuF9uEMbLk
	 IfFrVXql+oI7d0Y4OLXxGj6pGyX0ePrr67YdltT39+2VDwQC9HnvRpjC5ij+eA97bY
	 cD80nXKd+zokQ==
Date: Tue, 20 Feb 2024 09:28:28 +0000
To: usrp-users@lists.ettus.com
From: jnunez@cud.uvigo.es
Message-ID: <ODpGP7ohiC62PEL9Im1rxIiJHyTHJERWoLvdEIsV8c@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: E55FC872-2BF9-4920-BF1B-C63D276A0D3F@gmail.com
MIME-Version: 1.0
Message-ID-Hash: TBLPXW5J57MEOPYXIROJVQPWFYUQWTXJ
X-Message-ID-Hash: TBLPXW5J57MEOPYXIROJVQPWFYUQWTXJ
X-MailFrom: jnunez@cud.uvigo.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can't set gain on N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TBLPXW5J57MEOPYXIROJVQPWFYUQWTXJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5960944530999924944=="

This is a multi-part message in MIME format.

--===============5960944530999924944==
Content-Type: multipart/alternative;
 boundary="b1_ODpGP7ohiC62PEL9Im1rxIiJHyTHJERWoLvdEIsV8c"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ODpGP7ohiC62PEL9Im1rxIiJHyTHJERWoLvdEIsV8c
Content-Type: text/plain; charset=us-ascii

Sorry for my delay in replying. Yes, it fails both in Windows 10 and Ubuntu 22.04

--b1_ODpGP7ohiC62PEL9Im1rxIiJHyTHJERWoLvdEIsV8c
Content-Type: text/html; charset=us-ascii

<p>Sorry for my delay in replying. Yes, it fails both in Windows 10 and Ubuntu 22.04</p>


--b1_ODpGP7ohiC62PEL9Im1rxIiJHyTHJERWoLvdEIsV8c--

--===============5960944530999924944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5960944530999924944==--
