Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80798A67DCA
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 21:11:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48953385E43
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 16:11:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742328707; bh=sr5tkaE8ymew2AASs2REo4FRx1Aersx2vUYymG737j4=;
	h=From:Date:To:Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VMHycXSnVUUeggRtfUjIy5V1lG8nTtRVzg8AqrCq97sK1iutUa3ycz8O6mG6NRo2U
	 fu8iFPTqcR88BqRUxyDdvZfCASDfxpVQm9yjtUS0rojo+gLlshQrzziv0JEWZCw4QX
	 2lq6Z25iwUlJjvb+9pRYDZi7EPPabtkmLuDY2RFBnAFT4e5tPKcaLnIztg3ZiTKWSt
	 U6d7sivpNKdcqO2yFVk85K4U63mtIq6SIEsIr/Q5p3Gr8YFW683aIh9KAUEXh0sepu
	 XhrniR7bbnZ4X+ozN9snyvGl3ETjRneSnT6yD1QqV+QiO4zBBWBbgIDab/Wsm+xbQh
	 +f7bTis1VU2vQ==
Received: from p00-icloudmta-asmtp-us-west-2a-100-percent-0.p00-icloudmta-asmtp-vip.icloud-mail-production.svc.kube.us-west-2a.k8s.cloud.apple.com (p-west2-cluster4-host6-snip4-2.eps.apple.com [57.103.69.163])
	by mm2.emwd.com (Postfix) with ESMTPS id BF75E385D53
	for <usrp-users@lists.ettus.com>; Tue, 18 Mar 2025 16:10:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=slarew.net header.i=@slarew.net header.b="dJdLVyr0";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=slarew.net; s=sig1;
	bh=7hv5nfjMjCDGjJwBxLuXkxPhVVp12fdOylJSYx5OSAA=;
	h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To:x-icloud-hme;
	b=dJdLVyr0wD2vNHTZ4RYcSBOFdZzT+2dA+TESTNw5OzQpX55xPlivD8Iunyn24NtzL
	 sOoYRvUi5fVqsYz9qg3X/HVkDoJVLn15MOIUX25M/cuQAKozH0PnwOFH5mx0BWt1jY
	 HAxm4dws9Ec+j021ibPu/8oUb+/hNiOjIvWWuE3jWNX1N94Y/AN2uWkLF0J/usDvhx
	 1mOIqnI6FCeOSGTazWEj89pkFIfLfwpriAIOzpVOFDO7S+oCufufIMWWI1Gy/3/17K
	 m0Znua8Dr+pK8AN6UIA4yWGZwU9TLhD77xSY+KU4M6mpPycXY+jIsGsS8AXBvnt+WV
	 w9Rlek4fmocLw==
Received: from smtpclient.apple (mr-asmtp-me-k8s.p00.prod.me.com [17.57.152.38])
	by p00-icloudmta-asmtp-us-west-2a-100-percent-0.p00-icloudmta-asmtp-vip.icloud-mail-production.svc.kube.us-west-2a.k8s.cloud.apple.com (Postfix) with ESMTPSA id 9CCFF1800AFA
	for <usrp-users@lists.ettus.com>; Tue, 18 Mar 2025 20:10:40 +0000 (UTC)
From: Stephen Larew <stephen@slarew.net>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Message-Id: <629924BC-D0BD-449C-8E71-C7A55808F236@slarew.net>
Date: Tue, 18 Mar 2025 13:10:29 -0700
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-Proofpoint-GUID: XNl0d349ge4qro9sZaXQKpgMuyhf4O_U
X-Proofpoint-ORIG-GUID: XNl0d349ge4qro9sZaXQKpgMuyhf4O_U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_09,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 clxscore=1030
 phishscore=0 bulkscore=0 spamscore=0 adultscore=0 mlxscore=0
 mlxlogscore=666 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2503180146
Message-ID-Hash: 7BXQW3FFJFQZFM6WZBDRPL6MWEZBSIPV
X-Message-ID-Hash: 7BXQW3FFJFQZFM6WZBDRPL6MWEZBSIPV
X-MailFrom: stephen@slarew.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Reply-To: Stephen Larew <stephen@skysafe.io>
Subject: [USRP-users] SkySafe is hiring an SDR engineer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7BXQW3FFJFQZFM6WZBDRPL6MWEZBSIPV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am the hiring manager for an SDR engineer job at SkySafe. We are looking for skilled individuals who can use C++ and Python to implement high performance software receivers (for the x310!) covering a range of standard and proprietary physical layer protocols.

You can find the complete job description here:
https://job-boards.greenhouse.io/skysafe/jobs/7801087002

If you are interested, please apply via the job board link above and also send me an email to let me know you applied.

Stephen Larew
Director of Wireless Architecture
SkySafe, Inc.
https://www.skysafe.io
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
