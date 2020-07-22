Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D261229D3B
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 18:40:00 +0200 (CEST)
Received: from [::1] (port=52496 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyHmh-0002OJ-LD; Wed, 22 Jul 2020 12:39:59 -0400
Received: from mail-eopbgr40103.outbound.protection.outlook.com
 ([40.107.4.103]:35603 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <demel@ant.uni-bremen.de>)
 id 1jyHmc-0002Do-Ih
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 12:39:54 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nMm2xhP/oUzKBzKW00YyGxcf7znSk4nuAFQ/4YBxO1eWRYDVdbTXXVYsZsg4ixigXREtWz9kzTbaIA6qRsOwf2cFmKACMyEVBdhCKeRvFAtcQ94ZhC/0UrKOugr2z8ZNv6TPWmje4lPSZoUCgWTCXAD5L0l3DMzWzJT3Rq6teUy2jq7Ywk0NgBOPWm2EMqAwHXbP3On53aky83iXSlJnpLInvPzx3rW9EoNy+CYk6Rf0HJ6dJUEJhponjCfbTrOllWiMCp4BSevdltjxiMYwI6Tlw6VgwGTKIaA8BYueQ/kgJvb9LEXpks6uVl1VBdZSGPSwEdl3AFjn4RUpHrxJ/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZTKTBh7yDlduD9M+8hWCnyfJixOpw4hXX+4C6YqD2Qc=;
 b=Tm7yNlNCfqueFI10oVKH9W9V9xl60dbIU1k8lTFDOVjLb8n1mmaj1R8FJpvAm/LxxKuI7jteXBMRtY34BBtfGccoWGBlzoHnRdDC93CGd8L4MdFF42GX0PyvcthpZ2ldBcKiIBPEGJxV5Cdu8/znY0zI+yZToIIhqPsnT3I2O5BmsbyUfps3Ar5S0bjWrIuvGxDN1uykSzEfWEntkKINHBjGL1zbQ3qRcd3BVsvMjUDgP9osuBOiclvmKHmBZwGxe3m8wsJgxOa5RtpPaeR0M6mW3QBkRquox15TIcr1JWRr1RGkZ/tmkLpg6WnFvygFrtnbXpYjJdsBnlAkVP+hDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZTKTBh7yDlduD9M+8hWCnyfJixOpw4hXX+4C6YqD2Qc=;
 b=uTA5/crv7TAlY4sfpKUoARfjto6qMxiRsJpBW/vYqy5QjlbU5GcLA7/kXR5RL8iKuzstINI0Wdei7pDN1ZijDkkPqcBOHEXIGaYuVFW38y/aYACHm+9+d1ESPQVDLE10ER6xEGJuG2vxyFFmwPXfFcy2MqIKhGkSuXPU3AJF0R8=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=ant.uni-bremen.de;
Received: from AM6PR0402MB3398.eurprd04.prod.outlook.com (2603:10a6:209:6::15)
 by AM6PR04MB5382.eurprd04.prod.outlook.com (2603:10a6:20b:96::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.18; Wed, 22 Jul
 2020 16:39:11 +0000
Received: from AM6PR0402MB3398.eurprd04.prod.outlook.com
 ([fe80::fda2:bcc4:1d9e:3bcf]) by AM6PR0402MB3398.eurprd04.prod.outlook.com
 ([fe80::fda2:bcc4:1d9e:3bcf%3]) with mapi id 15.20.3216.020; Wed, 22 Jul 2020
 16:39:11 +0000
To: usrp-users@lists.ettus.com
Message-ID: <f6a7bc0f-a627-bd61-827c-04e2e9cea7b8@ant.uni-bremen.de>
Date: Wed, 22 Jul 2020 18:39:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
Content-Language: en-US
X-ClientProxiedBy: AM3PR07CA0069.eurprd07.prod.outlook.com
 (2603:10a6:207:4::27) To AM6PR0402MB3398.eurprd04.prod.outlook.com
 (2603:10a6:209:6::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2003:ca:7f49:f100:d0ec:1497:11f2:4bdb]
 (2003:ca:7f49:f100:d0ec:1497:11f2:4bdb) by
 AM3PR07CA0069.eurprd07.prod.outlook.com (2603:10a6:207:4::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3239.9 via Frontend Transport; Wed, 22 Jul 2020 16:39:11 +0000
X-Originating-IP: [2003:ca:7f49:f100:d0ec:1497:11f2:4bdb]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 51c4b5fc-3c27-4602-77b1-08d82e5dc328
X-MS-TrafficTypeDiagnostic: AM6PR04MB5382:
X-Microsoft-Antispam-PRVS: <AM6PR04MB5382C0A0A122650BBDCD21D7A9790@AM6PR04MB5382.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ubKxeDgoE5D3+C24TPMHdxguyLmwsKqleUegqtp5wBugpsNPl6Qfzp8lQG7j7bs1C7asAV6wltZN+EPJ4v0ZFwCCiQiuDFNTtqKprAD/2m3YrRMxfBVcsfrKRq0+Ba23+ahNphTSvyxQWQkpGChzQJENQx8NHMIXW5AT/yfYtf1rM2Z9U8cq9EtaHCeTj/K3sBd9/NFqjPTXsNqUXgKBme1VycCesC1u7Fc0t+ar62IiMxnfsYz8srHhsOUMdn9R5uj3tMtqriyRM/OhPue1Q0fN0Q+6hgRKmDp14XG9gaBUrXLUOM6e2kgBE5dshTXT1RwO/Uo9eF+NO1SIXkW/znABiJ8unDSV+obK2rnfSyDvLqf+n8yEA5mrhFtzODld
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0402MB3398.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39830400003)(396003)(136003)(346002)(366004)(376002)(8936002)(6486002)(8676002)(186003)(5660300002)(2906002)(31686004)(16526019)(86362001)(31696002)(508600001)(66476007)(66556008)(66946007)(52116002)(2616005)(83380400001)(6916009)(786003)(316002)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 7XtHwbtWGp1k4wjmfMpnFUf+f4sRiy8ow7dwmAsaZ+FESZhw5HKALcnaydcQtGqzOEWDIcf1EtsYKehjglpt16XVl9FQWc4BiFDFqtsXBf9YOnm3nUFa2qfXSUYa9hlX6btVuGPv3sTiK5kUpZm8+EpRa6r5mMJH9zd+t2SRxQCtmCsONtbODziuf+UyTE9tLJESiWf11CNhuN2TgZ50nGj1H/GjVF8eicaSKUO1kPRp0RD8bG/5FeaODibX5OTxRmQC2ig834lLY46p/ZYzUkhbJx3et/9K1Yec2XLLNOFbgNUlKZuw9D/3ewGrw2Cu4qxqiihQEp2vWFEF7AvvT40icw5Y2g64mrAwM5YpuppMIveIZaVXQtyrWKZmZuChxh9ykn2+mUI6K40W+uCvfARc60W2XWvtd3nVBbe5qXMnf64CpgiistaNzaRBXDBnc6qyeikxQ8b8iABidtqXrlVHcmBcWDhvcXzzxQV+IMMk0gSiLtUKM76X1EMCPb5tfDK3AXzwKmIQRXAddz9KA06nU1PujrfUaiMlZSMH6Bo=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 51c4b5fc-3c27-4602-77b1-08d82e5dc328
X-MS-Exchange-CrossTenant-AuthSource: AM6PR0402MB3398.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2020 16:39:11.5609 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fgsebpyx3K+dN8P9naD865iufrQUfZ1jPxi6kdcKEQ7mVs2lnRQuVmxtqQHru2hpaSgf82hbG60twPuAeZFkJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5382
Subject: [USRP-users] 10us+ sample delay between daughterboards
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Johannes Demel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Johannes Demel <demel@ant.uni-bremen.de>
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

I have an issue with multiple USRP streams. If they are on separate 
daughterboards, but on the same motherboard aka USRP, those streams are 
not time aligned. They show a time offset of more than 10us. I use one 
USRP source block in GNU Radio and configure it with multiple streams.

At first, I observed this behavior with N310s but now I see it on an 
X310 as well. I use a GNU Radio flowgraph where I set the clock to "PC 
clock". I'd expect all streams to be in sync because they are handled by 
the same object. At least that's what I hope.
On an X310 I have 2 RX streams that observe a signal from across the 
room. On an N310, I tried different configurations and I could observe 
this delay between daughterboards. They are in sync for one daughterboard.

My flowgraph handles frequency offsets etc. But constant time offsets 
between RX streams are problematic. And I suppose they should not be there.

I'd like to use GPSDOs at some point but I don't have a GPS signal in 
the lab. And I don't have an octoclock or smth similar. But all of this 
shouldn't matter since I only use on USRP for RX. Or am I missing smth?

USRP: N310/X310(with 2x UBX160)
UHD: 3.15LTS
OS: Ubuntu 20.04
GNU Radio 3.9 (aka master)

Cheers
Johannes

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
