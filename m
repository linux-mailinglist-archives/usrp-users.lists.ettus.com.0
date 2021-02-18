Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D74031E7C6
	for <lists+usrp-users@lfdr.de>; Thu, 18 Feb 2021 10:13:21 +0100 (CET)
Received: from [::1] (port=41850 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCfN9-0001gC-4t; Thu, 18 Feb 2021 04:13:19 -0500
Received: from mail-am6eur05on2105.outbound.protection.outlook.com
 ([40.107.22.105]:29313 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <demel@ant.uni-bremen.de>)
 id 1lCfN5-0001Yp-AZ
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 04:13:15 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gFe5YBqxW3RRkf/6L9LYBrmohPpW6pZy0LS/31P/5ytC49S4gmVrRZNlnwjxJaBisz2SCUk3umK8x4Ba94aLjoVho3gi12j0oO/naDAb2IWsVYAq129S7gmGlu8xnmjmHUunZK2ogT9k+XhaQAfw2zxlM775bkEphN/94msPvasBBjzo5fMKq0iSO1v7wIDOqap/zfd0m6FIgVuGQJVknoNewxednChQ/IvqAL2k38CW4rSnL24vs9UTIK3zUs0Z0IxHGn4HVQSY3i/Jprg0sYybaoV8xw3XRtKRbcsZudEoD8JMbQms4TUTN2CmN2d/vKEw4AsL1jPa11vRE1SxsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3PfZGqIzobVCCyTDAmKc6tg+Xxk2wlkayJAkqv0bxj4=;
 b=UwxrR/MHvSZbeT8e4Y1GUsQhx6Ma/P9WGQQ4KR6MlQaNVS79Y3snbTt+B2iq5BINGhHLRG2TdbTVzz3Dbh2BPtAZ53CN0BNxiTwkXF2jw7HHB1dOBkEi9pxASi4lRZxEtGaM9dwZauz9Q/B5D8yecj8PndKxkptYEUgCPo0VjQu2/MvjYxMqSWFAqtSrjRjPY+wn2qvNv0jqIWzSYlIi3OGX5VEUuB0Hgxn4Gd69LtzFiBucnkgpsQIbIxMcGSUB3NI+1RS3q0vtp+EIhNJUX4o+aYBPB/K3TSp38lsAaqxaY3DPe4dgMJk/bAyH7uqSLtHoty1g1XoLMUj0YXWHvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3PfZGqIzobVCCyTDAmKc6tg+Xxk2wlkayJAkqv0bxj4=;
 b=DQoTrRTLwl9OyFMhO0PLiHi58X4g0u046VtRuyB8wV95jBg+mWJ7uP3bNo6FlTpjaddL7SGm5Qg3KaFiu14IoFZ7B7rwB1gNBrEE49NkN7r55mTRmNklpjRWHFlNHJ5vUTEnYBD9cJePZvLSO5YidQCnnWZrRyMj/8VYn2yzQWA=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=ant.uni-bremen.de;
Received: from AM6PR04MB6680.eurprd04.prod.outlook.com (2603:10a6:20b:f8::12)
 by AM6PR0402MB3318.eurprd04.prod.outlook.com (2603:10a6:209:9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.30; Thu, 18 Feb
 2021 09:12:33 +0000
Received: from AM6PR04MB6680.eurprd04.prod.outlook.com
 ([fe80::a1ba:a7bf:5bb0:5adb]) by AM6PR04MB6680.eurprd04.prod.outlook.com
 ([fe80::a1ba:a7bf:5bb0:5adb%4]) with mapi id 15.20.3846.038; Thu, 18 Feb 2021
 09:12:33 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <9e13de43-c871-8622-c3b6-d4143fbe7ad6@ant.uni-bremen.de>
Date: Thu, 18 Feb 2021 10:12:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
Content-Language: en-US
X-Originating-IP: [77.21.223.96]
X-ClientProxiedBy: AM0P190CA0013.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::23) To AM6PR04MB6680.eurprd04.prod.outlook.com
 (2603:10a6:20b:f8::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.24.142.155] (77.21.223.96) by
 AM0P190CA0013.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.27 via Frontend Transport; Thu, 18 Feb 2021 09:12:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dd460bc3-2cbd-4acb-392f-08d8d3ed5362
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3318:
X-Microsoft-Antispam-PRVS: <AM6PR0402MB3318562AA4840A298B71D02CA9859@AM6PR0402MB3318.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i6CTbN9IDy0wMkXK1YzwNG9FEQVtRFKntBAO9DIYnCbHZb9WFHU5t+Z/hXVuPdHb0XjU0BNH72DVV1hAkqNnuZBkQ3T6LElEHjbldN8R/YTJrwE2vM1KbLVLLP9ZFS6frc122beVBmMGXegZD4Z1ZRSDgbHn3O0+mupbr95zdf9cHpdEonGOgJCmpMeACAPlIlqnPlZEYWbAjOno0QQ8rlrzJ/6wE1b8m0R4iwtx500lJtUyap7xg4LNvN4Z+D/7QxKmxPC9SOmZe1R78warV3ihKU2PfwFSUQ3RtYfe+1vkS2B14xrnbMEjE/kqUYAp+TWw181vpmfxQiyxUhVfLZbvgeISbLK/fytAkZ+S3gftwHPATQbNRjaIIEjv9b4M9aKKiNWdkOmLmkY3V0c8FlSKe1ywZd7QYJ9d5C0htHni/Te8yF4PNXfVyzLdBptiwHdQO9Q/37LHrLtoRefGPte8Yo4DkZMhO3V/eTtpCmiRWri0AAsIStqQf9bGasELahPkn82bbcC/0oM9HjVNX1GVESopp28DQoj+j0IyDRcwG2d8fxShuHlOuKgAXmIC6If9rIPw9qI/oV1KeJ53n6dHgaEDZi5Hg/10bzFi+8crIgwUuJtJrun9HO5+HbAuoOM9iZ5Lz4Q6GyrrK21ydXGxlbRxdQcdYxru6Upd/Cu+1wchlKidB7EfSdULcYxg4RGmGrhodyTgssmY8RidQ0o9Z7B62tRgPpT0xL4DujE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB6680.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(376002)(396003)(136003)(39830400003)(83380400001)(316002)(16576012)(786003)(66476007)(6916009)(86362001)(26005)(478600001)(8936002)(66946007)(66556008)(2616005)(83080400002)(15974865002)(3480700007)(6486002)(31686004)(8676002)(52116002)(5660300002)(16526019)(956004)(186003)(2906002)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?NzRLdDdZelkyRXB6dWRVR2w4STljb1FmcHM3NGYzVm5NdWMvc2NJNGV1bnJ4?=
 =?utf-8?B?ZjA3TDVETjZuRE5jQ0psUzVDSE80Ly9SUXNZN1RDR3BRZ1NzNEY5QjhqL0sw?=
 =?utf-8?B?UGtPcVNCNHY5eWhaREp3YjF0SmdVSGN2aVNDQnFGV3k3d1BRUG0rT3luY1or?=
 =?utf-8?B?T1lOM3pZeFdMUmRqYkFxeHh1UjVKSzVjQklveWkxYldRTFE0WDAxUUU5Q0hi?=
 =?utf-8?B?d0x4TUk3Q25sL3lwZnY2TUFBMW9qQ0dVcDh0OXdjenhIR1VmMm83SFhPZG12?=
 =?utf-8?B?akI1QlBZZVRPNjkrS242WjZpK28zdSs2eXpTSlVQS3NXM3EwaHpWNzMwZXpz?=
 =?utf-8?B?MGFIeE55WlJqY1lINVFtbmV4SEt2UDk5WU9xc1VGSUl5R3VLRWZrYlhZRS9P?=
 =?utf-8?B?dG50c1drOStDRHIzbGZFenJGSnV6VmVkTjZKb2JQWlJBeHhIbjJBV2NEeFZZ?=
 =?utf-8?B?QnBQY1Q3alRreXI4cDJUMTNoaW1mRVAwYUFvRjZnaFdqRjVudDZGR2tYTlhx?=
 =?utf-8?B?aTdIV0hjU3hpc3hIUTZhUE1rbjVoSmUzN3F2UHlocmxMZE0zeHJkcDNGcUow?=
 =?utf-8?B?bEY3aEMvbi9FZ1h1VTM0ZEpRQmtQWG9Dc0hvZldFZDJrWk45M2NpdTc3NEE2?=
 =?utf-8?B?UVQ4dHJveGRHdktGcEZFMGZQMTdlWHNjeDhYVFEzd0lYMjBSWGVGcnNpeWc1?=
 =?utf-8?B?SmM4U29VSEVZdXNIcG5sNUxYQ0d6cmc2cmg2VE56Q1lqa3FMdmpaY0Q5Q1hO?=
 =?utf-8?B?TjFLdEhqbUdxM013S1hMazBqUGF2bllEVjBLc0YvZ21GeFN6SFpNMVpIcEpR?=
 =?utf-8?B?RloxeEJQYlhUNHZFNFMrTm9OSnJ1WUhGNFNBNDNEejlDYW1JR09PelFSRGU0?=
 =?utf-8?B?aUo3cjNFbTNWcG04bHdaWVhvcm52cENqZm1RbHBLdE5aM0dUUGpUQS84V2Uy?=
 =?utf-8?B?eDJzUmtYTjN3a2ZRL1hEODgveDVWM09jWlJVUCtwVjducUc4SHN3VXdXWE1h?=
 =?utf-8?B?d3FTVG5BbXVId2cxT1VCbll0QVJNb0ZMN1p3aXVSbWFZNUtvWmErNUkzdXZ4?=
 =?utf-8?B?UFA0NXhDYnB1S0dnaXRJWWNjVXVlWU5pTm5TeUY2eHpBSElrekNMOGh2ZDRN?=
 =?utf-8?B?SEpiZjdVaUVvM1hiVnRiMVgrWVVxVDRXZ3orNnpGQlgxRGJUS056ZWNBdDdY?=
 =?utf-8?B?ZXNIbXh2anR2Z0FCcEwzZ2xlMmt2ZzUvcjBsaFJUbCtzQUh3VEQ2MWpVQTVk?=
 =?utf-8?B?VzR4MnZuVk80YXMvc2lYVmhqWW1ZN2dlNm1OekltZ3RxOTc0aDBMTWxUL3Na?=
 =?utf-8?B?Mk9oOVNMRVZaWkJrNldWZG9BV1NIc3EwRC85WGl4VGxEQncxVTZTMGk4Z3Qx?=
 =?utf-8?B?ZnplUEEyVlBqcS93ZVM4U0JhdGE1YmRJQnFzbUJvRTAySjF5V20veldVTWZE?=
 =?utf-8?B?RGlqV0Z6NXE0OW5Md2wyT2hGQ3N0UjBXNkJaam1UbkxscXdUakpVK2UrLzRt?=
 =?utf-8?B?VXovbitxcHc5YlpUT1RKa05yWXpWK2QyeHBNN25SUTR3T1V1c3RTdnl3U1Fq?=
 =?utf-8?B?MGJtcHJDSW5nS0RURTZ3akFzVHNqMjUrb0tpNkVFZUdSNUwwa3g5S2t2OUxl?=
 =?utf-8?B?UUlCU2tDQm9qUlptNlRpbEl1Vmk5WnQrdFQ5UHo4azByeEpCUEVGSGZveDBy?=
 =?utf-8?B?VXdEamt3RFJhU3FYVmR4VTVlcjhEempPOWd4KzQ0OTVLVnNHUm1yK0swVVcz?=
 =?utf-8?Q?GBwG9MLDto0lheVfcqEB+eZ2PFzqfHfLwljVors?=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: dd460bc3-2cbd-4acb-392f-08d8d3ed5362
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB6680.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2021 09:12:33.3920 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mahaMUOcnKE/kMQxfTv5EALcjqI+AJugl+bR3EhGs4EPxo4LFgl5F1+me9c4rBmQLt1nZxPHQ5uz1N9p8JGDvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3318
Subject: [USRP-users] GPSDO fails to lock
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

I have some N310s and a B210 that I try to sync with a GPSDO. All of 
them recognize their GPSDOs but fail to lock.

My phone can see ~7 Satellites. We have a RPi with a GPS module that 
locks to GPS in the same hall. We switched antennas but still, we can't 
sync any of the USRPs to GPS.

I tried:

```
lib/uhd/utils/query_gpsdo_sensors
```
and
```
lib/uhd/examples/sync_to_gps
```
but even after a day, they always return "GPS does not have lock" and 
"WARNING:  GPS not locked - time will not be accurate until locked".
`gpsmon` on the N310s reports 0 Satellites. But it has a list of satellites.

Since we have several devices in that room that are able to acquire a 
lock but none of our USRPs with their GPSDOs, I wonder what is going on. 
Do they need a very strong signal?

Cheers
Johannes

-- 
Johannes Demel M.Sc.
Research Engineer

University of Bremen
Department of Communications Engineering
Faculty 1 - Physics / Electrical Engineering

www.uni-bremen.de/en

University of Bremen - Established 1971

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
