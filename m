Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F36B6718721
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 18:14:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49B0B384898
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 12:14:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685549699; bh=SuimjDDAp0wUSEBM6IFSQagb/ovueSPuVNKKJj6Kzwg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WCHAP5EoTPAm3BzzZcbJv2tjib77w4m0qgi5d/9N5sEg3cab9RLXNHdv/kMUNZchq
	 bPSy3yZb3vLwQvArH8HvMtsFSU+TP5aCtlXj6fg4w3xelZRjCA9hvsMEedyR/0uSRv
	 grZjs3XT4KHuCkP5C8AZifA5vArNusRqv3fFQtmZXJXmk3xxkpNMmmYVrYG38nozP8
	 F/DwJN3TR+4MouT+qUdPwI/YgKEJJKj0SMEg6gJGRBxEiv2e6OnIaUN1wIpTbR4qJG
	 mFkCJIzP3/HfvHGFnvUwhaLnPcRhpWeb7FHf6bzpkYnUr0JvvfC97UTOBFSiorZQNm
	 hBo19pr4NCq7g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7593038480C
	for <usrp-users@lists.ettus.com>; Wed, 31 May 2023 12:13:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685549634; bh=Dr+ezuX00mXXYV81eotx+9nCq7poyZtTJH666PKRzyI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Pfrse+h71VVqbtWE57g4yPCG+H88uV8iuczyS7U1bspzS6vxqPrYN/7hfgeiywGrp
	 21abRdzoxfwFjwWIW8k4EV9zav5wZy+tWutNysoTaEu6ym3gMhjELWNyX/RBADlzmJ
	 rtY1cAqXPZZAu3/IxsoiC1beDUvrn4arl4SpsbFBvNy9ekppKgUpDZ/HO1hd3nIhz3
	 xLYeP7P5hkzur+0qROAHAEPJNLGzEOgeETL0Y+bJSgNWBUXsbI0jdICxzvgwVqYpNk
	 6+kD1Pj0wr8zdT+VmkQqFiKLJcALXMLU0ZbBW0bLuG08shxFVgXmVNG/3mh3D0ej1Y
	 taf1wX0wAiC3g==
Date: Wed, 31 May 2023 16:13:54 +0000
To: usrp-users@lists.ettus.com
From: pistachio6981@gmail.com
Message-ID: <b1biVJmyRA5aM7bg4ERdoFRh8vrxlDnkI94fjY9Ut0Y@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: jIb8ffaQXdQ3PZuEoSiaTaoC3wdHqhW0I6Xfmkh6BM@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: MXYTDLRGBJGBN4LFJQGFENNRM5YANXPG
X-Message-ID-Hash: MXYTDLRGBJGBN4LFJQGFENNRM5YANXPG
X-MailFrom: pistachio6981@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 help
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MXYTDLRGBJGBN4LFJQGFENNRM5YANXPG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4142512103921962912=="

This is a multi-part message in MIME format.

--===============4142512103921962912==
Content-Type: multipart/alternative;
 boundary="b1_b1biVJmyRA5aM7bg4ERdoFRh8vrxlDnkI94fjY9Ut0Y"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_b1biVJmyRA5aM7bg4ERdoFRh8vrxlDnkI94fjY9Ut0Y
Content-Type: text/plain; charset=us-ascii

running the the probe on the ethernet cable interface completes successfully, it is just the MT cards that are causing problems.

--b1_b1biVJmyRA5aM7bg4ERdoFRh8vrxlDnkI94fjY9Ut0Y
Content-Type: text/html; charset=us-ascii

<p>running the the probe on the ethernet cable interface completes successfully, it is just the MT cards that are causing problems.</p>


--b1_b1biVJmyRA5aM7bg4ERdoFRh8vrxlDnkI94fjY9Ut0Y--

--===============4142512103921962912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4142512103921962912==--
