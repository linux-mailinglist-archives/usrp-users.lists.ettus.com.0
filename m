Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B9497CA4F
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2024 15:45:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 765953855AB
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2024 09:45:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1726753517; bh=6Q/B/okxZi3bXV+hrcGlG03U/sHGwSsF/jp9qYgfa3M=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=W09zCKuYUykqwEG4gG1yIX350Czy8KhJxwv5yZOGRZAA4cG+MrZxBESGf/OxMgNag
	 YrMTepcMILgWryucUtsaYrIW0D2Fa5z7h9w5YiN92AtOTnAFEJ8TNLx2rwNVipUVv5
	 xXybd/DjFfktFW2zdB9hFY1lboG4iFVfJctVuVldhw/yKomS2KHltG0lwmubHr4Po7
	 zEZMkVQ/pvXnDY3URrd4qKQNVOnh3ZLnVXQNXa9xrwmmrn8gCjHME76wJXhWT6FT2u
	 azvgYoV0atXtMOf3TkUBllM4atTxuASF5aqsikbbZdkN3Nl8vA9x7h5hwWKhByoVGF
	 tmg65YdFfZWiA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2935E383892
	for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2024 09:44:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1726753461; bh=mH9NkRZ29QHpLxLJi63fnDuS9tPgwLVDkj3iEQGsrN4=;
	h=Date:To:From:Subject:From;
	b=VugnegCYcmMZdbSRuHsmbi71o8TSP+pDPBlSfun9gNY6y8KhT0lsp/mD1DnMe197z
	 q1YxTyoXfUmeIb/tYxtDbazdKHC/AlKN5B9yf/lfAU1b7V2mqUIBP8fxmJjBmSGjOi
	 GpOyRlZqNtYuep7KcdbSgC9zVL4DDCpanrTmKslTyJug/AfyHjTmBH2grIxMwDzMcg
	 0upY5ubNk7G6Xm/zquFxFXeJ1LnFuBqg6/lfyL3mew2d9bZFhyncq4jmt4xzrqP8Lg
	 Cc1PBXpUY/opOck7nNI0eCtLx0f+ucZ6euA73IEgKw539g41yxdWwTHrMI7XBvMx1+
	 c7MXADYkpO3JQ==
Date: Thu, 19 Sep 2024 13:44:21 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <xwhpbLprT6T2uZ7kBawwfB9mz3MqKIlS9qXwZxXQ8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: BGDSPTYT4RXXVHIWDZIEATIWNXLN5R7U
X-Message-ID-Hash: BGDSPTYT4RXXVHIWDZIEATIWNXLN5R7U
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x300 reset script
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BGDSPTYT4RXXVHIWDZIEATIWNXLN5R7U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8699787386748847113=="

This is a multi-part message in MIME format.

--===============8699787386748847113==
Content-Type: multipart/alternative;
 boundary="b1_xwhpbLprT6T2uZ7kBawwfB9mz3MqKIlS9qXwZxXQ8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_xwhpbLprT6T2uZ7kBawwfB9mz3MqKIlS9qXwZxXQ8
Content-Type: text/plain; charset=us-ascii

Hi all,

I am using this the x300_reset.py script to reset the FPGA and would like to know a bit more about what is it resetting etc.  (https://github.com/EttusResearch/uhd/blob/UHD-4.0/host/utils/x300_reset.py)

Power off and on does not seem to get as clean result as when I issue this reset. 

thanks,

Marino

--b1_xwhpbLprT6T2uZ7kBawwfB9mz3MqKIlS9qXwZxXQ8
Content-Type: text/html; charset=us-ascii

<p>Hi all,</p><p>I am using this the x300_reset.py script to reset the FPGA and would like to know a bit more about what is it resetting etc.  (https://github.com/EttusResearch/uhd/blob/UHD-4.0/host/utils/x300_reset.py)</p><p>Power off and on does not seem to get as clean result as when I issue this reset. </p><p>thanks,</p><p>Marino</p><p><br></p><p><br></p>


--b1_xwhpbLprT6T2uZ7kBawwfB9mz3MqKIlS9qXwZxXQ8--

--===============8699787386748847113==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8699787386748847113==--
