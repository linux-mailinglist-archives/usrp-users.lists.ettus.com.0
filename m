Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7F569CF2
	for <lists+usrp-users@lfdr.de>; Mon, 15 Jul 2019 22:41:58 +0200 (CEST)
Received: from [::1] (port=56062 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hn7nD-0003R5-RG; Mon, 15 Jul 2019 16:41:51 -0400
Received: from mx0b-00191d01.pphosted.com ([67.231.157.136]:30806
 helo=mx0a-00191d01.pphosted.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <lorenzo@research.att.com>)
 id 1hn7nA-0003MR-8V
 for usrp-users@lists.ettus.com; Mon, 15 Jul 2019 16:41:48 -0400
Received: from pps.filterd (m0049458.ppops.net [127.0.0.1])
 by m0049458.ppops.net-00191d01. (8.16.0.27/8.16.0.27) with SMTP id
 x6FKf24l005993
 for <usrp-users@lists.ettus.com>; Mon, 15 Jul 2019 16:41:07 -0400
Received: from tlpd255.enaf.dadc.sbc.com (sbcsmtp3.sbc.com [144.160.112.28])
 by m0049458.ppops.net-00191d01. with ESMTP id 2tryabtj2q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Mon, 15 Jul 2019 16:41:06 -0400
Received: from enaf.dadc.sbc.com (localhost [127.0.0.1])
 by tlpd255.enaf.dadc.sbc.com (8.14.5/8.14.5) with ESMTP id x6FKf5gZ120215
 for <usrp-users@lists.ettus.com>; Mon, 15 Jul 2019 15:41:05 -0500
Received: from zlp30493.vci.att.com (zlp30493.vci.att.com [135.46.181.176])
 by tlpd255.enaf.dadc.sbc.com (8.14.5/8.14.5) with ESMTP id x6FKf1Pc120130
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <usrp-users@lists.ettus.com>; Mon, 15 Jul 2019 15:41:01 -0500
Received: from zlp30493.vci.att.com (zlp30493.vci.att.com [127.0.0.1])
 by zlp30493.vci.att.com (Service) with ESMTP id 5E665402EDDD
 for <usrp-users@lists.ettus.com>; Mon, 15 Jul 2019 20:41:01 +0000 (GMT)
Received: from clpi183.sldc.sbc.com (unknown [135.41.1.46])
 by zlp30493.vci.att.com (Service) with ESMTP id 39A9B40004BB
 for <usrp-users@lists.ettus.com>; Mon, 15 Jul 2019 20:41:01 +0000 (GMT)
Received: from sldc.sbc.com (localhost [127.0.0.1])
 by clpi183.sldc.sbc.com (8.14.5/8.14.5) with ESMTP id x6FKf1qV031471
 for <usrp-users@lists.ettus.com>; Mon, 15 Jul 2019 15:41:01 -0500
Received: from mail-blue.research.att.com (mail-blue.research.att.com
 [135.207.178.11])
 by clpi183.sldc.sbc.com (8.14.5/8.14.5) with ESMTP id x6FKeu4L031181
 for <usrp-users@lists.ettus.com>; Mon, 15 Jul 2019 15:40:56 -0500
Received: from [135.207.143.169] (lt-bd-zbook-16.client.research.att.com
 [135.207.143.169])
 by mail-blue.research.att.com (Postfix) with ESMTP id 08F07F1977
 for <usrp-users@lists.ettus.com>; Mon, 15 Jul 2019 16:40:56 -0400 (EDT)
To: usrp-users@lists.ettus.com
Message-ID: <336792c6-6b5e-5ba1-a535-bdc4f1e45136@research.att.com>
Date: Mon, 15 Jul 2019 16:40:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-15_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
 score=0
 priorityscore=1501 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0
 spamscore=0 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=370 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907150235
Subject: [USRP-users] Ettus LP0965 antenna azimut/elevation
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
From: Lorenzo Bertizzolo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lorenzo Bertizzolo <lorenzo@research.att.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

Hi all,
where can I find some info about Ettus LP0965 antenna azimut/elevation ?

Thanks,


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
