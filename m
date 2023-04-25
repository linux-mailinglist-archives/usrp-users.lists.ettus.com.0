Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7466EE400
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 16:35:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9729A3848D0
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 10:35:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682433302; bh=MdasijVeTwm/jmFpKer9+e8wxFasF6CoERIF2txspCg=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=HTgk0zydOAu7267O8R9/e93Tp9mYxOZ88DPM6kbqE0HbNRB9/xsYWBgDPh0M7x+F4
	 zEi/2OZ0F+j/aPFJG5G3BzSjA2OnpAPSUQhnFsXa9vFrAOVSfFfCa42Y8hTvJ/DN7/
	 1yXX/1VHgAM6h5EaTeYoaCyaqYzFLj+m+NrGXnhTjvh2wAEoJxsrPpmg3PuvmgKC2X
	 KHZCQtFIbRfrrjpsCGGLx7QfwQeriGBjQrL8L5jh9/+tgdgBa7oMjIRUNDRAHMEOVv
	 C3KKVOz/EkoRRHjTFsFqu2er2ao6toJ31qVKV9vlbyteHJk7sS86MNlAjWh+t8GXFn
	 hGHuZ4s81y3YA==
Received: from smtp1.dnsmadeeasy.com (smtp1.dnsmadeeasy.com [208.94.147.128])
	by mm2.emwd.com (Postfix) with ESMTPS id 57E5D384859
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 10:34:41 -0400 (EDT)
Received: from smtp1.dnsmadeeasy.com (localhost [127.0.0.1])
	by smtp1.dnsmadeeasy.com (Postfix) with ESMTP id DB8242F80535
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 14:34:40 +0000 (UTC)
X-Authenticated-Name: James.Schatzman
Received: from mail.futurelabusa.com (c-67-174-176-3.hsd1.co.comcast.net [67.174.176.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp1.dnsmadeeasy.com (Postfix) with ESMTPSA
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 14:34:40 +0000 (UTC)
Received: by mail.futurelabusa.com (Postfix, from userid 1001)
	id 1139F4D935; Tue, 25 Apr 2023 08:34:40 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on l1.fu-lab.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_MID,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
	version=3.4.6
Received: from I0.futurelabusa.com (unknown [192.168.1.101])
	by mail.futurelabusa.com (Postfix) with ESMTPA id C948E4D92F;
	Tue, 25 Apr 2023 08:34:39 -0600 (MDT)
X-Mailer: QUALCOMM Windows Eudora Version 7.1.0.9
Date: Tue, 25 Apr 2023 08:34:37 -0600
To: h57jafari@gmail.com,usrp-users@lists.ettus.com
From: Jim Schatzman <james.schatzman@futurelabusa.com>
In-Reply-To: <tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM@lists.ettus.com>
References: <tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM@lists.ettus.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Message-Id: <20230425143440.1139F4D935@mail.futurelabusa.com>
Message-ID-Hash: 2KZIGPVB4KUWCRYI6PZQLW7BHMDVHDN3
X-Message-ID-Hash: 2KZIGPVB4KUWCRYI6PZQLW7BHMDVHDN3
X-MailFrom: james.schatzman@futurelabusa.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher  sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2KZIGPVB4KUWCRYI6PZQLW7BHMDVHDN3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: quoted-printable

We have been working with N310 and N321 radios. It seems very difficult to =
get long term continuous operation without under-runs even at the seemingly=
 very low data rate of 12.5 Msps.

Currently we are trying various firmware versions, changing buffer sizes, e=
tc., but so far nothing has gotten the radios to work consistently for seve=
ral hours without under-runs. One run might go for 3 hours without failure.=
 The next attempt under-runs after 10 minutes. It is very erratic. Our next=
 attempt will be to implement an input FIFO.

The configurations have direct connections between a fast host (Ubuntu with=
 unnecessary services including Network Manager disabled or removed), and t=
he radio with 10 Gbit and frame size of 9000. Without using jumbo frames th=
e behavior was far worse.

Any other ideas??

Thanks-
Jim



At 08:22 AM 4/25/2023, h57jafari@gmail.com wrote:

>Hi,
>
>I almost follow the link to tune all the parameters setting except install=
ing DPDK, but for more than 20M sample rate I see =E2=80=9CU=E2=80=9D under=
flow. Is it normal? can it been solved to achieve more than 20M sample rate=
 without installing DPDK? thank you.
>_______________________________________________
>USRP-users mailing list -- usrp-users@lists.ettus.com
>To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
