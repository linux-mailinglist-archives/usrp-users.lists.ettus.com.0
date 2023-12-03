Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEAF8025F1
	for <lists+usrp-users@lfdr.de>; Sun,  3 Dec 2023 18:24:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E8FD4384B6C
	for <lists+usrp-users@lfdr.de>; Sun,  3 Dec 2023 12:24:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701624247; bh=I2sz7SZU2kiyCugR4deEdJOh0IDG30muMB9AmgoQ3rY=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cdBUIIct7bvV82ZGFsdvFkK5oWsulZVvveIZdLPI5C1KXTMo/JG54gHv1z07p8Ima
	 MGHaWDg9VQqe3YD2ZXXxh2mGbWB44iwJgHrvn6YvrHv1TDHj+m7UYnvNbF5OOQd4Wq
	 hez4KTNrOJbJk6+6sRi6HWWmqNeWxAoh2slGN2afQD4AfwVEcY+000YMPQ8wsMeu0o
	 4q/lh1hob4xQHsNdAseH1rRizA8blP9SduOWHnO+q3QlRptAYd0ybfJnfaekS8MJQU
	 3fSmSATcfb06A4f/XmXx3FjU/LLd4Z5Eo7ePkeu2MKKe1BeGXFUAHwcEbQrt+WNtEP
	 wHh9PbGVvCZXA==
Received: from postout1.mail.lrz.de (postout1.mail.lrz.de [129.187.255.137])
	by mm2.emwd.com (Postfix) with ESMTPS id A62483842FB
	for <usrp-users@lists.ettus.com>; Sun,  3 Dec 2023 12:23:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=tum.de header.i=@tum.de header.b="WhSOi3uZ";
	dkim-atps=neutral
Received: from lxmhs51.srv.lrz.de (localhost [127.0.0.1])
	by postout1.mail.lrz.de (Postfix) with ESMTP id 4Sjttg60vjzySQ
	for <usrp-users@lists.ettus.com>; Sun,  3 Dec 2023 18:23:39 +0100 (CET)
Authentication-Results: postout.lrz.de (amavisd-new); dkim=pass (2048-bit key)
	reason="pass (just generated, assumed good)" header.d=tum.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tum.de; h=
	mime-version:content-transfer-encoding:content-id:content-type
	:content-type:content-language:accept-language:message-id:date
	:date:subject:subject:from:from:received:received:received
	:received; s=tu-postout21; t=1701624219; bh=DMnsLxMhp2QXkpG0+fwp
	+zdfFvSwuDoBT/q3d7a3V0A=; b=WhSOi3uZiRgpoHvWMKxqPKei6evotBFUAGz5
	YnncAcd0UexMrqtkPYSG9oVQREoumo3nyPdHSGrOVu8Hzz4msyaRxTorRT+NZTrX
	Ni5RsoWlc5vgqcs9iNRpP108bAl1c6OR6qD/CkK8Xn4lao9kJ+4K9SOSe4lj89Ro
	dB7RvMIxGrBcXm5lGOfQeVyTX7xWeQQaeeGfc47Tj+CGOGLUhy9p/Eer7PtTiZap
	7br+M2a57M0dPYBamsykeQIPrQ5pIjRBGzKrWQ6kPRL7ra17P+91UCDygEI8GGgH
	fNbgICrV35+daAvr3Kf2SfMU8MwCRwZ0TJidyE+3CCYS0BOGZg==
X-Virus-Scanned: by amavisd-new at lrz.de in lxmhs51.srv.lrz.de
X-Spam-Flag: NO
X-Spam-Score: -2.874
X-Spam-Level: 
X-Spam-Status: No, score=-2.874 tagged_above=-999 required=5
	tests=[ALL_TRUSTED=-1, BAYES_00=-1.9, DMARC_ADKIM_RELAXED=0.001,
	DMARC_ASPF_RELAXED=0.001, DMARC_POLICY_NONE=0.001,
	LRZ_DATE_TZ_0000=0.001, LRZ_DKIM_DESTROY_MTA=0.001,
	LRZ_DMARC_FAIL=0.001, LRZ_DMARC_OVERWRITE=0.001,
	LRZ_DMARC_POLICY=0.001, LRZ_DMARC_TUM_FAIL=0.001,
	LRZ_ENVFROM_FROM_MATCH=0.001, LRZ_ENVFROM_TUM_S=0.001,
	LRZ_FROM_ENVFROM_ALIGNED_STRICT=0.001, LRZ_FROM_HAS_A=0.001,
	LRZ_FROM_HAS_AAAA=0.001, LRZ_FROM_HAS_MDOM=0.001,
	LRZ_FROM_HAS_MX=0.001, LRZ_FROM_HOSTED_DOMAIN=0.001,
	LRZ_FROM_NAME_IN_ADDR=0.001, LRZ_FROM_PHRASE=0.001,
	LRZ_FROM_PRE_SUR=0.001, LRZ_FROM_PRE_SUR_PHRASE=0.001,
	LRZ_FROM_TUM_S=0.001, LRZ_FWD_MS_EX=0.001, LRZ_HAS_CLANG=0.001,
	LRZ_HAS_CT=0.001, LRZ_HAS_MIME_VERSION=0.001, LRZ_HAS_SPF=0.001,
	LRZ_HAS_THREAD_INDEX=0.001, LRZ_HAS_URL_HTTP=0.001,
	LRZ_HAS_X_ORIG_IP=0.001, LRZ_MSGID_APPLE_MAIL=0.001,
	LRZ_NO_UA_HEADER=0.001, LRZ_RCVD_BADWLRZ_EXCH=0.001,
	LRZ_RCVD_MS_EX=0.001, LRZ_URL_HTTP_SINGLE=0.001,
	LRZ_URL_PLAIN_SINGLE=0.001, T_SCC_BODY_TEXT_LINE=-0.01]
	autolearn=no autolearn_force=no
Received: from postout1.mail.lrz.de ([127.0.0.1])
	by lxmhs51.srv.lrz.de (lxmhs51.srv.lrz.de [127.0.0.1]) (amavisd-new, port 20024)
	with LMTP id h-SMdz81VR70 for <usrp-users@lists.ettus.com>;
	Sun,  3 Dec 2023 18:23:39 +0100 (CET)
Received: from BADWLRZ-SWEX05A.ads.mwn.de (badwlrz-swex05a.ads.mwn.de [10.156.54.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "BADWLRZ-SWEX05A", Issuer "BADWLRZ-SWEX05A" (not verified))
	by postout1.mail.lrz.de (Postfix) with ESMTPS id 4Sjttg3LZrzySF
	for <usrp-users@lists.ettus.com>; Sun,  3 Dec 2023 18:23:39 +0100 (CET)
Received: from BADWLRZ-SWEX05A.ads.mwn.de (2001:4ca0:0:108::199) by
 BADWLRZ-SWEX05A.ads.mwn.de (2001:4ca0:0:108::199) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Sun, 3 Dec 2023 18:23:39 +0100
Received: from BADWLRZ-SWEX05A.ads.mwn.de ([fe80::c6b2:97e1:7494:2ada]) by
 BADWLRZ-SWEX05A.ads.mwn.de ([fe80::c6b2:97e1:7494:2ada%20]) with mapi id
 15.02.1258.028; Sun, 3 Dec 2023 18:23:39 +0100
From: Xianglong Wang <xianglong.wang@tum.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC: RX & TX triggering for RFNoC block only flowgraph
Thread-Index: AQHaJg102JbcBq6piUy+3/e4cCI6kQ==
Date: Sun, 3 Dec 2023 17:23:39 +0000
Message-ID: <74F79145-1C6F-46A1-BD35-1B1C9E8AAD4A@mytum.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2001:a61:279f:1901:680e:4765:ab59:d7df]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <33C4BEA7F6A4CB4B8B934BFBFAC12A53@ads.mwn.de>
MIME-Version: 1.0
Message-ID-Hash: 7CNKZEM4DCPPUUONRPPPLBGW7YYA3GT3
X-Message-ID-Hash: 7CNKZEM4DCPPUUONRPPPLBGW7YYA3GT3
X-MailFrom: xianglong.wang@tum.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC: RX & TX triggering for RFNoC block only flowgraph
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7CNKZEM4DCPPUUONRPPPLBGW7YYA3GT3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

Dear All,

I am using UHD 4.4 and GNURadio 3.10 and I am trying to set up an RX-TX passthrough flow graph as discussed in this thread (https://lists.ettus.com/empathy/thread/MJKCCJEVNJKJOIRORPWDI6Z5WZNHSR3B?hash=MJKCCJEVNJKJOIRORPWDI6Z5WZNHSR3B#MJKCCJEVNJKJOIRORPWDI6Z5WZNHSR3B).

 However, my flow graph is not working either, and when I add the split streamer as said in the thread, only the RX works, but the TX does not. How can I get both RX and TX to work with such a flow graph? Thanks in advance.

Kind regards,
Xianglong
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
