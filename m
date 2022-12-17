Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D4E64F707
	for <lists+usrp-users@lfdr.de>; Sat, 17 Dec 2022 03:29:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6793A384538
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 21:29:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671244190; bh=vjItxbovczfBEgyXdBn4NZSxIX1xGTfqv3Gs9fqKSG4=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=Vyi094Pk84PIqZ33VAMW5FjOFEYYziJ41R6NGz/l1z1m4o31cLp2VEp5lvGsmKV4V
	 1gWTEbB2hOFvT9Bo31jNH0fQWgSpOPbh6i5GTaQJ/vFxu1Ag/Dkfy0Q0FiGLO8WofM
	 bgQOZ0if1znKkckFc38gakY1ioeimsS/XoDIU2I1Wl8VJnsC1ZlvotJUDGCMh0smT+
	 FXUXqgJvBtkVfUezACr1CTycaMfuhgTmLG157ogFjmQa3ACXi3fWaXekUfbTZCoWIA
	 dKHAyaga3gllSp2l1o1+wcjImu525+FRu8OWDeV77JBwHuzBR0qZgCwDuy7PkElBzF
	 RMkDzlLzaz2gA==
Received: from qs51p00im-qukt01072101.me.com (qs51p00im-qukt01072101.me.com [17.57.155.10])
	by mm2.emwd.com (Postfix) with ESMTPS id E938E38437B
	for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 21:29:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=me.com header.i=@me.com header.b="dbmEP5mr";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1671244145; bh=Yrom0f2MWxGMskZf4UnVHgs2TfBAQMDCMmkfmxlXxN8=;
	h=Content-Type:From:Mime-Version:Date:Subject:Message-Id:To;
	b=dbmEP5mrR40kwxRXcXAWq7fkbEhZWHecWoQlF7C1Hz3pngcbT2PJGan2qF6jWMJay
	 hY0x17ZcafT99mh8wfguPOw40b51cJPOg86KZxfpblz9vYBeHypJia7fDcxcSwXKBB
	 inHuIXBpdbq/L/T7B/t4YckKEgbLQuwQxkpLU8eJZ7MLe7MMJSiGAaVaK1vfG+Dqvn
	 9pA9OKGvI+sCW064mcMRIe+WfHVK2dbGDcVy5+j8bosdDwRCwtFWzWi1CW7ZVCB1PV
	 wNsSDuTKHdj3KbqH4iN1YB4syrbkeW92fLYvXmdJVwhsZt0eo6fe0GD1OZ8G+Vq9Wq
	 UdiuHOv9vc1yQ==
Received: from smtpclient.apple (qs51p00im-dlb-asmtp-mailmevip.me.com [17.57.155.28])
	by qs51p00im-qukt01072101.me.com (Postfix) with ESMTPSA id 2A274405AB
	for <usrp-users@lists.ettus.com>; Sat, 17 Dec 2022 02:29:05 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Fri, 16 Dec 2022 20:28:53 -0600
Message-Id: <F387B265-2071-4821-ACAA-BB8A02E5F232@me.com>
To: usrp-users@lists.ettus.com
X-Mailer: iPhone Mail (20B110)
X-Proofpoint-GUID: t5zuMuUnwvP8MQ5l1eOI_cR3zc1QPCc3
X-Proofpoint-ORIG-GUID: t5zuMuUnwvP8MQ5l1eOI_cR3zc1QPCc3
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.138,18.0.790,17.0.605.474.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-12=5F02:2020-02-14=5F02,2022-01-12=5F02,2020-01-23?=
 =?UTF-8?Q?=5F02_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=510
 malwarescore=0 clxscore=1031 adultscore=0 phishscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212170017
Message-ID-Hash: DIMJEHU5FLCADV774PB6XXN6RPVSRB6V
X-Message-ID-Hash: DIMJEHU5FLCADV774PB6XXN6RPVSRB6V
X-MailFrom: rfengr00@me.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD routable through port forwarding? 
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DIMJEHU5FLCADV774PB6XXN6RPVSRB6V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Louis Brown via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Louis Brown <rfengr00@me.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBoYXZlIGFuIFgzMDAgYW5kIE4yMTAgSeKAmWQgbGlrZSB0byBhY2Nlc3MgdGhyb3VnaCBteSBm
aXJld2FsbCB2aWEgYSBVSEQgYmFzZWQgYXBwLiAgSXMgdGhpcyBwb3NzaWJsZSwgYW5kIHdoaWNo
IHBvcnQgc2hvdWxkIEkgZm9yd2FyZD8NCg0KVGhhbmtzLA0KTG91DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
