Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DC729D10D
	for <lists+usrp-users@lfdr.de>; Wed, 28 Oct 2020 17:44:27 +0100 (CET)
Received: from [::1] (port=35964 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXoYk-0000Zw-2Z; Wed, 28 Oct 2020 12:44:26 -0400
Received: from mail-eopbgr70125.outbound.protection.outlook.com
 ([40.107.7.125]:28037 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <demel@ant.uni-bremen.de>)
 id 1kXoYf-0000DJ-1D
 for usrp-users@lists.ettus.com; Wed, 28 Oct 2020 12:44:21 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EojP1wEp+JybhaeURfpARtjeS3khE5v3xCZQYe4cfdNgcKK95kTO5h7YtbhpaUBpPNQTqxA3SYw1OI0Xyha78aWbDHxuVaSpn2FE5gq/7FVgCYXzLBXmJ8uMihi9+bJjfAu5yKKa+TqluiO5rvN/EuJJPmgaSjiPx4grssLKGidv7tfjwXyfTc13/uf8xFcnjVsGwIueZ6qCD5bajgy1QCihvObyT5SIyMGLEwYMyzZnn4WmGyatJR687QMVODvWwyAzHeDfIB0ULIbZg7zW1UGJIKXZXe5EWhPk5kogRdCDAu2rSytozk5pEKjUDNus0A8NzCsjxCAbOT3mSnF3Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q6ulkvQSpad72KtS1iu4yDHvxLCGIAwUZ9q9KZU5k3U=;
 b=dFv5Hfuz1NmmpbmWQAFRmbZpb+0pIvYPywMsEhR7pyhvXCcu+ojFbgrP4Wo8kD6KhVFa6R4ltNVo6xZy+yGMoyUeeoaxOZXAY/ETCF9VTqXANsl8uvMroxYepJ8LsodtTJZtMcySy+Y/FbAD91pTHjOdKwQqTXN7jkkfUg57OeA3rppJ7I8dkF/ldeoienjIsWaHdIW9901i4o5gBbDAohYBomzXY6qGf/CxSp4/HCAPUmpaByL6HjOltlGi8nmwLrSCsbLl8dT4wSufumkgvnP17J24Bih/Sru0Yt2G1L1NoUdIHY9LwswkKbSbDzenDhihdWK9zMecW//aJZ9e4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q6ulkvQSpad72KtS1iu4yDHvxLCGIAwUZ9q9KZU5k3U=;
 b=woVGbgYUMmA0o/ynMyq7WctjK6gyRFceoFgS78xVSf9j8PXRsixt3PtV0d5lY6A+kLJ0G4sBH3w0HIpKLPpdc/P3MMrQguAnpxf8ic8Qr7riHNN2uS3CkCXIj/KoBMnNbwF0JQ5SuOXUMGPVuHxnCIHnIeXai0miATu37L1L8z0=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=ant.uni-bremen.de;
Received: from AM6PR0402MB3398.eurprd04.prod.outlook.com (2603:10a6:209:6::15)
 by AM6PR04MB5463.eurprd04.prod.outlook.com (2603:10a6:20b:28::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Wed, 28 Oct
 2020 16:43:37 +0000
Received: from AM6PR0402MB3398.eurprd04.prod.outlook.com
 ([fe80::282a:ff14:6e38:fc15]) by AM6PR0402MB3398.eurprd04.prod.outlook.com
 ([fe80::282a:ff14:6e38:fc15%3]) with mapi id 15.20.3477.033; Wed, 28 Oct 2020
 16:43:37 +0000
To: usrp-users@lists.ettus.com
Message-ID: <d0056d81-fabb-f90d-6365-4841ce8f9329@ant.uni-bremen.de>
Date: Wed, 28 Oct 2020 17:43:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
Content-Language: en-US
X-Originating-IP: [2003:ca:7f17:d400:30f6:b168:1864:61a4]
X-ClientProxiedBy: AM0PR02CA0030.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::43) To AM6PR0402MB3398.eurprd04.prod.outlook.com
 (2603:10a6:209:6::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2003:ca:7f17:d400:30f6:b168:1864:61a4]
 (2003:ca:7f17:d400:30f6:b168:1864:61a4) by
 AM0PR02CA0030.eurprd02.prod.outlook.com (2603:10a6:208:3e::43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.22 via Frontend Transport; Wed, 28 Oct 2020 16:43:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 61a3129c-1a1e-4cde-c930-08d87b609d9d
X-MS-TrafficTypeDiagnostic: AM6PR04MB5463:
X-Microsoft-Antispam-PRVS: <AM6PR04MB5463AEA3BAE65C43637BD172A9170@AM6PR04MB5463.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wDgL/O2I3rQ8HmuAY+eIz7UHGvYWL/RvJKCHDcJxUPMMfhtXCUhJsrGl3ixv2v1DgGPRe+Ipn0Po02eYuNrF4Mr9wVocJbm06c9RUHh2r6neL+LmOMftlsKp1BQALjgqcEE19ewsR+ei0MQ/8IaYc2L2hookc5vMLa5d16NywEo0cShgyYbmhYq9uCpCefvJDHPq8PPq3DaEa5FHPvwM0L5VzNXuBoVH5pB0lJxgUbn7wbOSjrITQ4cADeIZCl68mRw6n/myfnRz13tBXzAK0ZQhRh3gwJgGTjqI470YBlqjfVpuDtLGxRwIHkC5ACdkgVdl/psmHdpBds7iHVEriTlUkHq7heUZ8jsJmsJqWsnxbm/SIR/wjDRIBN+rlh8G
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0402MB3398.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(366004)(136003)(346002)(39830400003)(31696002)(2906002)(8676002)(186003)(86362001)(52116002)(2616005)(5660300002)(6916009)(8936002)(83380400001)(66946007)(6486002)(66556008)(66476007)(16526019)(31686004)(316002)(478600001)(786003)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: FTFB8i6VOoPm5Fg7t3Pmqx6a5V6/qm4O6+Ygkm4cL8p54j27ySfrDNHFcHl699ZQkA3oZPKK1zeoXMG+gfcTD+LudB2GuOs+dzAVjGQIrDJfSoXQB4hafDCDB0zUKH7MWAR40V5wVqazcJi+SFfonOxjWzSlMecsGoNLKyHJ8NhXuCnFv/YHHbIWcnJDF2pjvXHnoRcqElHf62cjEj8APafGo6L4dk2didwM029eyrYi0aIiF1RKLg0cwbmcjzEGPfzZUYgs60vHPcMyVUyHKU8uuXT1ZBNotCRiORz7oJQMPheZVWHwjFZdmmIdhnbZcsYbXbQt9AYVVXqgPYBmxGci5XvvR2RcwzGbhgNhaFIFrDCH26y0ZNjrUbO8Q+5jKcCX0IqzVLahtkkulAH5Jj/Zakf76TJ9xZs+ipjmXLpnmJbl8fKH8zDggFNlp8Z+bNVZKfvXcrntFfOVCyIQzNDRRqQCYisGKlLEsThTQeyfs+7EH1mlYigOws0Lak4WKHXtIDR4oUns6Nn/bjA+W7sUWdTKPh80XrG8XMRlzzHslrG2J/X39WE1Yh4ITcOIyi4EOi4j+VmnpQYNMUDfuDZdbwXCLkP7+n7eTfO7/VreP7gQZ1HLSpSNGuNOCWTKqrQ6wy9kxeVJoC6JHyvlP+BXunMprG1NF1/HiHSwkaVhQqjWaQk7mvBKH9LBO7is6E/l5pQc+uL+P1Ahc9IwmA==
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 61a3129c-1a1e-4cde-c930-08d87b609d9d
X-MS-Exchange-CrossTenant-AuthSource: AM6PR0402MB3398.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2020 16:43:36.9092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vrMwOzFtmuc+6cc/vvqw0WHKffTffnkvFzzL5KDWfsO+lAUbDs/ybxDV67Gr7c49H/JxByJzlG19+Ywr3QEx6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5463
Subject: [USRP-users] N310 transmit benchmark_rate fails
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

we have a couple of N310s in our lab and some of them seem to fail to 
transmit reliably.

Each N310 is connected to a host via one of those SFP+ cables that came 
with them from Ettus. We have 3 N310s that are connected via said cables 
to one host each with an Intel X710 DA2 with an AMD TRX3970. All 
machines run Ubuntu 20.04 with all updates.
I use the UHD 3.15LTS branch: UHD_3.15.0.0-7-g8d228dbe
I made sure to check out the very same commit and recompile and install it.

On 2 hosts I can run:
`./benchmark_rate --args 
"addr=192.168.20.213,master_clock_rate=122.88e6" --tx_rate 61.44e6 
--tx_channels "3" --rx_rate 61.44e6 --rx_channels "0,1"`
The full output is attached at the bottom of this email.

What I observe:
- It runs fine with 2 hosts
- The third host fails.
-- On the third host RX only works.
-- On the third host TX only is haunted: cf. full test output.
- We have a server with Intel Xeon 6254 and X722 where I observe the 
same issue
- I switched USRPs between hosts, the issue seems to stick with the host.

It started with one host a couple of weeks back. But now our server 
starts to fail with the same error: The exact same setup used to work on 
that machine.
I am looking into this for quite a while now. I can't find the source of 
the issue.

Has anyone had experience with that? I'd really appreciate hints how to 
debug this.


Cheers
Johannes


On the working hosts the benchmark rate summary looks like this:
---------
Benchmark rate summary:
   Num received samples:     1270556340
   Num dropped samples:      0
   Num overruns detected:    0
   Num transmitted samples:  614440368
   Num sequence errors (Tx): 0
   Num sequence errors (Rx): 0
   Num underruns detected:   0
   Num late commands:        0
   Num timeouts (Tx):        0
   Num timeouts (Rx):        0
---------

But on the third device:
---------
[....]
SUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSU[00:00:16.262123] 
Receiver error: ERROR_CODE_TIMEOUT, continuing...
SUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUSUU[00:00:16.565159] 
Benchmark complete.


Benchmark rate summary:
   Num received samples:     66501280
   Num dropped samples:      0
   Num overruns detected:    0
   Num transmitted samples:  154312704
   Num sequence errors (Tx): 3149
   Num sequence errors (Rx): 0
   Num underruns detected:   3156
   Num late commands:        0
   Num timeouts (Tx):        0
   Num timeouts (Rx):        97
----------

We have a server with Intel X722 and Intel Xeon Gold 6252 that reports 
the same issue:
----------
UUUUUUUU[00:00:16.180094] Receiver error: ERROR_CODE_TIMEOUT, continuing...
US[00:00:16.382393] Benchmark complete.


Benchmark rate summary:
   Num received samples:     99763328
   Num dropped samples:      0
   Num overruns detected:    0
   Num transmitted samples:  155804944
   Num sequence errors (Tx): 3180
   Num sequence errors (Rx): 0
   Num underruns detected:   164974
   Num late commands:        0
   Num timeouts (Tx):        0
   Num timeouts (Rx):        95
----------
Though, there are even more underruns.



Working output:
============
[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; 
UHD_3.15.0.0-7-g8d228dbe
[00:00:00.000002] Creating the usrp device with: 
addr=192.168.20.213,master_clock_rate=122.88e6...
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
mgmt_addr=192.168.20.213,type=n3xx,product=n310,serial=319841B,claimed=False,addr=192.168.20.213,master_clock_rate=122.88e6
[INFO] [MPM.PeriphManager] init() called with device args 
`time_source=gpsdo,clock_source=gpsdo,mgmt_addr=192.168.20.213,product=n310,master_clock_rate=122.88e6'.
[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
Using Device: Single USRP:
   Device: N300-Series Device
   RX Channel: 0
     RX DSP: 0
     RX Dboard: A
     RX Subdev: Magnesium
   RX Channel: 1
     RX DSP: 1
     RX Dboard: A
     RX Subdev: Magnesium
   RX Channel: 2
     RX DSP: 0
     RX Dboard: B
     RX Subdev: Magnesium
   RX Channel: 3
     RX DSP: 1
     RX Dboard: B
     RX Subdev: Magnesium
   TX Channel: 0
     TX DSP: 0
     TX Dboard: A
     TX Subdev: Magnesium
   TX Channel: 1
     TX DSP: 1
     TX Dboard: A
     TX Subdev: Magnesium
   TX Channel: 2
     TX DSP: 0
     TX Dboard: B
     TX Subdev: Magnesium
   TX Channel: 3
     TX DSP: 1
     TX Dboard: B
     TX Subdev: Magnesium

[00:00:04.045700] Setting device timestamp to 0...
[INFO] [MULTI_USRP]     1) catch time transition at pps edge
[INFO] [MULTI_USRP]     2) set times next pps (synchronously)
[00:00:05.689405] Testing receive rate 61.440000 Msps on 2 channels
[00:00:05.829315] Testing transmit rate 61.440000 Msps on 1 channels
[00:00:16.180163] Benchmark complete.


Benchmark rate summary:
   Num received samples:     1270556340
   Num dropped samples:      0
   Num overruns detected:    0
   Num transmitted samples:  614440368
   Num sequence errors (Tx): 0
   Num sequence errors (Rx): 0
   Num underruns detected:   0
   Num late commands:        0
   Num timeouts (Tx):        0
   Num timeouts (Rx):        0


Done!
=====================

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
