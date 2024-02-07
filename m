Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E220884CF45
	for <lists+usrp-users@lfdr.de>; Wed,  7 Feb 2024 17:51:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A881B385117
	for <lists+usrp-users@lfdr.de>; Wed,  7 Feb 2024 11:51:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707324669; bh=lBsRUceak/dc5BOil/K5fkeQ20zAEGFk5W3DbxTaREM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eTQNfg51khrr0jsk7pgBhVmcMSEcDDFFTXHMXzyw/jtcSvcQyDr6fjdZ6lvjLyz0b
	 kiqVBVkbWDV4NSaaZToR98nxffNGCOGugiIk6F1LLnK1uey8S0KJuGtkxyA+oMvypy
	 BsBuDMPPZsX/M7wIXTNBSrL5YCzqVwZJkXrNlusMvzmcXSd0/Uahf4WrWSwbuRohtW
	 J1xl+1d3+lNmoupciXpokBshWYrM/ajBtV16z0eW39StDYHmMeYvSwpQLa6k3DMyV3
	 qg+FiwTsmu0iIasDGIF9xOsft4EagAmCe3zL1GhphBpKVyr3VsgZd46f/JDsp3kkQf
	 rKtwxo3uUqXOw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C08883850CE
	for <usrp-users@lists.ettus.com>; Wed,  7 Feb 2024 11:50:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707324615; bh=S5HFdLK38DkFTETA4qsZxGuCB5Z5cpPEzdrjJcVwPzs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=xxcMIygHxHVClREZfKBBCg2Xa3ieBlYHtIaTN7/z5StvIl2XmN5POKa4hMvVTGpQ5
	 KiUCBxjgUSzzVsdsyaPkcuuN17Ok7clObg9DQIsVhq5zACNzWT8no8jr5/hvkkoNYm
	 EqwISJmWP8hzhA6xLSsMha5m8QYsxPws6cn4BKUp266ZN613vSzsE1QKjBF59RKv5F
	 SQLAY1El68CYw7Zrzmk3UcZXT6UlST2LNLbkVwc0qLRcob95ZvSUDEvf0ReT/tb/q4
	 c/SOQt4pDQH7Ivhj4hhZlmiubOladKXXuZm9h6/+7IJd3Ou8/PCqhOZOxltd19Re6z
	 DZb2x/k2Y98VA==
Date: Wed, 7 Feb 2024 16:50:15 +0000
To: usrp-users@lists.ettus.com
From: zackkomo@utexas.edu
Message-ID: <AN0jECr3lF8bPyKpF12XR8OsXBYlEDEsAYcDp4egqY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTSP3LArPLTJqd7Vt=g6BxjDLkm+zy5FxxBMco865OO_1A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: CJE4ESLRFGUMTV346H3SRRGKKE2U5DBO
X-Message-ID-Hash: CJE4ESLRFGUMTV346H3SRRGKKE2U5DBO
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Align multi-channel captures with different rx_stremers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CJE4ESLRFGUMTV346H3SRRGKKE2U5DBO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5851057059113498102=="

This is a multi-part message in MIME format.

--===============5851057059113498102==
Content-Type: multipart/alternative;
 boundary="b1_AN0jECr3lF8bPyKpF12XR8OsXBYlEDEsAYcDp4egqY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_AN0jECr3lF8bPyKpF12XR8OsXBYlEDEsAYcDp4egqY
Content-Type: text/plain; charset=us-ascii

I have no clue how to explain it but .. I added just getting the timestamp from the metadata on my first rx_streamer->recv call and magically now the timestamps are aligned, and my aforementioned method of checking the timestamp also agrees. This works for the rates I originally mentioned I was having issues with (9830400 Msps and 20480000 Msps). Thanks for your help and time!

--b1_AN0jECr3lF8bPyKpF12XR8OsXBYlEDEsAYcDp4egqY
Content-Type: text/html; charset=us-ascii

<p>I have no clue how to explain it but .. I added just getting the timestamp from the metadata on my first rx_streamer-&gt;recv call and magically now the timestamps are aligned, and my aforementioned method of checking the timestamp also agrees. This works for the rates I originally mentioned I was having issues with (9830400 Msps and 20480000 Msps). Thanks for your help and time!</p>


--b1_AN0jECr3lF8bPyKpF12XR8OsXBYlEDEsAYcDp4egqY--

--===============5851057059113498102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5851057059113498102==--
