Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE628074FA
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 17:30:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14AED3851C7
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 11:30:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701880238; bh=LZXfMfqVt01VwK530DZaPWi/8+b4dv8hYBCWXiK24Cs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=JiECVOvrJPkPVU70+fjreFQro1Rz0SNsJ4lRfk4+bQwklD3ZxLJHqEZRoVaBdTCI2
	 ViX9jLvASxcuhkcCXrXOjUxGmj+KU3PB+wqJ7pzICn2SN0cju/lUzhuOZHrIHbuL86
	 kjPhsc1VNXdhS11Rt/hWMphBbV94vsGDPGWMd1V9FLaErggRseZBOa/JSgmouQFe2r
	 lOyiX5u0sEz+3xq/vIkmNVAaUB2eAy+j4KePrIssww7KyFVOxWhu007rk3BD71/nlM
	 jwGLCWMUb9sFyDNB10CCdsFW/EA5K9sTH7iDFXDQPnSgiHKtcAVCMi3LomHRbaGjmz
	 F6fnB7vQvC+Fg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B414B384F70
	for <usrp-users@lists.ettus.com>; Wed,  6 Dec 2023 11:29:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701880187; bh=p8OJGGTmVFtl7eVknow1sFtZCkrQhPWpMi1tZjdGsAc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=d7kbN6sSYW7JfHebEyECBee+tGAHHmog+TmBk+xOEudsGpc+c5THTBd1QnLFIT+Rr
	 KiTA+5PussDwSXjunUmIgXM3E8saMAwi/LQ3jot4ByVvOXMrOVMUircTao1dbGEjd/
	 VGoW0hYkNQpiopkXvSVYTenSGwkfCKPMvWTmFylApZek7Wp6bSylQ6BuNyaBhBJcPc
	 WxJUCWw7/7CeD8moR6zYjfCgYVs4y17tByNyC8U8LY9Z4+dC1nC948sM6cYs0eo/9u
	 clk/GNJRYH0dpDoq85f2IWOzCQU/WUlAGUoNf6s0P2NZ6/Ln+DVi5maCPTPC3zA6Um
	 LC9q0wv75EhWw==
Date: Wed, 6 Dec 2023 16:29:47 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <PuBpnfuBSxAxs9BjIgDEssZatw41GmvFJYWN8uiE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: f15f8de1-2c4c-4a5a-9488-b4a416d32523@gmail.com
MIME-Version: 1.0
Message-ID-Hash: F6Y62G4XGXDD4ISKGDSWM5EFQ3QRA2YC
X-Message-ID-Hash: F6Y62G4XGXDD4ISKGDSWM5EFQ3QRA2YC
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F6Y62G4XGXDD4ISKGDSWM5EFQ3QRA2YC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3297785617642267023=="

This is a multi-part message in MIME format.

--===============3297785617642267023==
Content-Type: multipart/alternative;
 boundary="b1_PuBpnfuBSxAxs9BjIgDEssZatw41GmvFJYWN8uiE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_PuBpnfuBSxAxs9BjIgDEssZatw41GmvFJYWN8uiE
Content-Type: text/plain; charset=us-ascii

You are right Marcus, I just messed up my boot partition, but I am not able to fix this issue, I need to wait for the system manager to solve this stuff. 

I know it is nothing related to UHD. But how to find the right device if I want to update the image?

--b1_PuBpnfuBSxAxs9BjIgDEssZatw41GmvFJYWN8uiE
Content-Type: text/html; charset=us-ascii

<p>You are right Marcus, I just messed up my boot partition, but I am not able to fix this issue, I need to wait for the system manager to solve this stuff. </p><p>I know it is nothing related to UHD. But how to find the right device if I want to update the image? </p>


--b1_PuBpnfuBSxAxs9BjIgDEssZatw41GmvFJYWN8uiE--

--===============3297785617642267023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3297785617642267023==--
