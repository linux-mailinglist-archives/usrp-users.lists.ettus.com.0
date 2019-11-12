Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9676F974F
	for <lists+usrp-users@lfdr.de>; Tue, 12 Nov 2019 18:37:24 +0100 (CET)
Received: from [::1] (port=54316 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUa6T-0006Xw-U2; Tue, 12 Nov 2019 12:37:21 -0500
Received: from mail-eopbgr760091.outbound.protection.outlook.com
 ([40.107.76.91]:23931 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <ilbeeman@wpi.edu>) id 1iUa6P-0006PJ-NH
 for usrp-users@lists.ettus.com; Tue, 12 Nov 2019 12:37:17 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AG0zSWV+55S/mLKG+ouSbEW3FKTyYp/WHbB8H+2wA5mUGG2ixtQaxnoJhhECGbVYSa1fhjjbB9RzbPhYshsspM8f+fA2KMqxeqSmvf3eYDq5S80Qj5FcYCj7Ru1mSLSqzh+KRzGNwsNLumu1HQt2U1zM4iC9v9mWrfCbusvgvj2rRA9SrTRYaU/S3aovr0I5ybA+U0ghzleRXP15kQv8J7McrxQtk9wI84t4gnmiG/51+liimQjlZDpAria7L8mrsPGO12HhqsICvGrnC8RDeL2RdbMsOX+ctunuk+MqLnZ5a4CXXNhVbEwv1cEoEoDAuHVCprfzHIeC2hWzcGW9Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eCgZGyRc9Y1mFQNCzzwKshiWYBhsGduh9FpXOOD5yEM=;
 b=T9a4tZFIApuJMAAHlTrIQzCMdbP1di0qF5RSjAkoCixzMByNRlWejE5UIN2oN04G/6VcHYGB8lf3L9vF+hdSgakMk2WoJmAuFUyrDQHxVTtEYPEkMKc4xZ6OrsC0FJQZwseKBI2RhbrR3uLJoHowSNZVyil5kvpMygjjzrw2Pqy4CzUF3zQATRlhUnSf9X7GTR7a7RxzqVg4eZAT7YLlUjb/WOeHzvwOAH4iEwJleTYu5bV1Gzy5sWesMSqkzspMY+Th3GUIJgRykzWcxo2E5tpJ5XfqfGq7j8BFBEqG/f9RLohI6WEmKZ1o8AAYzOcgJKREX1HhEuFttKNU3e9hKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wpi.edu; dmarc=pass action=none header.from=wpi.edu; dkim=pass
 header.d=wpi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wpi.edu; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eCgZGyRc9Y1mFQNCzzwKshiWYBhsGduh9FpXOOD5yEM=;
 b=vevOBInbKMEkTVU5HcgfgCLVqtbQghkgIaew1Y0kvFBJxNnpLO2Td/HKtDhRN+ru4M/MuIL7YRZWkWki2DGBM2OCgtUKCRjxcrkDxlh6ZQtldsEkaPYtZ4+we/5SgM6wp+q4m4j/b6PBJ3X3rZjt7mQutKpiT9FionTUy5RN96o=
Received: from BN7PR01MB3859.prod.exchangelabs.com (52.132.5.158) by
 BN7PR01MB3828.prod.exchangelabs.com (52.132.6.12) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Tue, 12 Nov 2019 17:36:34 +0000
Received: from BN7PR01MB3859.prod.exchangelabs.com
 ([fe80::d4f2:a731:c3c7:9877]) by BN7PR01MB3859.prod.exchangelabs.com
 ([fe80::d4f2:a731:c3c7:9877%4]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 17:36:34 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Question about the IMU (MPU-9150) on the E310
Thread-Index: AdWZb3mZFAIglF61Tj2+JVs4nO8D5w==
Date: Tue, 12 Nov 2019 17:36:33 +0000
Message-ID: <BN7PR01MB3859F04224D313F8F5F458C6CB770@BN7PR01MB3859.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ilbeeman@wpi.edu; 
x-originating-ip: [130.215.223.39]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e3251b81-888b-43b0-1036-08d76796dcbd
x-ms-traffictypediagnostic: BN7PR01MB3828:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BN7PR01MB38282A811B63BC18266263D8CB770@BN7PR01MB3828.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39860400002)(346002)(136003)(366004)(376002)(189003)(199004)(13464003)(75432002)(2351001)(186003)(74316002)(256004)(2501003)(6246003)(9686003)(478600001)(6436002)(5640700003)(6116002)(6306002)(14444005)(6916009)(52536014)(76116006)(229853002)(2906002)(33656002)(88552002)(305945005)(5660300002)(7736002)(55016002)(3846002)(8676002)(966005)(8936002)(26005)(66946007)(14454004)(25786009)(102836004)(71200400001)(71190400001)(66066001)(53546011)(786003)(66476007)(66556008)(64756008)(66446008)(476003)(86362001)(486006)(6506007)(316002)(99286004)(7696005)(81166006)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN7PR01MB3828;
 H:BN7PR01MB3859.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: wpi.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vqOGuJeO9K2KuRWIj1VCF/bts1246y3KYzplaJG1/cwpibnGZrTQMMDnsLThrwXnU34LTp9WSI0CbaA2PjCSxHFe6y1IOegltZw/SCdVXC5+L1NdK8dMuxseZ4qvSRXSjKitjyQquWwScsJMEHp6GOiCgJ6bWKrFd72shEFBgf7mX+kV0pcZBHhgm3l8w4E5Lx4kohNxIMCu6PYB2g7GAML9AZgKTqvt7gqSc8Nmj0+D0kbOwQGSFbAH0BWOn+o+usk+t5xwl3214aopAo9cSuM7D2w/62hsT8lUxtpzlXtqyn5vTX+WW8SYcqPDUhY4eSBKYzjp/xrwPTHsLVpzllc++KKPWZQGhFbMhHF+xtIruWu8Ei+Y0/B6JpNafy1sC4Cs3145wuEl+0DPpDWY4UTi/b/bQH79RLBWgGRVmjoXUpLc3Xnp8a8iTROcdISFz3SnJwLmM/QP+OQLHSxpKjbJUtZbRX5OjkU6ofXfa5o=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wpi.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: e3251b81-888b-43b0-1036-08d76796dcbd
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 17:36:34.0568 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 589c76f5-ca15-41f9-884b-55ec15a0672a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qd1IzVvs2wqspORIupi+0H3ZTz5dk1NP2jaaYDdLn1Q0L4gVWRh7tXdxu05hBJm9k4365gSH8EIPybMc2T/xnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR01MB3828
Subject: Re: [USRP-users] Question about the IMU (MPU-9150) on the E310
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

Marcus and List,

I was hoping someone knew the steps involved to get the RTIMULib setup on the USRP. I tried building and installing both the RTIMULib and Linux folders, but the Linux one fails:


-- Found unsuitable Qt version "" from NOTFOUND
Qt QTOPENGL library not found.
Qt QTGUI library not found.
Qt QTCORE library not found.
CMake Error at RTIMULibGL/CMakeLists.txt:90 (QT4_ADD_RESOURCES):
    Unknown CMake command "QT4_ADD_RESOURCES".
-- Configuring incomplete, errors occurred!


I figured that I can't install the RTIMULibDemo apps because they use a GUI, so I built and installed the RTIMULibDrive and RTIMULibCal individually. Only, when I try to run one of these apps I get the following error:


RTIMULibDrive: error while loading shared libraries: libRTIMULib.so.7: cannot open shared object file: No such file or directory


I don't get how to fix this. When I build and install the same apps on my host computer they run fine (but obviously can't find any IMU). Considering that any applications I write also use the same libraries, I feel like this is going to be an issue.

There isn't any documentation that I can find on the usage of the C++ library for RTIMULib. Just reading the code in RTIMULibDrive.cpp as an example, it doesn't seem too complicated, but it obviously is a generic program that isn't using the settings needed to connect to the MPU-9150.

If anyone knows how to get one of these apps (RTIMULibDrive or RTIMULibCal) working or how to use RTIMULib.h in connecting to the MPU-9150 over I2C, it would be much appreciated.

-Isaac Beeman



P.S. I also tried 'i2cdetect -y 0' to see if the MPU-9150 has the I2C address 0x69 like the schematics say, but I only get:

Warning: Can't use SMBus Quick Write command, will skip some addresses
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:
10:
20:
30: -- -- -- -- -- -- -- --
40:
50: UU UU -- -- -- -- -- -- -- -- -- -- -- -- -- --
60:
70:

with nothing under 0x69. So that's weird.


-----Original Message-----
From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Marcus D. Leech via USRP-users
Sent: Tuesday, November 12, 2019 10:35 AM
To: usrp-users@lists.ettus.com
Subject: [EXT] Re: [USRP-users] Question about the IMU (MPU-9150) on the E310

On 11/12/2019 10:26 AM, Beeman, Isaac L. via USRP-users wrote:
> Hi List,
>
> I have recently started working with the E310/E312 and have gotten multichannel RX/TX and GPS working, but I can't figure out how to grab data off of the internal IMU/MPU-9150. I found some website (http://gnuradio.cn/en/html/support/en/page_usrp_e3x0.html) that said that the USRP image should contain RTIMULib applications with allow the user to test the IMU, but, unless I am looking in the wrong place, the current image for the E310 does not have any RTIMULib applications on it.
>
> I want to know if there are any API calls or libraries that would allow me to do development with the IMU.
>
> -Isaac Beeman
>
> _______________________________________________

You might start here:

https://github.com/RTIMULib

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
