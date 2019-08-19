Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 72521949BC
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2019 18:23:28 +0200 (CEST)
Received: from [::1] (port=59230 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hzkRJ-00025C-GW; Mon, 19 Aug 2019 12:23:25 -0400
Received: from st43p00im-zteg10071901.me.com ([17.58.63.169]:49704)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <rfengr00@me.com>) id 1hzkRF-0001yh-CN
 for usrp-users@lists.ettus.com; Mon, 19 Aug 2019 12:23:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
 t=1566231760; bh=KgyoIu7jFuu95GUUvPWSo7BEf56Mu8Yd9fw1K4L1vuY=;
 h=From:Content-Type:Date:Subject:Message-Id:To;
 b=VWck18HFulpbuGdz4HjpEl7oY1Sw8rmXtdtE9uYVamlC4HD3u7x2YnIW1Q5MLr0ko
 hv6duzQL/sca1xjIAJ6Ptsdu88jgBXJX47G6ev47rx7hkHsVSFeT0ms4PnqCT++nrs
 frwAIKAmPs0DO7ihoaimujxs4vbfNc/PSDUef2mlzMwriAV4yw87+EawPidNJyhaQC
 OE3wciSKQMppS2hDaVKVLmce9hj2yTceaeLQ6fk4l++VtN+Lezz5BmySvSoGTQl0Pl
 Unbv1ym4loUJx1SWhjz9fTDRIsB0+P28EIKl2v73kiVQMG/HWUQCMTBoi3tmAzAWm/
 QPBducFtZv18A==
Received: from [10.224.20.25] (mobile-166-175-63-184.mycingular.net
 [166.175.63.184])
 by st43p00im-zteg10071901.me.com (Postfix) with ESMTPSA id 9A2AAD81740
 for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2019 16:22:40 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Mon, 19 Aug 2019 11:22:38 -0500
Message-Id: <353FEC09-C798-47A9-B0F2-77CB3CA98F0F@me.com>
To: usrp-users@lists.ettus.com
X-Mailer: iPhone Mail (16F203)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-19_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=295 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1812120000 definitions=main-1908190175
Subject: [USRP-users] B205 GPIO & UHD Python API
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Louis Brown via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Louis Brown <rfengr00@me.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Are there any examples of accessing B205 GPIO via UHD Python API?  I need to control some hardware via SPI and can bit-bang it if needed.

Thanks,
Lou



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
