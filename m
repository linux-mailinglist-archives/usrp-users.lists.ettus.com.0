Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C24FA6CD1BF
	for <lists+usrp-users@lfdr.de>; Wed, 29 Mar 2023 07:39:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1547384579
	for <lists+usrp-users@lfdr.de>; Wed, 29 Mar 2023 01:39:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680068350; bh=dfFZmyhTwl8UU8jxbf46414uLhtvI2gb9WJ/ruDkumU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=n0MMAbInmz24fsy9UoanZej9+yfBT2zY82OEMqSJamMbgIXMqgFTt+GSYJV1YuOc7
	 qDUGX4Ah2BFICola/KCWyQfjA/cWladKY02ySMYySmq6fhEre39Q/YLn7CBQZFCftx
	 p9KQ48o8zerrAtPHfAu0hsR3uj22IXXcgf0Ac3NHNzLuWyhTqN+ulTqPnkgpz7txjo
	 jEhjCVaBEq0t3OrtzoR0Km0+OSZOLY5AgrmSWO4kQBXj80hnYDyJHGcq0yP179Jm91
	 qANH4wGtqxYp+H+RN2Y3GwmJXZLZqMAFdEiQWON8egTy/BNlTkSVmdHD0SO+uSW+GS
	 AHwt1UZMB+e8w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71926384580
	for <usrp-users@lists.ettus.com>; Wed, 29 Mar 2023 01:36:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680068198; bh=TcneJCqcCPKcLoCseByeim3VBvbLMZdQf2plti+QulM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=KZvsyWhcGF1edhQMDjYn1P0oQlvOHUYPgBW0xt1nBQ+dkGzyHSqWTl/7pMROGJRoj
	 HHQP537/WIoXfsbr5cyI/cRBuxfWJ6fzQSkoX8mdV75+lO8jEeq7cTM5gPe/I0hKO2
	 kNrhyYwxOHFBk652RYyUmBVSxuaL6IUN9H4KhbbjJrLfLiRYpaku4U7p7UDssSIQP/
	 HiKPmJjgQG4ywRDoCGd48HEWekXZcUqFYAoQll/0W+6nGTQpN1j1End/XgdH1wyUoJ
	 BfitkYfD/7eXHL369XsNI3jkx/UMcuvRvbutXovsGU4GVPpzA/0Td90OSOJPyh3PwW
	 FQ+G5fsVGdHtA==
Date: Wed, 29 Mar 2023 05:36:38 +0000
To: usrp-users@lists.ettus.com
From: soring@ayecka.com
Message-ID: <ew13dmLv9gtkxY1CrIGhjfx6rJoge6930q7qliccRs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 9b23f1d7-4718-8d85-c4a5-d53d76ea47a7@comcast.net
MIME-Version: 1.0
Message-ID-Hash: FFCWQWIKA5U4CZ3N5VJIFLL5TZQVQE4U
X-Message-ID-Hash: FFCWQWIKA5U4CZ3N5VJIFLL5TZQVQE4U
X-MailFrom: soring@ayecka.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini i very high lo-leakage, image rejection and aggressive DC correction.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FFCWQWIKA5U4CZ3N5VJIFLL5TZQVQE4U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8510854183408923756=="

This is a multi-part message in MIME format.

--===============8510854183408923756==
Content-Type: multipart/alternative;
 boundary="b1_ew13dmLv9gtkxY1CrIGhjfx6rJoge6930q7qliccRs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ew13dmLv9gtkxY1CrIGhjfx6rJoge6930q7qliccRs
Content-Type: text/plain; charset=us-ascii

Thanks!

Sorin

--b1_ew13dmLv9gtkxY1CrIGhjfx6rJoge6930q7qliccRs
Content-Type: text/html; charset=us-ascii

<p>Thanks!</p><p><br></p><p>Sorin</p>


--b1_ew13dmLv9gtkxY1CrIGhjfx6rJoge6930q7qliccRs--

--===============8510854183408923756==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8510854183408923756==--
