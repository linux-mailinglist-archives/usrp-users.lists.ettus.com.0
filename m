Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFA4145FCD
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jan 2020 01:20:28 +0100 (CET)
Received: from [::1] (port=35776 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iuQEV-00082s-6F; Wed, 22 Jan 2020 19:20:27 -0500
Received: from mail-bn8nam11on2090.outbound.protection.outlook.com
 ([40.107.236.90]:16192 helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <ilbeeman@wpi.edu>) id 1iuQEQ-0007t7-VT
 for usrp-users@lists.ettus.com; Wed, 22 Jan 2020 19:20:23 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R0SauyPE5qHJQik3TTy2EGFWx1DmMlyK2dRyYkd5k0/Kj7nnYUBck9lovPOb2rdcSpTDxSz7EfcOq05t1We8LtZavIN1u+fCI5NFhBVbzrUFn1dY/lWFZrpsifvsHqt0LUXJHmwjvsCK+qT/R/sBN8pEjsT5wTfuFbaQNxlG/s92hOYP48n+S3eZJdHu6H/SmF/v7VHMb8SXHxxLlSfbCMOnoSfbJAnYtVMI32CEhrGNJ/gCUR0g0C7aKR/0Kl6pgtoJZlttSYgFfjm8k1eedfpmfIhENC84+WjPg5dPpP8qCkVCKeHopqw8ebdU3VyM7GpD5DrX8sJLw3i5xyNLNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cvcPJ26ZUnqwkgBkQX0KciCeiL9XQyHwNcMTJbeo/Jg=;
 b=K3jd+qa7Vs154SYtquI3KQfWvYumiYQckPnh7AqgG8RjEBkikgf8JjR88b69g8Lon7L5+7Lp8ciXEl2NdpQerE7SIXzRtq+cUjfmSZ3DAiAynXpABjqDA9UXxpgKp1J41efvgjnrW5I9jsN8JuDexmzua8AvEaw1YDxY12CXgiUcUYEGBm1Bsg8ZD/8zzADd85i41km/G/H3xzWs4MJEbTLa9upcKw7go/D1UGD9pCOBVS0/msceleiDOcknR9rZHEAet4OMKx32GJbiwvSbUfDATibl+mLJ73zmX6lBVZv+LsCOPkXuy86gMCNsDVmOFSbeg4OOr7+ZfeUQksfFKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wpi.edu; dmarc=pass action=none header.from=wpi.edu; dkim=pass
 header.d=wpi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wpi.edu; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cvcPJ26ZUnqwkgBkQX0KciCeiL9XQyHwNcMTJbeo/Jg=;
 b=cmIaQcJmVd1+pd73z/CzqQV87GrYwbPyyoPRuGqkh6pKSnHtgZ4KrnKQuIO98Nx8yPv0dU5aGHH9L9gmgIiwkqJoNvGQD7COEr0ieAMDfWj/h3FEtw5EeM+Zz5tt0czIss6qNhFiDfzF/J0pwHQxV/V0KuqvFyqHge4dbNtO0a0=
Received: from BY5PR01MB5761.prod.exchangelabs.com (52.132.255.83) by
 BY5PR01MB5892.prod.exchangelabs.com (52.132.255.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.21; Thu, 23 Jan 2020 00:19:41 +0000
Received: from BY5PR01MB5761.prod.exchangelabs.com ([fe80::9176:296a:ba4:149])
 by BY5PR01MB5761.prod.exchangelabs.com ([fe80::9176:296a:ba4:149%7])
 with mapi id 15.20.2644.028; Thu, 23 Jan 2020 00:19:41 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E312 Multi-channel issues
Thread-Index: AQHV0X3lIoH4lD4RrkaYW758decsIQ==
Date: Thu, 23 Jan 2020 00:19:40 +0000
Message-ID: <BY5PR01MB57614F4C24F534483D32F35DCB0C0@BY5PR01MB5761.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ilbeeman@wpi.edu; 
x-originating-ip: [130.215.172.168]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 514b0da1-5529-4871-f1b2-08d79f99f092
x-ms-traffictypediagnostic: BY5PR01MB5892:
x-microsoft-antispam-prvs: <BY5PR01MB5892ED263723FDF1B88BA807CB0F0@BY5PR01MB5892.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 029174C036
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(396003)(39860400002)(376002)(346002)(366004)(199004)(189003)(76116006)(66476007)(66556008)(64756008)(66446008)(66946007)(33656002)(86362001)(71200400001)(478600001)(6506007)(186003)(26005)(5660300002)(7696005)(2906002)(6916009)(9686003)(52536014)(55016002)(81156014)(81166006)(786003)(8676002)(316002)(966005)(8936002)(75432002)(10126625002)(15519875007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BY5PR01MB5892;
 H:BY5PR01MB5761.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wpi.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WTVRD6GUJIgj6xk3zLimO1ekesOxBofLklixNv7jMKv9Wddl9NQQ5x1M3n5TUgPbMUQZRPq4bWsoFDOjTgbqRRtk4L/z3QWAs+3VKgYEg632DvqwSZO1wZ8CsSqV4ng8atkfHAaAi+mTNjU/75LfMYoQ/TEh3gFscJaImsPYrZdm6k4ODbNddgbgGJAjZZ/yvrO8uRg8e+/fK3Pk+nge+NIoEESt5oK8/EMLEyyQichh+gZwgkOs9NcmdS6mSfCx3LNJGQfQSo+T95pzrg1232IaNlc3SUGLT24rzqKdpKtKVtA9grMdz0KNEawYt5MfG8W0KsDG6b0QtsLGSblfSmy9Pt1hzSZO2tYaQF56zoLRSqXX127dioUx67Kr2hdxBSQpXMEZVW0GGmeAbCXoGs6xf1A2ST2f1rDe05Quk1fc4omATn2epPyIB5VzfDV2RblD05dhqxzOx+OrAEh5nSIjt2LEPdmDBYDo2Z1USAhj8g/WB2ynKd7XI93Y/Z6Wj5hm+rIYn8pwG1bXfBL65pLnlckvcFJc2KrLLju/6lnJ4iPbuoseu22iL4N/2Zil
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wpi.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 514b0da1-5529-4871-f1b2-08d79f99f092
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2020 00:19:40.8880 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 589c76f5-ca15-41f9-884b-55ec15a0672a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oGN0vfsZ7Wg6NDBj85DE8012nb7B0blZXB5vrT4K36wpx5q0QclIgIjmxA1OPBv0cvP2F+q4Lmp/TngI+7jDMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR01MB5892
Subject: [USRP-users] E312 Multi-channel issues
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Beeman, Isaac L. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Beeman, Isaac L." <ilbeeman@wpi.edu>
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

Hello Group,

I am using the E312 to receive on both channels so I can use a dual antenna system to determine the direction the received signal is coming from. I have gotten the GPS, internal IMU working, and single channel RX working. The issue is, when I try to receive on both channels simultaneously, one of the receivers (at random?) is measuring about 20db below the other. Here is a photo of what I mean (https://imgur.com/EtzLjPO shows RX-B being the strong signal) and here is a few lines of data from a different test (showing RX-A as the strong signal):

sample#,i1,q1,i2,q2
151,0.372131,0.705048,0.001709,0.003204
152,0.376495,0.702332,0.001862,0.003296
153,0.378906,0.699188,0.001770,0.003204
154,0.387146,0.695160,0.001892,0.003265
155,0.391083,0.692047,0.001740,0.003235
156,0.394806,0.689056,0.001740,0.003204
157,0.399719,0.685974,0.001984,0.003143
158,0.400391,0.683411,0.001984,0.003082
159,0.405457,0.679901,0.001892,0.003082
160,0.408569,0.676788,0.002045,0.003113
161,0.412811,0.673248,0.001984,0.003052
162,0.419006,0.669006,0.002106,0.003143
163,0.420746,0.666077,0.001953,0.003204
164,0.425323,0.662445,0.001892,0.003082
165,0.429535,0.659180,0.002075,0.003082

I have tried everything I can think of: swap out antennas, swap out USRPs, try a wired test, and try different versions of UHD; but found no solution. I even tried directly adjusting for the gain difference, but that just led to a channel with significantly more noise than the other. 

All my code is based off of sample code like rx_multi_samples.cpp and rx_samples_to_file.cpp, so I know that there aren't any glaring issues with my code. I also know that it isn't a direct hardware issue because both RX-A and RX-B receive fine on their own and seem to be randomly selected to be the channel receiving at full power when doing multi-channel.

Am I doing something completely wrong? I can't think of anything else to try. I was hoping to test this out in the next couple weeks, so any help would be greatly appreciated.

Here is a pastebin of my simplified code: https://pastebin.com/MNmV0CVM 

Isaac Beeman

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
