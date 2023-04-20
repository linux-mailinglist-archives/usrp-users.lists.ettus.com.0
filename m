Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DD46E9530
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 15:00:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B4219384199
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 09:00:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681995616; bh=FdcZKmpHUsEg3NDhoDauyDtqzKbS6j/LnxQngxCDtSI=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=F8segKLZ1w6Mdc79vAYZIs/qeWWLAylXGWj2uZCO5MyvW3yRC9HscIm2rTjDVd8Vl
	 dzz93vzxFG6Dde4EGqSMvJGpp6TzF/fAkmtgp1+ewWoJJ0kkyMj73hH2q9rf2P3nO6
	 D2wm3S4bdlxzujT9OmhClWDsHHRkAryLDM2jqgwFSzInNlz/77W0hf5YuhScnzNtuB
	 ITGy8w77AhtI1SRUGwt6Lx1mDhFxi2x0Kml/ZP7xtpuBcQ5YRcscn46ykMxxxl1+zM
	 L/vX2ddmO+xmF/YeuTTaSDD1WupHhvocAXdbKp9Hsry/OQBQD4DV0QSCHq6ylkw/wG
	 DojKY1WKizCrg==
Received: from qs51p00im-qukt01071901.me.com (qs51p00im-qukt01071901.me.com [17.57.155.8])
	by mm2.emwd.com (Postfix) with ESMTPS id 415D2384012
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 08:59:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=icloud.com header.i=@icloud.com header.b="TqlBnbaG";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1681995571;
	bh=8ZMOE4Mn6IgJpTedwoLc3Ua+dSXRo6Th3WyhOTkxrYo=;
	h=Content-Type:From:Mime-Version:Subject:Message-Id:Date:To;
	b=TqlBnbaGs1QhllbsHPaY3rHGbwSzEzYJMKs0sb+WU5LRpV95u8/p6QyGDQmQsVCf7
	 5AoviqyWmwlXrKD17Tewo/ORH80GKuIPz2DrrS3pwg99SuNlU3yUAGGgWulhmPFYh5
	 leB1r7GraLTZl4l1eaXSLI4iWjV4He6S+k+20xl+JQGr0ZTg3SuGQemAJ+wixle7iB
	 qUESkdUtIsTmzxsRuI+onX5JWIiizS/WxDV0oB0q2lZyR7kbFi00XN0KcshaBN2smd
	 CvtwaYLRWSCSIiPIXeB0BK4vMAtkW+LZRXei9mgDRR9DcmWiezPj/6nMCJ32d1zr0Y
	 DmQVCBiShu//w==
Received: from smtpclient.apple (qs51p00im-dlb-asmtp-mailmevip.me.com [17.57.155.28])
	by qs51p00im-qukt01071901.me.com (Postfix) with ESMTPSA id 1FDED6280321
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 12:59:31 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Message-Id: <28E46AED-B0D0-43D2-ADC4-B4B020B78F15@icloud.com>
Date: Thu, 20 Apr 2023 14:59:19 +0200
To: usrp-users@lists.ettus.com
X-Mailer: iPhone Mail (20E252)
X-Proofpoint-GUID: qfWL6MeGS7d3IzVDXLMB4qLRS8cNbbMk
X-Proofpoint-ORIG-GUID: qfWL6MeGS7d3IzVDXLMB4qLRS8cNbbMk
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.138,18.0.572,17.0.605.474.0000000_definitions?=
 =?UTF-8?Q?=3D2020-02-14=5F11:2020-02-14=5F02,2020-02-14=5F11,2020-01-23?=
 =?UTF-8?Q?=5F02_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 adultscore=0
 phishscore=0 malwarescore=0 mlxlogscore=698 suspectscore=0 clxscore=1011
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2304200105
Message-ID-Hash: VJ6HDOAALDXYQKMYYZAIAN3RKN5Y2J3X
X-Message-ID-Hash: VJ6HDOAALDXYQKMYYZAIAN3RKN5Y2J3X
X-MailFrom: djtandrea@icloud.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using X310 with two hosts
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VJ6HDOAALDXYQKMYYZAIAN3RKN5Y2J3X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Andrea de Jesus Torres via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrea de Jesus Torres <djtandrea@icloud.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everybody,

I was wondering if an usrp x310 with two daughter boards can be used simultaneously with two host computers using the two SFP interfaces.
The daughter boards would be the UBX160 and I need the usrp to run Openairinterface simulations.

Thanks in advance,
Andrea de Jesus Torres
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
