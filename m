Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE38B6DB818
	for <lists+usrp-users@lfdr.de>; Sat,  8 Apr 2023 04:13:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C25A384ABA
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 22:13:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680920024; bh=YijMyDsbCRPbejd0a9NUfyCvTtxn2m6D6jqn7sNxcKY=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=qnHwYoq66C94sl8zyviHDCLKFMZE6b51duIceX9kI4Gu2V6iL9pNMXzJs7RPqGfwa
	 U0BOiFe/pXAG2LMZ6yLXFwG9WfnOHU04pjZAWS86CFTaqlPFcUUeJkTTUeMPPS6/pS
	 gR16zyXELAiw/VVA4nbW0OBSdqLPHFvlX9BS8Hbbx14Tj8ABcwfaCCLHaMzbhjxcXq
	 NTtICt/Zoc2pyXeFAOGB534mHkgYAjeXR+Zs7hAnQfrcv63ZdMu8+oWdaD9ezx8L7A
	 5GqvnwootSeEwadEq6V02S6mJ0xm4RunYhgX/vJ0kouoOAFkEq/m9jU4FhHWGmmjJ3
	 gjne/MyfRHyyw==
Received: from smtp1.dnsmadeeasy.com (smtp1.dnsmadeeasy.com [208.94.147.128])
	by mm2.emwd.com (Postfix) with ESMTPS id A26F8384ABA
	for <usrp-users@lists.ettus.com>; Fri,  7 Apr 2023 22:13:39 -0400 (EDT)
Received: from smtp1.dnsmadeeasy.com (localhost [127.0.0.1])
	by smtp1.dnsmadeeasy.com (Postfix) with ESMTP id 656772F80096
	for <usrp-users@lists.ettus.com>; Sat,  8 Apr 2023 02:13:39 +0000 (UTC)
X-Authenticated-Name: James.Schatzman
Received: from mail.futurelabusa.com (c-67-174-176-3.hsd1.co.comcast.net [67.174.176.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp1.dnsmadeeasy.com (Postfix) with ESMTPSA
	for <usrp-users@lists.ettus.com>; Sat,  8 Apr 2023 02:13:39 +0000 (UTC)
Received: by mail.futurelabusa.com (Postfix, from userid 1001)
	id 994254D94B; Fri,  7 Apr 2023 20:13:38 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on l1.fu-lab.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_MID autolearn=no autolearn_force=no version=3.4.6
Received: from I0.futurelabusa.com (unknown [192.168.1.101])
	by mail.futurelabusa.com (Postfix) with ESMTPA id 6B9E84D905
	for <usrp-users@lists.ettus.com>; Fri,  7 Apr 2023 20:13:38 -0600 (MDT)
X-Mailer: QUALCOMM Windows Eudora Version 7.1.0.9
Date: Fri, 07 Apr 2023 20:13:37 -0600
To: usrp-users@lists.ettus.com
From: Jim Schatzman <james.schatzman@futurelabusa.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Message-Id: <20230408021338.994254D94B@mail.futurelabusa.com>
Message-ID-Hash: 6UL2SDBSCVJ5B7RHNEGHODL6XV3BK6I6
X-Message-ID-Hash: 6UL2SDBSCVJ5B7RHNEGHODL6XV3BK6I6
X-MailFrom: james.schatzman@futurelabusa.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Halting issue with USRP socket connection - how to set  SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6UL2SDBSCVJ5B7RHNEGHODL6XV3BK6I6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

We have been unable to estable 100% reliable connections to an N310 USRP radio through its 10 Gbit ethernet from Linux. What happens is that it works fine for a period of time - 30 to 60 minutes, typically. Then we see a couple of U's in the output. Unfortunately, that is fatal for our application.

Using the unmodified tx_samples_from_file or one modified to use separate threads to read data from the file and to sent it over the socket to the radio, the symptoms are the same.

All the evidence is that the application is sending data continuously without any delays. Also, the "network" has no devices on it except for the host computer, a high performance 10G switch, and the N310 radio.

We are wondering if this could be a Linux "feature". We would like to try increasing the socket priority with SO_PRIORITY. However, we are not finding any hooks in the UHD software for this.

Suggestions?

Thanks!
Jim
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
