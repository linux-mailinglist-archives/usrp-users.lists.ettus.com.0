Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B6E5A04C7
	for <lists+usrp-users@lfdr.de>; Thu, 25 Aug 2022 01:40:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A49938E1C7
	for <lists+usrp-users@lfdr.de>; Wed, 24 Aug 2022 19:40:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661384447; bh=kotjoFFOtV27LD5SEkWfQtn19/+BDNgM1NsbwM4XJ2E=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=F8KpEkM9c1VbsfgoRsxWRtKSNHcsMRfxOkiYTcHcL8/5Vi6PC30hem5l4kR3+0jEM
	 luBI5/K8qFQQDxBBup6gQewryd9EYt9YPjTAwqoS/KittVd7XFe3+xN/+CwZzPOwpO
	 DtzvMvv5WNiUwehK1y0N3MkvECWhLBBsdfVfksGwqaKTveuj1rsZOXvFTsHCZ9uBfC
	 2+FTDp1mbqVOWDY8DKDj/j5g0wHWui7owqdgSKfI3p3Bnv1i1RN5uVJ7sIw5HQfoH3
	 ngqaovXqRy7Bk4rUPzLt3+ql0JeSWp5xFftwNZJPKMz9QrXBaPWr0qDrhYWikE0Fy5
	 KFPYEOZ5gbUeQ==
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2100.outbound.protection.outlook.com [40.107.236.100])
	by mm2.emwd.com (Postfix) with ESMTPS id 051B038E5FA
	for <usrp-users@lists.ettus.com>; Wed, 24 Aug 2022 19:38:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ohio.edu header.i=@ohio.edu header.b="ghEQ2irf";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X6UKQZCJaaltlCU4Rcmqm4iRNf4ydAh2++6nmNWWAb6Jqb39AZU5qq7JIINTsIQslQtGbyD12wuAbYNnOFOLoBFe/b4gQunh8dzaU3kCCaUO/KflArCTm7nYFMdnMh5w85XIVYODttcpKEqsN4WGUn0MGx/n0sciyGyx0G1ws5IT7YrPim9y+uR9UlkRhH9TY8hIuGe+0sVkEuVYrMjW7GpnY8FSsN2i/3wVrTt8Ve940mREIj/Koct7qbhkf7+d1ep6uPOfMmq70ddrhcHGwdFn53c83BbPxhvxqaj139+cOpPLOnAPSQKL6qswUlTCle83u7lgw/0KNR6m9wur7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EOl9+aQls3pvImHiNtPNBDDeaR3quhmlXgXeI7AeYaA=;
 b=lps/poxpC9XT4KcC/eeLm3GCQbu2Mx3MPKnPPjTCi/T+Izp3F8FatLa29shfeByfe+yS5Iatoj7BpwglFXgxz3G4ngO572LORoPc87v995j99wKZ1JJM9xQSEnimd2VHp3jw6SCw9Bq9RTEB4nfiqwkbwYN6A//9e4NKHNHOPo54iexPm8LgUOfCemMtu0JIQB5YX9ekm8E0torscHGSY4rHsaHBPEKMe/CZTlVc28G1gL14vyUfqz+Pg9wwzFmqOrM9MvQ8Qsx1AHAvR3PZlXDwm6wXOtP86Mdlmt+eEC7kzXQeH4XQXRoCvE2f2hWEeUMz4kcddIEPE401+jBEHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ohio.edu; dmarc=pass action=none header.from=ohio.edu;
 dkim=pass header.d=ohio.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ohio.edu; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EOl9+aQls3pvImHiNtPNBDDeaR3quhmlXgXeI7AeYaA=;
 b=ghEQ2irf9yj4zhQ0y43P2mF/vIro2qKTAVWfgIX20dYXSnB3KCV63Fg2tmeX9QKIyji8NNmVNOcLnsGR5KNT+dEP0FySGBvU1rtNzZnGdnORW/UzdjwV2WhJ+xUE5FJejQh7bF3COt1DsPXYO3FuxJEKpiHHDe6z1K4bhtIHz18=
Received: from CH0PR01MB7050.prod.exchangelabs.com (2603:10b6:610:10b::24) by
 BN0PR01MB7088.prod.exchangelabs.com (2603:10b6:408:16a::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.15; Wed, 24 Aug 2022 23:38:35 +0000
Received: from CH0PR01MB7050.prod.exchangelabs.com
 ([fe80::a464:6abf:dab6:37d2]) by CH0PR01MB7050.prod.exchangelabs.com
 ([fe80::a464:6abf:dab6:37d2%6]) with mapi id 15.20.5566.015; Wed, 24 Aug 2022
 23:38:35 +0000
From: "McKnight, Ryan" <rm249114@ohio.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N210 GPSDO time synchronization issues
Thread-Index: Adi4EXwcZJDRFb6KQBOBgWcFy7n7Ag==
Date: Wed, 24 Aug 2022 23:38:34 +0000
Message-ID: 
 <CH0PR01MB7050582855A91C6BFD950630B5739@CH0PR01MB7050.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ohio.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9751a2f0-7ee4-437a-e970-08da8629c311
x-ms-traffictypediagnostic: BN0PR01MB7088:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 iDesy/jLBkZl+FOdFQsYYnXQEr5cedlMYa1vAcK/YYDrIkEQLtRJcyVBdXEXbgiu9B42bqTW8Zq5rpq+P+JGNuSxFu+icifyjg0Yw0ZjghN1IotAser7NXolVxvRkX5rFpAp/8m0xa2Htff1g0Vi+XGWr339GXZX7pf4S3JIqrXWR5b0C0wwe4nRAs+eQhzCIhXOs03DNFX1bvY1LvVUPQ2FeGbCoJIVBwlYVtKrAumUmOKKj5Pt3q9+wBJ9XYoRagrXVW5uUOxG4fsdciv2bF1GSTLeGOo67puBbbWm63J2Dss5Kx10smaqb5+k/QCCfl8yNqMPHpSW+51nIH0gcQlLnOMlO/4AHBWknTEWTVAWY+aHmAM4N1V0fuFyrQjKuyfsbgzgs0+6f/ywz4bLZM1cODQtfUyjYJbxNJqHNu26MecHehZ1MZVJkigtJ0yLG3SM3za76SSf04VCk2rFi7TmNkaaOrMphV6/qIx/cC/HRrfiSf//huryxwngUZTIYFwx+eNdoGr7LFMx2bXyljiDhd7MN8gDA2jnDjwsfKKOWbk4BmDJMmSBy1Ykz8ktxVQB1mFx3I/8++MmqxhNS2qV+cN8wZ6F1A9yScxXnYMYi27QgEAMmrBHyf6EfKARHWG7jw2xKz3LBx4qLumvqJtcb/zQeb7zPS9FEZA1sTK7uxE5PwgH/1lsq7iGjiSrShND0g2DrYBOTWv+tin1HQ+EM+KZ8s6It/ZOwwM1nSFReURftsLAtLrEsTG8aubmul7HOes0/yQFY7bCIY72sI+aaNfmCeau4+YnjAUotUo=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR01MB7050.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(136003)(346002)(396003)(39860400002)(366004)(66556008)(66446008)(8676002)(66476007)(64756008)(6916009)(786003)(316002)(76116006)(66946007)(52536014)(55016003)(75432002)(8936002)(122000001)(2906002)(5660300002)(38100700002)(33656002)(86362001)(41300700001)(6506007)(26005)(9686003)(7696005)(38070700005)(966005)(71200400001)(478600001)(83380400001)(186003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?5JFCNyApq6sKUABMxlMxIWlXxeaALLJ8WhGKEnD9zr3M8UCLkRV5l0IKf0fu?=
 =?us-ascii?Q?WGtCggoRQIwcZqRIKrt+uhipJa8Pp3FnV2GO+srbXne8BQxLEZ4HClGmWDVx?=
 =?us-ascii?Q?PhcGKx2ySQzuFDcEjiKf1IuH4zwayZGBAX/3VH3TD6lDGNENmULPKkjt2fDT?=
 =?us-ascii?Q?tPOPbV270U0Vp7lqX9y+ZKKVwcmRYL1lUwm6dN7+lL9WhSs7hl6O+ZAiD8rp?=
 =?us-ascii?Q?8yQtGrIPQhX98WdUgd2qSyer3CLzZG26wdkdsrxVpMTiKaLHVbCTltO5Vc27?=
 =?us-ascii?Q?4tUaFYSDqJbH5pqiRU375MBAdqZKRtxX70+T7gWiNyS2fBJaGMw8DFeYu9Nn?=
 =?us-ascii?Q?0OkE8uwlSEKV1yGQBd5UvRGgjGpYqvIr+/Ts7EP7ehjHVs674x8thqKl8fPt?=
 =?us-ascii?Q?RNgVlP/XUlfabpJW6CWFrqq+AIH1gaCG6lq/xsDgAglHvYa9zRefEm7yBEHM?=
 =?us-ascii?Q?farIgEKBJpSf8ilLLmwcCUONqZB/N/0qMQnxenqDnSLIxYb2dvEJ1j4Y6Wg3?=
 =?us-ascii?Q?9jE/KQ6o8YR69QxcN1FgHSVeH2K3TxdKsOThSrb480r4dOMllfubFKJAiXi1?=
 =?us-ascii?Q?6zEWoTj6Ebl6w7vgknKTZzXYWY/RYLMuOrYBYZocrOFZoQCRZKhysRGhPdsC?=
 =?us-ascii?Q?pROhtiVB9EpJUY1GiuympVEGsnTNvn1Og2BTfiYpmz5o/zIE9ztxhBLRe0OQ?=
 =?us-ascii?Q?AzP3cQoHSgaKD4ahQ1peOVdPZLp/cnccOtBGjH0o6saSIIUtRDqgRQ8Q7vwl?=
 =?us-ascii?Q?j1a3dWqjx4xbgV8/6CfdqTu6WBcKaqBZP8jgkc+wiVXpjmFbzY/IT+w7sWwO?=
 =?us-ascii?Q?BbyfUFImLqqyuRif/iVvdJEH/SkBvGX/CKNYXzHPRMdiOUhMt2MKIV7NAc9q?=
 =?us-ascii?Q?RQ4SYnM1LuaWPLjihlhL6rRKfBcxd0Y+sNPtAtZA0YQeDcWj8LVWYytw1ZTM?=
 =?us-ascii?Q?Y982tLg48K8VTH9GHgaq24H3crhK30XV81wEfhJ+3P1FZgqRZeYZ8khhuXiX?=
 =?us-ascii?Q?Dh5hFVrtY/m6P96zuitMaHaQbKlMFQadDhCWnGGxwE/3XcYDp+NhjNaW6anS?=
 =?us-ascii?Q?jev3kWREpLr2TsZss7ze2NqD2uEvr2kzIJSs/e1wGIBv4xCkv4eg9KCT8qFC?=
 =?us-ascii?Q?ji7WSNa/u2IKWIUSVkESu2qlW2pa+VrHldZie9MVk/tum88LXSlt9Mm98Nw9?=
 =?us-ascii?Q?5W1SD2BZDqQ+/aCx/PrBBDb0R+WYUkB+7d8x6ku1mYehKKTCV+Jgw1tOzeQ8?=
 =?us-ascii?Q?3N29kyZ9v8EGzMw07hEXf+8uVbh2h2aYYECovVxBQHbbfefXYOZ4+LnTUyhc?=
 =?us-ascii?Q?9sef2m+er6cYB+W+J6tpW269bmeUtN49Erarn8Hm1SvCdgeVh8k7TlLMaO+T?=
 =?us-ascii?Q?giqt05a5J2oazrF1GoFb+6aaiDVIcubv3YZEQmFWs2qq5q2sRSEYYIg5PvZe?=
 =?us-ascii?Q?xJlwUEgV+pHfuWLYP3xpXSg/DVm2o0uBii0cpyIi/YoR9nb9xTMKbaO6XOzG?=
 =?us-ascii?Q?1bLB1fx5Nu+huwsOQlnXpoYxs9JBVGCdCFKVfX50a661fpEAIukXsGSxp96o?=
 =?us-ascii?Q?X/zh2QI1WVhg+Wm/dModwirvh3A7YkI4IDDgLAtN?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-OriginatorOrg: ohio.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR01MB7050.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9751a2f0-7ee4-437a-e970-08da8629c311
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2022 23:38:35.0233
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f3308007-477c-4a70-8889-34611817c55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +IOfdWMbyQ/+m5k0NznyAhm2RGnWknGJVYi26f2pR4Afv9f9eS7tZyPRe8JuX15iFn/rB7F2PeX2EtvqhNNuEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR01MB7088
Message-ID-Hash: GOAUQVMKPJAGI56KLHPHTFXWOWZDQK35
X-Message-ID-Hash: GOAUQVMKPJAGI56KLHPHTFXWOWZDQK35
X-MailFrom: rm249114@ohio.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N210 GPSDO time synchronization issues
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OP5O4GWJDSGRMZD5H74GV6IHSHTMFBFM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

I am learning to use the GPSDO capability on the N210 and I am having a strange issue, seemingly related to this previous thread:

https://www.mail-archive.com/usrp-users@lists.ettus.com/msg05997.html

Here is a Python snippet that demonstrates the issue:

import sys
import time
import uhd

usrp = uhd.usrp.MultiUSRP("serial=30AB08E")
usrp.set_rx_rate(50e6, 0)
usrp.set_rx_freq(uhd.libpyuhd.types.tune_request(91.3e6), 0)
usrp.set_rx_gain(31.5, 0)
usrp.set_rx_antenna("RX2", 0)
usrp.set_clock_source("gpsdo")
usrp.set_time_source("gpsdo")

tries = 0
while tries < 5:
    gpsdo_lock = usrp.get_mboard_sensor("gps_locked").to_bool()
    if gpsdo_lock:
        print('GPSDO locked')
        break
    else:
        time.sleep(1)
        tries += 1

if not gpsdo_lock:
    print('[ERROR] gpsdo failed to lock within 5 seconds')
    sys.exit(1)

tries = 0
while tries < 5:
    ref_lock = usrp.get_mboard_sensor("ref_locked").to_bool()
    if ref_lock:
        print('ref locked')
        break
    else:
        time.sleep(1)
        tries += 1

if not ref_lock:
    print('[ERROR] USRP failed to lock on to gpsdo reference within 5 seconds')
    sys.exit(1)

usrp.set_time_next_pps(uhd.libpyuhd.types.time_spec(0.0))

while True:
    print(usrp.get_time_last_pps().get_real_secs())
    time.sleep(1)

I would expect this to print out 0, 1, 2, 3 etc. without drifting at all, but I am actually seeing pps times that slowly drift. Here is an example output:

[INFO] [UHD] linux; GNU C++ version 10.3.0; Boost_107400; UHD_4.2.0.HEAD-release
[INFO] [USRP2] Opening a USRP2/N-Series device...
[INFO] [USRP2] Current recv frame size: 1472 bytes
[INFO] [USRP2] Current send frame size: 1472 bytes
[INFO] [USRP2] Detecting internal GPSDO.... 
[INFO] [GPS] Found an internal GPSDO: Jackson-Labs, FireFly , Firmware Rev 0.929
[INFO] [USRP2] Setting references to the internal GPSDO
GPSDO locked
ref locked
55.99999568
56.99999568
0.99999998
1.9999999800000001
2.99999998
3.99999998
4.99999998
5.99999998
6.99999998
7.99999998
8.99999998
9.99999998
10.99999998
11.99999998
12.99999998
13.99999998
14.99999998
15.99999998
16.99999998
17.99999998
18.99999998
19.99999998
20.99999998
21.99999998
22.99999998
23.99999998
24.99999998
25.99999998
26.99999998
27.99999998
28.99999998
29.99999998
30.99999998
31.99999998
32.99999998
33.99999998
34.99999998
35.99999998
36.99999998
37.99999998
38.99999998
39.99999998
40.99999998
41.99999998
42.99999998
43.99999998
44.99999998
45.99999998
46.99999998
47.99999998
48.99999998
49.99999998
50.99999998
51.99999998
52.99999998
53.99999998
54.99999998
55.99999998
56.99999998
57.99999843
58.99999843
59.99999843
...

Any ideas as to what I'm doing wrong, or if this is a bug in UHD related to the bug in the other thread that I linked? I am using UHD version 4.2.0.

Thanks,
Ryan
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
