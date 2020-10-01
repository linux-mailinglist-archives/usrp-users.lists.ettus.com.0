Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DD6280442
	for <lists+usrp-users@lfdr.de>; Thu,  1 Oct 2020 18:50:20 +0200 (CEST)
Received: from [::1] (port=59572 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kO1mb-0002dm-Vm; Thu, 01 Oct 2020 12:50:17 -0400
Received: from mx0b-002cfd01.pphosted.com ([148.163.155.97]:32071)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <andrews.250@osu.edu>) id 1kO1mX-0002TN-At
 for usrp-users@lists.ettus.com; Thu, 01 Oct 2020 12:50:13 -0400
Received: from pps.filterd (m0130878.ppops.net [127.0.0.1])
 by mx0a-002cfd01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 091GmMbn030989; Thu, 1 Oct 2020 12:49:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osu.edu;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 mime-version; s=pps1; bh=/afIStSJRczzdeWQNOR6EuhzDywq3V5aE8H5F/1hEB0=;
 b=Uj/XfoZn0HpQEZPcd5qMY56C65u044MBa8T7j87LS6EP4D2sWUM2+GH0TgBehIJUe8Ls
 biOkX4hQyAxRk2U4k9qOxtzqMpwM15GUmS9tpDP/xfWYCgkoM71a6mcrkgTVVCzdBZZQ
 XOcCMIGg0L/rz/i4N+4CF1ZfGBXdARVti5QID8nDnavwHUg6ZbrrVnPNRhkZP/gw/mZr
 OmXC6i8/Dy2tN4mP7705vItD9XI1eenFLOVboRYGOeMTWnWTDqaSqZ+nY0pd07cUJryD
 0pXGkoSft2CyYdlW+IISF+6Q987F0436sp85klJibMe+/oE0GcTgnHFQ3okrZcP4Nb/r iA== 
Received: from nam04-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam08lp2041.outbound.protection.outlook.com [104.47.73.41])
 by mx0a-002cfd01.pphosted.com with ESMTP id 33v4gt0j54-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 01 Oct 2020 12:49:32 -0400
Received: from CO2PR07CA0082.namprd07.prod.outlook.com (2603:10b6:100::50) by
 DM6PR01MB5659.prod.exchangelabs.com (2603:10b6:5:1c7::11) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3412.26; Thu, 1 Oct 2020 16:49:30 +0000
Received: from CO1NAM05FT049.eop-nam05.prod.protection.outlook.com
 (2603:10b6:100:0:cafe::9) by CO2PR07CA0082.outlook.office365.com
 (2603:10b6:100::50) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.20 via Frontend
 Transport; Thu, 1 Oct 2020 16:49:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 128.146.138.8)
 smtp.mailfrom=osu.edu; lists.ettus.com; dkim=pass (signature was verified)
 header.d=osu.edu; lists.ettus.com; dmarc=pass action=none header.from=osu.edu; 
Received-SPF: Pass (protection.outlook.com: domain of osu.edu designates
 128.146.138.8 as permitted sender) receiver=protection.outlook.com;
 client-ip=128.146.138.8; helo=cio-socc-esr01.osuad.osu.edu;
Received: from cio-socc-esr01.osuad.osu.edu (128.146.138.8) by
 CO1NAM05FT049.mail.protection.outlook.com (10.152.96.164) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.13 via Frontend Transport; Thu, 1 Oct 2020 16:49:29 +0000
Received: from CIO-SOCC-EX07.osuad.osu.edu (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by cio-socc-esr01.osuad.osu.edu (Postfix) with ESMTPS id A103395;
 Thu,  1 Oct 2020 12:49:28 -0400 (EDT)
Received: from CIO-SOCC-EX01.osuad.osu.edu (128.146.86.130) by
 CIO-SOCC-EX07.osuad.osu.edu (128.146.86.134) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Thu, 1 Oct 2020 12:49:28 -0400
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by smtp.service.osu.edu (128.146.86.130) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5
 via Frontend Transport; Thu, 1 Oct 2020 12:49:28 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vu4q79oYT1/s1cDmyodiKJhkg/DINif76kNb8xXPNQ1M/cJPf+ef7lDp4YoB5V8X7aTiiYqlV09zmlD8cLWxzTL/ojXhKtdu+PHkanvP6dBu0kJncoueC3yHXmS0GIqAV9rB8qkeNc8LJFEdBrGS3nbmD16qWoccKVdWi2EiZzTx6qj8olgVOhohZlWGYZLtOPLOSYBD7R09bz97QiaojMWH6MZvHqo4EuZrWH5Idlseox7HDlEJoAyl1dWGz+5A33K6FAx7zfHAhHGiBlNVAnWGXeV5rASgglWQVIvkXeDaiO6vWpfU80ZWYHNVqGryPAkWZC67m3UEuVTdYtSoqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/afIStSJRczzdeWQNOR6EuhzDywq3V5aE8H5F/1hEB0=;
 b=W8Kc5YVUwFDJuXZy8B79pMZt2qndvp0XWX7r2j/i8jeKcxuKaArlqTA2HvM3Lc2grdIopESA4TKfn5MOun3jmXSnF7crdWn7DifwyQyx7Y/sy1+/32HQnurYoEMVgphot9lTAGBzTIEWc2rXURWggaIvfhz+rCTd3jNANL8R+5wAw056lhPrk0wOn/4ztLjtFjgty+iZbxAiIAI+Wd5sK8FGZFxSCiUV8dKTScVEEesUOGXU46bHW5AzS6AisGe7Q4/05ESQM58EAQyrDtWiW8I9yK+sNGK/M5btUu93WbaVygtl/6kk2EO2muGElCv78qpeFkPi3ruDTqB7Ddz84A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=osu.edu; dmarc=pass action=none header.from=osu.edu; dkim=pass
 header.d=osu.edu; arc=none
Received: from SN2PR01MB1968.prod.exchangelabs.com (2603:10b6:804:9::9) by
 SA0PR01MB6281.prod.exchangelabs.com (2603:10b6:806:ef::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.32; Thu, 1 Oct 2020 16:49:27 +0000
Received: from SN2PR01MB1968.prod.exchangelabs.com
 ([fe80::9898:4e1c:abc:c293]) by SN2PR01MB1968.prod.exchangelabs.com
 ([fe80::9898:4e1c:abc:c293%10]) with mapi id 15.20.3433.037; Thu, 1 Oct 2020
 16:49:27 +0000
To: Rob Kossler <rkossler@nd.edu>
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] E320 SFP and RJ45 port problems/confusion
Thread-Index: AQHWl1QPy04TwhXIv0y3LxHQ/v7vw6mBiIDkgAFGUwCAACdDhQ==
Date: Thu, 1 Oct 2020 16:49:26 +0000
Message-ID: <SN2PR01MB1968CED3DC51C86F2157DC92A8300@SN2PR01MB1968.prod.exchangelabs.com>
References: <SN2PR01MB19687AA86F3F0B44B901CB43A8330@SN2PR01MB1968.prod.exchangelabs.com>
 <SN2PR01MB1968049D5333EFD9A2ADE03CA8330@SN2PR01MB1968.prod.exchangelabs.com>,
 <CAB__hTTjay0ypjBpqSqR1GYu1UdADuZg17G1MGdEfrZ7snJXTQ@mail.gmail.com>
In-Reply-To: <CAB__hTTjay0ypjBpqSqR1GYu1UdADuZg17G1MGdEfrZ7snJXTQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: nd.edu; dkim=none (message not signed)
 header.d=none;nd.edu; dmarc=none action=none header.from=osu.edu;
x-originating-ip: [69.14.208.36]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 207ee9dd-9b72-4aca-4ddb-08d86629f705
x-ms-traffictypediagnostic: SA0PR01MB6281:|DM6PR01MB5659:
X-Microsoft-Antispam-PRVS: <DM6PR01MB565911FBA233D497B9ADE323A8300@DM6PR01MB5659.prod.exchangelabs.com>
x-header-sapphire: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 8k7OupKNutMhl1Qplq2UT8qrMvcxSvD5MDj7d+yoF4IF3LpnVsRsq2uowwEENZhlq1bXDi061lQkz2y67t19LEHnZwhl6AmvIOV05cj9Yw5B3OJUuK3ECI32H/F1GSqxrBRa+Fj0wBsK3MlEByF2WeKLbaF681N4ySlnNCDT5SXawhsCfW7RYK4+PTZgQ0hxNPA2wshtaFPylXXco2Y9uOlUpP3YInWhRfjcmIP4tJQHtSNrLWtq3qrHG3M2w8EAk5VUu0hKd8ICXPO9piQeARu/D1nTTk1JMQhPGJ8BlWbZSGBfNKQxa38mOKi3IlXMp16YPgkgz0g4WLdTnbb3NqJK4hXzYGx2aGq0Cr9kqMQCa+zJpSQ5iO1542+D9uzWR0jnymcIQ2/np8DfiEojfOYKup1neTeVtvt5cc6selxxoV3x1AXN4lO/1rGFhe+YDz36nhhvfG2/bZkG4T3row==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:SN2PR01MB1968.prod.exchangelabs.com; PTR:;
 CAT:NONE;
 SFS:(6019001)(4636009)(39860400002)(366004)(396003)(376002)(346002)(136003)(269900001)(4326008)(166002)(83080400001)(83380400001)(9686003)(478600001)(55016002)(8676002)(66574015)(33656002)(6916009)(966005)(8936002)(76116006)(19627405001)(5660300002)(91956017)(26005)(7696005)(75432002)(86362001)(71200400001)(186003)(66946007)(786003)(66476007)(6506007)(2906002)(64756008)(66446008)(53546011)(52536014)(66556008)(316002)(47845001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 6HlCu4SD9MeaRuoinSlu68cyi8OYyrKL7AqYImRh4Ckr0HhcO/HVcny8RsOJ7fI0cNHhpl0tyXpg5ntMSwbGAY++EoVOu3TAD4xkdTiPugIhxxWSQDv8bHz73joGxtwVkcN/YKf0Pdbj9xPqku3pB+pN3TmRQajjRgDIdxFNlOy1SBDaW5uCXPu8hW9CxuwG9EJJmXyFSH3xaKTt0i+FGVhU1M4B+3fNvo2WKnvDeshqRBNRtYhWRZAd19oDjr7c+Er2getqF2ln+2NJsaIDfg3U/YXUC4u4F3HesA7DGBgwcXl3FEO+EstNSe9nrZla6NivrijOhxuvl4dpq+dcU3BwOut/HHdyPryUXq8d+XADiaaNJWcM7KW3CYey+TlAgQP8JU80JokxUEm996HCwFV9I3lhQMMVPrKEfuDuf094s67y4snl+ZqjiBsCMEYMxehu5GEaiTniM2CGi5/YuPTVsEkTC+8lnYDVFrpjzKT7fgAuUGZyEWUHTidqlZefdknyCK1CPD9jaaGDjmMrODMrFUNQwVLDhN80lcznqPmZFShlYL1Lc5GTfnodOVU5wqiEm7G7bQ/KsaK8oC8WhXzIxtVkg3cM5bxrP7KXtkg3YZpyZMG52n6g5Jz2txAwZj3TYwVHh5+FUZXkQX1dLw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR01MB6281
x-header-osu-auth: True
X-CFilter-Loop: Reflected
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: CO1NAM05FT049.eop-nam05.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 5fac82b2-60de-4f88-7d65-08d86629f58a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8zrCOFk0WHlfduCBwO/tLf4xgtS8Jj/KymqZdlCEB+daS0chxfupj3oZrklmpqaEYix3bo6JaBXXIbS6QIxHjr4RzFjW91USfLuzdQGwC22mgV/6vddpdQ4QIZWIjuRk7yEJthVhv1Tq6ddJUy3bmHK/eHLXPN9JRCGiy5n8mjSbZBzUddAOwxWeoUAAgRldPxsqZWc6LO1JixP/eChZMuCtLeHjwVtPILG3SxNV8sdi/tV4qgC9JwKDF87uZuFsJ7MIhbKId5uot1OhuMbvCD3sg9ZhzQfIKSMqsRIfChIJyMm9IfPrLBtHPF/O2kLd5VqXRAh0n6euN9iR10jvhGKUqvdXbhNYfB1Wdw+pzvuisDLduIKjFQhobikGnKhf1ajlbxsATwMrqF6OOdDxewTJHr5g0IrVRxVogWOhUY6cDU6eUEwqD9O5/RFKxxJmglUsed/yxCYxgJK8gAufqepg0yn6n/ZRn8R8GpVZn9JZcdRthyr7WgZCJa1LJ3OfoTRqKZWLOhwCYQSeu2YX3w5IXRluFuy9uqrh6432L9HVAgVN0y71l/7ossGAgMUwf0+p0NY/R3YBo8dG1KQUUA==
X-Forefront-Antispam-Report: CIP:128.146.138.8; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:cio-socc-esr01.osuad.osu.edu;
 PTR:cio-socc-esr01.osuad.osu.edu; CAT:NONE;
 SFS:(6019001)(4636009)(396003)(376002)(346002)(136003)(39860400002)(269900001)(46966005)(966005)(4326008)(356005)(19627405001)(7696005)(6916009)(5660300002)(336012)(53546011)(66574015)(47076004)(82740400003)(55016002)(83080400001)(166002)(186003)(6506007)(9686003)(316002)(26005)(2906002)(786003)(83380400001)(7596003)(33656002)(8676002)(86362001)(82310400003)(52536014)(70206006)(70586007)(30864003)(8936002)(478600001)(75432002)(33310700002)(47845001);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: osu.edu
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2020 16:49:29.5448 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 207ee9dd-9b72-4aca-4ddb-08d86629f705
X-MS-Exchange-CrossTenant-Id: eb095636-1052-4895-952b-1ff9df1d1121
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eb095636-1052-4895-952b-1ff9df1d1121; Ip=[128.146.138.8];
 Helo=[cio-socc-esr01.osuad.osu.edu]
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM05FT049.eop-nam05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR01MB5659
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-10-01_06:2020-10-01,
 2020-10-01 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1011
 adultscore=0 mlxlogscore=999 malwarescore=0 bulkscore=0 mlxscore=0
 spamscore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2010010141
Subject: Re: [USRP-users] E320 SFP and RJ45 port problems/confusion
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
From: "Andrews, Mark J. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Andrews, Mark J." <andrews.250@osu.edu>
Content-Type: multipart/mixed; boundary="===============6267879596837221836=="
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

--===============6267879596837221836==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN2PR01MB1968CED3DC51C86F2157DC92A8300SN2PR01MB1968prod_"

--_000_SN2PR01MB1968CED3DC51C86F2157DC92A8300SN2PR01MB1968prod_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Good catch!  When I go to the Network Settings under IPv4, I have it set to=
 manual with the static IP 192.168.10.2 and the netmask to 255.255.255.0, b=
ut the ifconfig shows that the netmask is still 0.0.0.0.    I set it to 255=
.255.255.0 with a sudo ifconfig command, and after a restart I can now run =
uhd_usrp_probe!  I still get some warnings that I might have to take a clos=
er look at, but this is at least a step past the logjam, thank you!

Mark
________________________________
From: Rob Kossler <rkossler@nd.edu>
Sent: Thursday, October 1, 2020 10:25 AM
To: Andrews, Mark J. <andrews.250@osu.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] E320 SFP and RJ45 port problems/confusion

Hi Andrew,
I'm definitely no expert on networking, but the one thing that caught my ey=
e in the config below was the "netmask" for the enp30s0 port on the PC. Why=
 is this 0.0.0.0 instead of 255.255.255.0?
Rob

On Wed, Sep 30, 2020 at 3:00 PM Andrews, Mark J. via USRP-users <usrp-users=
@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
 Hello,

I am getting started with an Ettus E320 on Ubuntu and am having some issues=
 communicating over the streaming port that I have been unable to solve.  B=
ased on what I'm seeing, I believe it has something to do with my PCs netwo=
rk settings because I can communicate with one port at a time without any p=
roblems.
My current setup is a PC with one Ethernet connection on the motherboard an=
d a separate WiFi PCIe card.  I connected the E320's RJ45 port to my WiFi r=
outer and the Ethernet connection is connected to the RJ45-to-SFP adapter o=
n the E320's SFP+ port.  I am able to ssh into the E320 and run the example=
 programs on there, but when I try to run uhd_find_devices or uhd_usrp_prob=
e on my PC, there are issues.  I am running UHD 3.15 on both my PC and the =
E320.  I will separate what I think is relevant information with lines of e=
qual signs for readability =3D=3D=3D=3D=3D=3D=3D=3D=3D

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


The ifconfig -a info for my PC:


ifconfig -a
enp30s0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.10.1  netmask 0.0.0.0  broadcast 255.255.255.255
        inet6 fe80::93f1:af0c:251:4642  prefixlen 64  scopeid 0x20<link>
        ether b0:6e:bf:c1:18:57  txqueuelen 1000  (Ethernet)
        RX packets 53  bytes 5865 (5.8 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 180  bytes 26338 (26.3 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device memory 0xf7600000-f761ffff

lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 2019  bytes 203709 (203.7 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 2019  bytes 203709 (203.7 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wlp37s0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.20  netmask 255.255.255.0  broadcast 192.168.1.255
        inet6 fe80::44e4:2e51:6e8f:9d35  prefixlen 64  scopeid 0x20<link>
        ether 60:f6:77:96:f6:8b  txqueuelen 1000  (Ethernet)
        RX packets 111178  bytes 146464516 (146.4 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 51515  bytes 21064148 (21.0 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The ifconfig -a on the E320 is:


eth0      Link encap:Ethernet  HWaddr 00:80:2F:28:B9:3E
          inet addr:192.168.1.18  Bcast:192.168.1.255  Mask:255.255.255.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:10667 errors:0 dropped:114 overruns:0 frame:0
          TX packets:3142 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:14041114 (13.3 MiB)  TX bytes:233123 (227.6 KiB)
          Interrupt:27 Base address:0xb000

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:23 errors:0 dropped:0 overruns:0 frame:0
          TX packets:23 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:2337 (2.2 KiB)  TX bytes:2337 (2.2 KiB)

sfp0      Link encap:Ethernet  HWaddr 00:80:2F:28:B9:3F
          inet addr:192.168.10.2  Bcast:192.168.10.255  Mask:255.255.255.0
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:38 errors:0 dropped:3 overruns:0 frame:0
          TX packets:51 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:4118 (4.0 KiB)  TX bytes:5475 (5.3 KiB)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

If I try to ping the SFP port just using the 'ping' command, it does not wo=
rk

ping -c 4 192.168.10.2
PING 192.168.10.2 (192.168.10.2) 56(84) bytes of data.

--- 192.168.10.2 ping statistics ---
4 packets transmitted, 0 received, 100% packet loss, time 3063ms

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

But if I force it to use the hardwaired interface, ping works fine.

ping -I enp30s0 -c 4 192.168.10.2
PING 192.168.10.2 (192.168.10.2) from 192.168.10.1 enp30s0: 56(84) bytes of=
 data.
64 bytes from 192.168.10.2<https://urldefense.com/v3/__http://192.168.10.2_=
_;!!KGKeukY!jxT56Bl-8zzZm_LhW9xuMr1QwZ3vxP3QbLBsna-HilbnclOTWvYEHU6gUz81vS_=
kmCU$>: icmp_seq=3D1 ttl=3D64 time=3D1.43 ms
64 bytes from 192.168.10.2<https://urldefense.com/v3/__http://192.168.10.2_=
_;!!KGKeukY!jxT56Bl-8zzZm_LhW9xuMr1QwZ3vxP3QbLBsna-HilbnclOTWvYEHU6gUz81vS_=
kmCU$>: icmp_seq=3D2 ttl=3D64 time=3D1.44 ms
64 bytes from 192.168.10.2<https://urldefense.com/v3/__http://192.168.10.2_=
_;!!KGKeukY!jxT56Bl-8zzZm_LhW9xuMr1QwZ3vxP3QbLBsna-HilbnclOTWvYEHU6gUz81vS_=
kmCU$>: icmp_seq=3D3 ttl=3D64 time=3D1.42 ms
64 bytes from 192.168.10.2<https://urldefense.com/v3/__http://192.168.10.2_=
_;!!KGKeukY!jxT56Bl-8zzZm_LhW9xuMr1QwZ3vxP3QbLBsna-HilbnclOTWvYEHU6gUz81vS_=
kmCU$>: icmp_seq=3D4 ttl=3D64 time=3D0.961 ms

--- 192.168.10.2 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3005ms
rtt min/avg/max/mdev =3D 0.961/1.312/1.443/0.203 ms

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
If I run uhd_find_devices, my PC can see the E320, but it is listed as "rea=
chable: no".


~$ uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HEAD-0-=
gaea0e2de

-- UHD Device 0

Device Address:
    serial: 31BEE1C
    claimed: False
    mgmt_addr: 192.168.1.18
    product: e320
    reachable: No
    type: e3xx

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
If I run uhd_usrp_probe with "addr=3D192.168.1.18" it cannot detect a trans=
port option


 uhd_usrp_probe --args "addr=3D192.168.1.18"
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HEAD-0-=
gaea0e2de
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.1.18,type=3De3xx,product=3De320,serial=3D31BEE1C,claimed=3DFalse,add=
r=3D192.168.1.18
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.=
168.1.18,product=3De320'.
[ERROR] [MPMD] Failure during block enumeration: : Could not select a trans=
port option! Either a transport hint was not specified or the specified hin=
t does not support communication with RFNoC blocks.
Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

If I run uhd_usrp_probe with "addr=3D192.168.10.2" it can't find the device=
:


uhd_usrp_probe --args "addr=3D192.168.10.2"
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HEAD-0-=
gaea0e2de
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    addr: 192.168.10.2

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The uhd_config_info on the  my PC and the E320:

 uhd_config_info --version
UHD 3.15.0.HEAD-0-gaea0e2de

ssh root@192.168.1.18<mailto:root@192.168.1.18>
root@ni-e320-31BEE1C:~# uhd_config_info --version
UHD 3.15.0.0-0-gaea0e2de


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.com/v3/__http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com__;!!KGKeukY!jxT56Bl-8zzZm_LhW9xuMr1QwZ3vxP3QbLBsna-HilbnclOTWvY=
EHU6gUz812MqrE80$>

--_000_SN2PR01MB1968CED3DC51C86F2157DC92A8300SN2PR01MB1968prod_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0)">
Hi Rob,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0)">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0)">
Good catch!&nbsp; When I go to the Network Settings under IPv4, I have it s=
et to manual with the static IP 192.168.10.2 and the netmask to 255.255.255=
.0, but the ifconfig shows that the netmask is still 0.0.0.0. &nbsp;&nbsp; =
I set it to 255.255.255.0 with a sudo ifconfig
 command, and after a restart I can now run uhd_usrp_probe!&nbsp; I still g=
et some warnings that I might have to take a closer look at, but this is at=
 least a step past the logjam, thank you!</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0)">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0)">
Mark<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rob Kossler &lt;rkoss=
ler@nd.edu&gt;<br>
<b>Sent:</b> Thursday, October 1, 2020 10:25 AM<br>
<b>To:</b> Andrews, Mark J. &lt;andrews.250@osu.edu&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] E320 SFP and RJ45 port problems/confusion<=
/font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hi Andrew,</div>
<div>I'm definitely no expert on networking, but the one thing that caught =
my eye in the config below was the &quot;netmask&quot; for the&nbsp;enp30s0=
 port on the PC. Why is this 0.0.0.0 instead of 255.255.255.0?</div>
<div>Rob</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Sep 30, 2020 at 3:00 PM And=
rews, Mark J. via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div>
<div id=3D"x_gmail-m_7348921206654473100divRplyFwdMsg" dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp;Hello, <br>
</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I am getting started with an Ettus E320 on Ubuntu and am having some issues=
 communicating over the streaming port that I have been unable to solve.&nb=
sp; Based on what I'm seeing, I believe it has something to do with my PCs =
network settings because I can communicate
 with one port at a time without any problems.&nbsp; <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
My current setup is a PC with one Ethernet connection on the motherboard an=
d a separate WiFi PCIe card.&nbsp; I connected the E320's RJ45 port to my W=
iFi router and the Ethernet connection is connected to the RJ45-to-SFP adap=
ter on the E320's SFP+ port.&nbsp; I am able
 to ssh into the E320 and run the example programs on there, but when I try=
 to run uhd_find_devices or uhd_usrp_probe on my PC, there are issues.&nbsp=
; I am running UHD 3.15 on both my PC and the E320.&nbsp; I will separate w=
hat I think is relevant information with lines
 of equal signs for readability =3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
The ifconfig -a info for my PC:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
ifconfig -a
<div>enp30s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; &nbsp;mtu =
1500</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; inet 192.168.10.1 &nbsp;netmask 0.0.0.0 &n=
bsp;broadcast 255.255.255.255</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; inet6 fe80::93f1:af0c:251:4642 &nbsp;prefi=
xlen 64 &nbsp;scopeid 0x20&lt;link&gt;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; ether b0:6e:bf:c1:18:57 &nbsp;txqueuelen 1=
000 &nbsp;(Ethernet)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; RX packets 53 &nbsp;bytes 5865 (5.8 KB)</d=
iv>
<div>&nbsp; &nbsp; &nbsp; &nbsp; RX errors 0 &nbsp;dropped 0 &nbsp;overruns=
 0 &nbsp;frame 0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; TX packets 180 &nbsp;bytes 26338 (26.3 KB)=
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 overruns 0 &nb=
sp;carrier 0 &nbsp;collisions 0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; device memory 0xf7600000-f761ffff &nbsp;</=
div>
<div><br>
</div>
<div>lo: flags=3D73&lt;UP,LOOPBACK,RUNNING&gt; &nbsp;mtu 65536</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; inet 127.0.0.1 &nbsp;netmask 255.0.0.0</di=
v>
<div>&nbsp; &nbsp; &nbsp; &nbsp; inet6 ::1 &nbsp;prefixlen 128 &nbsp;scopei=
d 0x10&lt;host&gt;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; loop &nbsp;txqueuelen 1000 &nbsp;(Local Lo=
opback)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; RX packets 2019 &nbsp;bytes 203709 (203.7 =
KB)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; RX errors 0 &nbsp;dropped 0 &nbsp;overruns=
 0 &nbsp;frame 0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; TX packets 2019 &nbsp;bytes 203709 (203.7 =
KB)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 overruns 0 &nb=
sp;carrier 0 &nbsp;collisions 0</div>
<div><br>
</div>
<div>wlp37s0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt; &nbsp;mtu =
1500</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; inet 192.168.1.20 &nbsp;netmask 255.255.25=
5.0 &nbsp;broadcast 192.168.1.255</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; inet6 fe80::44e4:2e51:6e8f:9d35 &nbsp;pref=
ixlen 64 &nbsp;scopeid 0x20&lt;link&gt;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; ether 60:f6:77:96:f6:8b &nbsp;txqueuelen 1=
000 &nbsp;(Ethernet)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; RX packets 111178 &nbsp;bytes 146464516 (1=
46.4 MB)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; RX errors 0 &nbsp;dropped 0 &nbsp;overruns=
 0 &nbsp;frame 0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; TX packets 51515 &nbsp;bytes 21064148 (21.=
0 MB)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; TX errors 0 &nbsp;dropped 0 overruns 0 &nb=
sp;carrier 0 &nbsp;collisions 0</div>
<div><br>
</div>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
The ifconfig -a on the E320 is:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
eth0 &nbsp; &nbsp; &nbsp;Link encap:Ethernet &nbsp;HWaddr 00:80:2F:28:B9:3E=
 &nbsp;
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet addr:192.168.1.18 &nbsp;Bcast:=
192.168.1.255 &nbsp;Mask:255.255.255.0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP BROADCAST RUNNING MULTICAST &nbs=
p;MTU:1500 &nbsp;Metric:1</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:10667 errors:0 dropped:1=
14 overruns:0 frame:0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:3142 errors:0 dropped:0 =
overruns:0 carrier:0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 txqueuelen:1000 </div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:14041114 (13.3 MiB) &nbsp;=
TX bytes:233123 (227.6 KiB)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Interrupt:27 Base address:0xb000 </=
div>
<div><br>
</div>
<div>lo &nbsp; &nbsp; &nbsp; &nbsp;Link encap:Local Loopback &nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet addr:127.0.0.1 &nbsp;Mask:255.=
0.0.0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP LOOPBACK RUNNING &nbsp;MTU:65536=
 &nbsp;Metric:1</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:23 errors:0 dropped:0 ov=
erruns:0 frame:0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:23 errors:0 dropped:0 ov=
erruns:0 carrier:0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 txqueuelen:1000 </div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:2337 (2.2 KiB) &nbsp;TX by=
tes:2337 (2.2 KiB)</div>
<div><br>
</div>
<div>sfp0 &nbsp; &nbsp; &nbsp;Link encap:Ethernet &nbsp;HWaddr 00:80:2F:28:=
B9:3F &nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet addr:192.168.10.2 &nbsp;Bcast:=
192.168.10.255 &nbsp;Mask:255.255.255.0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP BROADCAST RUNNING MULTICAST &nbs=
p;MTU:1500 &nbsp;Metric:1</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:38 errors:0 dropped:3 ov=
erruns:0 frame:0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:51 errors:0 dropped:0 ov=
erruns:0 carrier:0</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 txqueuelen:1000 </div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:4118 (4.0 KiB) &nbsp;TX by=
tes:5475 (5.3 KiB)</div>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If I try to ping the SFP port just using the 'ping' command, it does not wo=
rk</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
ping -c 4 192.168.10.2
<div>PING 192.168.10.2 (192.168.10.2) 56(84) bytes of data.</div>
<div><br>
</div>
<div>--- 192.168.10.2 ping statistics ---</div>
<div>4 packets transmitted, 0 received, 100% packet loss, time 3063ms</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
But if I force it to use the hardwaired interface, ping works fine.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
ping -I enp30s0 -c 4 192.168.10.2
<div>PING 192.168.10.2 (192.168.10.2) from 192.168.10.1 enp30s0: 56(84) byt=
es of data.</div>
<div>64 bytes from <a href=3D"https://urldefense.com/v3/__http://192.168.10=
.2__;!!KGKeukY!jxT56Bl-8zzZm_LhW9xuMr1QwZ3vxP3QbLBsna-HilbnclOTWvYEHU6gUz81=
vS_kmCU$" target=3D"_blank">
192.168.10.2</a>: icmp_seq=3D1 ttl=3D64 time=3D1.43 ms</div>
<div>64 bytes from <a href=3D"https://urldefense.com/v3/__http://192.168.10=
.2__;!!KGKeukY!jxT56Bl-8zzZm_LhW9xuMr1QwZ3vxP3QbLBsna-HilbnclOTWvYEHU6gUz81=
vS_kmCU$" target=3D"_blank">
192.168.10.2</a>: icmp_seq=3D2 ttl=3D64 time=3D1.44 ms</div>
<div>64 bytes from <a href=3D"https://urldefense.com/v3/__http://192.168.10=
.2__;!!KGKeukY!jxT56Bl-8zzZm_LhW9xuMr1QwZ3vxP3QbLBsna-HilbnclOTWvYEHU6gUz81=
vS_kmCU$" target=3D"_blank">
192.168.10.2</a>: icmp_seq=3D3 ttl=3D64 time=3D1.42 ms</div>
<div>64 bytes from <a href=3D"https://urldefense.com/v3/__http://192.168.10=
.2__;!!KGKeukY!jxT56Bl-8zzZm_LhW9xuMr1QwZ3vxP3QbLBsna-HilbnclOTWvYEHU6gUz81=
vS_kmCU$" target=3D"_blank">
192.168.10.2</a>: icmp_seq=3D4 ttl=3D64 time=3D0.961 ms</div>
<div><br>
</div>
<div>--- 192.168.10.2 ping statistics ---</div>
<div>4 packets transmitted, 4 received, 0% packet loss, time 3005ms</div>
<div>rtt min/avg/max/mdev =3D 0.961/1.312/1.443/0.203 ms</div>
<br>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If I run uhd_find_devices, my PC can see the E320, but it is listed as &quo=
t;reachable: no&quot;.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
~$ uhd_find_devices
<div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HE=
AD-0-gaea0e2de</div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
-- UHD Device 0
<div><br>
</div>
<div>Device Address:</div>
<div>&nbsp; &nbsp; serial: 31BEE1C</div>
<div>&nbsp; &nbsp; claimed: False</div>
<div>&nbsp; &nbsp; mgmt_addr: 192.168.1.18</div>
<div>&nbsp; &nbsp; product: e320</div>
<div>&nbsp; &nbsp; reachable: No</div>
<div>&nbsp; &nbsp; type: e3xx</div>
<div><br>
</div>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>
If I run uhd_usrp_probe with &quot;addr=3D192.168.1.18&quot; it cannot dete=
ct a transport option<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp;uhd_usrp_probe --args &quot;addr=3D192.168.1.18&quot;
<div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HE=
AD-0-gaea0e2de</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.1.18,type=3De3xx,product=3De320,serial=3D31BEE1C,claimed=3DFals=
e,addr=3D192.168.1.18</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=
=3D192.168.1.18,product=3De320'.</div>
<div>[ERROR] [MPMD] Failure during block enumeration: : Could not select a =
transport option! Either a transport hint was not specified or the specifie=
d hint does not support communication with RFNoC blocks.</div>
<div>Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()</div>
<div><br>
</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>
</div>
<div><br>
</div>
<div>If I run uhd_usrp_probe with &quot;addr=3D192.168.10.2&quot; it can't =
find the device:<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>uhd_usrp_probe --args &quot;addr=3D192.168.10.2&quot;
<div>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.HE=
AD-0-gaea0e2de</div>
<div>Error: LookupError: KeyError: No devices found for -----&gt;</div>
<div>Device Address:</div>
<div>&nbsp; &nbsp; addr: 192.168.10.2</div>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>
</div>
<br>
The uhd_config_info on the&nbsp; my PC and the E320:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp;uhd_config_info --version
<div>UHD 3.15.0.HEAD-0-gaea0e2de</div>
<div><br>
</div>
<div>ssh <a href=3D"mailto:root@192.168.1.18" target=3D"_blank">root@192.16=
8.1.18</a></div>
<div>root@ni-e320-31BEE1C:~# uhd_config_info --version</div>
<div>UHD 3.15.0.0-0-gaea0e2de</div>
<br>
<br>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.com/v3/__http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com__;!!KGKeukY!jxT56Bl-8zzZm_LhW9xuMr1QwZ3vxP3Q=
bLBsna-HilbnclOTWvYEHU6gUz812MqrE80$" rel=3D"noreferrer" target=3D"_blank">=
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_SN2PR01MB1968CED3DC51C86F2157DC92A8300SN2PR01MB1968prod_--


--===============6267879596837221836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6267879596837221836==--

