Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95216134804
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 17:32:18 +0100 (CET)
Received: from [::1] (port=39582 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipEFk-0006TU-UM; Wed, 08 Jan 2020 11:32:16 -0500
Received: from mx0b-00010702.pphosted.com ([148.163.158.57]:44832)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <prvs=427687bb5d=aaron.rossetto@ni.com>)
 id 1ipEFh-0006Oe-4z
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 11:32:13 -0500
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
 by mx0b-00010702.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 008GQWh8010173
 for <usrp-users@lists.ettus.com>; Wed, 8 Jan 2020 10:31:32 -0600
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2108.outbound.protection.outlook.com [104.47.70.108])
 by mx0b-00010702.pphosted.com with ESMTP id 2xasddhp5m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2020 10:31:31 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n1TFEqA6Q+WmgM4FA/lMSVe0J8LUqiGmlHpODg8vf/zsKkDEwXXbc55jSAa5ncAUpSMdmO8BPFLhIyfygLNeDBsaOyz1YlId8/X7+MMJbCalnIdo9zBbsoMhq6X32lX/K6KaBpMMzkveUFf3YPN69nrKV8LiyoPD6Za0nBLleWGruiPKJI2cPK1hUZNz1TmxX6oTvUv0T77mDhHf0b0gWUsBEdxOGnli9HouXm/U0CCYhLstio/W7XmYewn+mAQ4Uc17ZJW4t3KdoiUwRTPPSCANxbrWf+eMSI0oLILMTLO85yMj2QOQdLh+mf8SkKjFMurFDv3WAK1LbRw9R58WLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zJeB5jmxCRM9cjeH2uNQ0SSXFQsZ1wu0U6zXZgMnJew=;
 b=kh+YupwWLZhnI2ELzRAIFo/3e1JpRr2S3tScMzc3tjg1vO0j7Ex2z0n8kf7m4R9FqirnUr5jvbauX18vlD6C4H2asUXhKVdxtaBrNHg3/ytJNU0Myxu21TQFLl1eAlJ/dFB/vC3QEBDtOi5Hnm8xP28fGZZgKcYDQ9qiIVCXb6tXCxEbIlQ2+A6+7NLBoMaC8hf6OlrvrlHhF6Me+7OtXNm0ku+hQy8SspFU+tFzNFAYq6L1zIg3lHbUkicOenj+h2wyIHDrTg7HDhq7vDJxyrnyHyiRRJerlOyv+VsNrZ8FUOHx2BmU9fBC9BU4hVXguMmkxMUTuCowTqU9rSPfpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zJeB5jmxCRM9cjeH2uNQ0SSXFQsZ1wu0U6zXZgMnJew=;
 b=GsYkO2D9Napaeia+N1/yT0aAtv+Sg0vJjBKwVbFBeg7hKCYY34GjE4j02st33DU7SQM9mvaCpBayvG957WldBV7ncQr7Y2I9va7abqKVTcw675qhggA/6I82eyjJPXjtrWH9BwthzRdHh3ur4ziY0YWGThvolQsg0d7Ocaf8rxQ=
Received: from BYAPR04MB4456.namprd04.prod.outlook.com (52.135.237.77) by
 BYAPR04MB4392.namprd04.prod.outlook.com (20.176.251.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Wed, 8 Jan 2020 16:31:30 +0000
Received: from BYAPR04MB4456.namprd04.prod.outlook.com
 ([fe80::7ca3:79b3:2405:29f0]) by BYAPR04MB4456.namprd04.prod.outlook.com
 ([fe80::7ca3:79b3:2405:29f0%3]) with mapi id 15.20.2623.008; Wed, 8 Jan 2020
 16:31:30 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] DPDK runtime error
Thread-Index: AdXGQNNGMF7UrIx9RH2RPrLMCRKjow==
Date: Wed, 8 Jan 2020 16:31:30 +0000
Message-ID: <BYAPR04MB4456DA8FD19AC8C087B4D6FCF83E0@BYAPR04MB4456.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [130.164.62.37]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17225a19-4387-437f-e521-08d79458375c
x-ms-traffictypediagnostic: BYAPR04MB4392:
x-microsoft-antispam-prvs: <BYAPR04MB43920A167ED3759A11D4B822F83E0@BYAPR04MB4392.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(396003)(136003)(376002)(39850400004)(199004)(189003)(2906002)(52536014)(6916009)(33656002)(71200400001)(66446008)(66476007)(81156014)(66556008)(8676002)(64756008)(8936002)(81166006)(478600001)(9686003)(316002)(55016002)(7696005)(66946007)(5660300002)(76116006)(26005)(44832011)(86362001)(6506007)(53546011)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4392;
 H:BYAPR04MB4456.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ni.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V10yxahIZzU6pIGtMuWsKXStaR9/Yrad8nL0bnbtmLP2w7+GF9kEsn9u0JuxEXAPFo51g2cGYM6ygxEZhQe8D1By2q8czCDQ3dWRUtkG7hZypyPhmWChWpJTQenAuvlKYEDnUuDAigXoGgeSZUsT1g+wvdzdPVyXu28DDdS3ojR5LkVquXtJGR6J6rO29SvfwWHBQ2k0vAts2Vd2QKdHlCXQcs1pGw/PV8hQKUoHpoLBxb/qS4pDLv02/0T01DKDllpDwuAJSH4i8yXApFfTaLwtzx+zxz8S9ztfumDAoAg387TKEiNOekXKZFceSKHSGZB4cVO27JS8lAFlEtHkTGVpD6fvRpUc5VGquKEatVN80hkRZPCBL1Y8PFFN1fX9XWIfyW+Zsz+Y7uHQj9IsNvVJzgYav77+tH2w7v3XELelv2F6ZpmnmnCSlNROuDzF
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17225a19-4387-437f-e521-08d79458375c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2020 16:31:30.0913 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: laXGDlsPSC7fm6OkHK9XmOgitGGX28unTWhh1l7xJfMl7XL8A9D3+wXcdtEHwWrny5l9ERD9Fluz53HlobNRdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4392
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-08_04:2020-01-08,
 2020-01-08 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy
 score=30
 priorityscore=1501 mlxlogscore=999 spamscore=0 mlxscore=0 adultscore=0
 suspectscore=0 bulkscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 clxscore=1011 malwarescore=0 classifier=spam adjust=30 reason=mlx
 scancount=1 engine=8.12.0-1910280000 definitions=main-2001080134
Subject: Re: [USRP-users] DPDK runtime error
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
From: Aaron Rossetto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Rossetto <aaron.rossetto@ni.com>
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

Hello Florian,

I believe in UHD 3.15, the keys in the uhd.conf file use dashes (-), not underscores between words, e.g.:

[dpdk-mac=00:11:22:33:44:55]
dpdk-io-cpu = 1
dpdk-ipv4 = 192.168.10.1/24

Hope that helps,
Aaron



From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Florian Kaltenberger via USRP-users
Sent: Wednesday, January 8, 2020 10:10 AM
Subject: [EXTERNAL] Re: [USRP-users] DPDK runtime error

Hi, 
we now installed DPDK 17.11 but I still have exactly the same problem. 
I have a feeling the problem is that I am not addressing the device correctly. Here is what I did:
The USRP is connected to ethernet interfaces "p1p2" (mac_addr 64:9d:99:b1:1e:8d) and "p1p4" (mac_addr 64:9d:99:b1:1e:8f) which are originally configured with IP addresses 192.168.10.1 and inet_addr 192.168.20.1. This configuration works fine without dpdk.
Then I deactivate these two interfaces using "ifconfig p1p2 down" "ifconfig p1p4 down"and do "dpdk-devbind --bind=vfio-pci 01:00.1" and "dpdk-devbind --bind=vfio-pci 01:00.3". The status of "dpdk-devbind -s" is below.
In the file /etc/uhd/uhd.conf I specify
[dpdk_mac=64:9d:99:b1:1e:8d]
dpdk_io_cpu = 1
dpdk_ipv4 = 192.168.10.1/24

[dpdk_mac=64:9d:99:b1:1e:8f]
dpdk_io_cpu = 2
dpdk_ipv4 = 192.168.20.1/24
Is this the correct way of specifying it? What surprises me is that DPDK requires to address the device by its PCI address while UHD still requires to set the IP addresses. 
Florian.

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
