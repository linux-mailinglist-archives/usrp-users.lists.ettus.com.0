Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B72EC5A0594
	for <lists+usrp-users@lfdr.de>; Thu, 25 Aug 2022 03:24:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7A3038EDD4
	for <lists+usrp-users@lfdr.de>; Wed, 24 Aug 2022 21:23:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661390639; bh=x5B/s361/2GyeAWhBUSBahbN7ps3h0BritrLUIr45dU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=VYZKYHaA6sIUFXFGuPBHDD/aa3hb1eZA37OJKI+Nekj4PBAkHA50VFkMoNZBBPsED
	 PHkGaQaOtVX/2t1rIfkha/X3rEUmYpgxYukYtvUR8GHE4ZXIRvqoUz4Bpv5y870deh
	 EGFPqnIMXuYc0NB2FjPGGHo18Iyga6czm+z/m+QnjIi0uP+s6GUehz80ibTsdEU8SS
	 2jsaf+POxHN4kicwDi4K11xnupnpCmiZMibJf6woPR8Bz7qd7vam1Ac0UpV+qvfe35
	 rU8jM0spBb5EMp6NyskvtkhXNXAEOJ859vy2Djp0sN3eYwLEzajAA1EKYO8UQe+BZy
	 wa1pAljzFK7gA==
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2115.outbound.protection.outlook.com [40.107.243.115])
	by mm2.emwd.com (Postfix) with ESMTPS id 76BB238EDB8
	for <usrp-users@lists.ettus.com>; Wed, 24 Aug 2022 21:22:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ohio.edu header.i=@ohio.edu header.b="cJTvfG9H";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fmjij9a+OMXq3aluZHRtuwkdaoMF7ndnTqqbRsUcxunjZf40E3um2dx9Hx1oy8d49HJq/sbTu4SaWJgaZu0OGXpMExK3HS1gV2vNhliBW3/diZ3W2dCNWtfiKdRjcD1/Y+yg5k2AactFRDpm/KDR9mCY06tM/kZvF2dnXltFOW8MZdtKvtEvOqOmclvM3DAUoDqGqDaMcEsWsHgKgNNTPwoGO+aho/2RO8mrg+uMeSzDs2RLJFCThiHNuj51bTcbPA4qArCrS1qZcQZ5uHXq6B1VOJsdao+SJGrxl6ezoQVMoj6pz4Ws1H8T9V0nxDPy1xEQ2QYIm0jkZsx7V9PjYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EQ7nQgnznNU7k5rDTtzchql6j3j8LE1nXHBmygi410s=;
 b=XBr2B8vaVf9UZrUNo4k326AHyVrK/vii5vTW4XEQtBlasNROFPqc/xjS0QGQAIJtmj4rQRnqCqb7s8YyWsWJS+rUTZBst3h6Oku4bvWAtAbENNhJDUoMxgiF3zAVMri5MlnhowgASbFp2KvSZ4RztarmJbRU/48Kx/LW2P/2Ikj7hgQLN+FwtwPKzcMY8fJ7i4BG2FgOiPdCu2RNdT8fKK/ZLkRMZ4GxhhYziVgtqdwZFbqJitBJ6qMPoZ2V5u3UW42as0zI8qAqQ9JzWyjXL2o9zeUDO8te328d0OWPIX7Hzsx4bxPtCA2u2xMjHeEztchColD/xKcRXjwzb3+CDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ohio.edu; dmarc=pass action=none header.from=ohio.edu;
 dkim=pass header.d=ohio.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ohio.edu; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EQ7nQgnznNU7k5rDTtzchql6j3j8LE1nXHBmygi410s=;
 b=cJTvfG9HioNQTS+sN4bFNDg53rBRiR4nbhtGVuOEdN5lsuFch5LqkMdbEJ2i3tHAA36VGZsFP5pb7UtqNtKFtPyzcBLXscxmCZo40KlkpaIeSLRJcsfMKub99PAs5EGM8PASuCR9beUNDxfVrFGZsA7nlCCwiXU4Oa11Jk+2ng4=
Received: from CH0PR01MB7050.prod.exchangelabs.com (2603:10b6:610:10b::24) by
 BN6PR01MB2467.prod.exchangelabs.com (2603:10b6:404:51::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.15; Thu, 25 Aug 2022 01:22:37 +0000
Received: from CH0PR01MB7050.prod.exchangelabs.com
 ([fe80::a464:6abf:dab6:37d2]) by CH0PR01MB7050.prod.exchangelabs.com
 ([fe80::a464:6abf:dab6:37d2%6]) with mapi id 15.20.5566.015; Thu, 25 Aug 2022
 01:22:37 +0000
From: "McKnight, Ryan" <rm249114@ohio.edu>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [External] [USRP-users] Re: N210 GPSDO time synchronization
 issues
Thread-Index: Adi4EXwcZJDRFb6KQBOBgWcFy7n7AgADJrEAAADBQ3A=
Date: Thu, 25 Aug 2022 01:22:37 +0000
Message-ID: 
 <CH0PR01MB70503D5C2F62ADD6FAC5124AB5729@CH0PR01MB7050.prod.exchangelabs.com>
References: 
 <CH0PR01MB7050582855A91C6BFD950630B5739@CH0PR01MB7050.prod.exchangelabs.com>
 <561e8c98-42b9-8059-e1d8-84e8695cdd60@gmail.com>
In-Reply-To: <561e8c98-42b9-8059-e1d8-84e8695cdd60@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ohio.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb920932-e718-45c6-dc6e-08da86384be2
x-ms-traffictypediagnostic: BN6PR01MB2467:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3IQ+vv6N5bkZcwybtJ8vCmrd7pv2PaFDZY11hR6VrtBa4wrCwrjvBcNP3qc1duLDGxxT9IyL/deySvDvWOoAtRIWYFp+39Yt3iRJ/UYDLNwTsVBVx0rtu+3P4tdE1karR2GoyZkm7MemI0hNMzjdUKzarmSjtqRCr1OglZ8HXBhhzLGUh2u1DBN8EsPFg5kq57XENKWQ6KDJdD5XDLHvm2JWAWactlLi//6UDClg/3ADfWl0cV2nDmh8viPhKf0zZy7Jn7BeRT1IJFvvfUGTkoXLlZ7memV/RCLBwQXYLVsqqxNojFWTmoOw0i/YbnjHI4RQ1lhLb/S/xJpnjOuoHAl14861hFaklLaPVdmEDMp+kvGAFuxjTFMplE6ovRye39GFIUDnKyZFitrz6vGrGDhV5qBHeDteCTALGX6O5zTGv+IfbkYqw/r6gX+VHs43DmMgOiQ2LRmNaQqyGwOHWNiS4388F/tytziDfbJeEoQf/59qvncgv5RbTjC6pVWl4akLbPd80V18DhuUqb9s9Lj4MR/NdrEUZra7YG5sBka2C85xU2wY/FFQ3zMxrj3TJ2ZaDroIf81QSHeFr+PR0XIorDWmYaJyMGUGWtJsIZNxCiaEmHqFEXfzp6fdkbIPbHwaArTxh2AWOV0o+APENn6CjmFVeAZ9oj4esMiPDUtPNuyYKh4PH5BlP0y77XZjY0prdpBBlawRg6V3u6B0TRlAz4Rx1PH/t4+o6cy3o3+bVROgzK8jVNlmt6mbk/G30ie5OihUaGA1P+udklxA0oclp8egEcBDcWnQXVZnMKU=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR01MB7050.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(39860400002)(346002)(376002)(396003)(366004)(8676002)(66556008)(66476007)(110136005)(64756008)(66446008)(8936002)(786003)(316002)(66946007)(52536014)(75432002)(76116006)(5660300002)(45080400002)(122000001)(55016003)(2906002)(38100700002)(7696005)(33656002)(86362001)(6506007)(38070700005)(41300700001)(186003)(53546011)(26005)(9686003)(71200400001)(83380400001)(478600001)(966005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?jrADpQiouo/dV1L3RXZd1ez+HLN5LUO4nZb4r+PXGJ1NbzHpCR0snrfQ5yVZ?=
 =?us-ascii?Q?9wII9/UDd1DNEPovTQ+7hZbM9qqFuw+QHJsfWpSLTQdGh+twbdhnvNw0Nzcx?=
 =?us-ascii?Q?xvV1x93/YPYkzQudU0qclahK6vE4jPjiBN2DedjhYle6MlOTnp5DChsW37HF?=
 =?us-ascii?Q?nYaWzgf6q6YpvLKoWjJy595p9/BL82T5kw+NBUgJL+oLW403CJp6ZXt8nxpE?=
 =?us-ascii?Q?hVxGiO6kOU7NLLF/o6zOaJL9Bu0AuFAa/xbPHb4Jo/2dqEGSPjCcPDJnZZ80?=
 =?us-ascii?Q?4VfigRpQtL8zMrYkb9UY+MX9Wg45PmXEoE8wKGfPhWJFUKbAF8tBBYsFVK93?=
 =?us-ascii?Q?q+ke9X6fAkn/PNWoQTpnCV4Gw1Ps/ZHPvjUCyM5YBPCximibtOgVYBWXZw6V?=
 =?us-ascii?Q?OyJxw5B4gqcaPeVqTtaM7EGOhqWKaSkBMD/Oi8Wv8wdnjfkpc2S95SaY1zN2?=
 =?us-ascii?Q?329EM5/9nHG29utvjF1X0XgD7WPPZarOKH7YG3Ylm3EIrFJaGd5zsHR2TqtN?=
 =?us-ascii?Q?2p1VNsRr0EJXeGsblxRkcfK+2EgNnyghN7dFmbLFrxGDhh4bJIgIgiWR/4L9?=
 =?us-ascii?Q?dEF/xGRWKkrmS4mLD3Sbhk+bk//sLhsTuKNLBi1ojJmoaX382DwvboESbSda?=
 =?us-ascii?Q?Dy5faBtcTZ/tIFoJKUgefO3jEffJJBiMvtbSiZJDxBlPw0BmjUo8AuX/69PE?=
 =?us-ascii?Q?LxOc6mjIXLZPK8rTPAU0QvnwBO7zMDZKO0fuJc5+WYqX/uQYYtIebUwevopc?=
 =?us-ascii?Q?mjQ0wvoW5rilV13WjQJm6B+4bfiftAPRG0J4ZY93Rn8IwXh01NFMoK/895R4?=
 =?us-ascii?Q?x4o37IjdQrcIzyg6V8BalsqQQ0K3wIjrzHUlf+nrcmxR9kM23w0aZzE9M2vO?=
 =?us-ascii?Q?6r28TIa4+z5yDShAcXYYE4vJfgMjcQmkA9E1cHdfqE8KpjtZKuU+jE6XeRVL?=
 =?us-ascii?Q?gEe+T2FrHFvDUVzfXRZKmOCNMKNsNyj+sb735+QiZjiUUYJSTksEJyZwERM0?=
 =?us-ascii?Q?Mz2T+y2qgfcvsAhi9VyX7RpjHMhUr97rFe1Av38cBCw287sgWto0i9HbxL57?=
 =?us-ascii?Q?R5pNH0cKM2KGGJG7xzFYq3KN05XQpeA+CkBprDEIlGl444RcGwjNExm/rkx4?=
 =?us-ascii?Q?oqysVdXa30vIiSTIhxLlJ9+alApU0/bJ9DCL9wP41q0+HbeYuelsfbq7mVcm?=
 =?us-ascii?Q?x5iyGIlWsnIiEt9U1BK8tB7fdHZ+tbNWwILE4dBX/b/biwxkpZvB4VmGHsCZ?=
 =?us-ascii?Q?PqRFeIqN8734CbYKj4nzFwnoKYQTQTM59E3/jM1G2XYX3ADNnPbcVRoUVsNY?=
 =?us-ascii?Q?6Nvh+GNVdSiIkUtG5/mBrCPHhdFwr8Ns60sg8mhmn6WUOM5oLx/zSpzjmO0q?=
 =?us-ascii?Q?ZNJbl5FG6mtim8G8LKjd+8dXAbbEjd3ZkV44psdr0nTIwV+5so/bHn520OXg?=
 =?us-ascii?Q?HNeH1a1FW7rYY59gx37jBbLOiyUBoxal9dfLBnCkJIRfKXu/L3u0d84ahEPK?=
 =?us-ascii?Q?lD4nOk9/hr1KLRXdpsNzS26Rzf2fakMSIExStZEeLHQhRLFQ3GK5NEMbn9M0?=
 =?us-ascii?Q?G2XT3oWwuGn/DhK1V+Y=3D?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-OriginatorOrg: ohio.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR01MB7050.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb920932-e718-45c6-dc6e-08da86384be2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2022 01:22:37.5327
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f3308007-477c-4a70-8889-34611817c55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m13JDyM3ZAC+3VxgJXd3nQHzlpeLveSZacGNy+EH9Wd9RqL0Pi75XSLX/kPJuqOtvOmsu5aB86LJenryJkY1Kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR01MB2467
Message-ID-Hash: 5NE3TZQDF7WS4YO4WNIC2FNYLK4ZPIOZ
X-Message-ID-Hash: 5NE3TZQDF7WS4YO4WNIC2FNYLK4ZPIOZ
X-MailFrom: rm249114@ohio.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [External] Re: N210 GPSDO time synchronization issues
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6GG6VH5TTMZYGWQARGV7PJF6YV6S2UAO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

Thanks for the reply Marcus,

I hadn't encountered an issue with waiting only 5 seconds for GPS lock yet since I usually keep my device powered up and connected to the GPS feed, but thanks for pointing that out so I can fix it.

I just tested my code again after reverting to version 3.15 of UHD (and Python version 3.7 for good measure), and still encountered the same issue. Looks like we purchased this N210 along with the GPSDO kit in October of 2019, so it's not too terribly new.

Any further suggestions would be appreciated, I'll keep investigating in the meantime.

Best,
Ryan

(sorry for double message, I forgot to click reply-all the first time...)

-----Original Message-----
From: Marcus D. Leech <patchvonbraun@gmail.com> 
Sent: Wednesday, August 24, 2022 9:01 PM
To: usrp-users@lists.ettus.com
Subject: [External] [USRP-users] Re: N210 GPSDO time synchronization issues

Use caution with links and attachments.

On 2022-08-24 19:38, McKnight, Ryan wrote:
> I am learning to use the GPSDO capability on the N210 and I am having a strange issue, seemingly related to this previous thread:
>
> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.
> mail-archive.com%2Fusrp-users%40lists.ettus.com%2Fmsg05997.html&amp;da
> ta=05%7C01%7Crm249114%40ohio.edu%7C1a14750ca34247b3d40a08da86355e50%7C
> f3308007477c4a70888934611817c55a%7C0%7C0%7C637969861033603308%7CUnknow
> n%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLC
> JXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=SBiUMueq3kqvDX2HznlmYLJ1Ex%2BmN
> suW6blk3FDkYbk%3D&amp;reserved=0
>
> Here is a Python snippet that demonstrates the issue:
>
> import sys
> import time
> import uhd
>
> usrp = uhd.usrp.MultiUSRP("serial=30AB08E")
> usrp.set_rx_rate(50e6, 0)
> usrp.set_rx_freq(uhd.libpyuhd.types.tune_request(91.3e6), 0) 
> usrp.set_rx_gain(31.5, 0) usrp.set_rx_antenna("RX2", 0)
> usrp.set_clock_source("gpsdo")
> usrp.set_time_source("gpsdo")
>
> tries = 0
> while tries < 5:
>      gpsdo_lock = usrp.get_mboard_sensor("gps_locked").to_bool()
>      if gpsdo_lock:
>          print('GPSDO locked')
>          break
>      else:
>          time.sleep(1)
>          tries += 1
>
> if not gpsdo_lock:
>      print('[ERROR] gpsdo failed to lock within 5 seconds')
>      sys.exit(1)
>
> tries = 0
> while tries < 5:
>      ref_lock = usrp.get_mboard_sensor("ref_locked").to_bool()
>      if ref_lock:
>          print('ref locked')
>          break
>      else:
>          time.sleep(1)
>          tries += 1
>
> if not ref_lock:
>      print('[ERROR] USRP failed to lock on to gpsdo reference within 5 seconds')
>      sys.exit(1)
>
> usrp.set_time_next_pps(uhd.libpyuhd.types.time_spec(0.0))
>
> while True:
>      print(usrp.get_time_last_pps().get_real_secs())
>      time.sleep(1)
>
> I would expect this to print out 0, 1, 2, 3 etc. without drifting at all, but I am actually seeing pps times that slowly drift. Here is an example output:
>
> [INFO] [UHD] linux; GNU C++ version 10.3.0; Boost_107400; 
> UHD_4.2.0.HEAD-release [INFO] [USRP2] Opening a USRP2/N-Series device...
> [INFO] [USRP2] Current recv frame size: 1472 bytes [INFO] [USRP2] 
> Current send frame size: 1472 bytes [INFO] [USRP2] Detecting internal 
> GPSDO....
> [INFO] [GPS] Found an internal GPSDO: Jackson-Labs, FireFly , Firmware 
> Rev 0.929 [INFO] [USRP2] Setting references to the internal GPSDO 
> GPSDO locked ref locked
> 55.99999568
> 56.99999568
> 0.99999998
> 1.9999999800000001
> 2.99999998
> 3.99999998
> 4.99999998
> 5.99999998
> 6.99999998
> 7.99999998
> 8.99999998
> 9.99999998
> 10.99999998
> 11.99999998
> 12.99999998
> 13.99999998
> 14.99999998
> 15.99999998
> 16.99999998
> 17.99999998
> 18.99999998
> 19.99999998
> 20.99999998
> 21.99999998
> 22.99999998
> 23.99999998
> 24.99999998
> 25.99999998
> 26.99999998
> 27.99999998
> 28.99999998
> 29.99999998
> 30.99999998
> 31.99999998
> 32.99999998
> 33.99999998
> 34.99999998
> 35.99999998
> 36.99999998
> 37.99999998
> 38.99999998
> 39.99999998
> 40.99999998
> 41.99999998
> 42.99999998
> 43.99999998
> 44.99999998
> 45.99999998
> 46.99999998
> 47.99999998
> 48.99999998
> 49.99999998
> 50.99999998
> 51.99999998
> 52.99999998
> 53.99999998
> 54.99999998
> 55.99999998
> 56.99999998
> 57.99999843
> 58.99999843
> 59.99999843
> ...
>
> Any ideas as to what I'm doing wrong, or if this is a bug in UHD related to the bug in the other thread that I linked? I am using UHD version 4.2.0.
>
> Thanks,
> Ryan
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe 
> send an email to usrp-users-leave@lists.ettus.com
I can't immediately tell what's going on here, but a couple of comments:

Expecting to get "gps_locked" within 5 seconds if the device has recently powered-up is not realistic.  It can take 10s of minutes
   for it to achieve lock from a cold start.

The code for the N210 hasn't changed in several years as far as I know.
You might try reverted to 3.15 to see if this changes
   anything, but I rather doubt it.  Is this a new N210, or one that has been around for a few years?  [Just trying to see if maybe
   there's a batch of recent FireFly GPSDOs that are wonky...]

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
