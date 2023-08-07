Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3710771C71
	for <lists+usrp-users@lfdr.de>; Mon,  7 Aug 2023 10:41:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 37F00384BCD
	for <lists+usrp-users@lfdr.de>; Mon,  7 Aug 2023 04:41:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691397677; bh=73zHSmm2W3MRAoYE8mZW/AOUmNAc8oC3qmlqWxoL9Oo=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=rZ1c0iW5GVZPTVep9mz+2u6Wh0HvyVdAviTm+ETEvZvqCR1Of9ameSMG7EAxd15ko
	 F9Dcmj6Qn7h0coHOrLW8WcUce8sUULzh5j0+dc6DVfdNz6GCEQ3bVMDsAk7OZfvGSe
	 nGp1TNK1NioDTRYbgUQHjG/wfAkaHGi4oAhgDkfgu2RcR0OnVvby45bh2/JfwTqJeW
	 yHjIrSTZ08gnlS+ChLsyok9JBTA0bzYyzn6NDhQ1uCpQjgl3GbyBC8jZvGMskI5TeZ
	 ub2SEzrBJ6W1F7MFBNgH3Fb+sPbNxwB6Y2X6W69G1IBGgDxgn8XaDqe4gpMbrNuObU
	 d0dON/ahcK22g==
Received: from sonic302-1.consmr.mail.bf2.yahoo.com (sonic302-1.consmr.mail.bf2.yahoo.com [74.6.135.40])
	by mm2.emwd.com (Postfix) with ESMTPS id 3764F384A7B
	for <usrp-users@lists.ettus.com>; Mon,  7 Aug 2023 04:41:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="OUtdXDOO";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1691397661; bh=PKIX7yzeAYecZkzSlc/ubdn3E0NdMVTTEKhpP2x8RfM=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=OUtdXDOOD2Y8Wagk2Qc5JxbG3cETNmxhzgRmlopPWnCEF6TQ1p18OET6j2arML87wxRNnKNLifkOJ9LlNEAyjxug0oMjoEUwVGxW2GGA1GgMsUgLeJoMrK/rWDQxfRJakOUb6Wn2ows2QxuLS7hLkVzmdeNQdGqMjTEMginbtAly7GabPpFFYbTSVJGqHssp+synT682QXoWQ1/7/2364QrFEhDPzS+/tebvzzGA3UVTYH1zmf3jhWug8Te/dg7Lt64T+9qNVPrTPPxozE/tjCRf0ULmyn8ax4w2tZFAInr+hAJEMvdTNYq61P1w3gkI34QlecQED+ovAcDOQsnK0g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1691397661; bh=1jXHsTs0hwhn6ZSrV5JQaRDC5q17ag97k88KtDhfnFO=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=feozKKDiFYhX7sPS3N+iQQpVBdTKk10ojDJ231HTpF68KsJGZ6pvITkU9UOterFspjzOh0Q/SmgIqH9FxidXJOjWmGjYAljgfzpxqJFDWP5V+OPpEplVtfmhwbRj7clPVGnyPRahqdJmKY7sRwuHWos/idoFv7xxXLqRE3P8MVxXHZd8AGxtvUNxH5RZMig4o1LUdGNg8JA34NPuFyK4vsCCmc71tGinYToHf4raFpIwHznQF8nZoOJxxRBryM+p+8xGmccrbECMh50nRK4ZbKZbpc+/PvlhVp680G0oQU9Ro8fp9WIDv+P0pUZTzV46iQLsqxr4uPgz8VviKZt05A==
X-YMail-OSG: 5K9K2G0VM1mebqxacuw49iBdLuK.SBRJwGzRgZUcTyL1.nu9rcp0BDPw1AtaMla
 bV0XTvpwDkbTY5u9LwO.R79be74GkG11OAHp5TuajkXsiNbzsgA0p4OFGAS26IPvGpk5jgg6IsPb
 7ABcy33LT7wtP0ud.YEoc5ywueOJ9x3Veh5ZOEjKvhaYiHeUEhU0pw4PmisDHqAx9IV8r7ld7xfc
 uEz.Db91mFukZWm5E2Lc.KEQr6QevSgHf.N1D7zwGEDVs3R7Wi0NgeFVesinuUeur3NAuMPJmRI.
 Tv4RcmzqDc3wS9uczUldzGgnqiU0VMtjiyaZJsrpSLQCzZm6omHpkTwSZdHC33aXuIsXfE2Y9JPO
 WUI9ZndgCEpjIiHjUsOBKZdHRz84JnK3CN.ijgNCa61xAdlBhD58IlfsBQj2zpV49l.gp3tc_yL2
 l3T2MGtMrFYyQNrl.4Vi7sLCwEVVi738wLbE.FVxBiBXld1KnjijmZ_HGEg3U8T3.nINBaV8oBlM
 xcaK3pSxTZ.7LbvUsrXH9H1tJZDq.x236KKO_7fz6fc4UAdQsnMUY6T0.ELLiOpqaKZEQWQWJStJ
 XIHsqBhRLNa0PAGi2DJZbSa4kYCZqa2aXK4Xy6vQG55GRebc9lYhPpyPlLSzYqfgjiObpQMNPThe
 1whvFf96BsrkPpQZ9s0w9RRWIUmnW21iBWfra4..S5a4FpR42sMGC0OmVig49iamW4JuBpzUAKlt
 LnVIEse8B9dAavX3I2jvpv8BtDx1woixGRkSGfBCSB482DbnUpxqbX4P9TAlM9nw8w_r5OsLT.V1
 KeEiL0BDXVbC9D8UuU4VsppyFaWWZyOUF5Lje7gkbwBhi9yvTMKyooNFAQPTnL9fYsZrcSqCwaTJ
 2QfXCQG6hnXyNAempMEFHdbjlnMZiH3kOFC5v7UHWeJQaRRpsCBLZIVCvuK_uS9yCYG0_04sN2fn
 OzdS0VkCzogEGef9j_Gyi6lvgLNFOQrXmgNAZVpuuA8ztLr14unVrTCjYXxZOhXdCUYCIzptkeJB
 VvKJlGuWCF_b1ebRlwycanAPj27vr8eafqqc05HD679Vu7hSLgMvVkCRooYZ1EinI2NCKU.ly0.s
 rGLgl3xoNYk1kVpwxP2YpZcWoi2tzEdpyXwTtVBK0hxzAH3cyyqZu4kV7izP.mE5eQpTugKBSdUu
 dP3L9BmfWd9k3XJ62acYQjGC0UADuch0G_fuKCej93L2JJCVTN1PfvEFZH5SeufgO2WT5ufa0tyw
 JPsJao4LLyiSdr_abEJ3lJhXySYsBQ1IZIil9og6jAzLD3mOaGUUznrzOGJYInQLhu0V_BRahKet
 8YBkcuHaX0GChwiypcWRWeY0MI1MzeP_DLbV.049Rxx9AAkKjYNx48oPU55yGQczSQNoEGhtM9RC
 QE7j4UQhTkle.wlOAEyNchujzGat.L4LF2YYqlrlFFq98Jkk6AGVlxOeOi1g.oxP57EmrNuFc.MT
 R3nCCf1JYV3PxesXQ4hiBHZ7HfY5JsWTsKRBsHjzoT2Mnx_.HvMgbXs5phQZXdCvSAjUiE1rI1I9
 oFxlg2byaEN5uCK.ni1No0mCUO3HI4SwXgeajtoOkqS5X3337UrWBndd1HYUQbIpX6VR.RTRQc7V
 kxnIpQhV63UP1yrgjpBl6BDhpd3BgJYIiDg5Nj2b9S8V5ExAEV9N0WkjE5outvOK9oJTPHw_SDQa
 o8nel9MBU2lJpVT3Je4tiizAj1AbgRLTMVnaxNi8JmytXGtchVFYFlz.PPt7mu6QeTXv6Oa_OP8b
 GI6wxiSbDqsyySEoSo530j6.lAnOHLAcRQTUfzd7AUdjEU9qNRAv._MM6oXcSgrDcmv4aXb5dacI
 DOjwJzOkwWtGSDgNVNewoOPaMkmj4SCrZnKuil2OFMcZcsdhZDvFvYMnBnK75cSmoQ1BHfFksgTf
 Hj6ydPUIFMCb_XOraQ4IIwo2W6xZEDMv58Y7hkH1VgiSeKBCE0wlY_6HW7.ONd.P8b2v3ux86vWn
 QgmuE6CcW.HhXNmzHiwwEOAopmWtq_MwQ4QqYD1v6LxTldPlWi86TzQUCpTtoGdhUS96QGNHFcaj
 8ErPr3rA2keLWfFFadizBZ6aRnEVyjp4zN_.WP9WisDrYTQ5hi66kqXVXmNdMDOMnRvA712p7yCA
 jlNdp93mNsSffEiNYDmHT8VQm2me.aKzUztBrDKxQ6LVFIsX596PSpqYao6jk35QNwTlvKzmwuv1
 YYXBB07cmUIw5nF0IBIxW4st3RA--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: a2bd98cd-23b5-42c8-82c9-1d95e6d25cac
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.bf2.yahoo.com with HTTP; Mon, 7 Aug 2023 08:41:01 +0000
Date: Mon, 7 Aug 2023 08:40:48 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <2081896548.419499.1691397648533@mail.yahoo.com>
In-Reply-To: <33990667-b547-dc4b-8e98-649b560df3df@gmail.com>
References: <JY69MVrXA1ftfNlnyzeN8KI5JuYFOwHyCm5H1oY83cU@lists.ettus.com> <33990667-b547-dc4b-8e98-649b560df3df@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21695 YMailNorrin
Message-ID-Hash: MDZ5HSACZV7NUO6OKI7FWFJ3YSGYMYTZ
X-Message-ID-Hash: MDZ5HSACZV7NUO6OKI7FWFJ3YSGYMYTZ
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MDZ5HSACZV7NUO6OKI7FWFJ3YSGYMYTZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============1075564772584130085=="

--===============1075564772584130085==
Content-Type: multipart/alternative;
	boundary="----=_Part_419498_272817877.1691397648532"

------=_Part_419498_272817877.1691397648532
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

 Hi,
I have a question regarding USRP calibration. I am using X310 and UHD 4.4.To save calibration time, the step size is set to be 5MHz and the freq range is [600MHz, 6GHz].My questions are:1. will the compensation be made at these discrete frequencies only, or interpolation will be applied to frequencies which are between the steps?2. how to compensate DC offset in case there is DSP freq?
Thanks,Hongwei


------=_Part_419498_272817877.1691397648532
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydpf6d16e8dyahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Hi,</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">I have a question regarding USRP calibration. I am using X310 and UHD 4.4.</div><div dir="ltr" data-setdir="false">To save calibration time, the step size is set to be 5MHz and the freq range is [600MHz, 6GHz].</div><div dir="ltr" data-setdir="false">My questions are:</div><div dir="ltr" data-setdir="false">1. will the compensation be made at these discrete frequencies only, or interpolation will be applied to frequencies which are between the steps?</div><div dir="ltr" data-setdir="false">2. how to compensate DC offset in case there is DSP freq?</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Thanks,</div><div dir="ltr" data-setdir="false">Hongwei</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div></div></body></html>
------=_Part_419498_272817877.1691397648532--

--===============1075564772584130085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1075564772584130085==--
