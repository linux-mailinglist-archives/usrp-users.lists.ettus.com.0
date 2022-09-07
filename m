Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1C15B00D5
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 11:47:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0F16383B63
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 05:47:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662544037; bh=VxwknfX/8kFR3TKsVejIE1TQdZOhYHRZxBxirNGSv+k=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RPjYZ7J3UwDBkJvnXi24HI9BCSQqI7NVJMJalJbxfhhMpCNvNt9lyGVzQ4c/jrTVr
	 zbGJBPNXm3FaC/UnRJOUFypevbk9IjjZj1pu446cYl9y7/tVScYGD3K/GNLUtTK8Fi
	 +80j4sZoM5z2mBaEBpeNr+3n1ZSu6+0ZswlTv+es6QWrdX1oco/81eqd+CsCibxLfi
	 TkPaLJ230AIdBW0FNQOA0U7RcaQsO2LMkeKKarHmSwmsC8O3/yUB+llqUdEtRUYQmS
	 EFtkRC5XfVrt2yXwQu8i0AnWvBarqdwp+m0kKdqQI1aLbAj73B+jInDdu43kpBSZhD
	 ubhe+9EnfV28g==
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2123.outbound.protection.outlook.com [40.107.21.123])
	by mm2.emwd.com (Postfix) with ESMTPS id 2DA0B383850
	for <usrp-users@lists.ettus.com>; Wed,  7 Sep 2022 05:45:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=antunibremen.onmicrosoft.com header.i=@antunibremen.onmicrosoft.com header.b="Vq/TFizH";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I6/QUgk2ELK6p9fAKgIYAJsdVxQcQKegamc9nnh+K7DnGFKkMH3tzyncLVnQNmtX1jzkVTxhdpBj5L38qVhQ6tKHxbEDl9LCrxyZ4/TdD8albleOqfgXM/2RmfVmia97LH2gaKLYeW+W1WZAG4kwjyhcNNzuG8qSFd9QOaqDqPqk3g0WaIlLF37n8FyEQawKOCDfvQFDIvGlWXB7yHRuoHVSaSD6XS/wwNsgFv6cIGHM+iaNFAU/z1+ZKHxb3Hoja2J5WujpBnGVY26uuOKAftyP7S9EFdgj4GdTM61qTDvWpzT1eb3JSj7EYCqadGDhwLGSWIAme2V8DWvNjZbl6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M6XY3gSNT+yxDZ4yLc/q3RIHnXBE3Veub47L1+Wmpfg=;
 b=N+28ZZgpa3oSMp12npGgXYd4OAhVmiKc/R7DPBBcUiu1Ldw3HrgxCr4p8txy4e2fhbOwbZWlw9DoeJs2tBmB1cwg2ySHpTQhb3sdvE+YAw2axk9Rgm2CY6CBhHKWw84hn3TdoKgKO1eHX0SOzmPHbuGt6GzwoU8KsLQOtDu1op7s7APqqa7frDpoLCs6iVdbXIauprxsKHqCbmwgGl70w9Bf//2ZqX91agG62c3CyldzZdyVyLnRc59MMtEnPS8u6Uozbt4ugX3f6RNaX9cIzuCZLMsFv79K6zkYJ/DJr26qIQ4p1PVGnNfmhiu/mZuLJTMaS44gfuvbyKP9JBidtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M6XY3gSNT+yxDZ4yLc/q3RIHnXBE3Veub47L1+Wmpfg=;
 b=Vq/TFizH231fHua2c5egJHZJaZAWoBlSM2karuk1JPpn2cRdBPJpIGuWwsK464LLQqovPmwTSzQax45lZ4p8llp+5/1I0MYNIECCxbsDao/N5I275y+7uoIq0h7VN1n1CZwkaW82NhHJfvWW//KqHszhV/bnGpplHi7R/JFaPW4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ant.uni-bremen.de;
Received: from AM8P250MB0294.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:329::7)
 by PR3P250MB0034.EURP250.PROD.OUTLOOK.COM (2603:10a6:102:14d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Wed, 7 Sep
 2022 09:45:09 +0000
Received: from AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 ([fe80::70a8:534:86b:7078]) by AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 ([fe80::70a8:534:86b:7078%9]) with mapi id 15.20.5588.014; Wed, 7 Sep 2022
 09:45:09 +0000
Message-ID: <aa32df8f-8205-b36f-3434-0892c4dd4bcb@ant.uni-bremen.de>
Date: Wed, 7 Sep 2022 11:45:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
From: Johannes Demel <demel@ant.uni-bremen.de>
Content-Language: en-US
To: usrp-users@lists.ettus.com
X-ClientProxiedBy: FR0P281CA0045.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::14) To AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:329::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 05d958fe-38e3-40dc-cde4-08da90b5a6d1
X-MS-TrafficTypeDiagnostic: PR3P250MB0034:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	SGkEjWkwvsLeoUtg/83g2xLPJK/aTpqrpnYaP6OUuHQYifVg1rLc4hj7Fb2l8dllgAl4Eyrb6Acd/45mdPwFrQdjCwRw2FexRwHgHftc8JhF0I4XSd2fROGlwk/wsZ6cPy+CECF4HmrYWkS+JCxE4PoQdDGpoQRu0UdJBgExQre+8gpePTGJIxwd7+EtVDfBo8LYWJKORGKQDWjhyhtf3GQu413g+l4eAlYnVn8TLiwrQcrzPw06TNV1XLNk59QLNQfqGBpjTEt3fimuMQWKDSNTCAfF4nHHMRvVFMfKpPZCS+vMq1FrtDQPh1n80CRba6n2tN0/hyciEWq4EVXo2i5l1zvhrTwzWI6c6ltuAGTYW84BekNyTmQCBFPBacHqep15majRrenQM5Qef+g1Pz6+LYH9oIefNCrznaIh79ZlBz4WwbXySfplwH0cgMUOaHuyMk+OOCRGFIGt+bs3vG2mTCxKj1qSNYg10A7FpLg3ZRGyZn0snBpnU0kHbJ01UUhm0W/t8X9KnKNEXawpD09mS8xgW+uRZCk3qLBeWX07z9JX/b505jIvafx92zFakKUv6YnNggPx+zpnLjbS9xOCQsM1kQgDKf4KTLQMZ3fC4+Ap8KpZjyhOmAyVp926MwxZ1clhKYthK2LStV81kE7fJRUa3XrY2ABk312JKYT+jJncovzEB6U6VzO7owI5wfe+To1klWERDPf28ZTzYbY/a0t+wXa3ubd+PIVLhNCJeUSojPVAj7hE/OfW+wDeQsfFunUbv5pRlNntJP96OSI5koDrW3psJ1VqovSYR5hsviU0t6keJkeDiWVz6mZ0sryZS83SZ5fZEFl1e1IIpg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8P250MB0294.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(136003)(346002)(366004)(376002)(39840400004)(396003)(38100700002)(38350700002)(66946007)(66556008)(66476007)(8676002)(6916009)(786003)(316002)(2906002)(5660300002)(235185007)(8936002)(2616005)(186003)(83380400001)(6486002)(478600001)(6506007)(33964004)(41320700001)(6512007)(26005)(52116002)(41300700001)(86362001)(31686004)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TndlN2NCZUIrVlkxekUyekI0ekRHUnRoRVYyV2JOOU9OdkhRQlZEdXIwL0xO?=
 =?utf-8?B?YXdvQmdLM01jWmdBc3UrUFF4ZlZrUWFzNzB0SytZeGR0MnZkSEpaR21DMm9B?=
 =?utf-8?B?Ujg1MGRYajErQ0xnNTMwQTlaNVdJbmpzRFFCdnNNVXhLaFBvZUU4dVpQV1NK?=
 =?utf-8?B?RGc2aE5naDZEdEJaRnJ0S3BjaHdvQnlNWmtxZDlReVFqMExsZWRHQWRFWlh4?=
 =?utf-8?B?TVRzL1M2NXhHcSt6SXFkSmRuOSs4TDNMSUl0d3BSWE5MZStyOWpWeFZaL0pE?=
 =?utf-8?B?NFRrRUdmd0xia05KeUxEdmRWYUdod3p1SlpQeldJQVJNVWNMbXNnNVVJOWZD?=
 =?utf-8?B?QkhnRnR3UXh1ZUhNZGNnR3FNM00wRWMycFVwQTZ3WjMxZ3ArdmJ5aEZKMnBF?=
 =?utf-8?B?akV6bFhHNjNaWXF6MkpFS1dpR1hJMXhUb1czQTFXTFB1K1FFZkd0ZGlnYWVT?=
 =?utf-8?B?LzFST2lyeGJ2MS85WWtWL1gyQ1BaMUxQOTJtOW00VzQ0d3FNeEJIZGJhb3Jl?=
 =?utf-8?B?YnhqaU5DN0dZTW5vck5raFZPbDRBT2JabURNaXMxOGRrT1BSRldwOWtXcFZm?=
 =?utf-8?B?djA2M01YendUd3NmNlVCRURuZE5SSEdKai92ZVhxYlczUnFXVGVBblJyU1ZT?=
 =?utf-8?B?NnBZQTFmNFBseE90ZnkzbXVaQWQyeWlaTVdFd1dvT2pkWlBSOUs1WjU5R282?=
 =?utf-8?B?RXpuNE12Ylova1ludkpKZllUU1lhZmZZYnVyVlZnTnBjUWxRalZxejVNUFYr?=
 =?utf-8?B?WWRLM0lSRDlBTjcvVk5Nb0NZK2UwNHptblJmdmdaaHRPbEFqVzM1Z2Z5UWk3?=
 =?utf-8?B?TmhjNTRtZXRlR2ZIaVRLSDNkRll2dCs2UGhKeUg3UFVKamplVWkzMjBDaUFm?=
 =?utf-8?B?a090RkNQRUpsM1U5Z0VpdWp3Qml1RDdZKyt2d2YzeWdxT1pwUmVScUJFb3A1?=
 =?utf-8?B?eHlYUWwwTk9RYXlQU3poRVFEVzR3NytRYWdJNkpFcjNMU0x4cjg5WHVsTHJD?=
 =?utf-8?B?akRWSXg5N1J2bFcrYklxU2FjRlg3LzA1ZHZYb3JFT3VqdjkwQjF1MzE0djEw?=
 =?utf-8?B?bFVIZUtvVEErZlNQNm9EaXR0a1JneXlSUkdCbU5lTGZXTVF4Vkl0Nk9CdlN3?=
 =?utf-8?B?RGU3RlkvY2ttWDd2N1VTZE9RcUE3SGt0d0lQcThmU2wwK0djK09jQ2hoNmE3?=
 =?utf-8?B?K2dFNEt1WWFNbXBuZ25KczUrTEpFbXVaU2FOZjFYM3hya2YrVHhiMEEvN3Z2?=
 =?utf-8?B?bjFiOFhXUUx0UkJLbXQyaVJqRlNUWWhmTmxNZG5xSGNOeGVLbmdweExMVm1L?=
 =?utf-8?B?ZnFYYTlHVUFuNG5peEEvQlRXZ3R1ZTFwVy9aNEIwbHQ1UGxxU3JGQXQrSnA1?=
 =?utf-8?B?cVBDQ2d0MG9yMTRhR2ZERkl5TXhqSGdxbi9OWGYrbHpOeUpIeEpQVVlQRFhs?=
 =?utf-8?B?Y2pWdzBDWmg4cnovbm9hZWJMZTYrTXpLOW43bkxDdkU3UERvbTJmLzdkd3hT?=
 =?utf-8?B?aFc2QzVZSUhJNDBZQnJ5Mm1CT0YxYTk0NHgzbGpGR3M0VVNJOG1wbTQyMUtP?=
 =?utf-8?B?eXBmYWpQV1NER2JUODB3bUlNb1ovOFVhc3NQV3FCY3h1a1pHc2lNOHVrbzNL?=
 =?utf-8?B?UkNNaXZKNDk0NkFNVlBKQmw0MnJmMmNwR2JoNnZFeDlzbTRkNnVZUjNCMWVU?=
 =?utf-8?B?djJPNnBiL3NpNW1VVXZ0d3YzcUUycEZLUjR3WExnalE0SVVscHRXcUFyTEhL?=
 =?utf-8?B?ZnJPTEdaYnpDdTJiVGh1MzdjV2RZYi8ya2d0VzF5VWZZVGRWc0Irc0wzYUxP?=
 =?utf-8?B?VGxzbzg4RERVRFpCdUx2RXQxdTdXREhsdGVBcWQ2dkZuVTNUTDV0VUtYMGVr?=
 =?utf-8?B?M3BWckFscVBCSXRXdUIwR28vU1kzeEtwKzEvcEVRa2NJa3gzbU5GYzUzUzJQ?=
 =?utf-8?B?V2QzOENZUGdXVkhPYTRlMU5kaUc1UGcvcWRkRkxBWTBIWVMwQ3ViTERXNlIz?=
 =?utf-8?B?eEhUbGF2cGhGNzdvejFGWjM5V25zU0Z5ZGdKKzJneE5yeTJQQ1RpTjFqWjB1?=
 =?utf-8?B?K1VKYVpoa1RsalhwWGgxcklsSlMyR05pRkp3UlJTSVNBTWF4SGNGVjNhQUtQ?=
 =?utf-8?B?NGNIdTlwSmRNQ0VuU2tmUkR5cjJMVDdaZVNqV3RVam5LRFBNdzFVWklOd3Iy?=
 =?utf-8?B?U0E9PQ==?=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 05d958fe-38e3-40dc-cde4-08da90b5a6d1
X-MS-Exchange-CrossTenant-AuthSource: AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2022 09:45:08.9531
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CmtzS6MW6xhe0QLrB9N8YPR4v9hZD+6t0ljb35POhD4+z81b+82xb/HGDHOZBpJrJV+gCq/hmmeNYBGw2nh0Ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3P250MB0034
Message-ID-Hash: LZOXZIFUII6GSDVC5ZXOHDZDZJZYZXBP
X-Message-ID-Hash: LZOXZIFUII6GSDVC5ZXOHDZDZJZYZXBP
X-MailFrom: demel@ant.uni-bremen.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 reporting U/O on Ubuntu 22.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LZOXZIFUII6GSDVC5ZXOHDZDZJZYZXBP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6265528475530481613=="

--===============6265528475530481613==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-512; boundary="------------ms060704060509070601050206"

--------------ms060704060509070601050206
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I try to use a B210 with a computer that runs Ubuntu 22.04 now. However, 
at higher sampling rates, above 24MSps with 2TX and 2RX streams, I get a 
lot of overruns and underruns. I need 30.72MSps eventually and got that 
working on all other machines.
This happens on Ubuntu 22.04 with UHD 4.2 
(321295fba49fb66ede365afbd9ef62971cdfbfca).

I have another multiple other computers with exactly the same hardware 
but Ubuntu 20.04 and UHD 4.1 where this works flawlessly. And it worked 
flawlessly on the exact machine I'm trying to use now with Ubuntu 
20.04/UHD4.1

How would you proceed to investigate this issue? Do you have any clues 
why this might happen?

Cheers
Johannes


The working setup with 24MSps:
--------------------------------
$ ./lib/uhd/examples/benchmark_rate --rx_channels "0,1" --tx_channels 
"0,1" --rx_rate 24e6 --tx_rate 24e6 --args="name=myusrp"

[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; 
UHD_4.2.0.1-0-g321295fb
[00:00:00.000150] Creating the usrp device with: name=myusrp...
[INFO] [B200] Detected Device: B210
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Detecting internal GPSDO.... [INFO] [GPS] Found an 
internal GPSDO: GPSTCXO, Firmware Rev 0.929b
[WARNING] [GPS] update_cache(): Malformed GPSDO string: GPSTCXO, 
Firmware Rev 0.929b
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test... [INFO] [B200] 
Register loopback test passed
[INFO] [B200] Performing register loopback test... [INFO] [B200] 
Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz... [INFO] [B200] 
Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
    Device: B-Series Device
    Mboard 0: B210
    RX Channel: 0
      RX DSP: 0
      RX Dboard: A
      RX Subdev: FE-RX2
    RX Channel: 1
      RX DSP: 1
      RX Dboard: A
      RX Subdev: FE-RX1
    TX Channel: 0
      TX DSP: 0
      TX Dboard: A
      TX Subdev: FE-TX2
    TX Channel: 1
      TX DSP: 1
      TX Dboard: A
      TX Subdev: FE-TX1

[00:00:03.83958484] Setting device timestamp to 0...
[INFO] [MULTI_USRP]     1) catch time transition at pps edge
[INFO] [MULTI_USRP]     2) set times next pps (synchronously)
[INFO] [B200] Asking for clock rate 24.000000 MHz... [INFO] [B200] 
Actually got clock rate 24.000000 MHz.
[00:00:06.112597897] Testing receive rate 24.000000 Msps on 2 channels
Setting TX spp to 2040
[00:00:06.134883841] Testing transmit rate 24.000000 Msps on 2 channels
[00:00:16.136391242] Benchmark complete.


Benchmark rate summary:
    Num received samples:     478676848
    Num dropped samples:      0
    Num overruns detected:    0
    Num transmitted samples:  468069840
    Num sequence errors (Tx): 0
    Num sequence errors (Rx): 0
    Num underruns detected:   0
    Num late commands:        0
    Num timeouts (Tx):        0
    Num timeouts (Rx):        0


Done!
-------------------------------



The failing setup with 25MSps:
--------------------------------
$ ./lib/uhd/examples/benchmark_rate --rx_channels "0,1" --tx_channels 
"0,1" --rx_rate 25e6 --tx_rate 25e6 --args="name=myusrp"

[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; 
UHD_4.2.0.1-0-g321295fb
[00:00:00.000150] Creating the usrp device with: name=myusrp...
[INFO] [B200] Detected Device: B210
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Detecting internal GPSDO.... [INFO] [GPS] Found an 
internal GPSDO: GPSTCXO, Firmware Rev 0.929b
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test... [INFO] [B200] 
Register loopback test passed
[INFO] [B200] Performing register loopback test... [INFO] [B200] 
Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz... [INFO] [B200] 
Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
    Device: B-Series Device
    Mboard 0: B210
    RX Channel: 0
      RX DSP: 0
      RX Dboard: A
      RX Subdev: FE-RX2
    RX Channel: 1
      RX DSP: 1
      RX Dboard: A
      RX Subdev: FE-RX1
    TX Channel: 0
      TX DSP: 0
      TX Dboard: A
      TX Subdev: FE-TX2
    TX Channel: 1
      TX DSP: 1
      TX Dboard: A
      TX Subdev: FE-TX1

[00:00:03.80780849] Setting device timestamp to 0...
[INFO] [MULTI_USRP]     1) catch time transition at pps edge
[INFO] [MULTI_USRP]     2) set times next pps (synchronously)
[INFO] [B200] Asking for clock rate 25.000000 MHz... [INFO] [B200] 
Actually got clock rate 25.000000 MHz.
[00:00:06.661812186] Testing receive rate 25.000000 Msps on 2 channels
Setting TX spp to 2040
[00:00:06.684104161] Testing transmit rate 25.000000 Msps on 2 channels
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
------------------------------------

--------------ms060704060509070601050206
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG9w0BBwEAAKCC
EaUwggUSMIID+qADAgECAgkA4wvV+K8l2YEwDQYJKoZIhvcNAQELBQAwgYIxCzAJBgNVBAYT
AkRFMSswKQYDVQQKDCJULVN5c3RlbXMgRW50ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYD
VQQLDBZULVN5c3RlbXMgVHJ1c3QgQ2VudGVyMSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFs
Um9vdCBDbGFzcyAyMB4XDTE2MDIyMjEzMzgyMloXDTMxMDIyMjIzNTk1OVowgZUxCzAJBgNV
BAYTAkRFMUUwQwYDVQQKEzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVu
IEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsTB0RGTi1QS0kxLTArBgNVBAMTJERG
Ti1WZXJlaW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgMjCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAMtg1/9moUHN0vqHl4pzq5lN6mc5WqFggEcVToyVsuXPztNXS43O+FZs
FVV2B+pG/cgDRWM+cNSrVICxI5y+NyipCf8FXRgPxJiZN7Mg9mZ4F4fCnQ7MSjLnFp2uDo0p
eQcAIFTcFV9Kltd4tjTTwXS1nem/wHdN6r1ZB+BaL2w8pQDcNb1lDY9/Mm3yWmpLYgHurDg0
WUU2SQXaeMpqbVvAgWsRzNI8qIv4cRrKO+KA3Ra0Z3qLNupOkSk9s1FcragMvp0049ENF4N1
xDkesJQLEvHVaY4l9Lg9K7/AjsMeO6W/VRCrKq4Xl14zzsjz9AkH4wKGMUZrAcUQDBHHWekC
AwEAAaOCAXQwggFwMA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUk+PYMiba1fFKpZFK4OpL
4qIMz+EwHwYDVR0jBBgwFoAUv1kgNgB5oKAia4zV8mHSuCzLgkowEgYDVR0TAQH/BAgwBgEB
/wIBAjAzBgNVHSAELDAqMA8GDSsGAQQBga0hgiwBAQQwDQYLKwYBBAGBrSGCLB4wCAYGZ4EM
AQICMEwGA1UdHwRFMEMwQaA/oD2GO2h0dHA6Ly9wa2kwMzM2LnRlbGVzZWMuZGUvcmwvVGVs
ZVNlY19HbG9iYWxSb290X0NsYXNzXzIuY3JsMIGGBggrBgEFBQcBAQR6MHgwLAYIKwYBBQUH
MAGGIGh0dHA6Ly9vY3NwMDMzNi50ZWxlc2VjLmRlL29jc3ByMEgGCCsGAQUFBzAChjxodHRw
Oi8vcGtpMDMzNi50ZWxlc2VjLmRlL2NydC9UZWxlU2VjX0dsb2JhbFJvb3RfQ2xhc3NfMi5j
ZXIwDQYJKoZIhvcNAQELBQADggEBAIcL/z4Cm2XIVi3WO5qYi3FP2ropqiH5Ri71sqQPrhE4
eTizDnS6dl2e6BiClmLbTDPo3flq3zK9LExHYFV/53RrtCyD2HlrtrdNUAtmB7Xts5et6u5/
MOaZ/SLick0+hFvu+c+Z6n/XUjkurJgARH5pO7917tALOxrN5fcPImxHhPalR6D90Bo0fa3S
PXez7vTXTf/D6OWST1k+kEcQSrCFWMBvf/iu7QhCnh7U3xQuTY+8npTD5+32GPg8SecmqKc2
2CzeIs2LgtjZeOJVEqM7h0S2EQvVDFKvaYwPBt/QolOLV5h7z/0HJPT8vcP9SpIClxvyt7bP
ZYoaorVyGTkwggWsMIIElKADAgECAgcbY7rQHiw9MA0GCSqGSIb3DQEBCwUAMIGVMQswCQYD
VQQGEwJERTFFMEMGA1UEChM8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hl
biBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLEwdERk4tUEtJMS0wKwYDVQQDEyRE
Rk4tVmVyZWluIENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDIwHhcNMTYwNTI0MTEzODQwWhcN
MzEwMjIyMjM1OTU5WjCBjTELMAkGA1UEBhMCREUxRTBDBgNVBAoMPFZlcmVpbiB6dXIgRm9l
cmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5nc25ldHplcyBlLiBWLjEQMA4GA1UE
CwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9iYWwgSXNzdWluZyBDQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ07eRxH3h+Gy8Zp1xCeOdfZojDbchwFfylf
S2jxrRnWTOFrG7ELf6Gr4HuLi9gtzm6IOhDuV+UefwRRNuu6cG1joL6WLkDh0YNMZj0cZGnl
m6Stcq5oOVGHecwX064vXWNxSzl660Knl5BpBb+Q/6RAcL0D57+eGIgfn5mITQ5HjUhfZZkQ
0tkqSe3BuS0dnxLLFdM/fx5ULzquk1enfnjK1UriGuXtQX1TX8izKvWKMKztFwUkP7agCwf9
TRqaA1KgNpzeJIdl5Of6x5ZzJBTN0OgbaJ4YWa52fvfRCng8h0uwN89Tyjo4EPPLR22MZD08
WkVKusqAfLjz56dMTM0CAwEAAaOCAgUwggIBMBIGA1UdEwEB/wQIMAYBAf8CAQEwDgYDVR0P
AQH/BAQDAgEGMCkGA1UdIAQiMCAwDQYLKwYBBAGBrSGCLB4wDwYNKwYBBAGBrSGCLAEBBDAd
BgNVHQ4EFgQUazqYi/nyU4na4K2yMh4JH+iqO3QwHwYDVR0jBBgwFoAUk+PYMiba1fFKpZFK
4OpL4qIMz+EwgY8GA1UdHwSBhzCBhDBAoD6gPIY6aHR0cDovL2NkcDEucGNhLmRmbi5kZS9n
bG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDBAoD6gPIY6aHR0cDovL2NkcDIu
cGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDCB3QYIKwYB
BQUHAQEEgdAwgc0wMwYIKwYBBQUHMAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1T
ZXJ2ZXIvT0NTUDBKBggrBgEFBQcwAoY+aHR0cDovL2NkcDEucGNhLmRmbi5kZS9nbG9iYWwt
cm9vdC1nMi1jYS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwSgYIKwYBBQUHMAKGPmh0dHA6Ly9j
ZHAyLnBjYS5kZm4uZGUvZ2xvYmFsLXJvb3QtZzItY2EvcHViL2NhY2VydC9jYWNlcnQuY3J0
MA0GCSqGSIb3DQEBCwUAA4IBAQCBeEWkTqR/DlXwCbFqPnjMaDWpHPOVnj/z+N9rOHeJLI21
rT7H8pTNoAauusyosa0zCLYkhmI2THhuUPDVbmCNT1IxQ5dGdfBi5G5mUcFCMWdQ5UnnOR7L
n8qGSN4IFP8VSytmm6A4nwDO/afr0X9XLchMX9wQEZc+lgQCXISoKTlslPwQkgZ7nu7YRrQb
tQMMONncsKk/cQYLsgMHM8KNSGMlJTx6e1du94oFOO+4oK4v9NsH1VuEGMGpuEvObJAaguS5
Pfp38dIfMwK/U+d2+dwmJUFvL6Yb+qQTkPp8ftkLYF3sv8pBoGH7EUkp2KgtdRXYShjqFu9V
NCIaE40GMIIG2zCCBcOgAwIBAgIMJu9jPmW/Y3B2GzQvMA0GCSqGSIb3DQEBCwUAMIGNMQsw
CQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRz
Y2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQD
DBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBMB4XDTIyMDcxNDA5NDUyNFoXDTI1MDcx
MzA5NDUyNFowdTELMAkGA1UEBhMCREUxHDAaBgNVBAoME1VuaXZlcnNpdGFldCBCcmVtZW4x
DDAKBgNVBAsMA0FOVDEOMAwGA1UEBAwFRGVtZWwxETAPBgNVBCoMCEpvaGFubmVzMRcwFQYD
VQQDDA5Kb2hhbm5lcyBEZW1lbDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAPLK
kKSvj22LQSFvw4RSL6cwNiA+kJ2kQPRxCGF/Z8lJGbA9HJR+5rAa+1Jv6r00OfRPzSmToUL9
zJuDKdeZpmxDidBB0Upi47VFTVQP42/re5skc6kUAPsSXcK4CAxCVDxzxOdTSIAOYIS0f903
evw6bJUoY9zpBLyuZVE+P53vo4ZzaTA4GDIqn1jrD5jMcs+r+oAAR0wkvudYmB87rTxdk96z
WHGEv13gRnyOt68U7t0p4ICLFcFI/7t/6iJqDm2mVFcFRQkqJS+EtFg0k3/p2sxnygGJWk4o
1khxYUecHIBoIWSCtJNegHX2ubLj6+TGFn2+wufhmbiarvYmHGfO0RVDCWUbUGLZ8SUCv5rh
ed5YH2XBp6SuhcsGRnUHxb2DxfmZagBNcqfGejfy5iTON+d4K2PmEIX1HkQrMgJkRhPhf7AY
AI4XsyaJQlTI3j/BVprCORF1/TuQUnNkio96lFSMGVsY0V6VMzAnm2ZLCxobGWBNsZvSE0Oz
LxQyenv68K87xK6O/tYHSC1r3NOrnqr2o0+nnH4H0Qx4jeA4QtiedPQXog33PJI/isQhnKmR
i6lgVnR7i6k3jKjUsxQ1LBhMthg0me+n6y8qU6QJNUZpzgLi3qa1InXE9pjl9vhOE4jiDx3S
tSY9nKeC9qs48oufSQyRFdxD70SHGwNFAgMBAAGjggJQMIICTDA+BgNVHSAENzA1MA8GDSsG
AQQBga0hgiwBAQQwEAYOKwYBBAGBrSGCLAEBBAowEAYOKwYBBAGBrSGCLAIBBAowCQYDVR0T
BAIwADAOBgNVHQ8BAf8EBAMCBeAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMB0G
A1UdDgQWBBSDSIZCmtILeESKwIUu+QqBy82DIDAfBgNVHSMEGDAWgBRrOpiL+fJTidrgrbIy
Hgkf6Ko7dDAiBgNVHREEGzAZgRdkZW1lbEBhbnQudW5pLWJyZW1lbi5kZTCBjQYDVR0fBIGF
MIGCMD+gPaA7hjlodHRwOi8vY2RwMS5wY2EuZGZuLmRlL2Rmbi1jYS1nbG9iYWwtZzIvcHVi
L2NybC9jYWNybC5jcmwwP6A9oDuGOWh0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvZGZuLWNhLWds
b2JhbC1nMi9wdWIvY3JsL2NhY3JsLmNybDCB2wYIKwYBBQUHAQEEgc4wgcswMwYIKwYBBQUH
MAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1TZXJ2ZXIvT0NTUDBJBggrBgEFBQcw
AoY9aHR0cDovL2NkcDEucGNhLmRmbi5kZS9kZm4tY2EtZ2xvYmFsLWcyL3B1Yi9jYWNlcnQv
Y2FjZXJ0LmNydDBJBggrBgEFBQcwAoY9aHR0cDovL2NkcDIucGNhLmRmbi5kZS9kZm4tY2Et
Z2xvYmFsLWcyL3B1Yi9jYWNlcnQvY2FjZXJ0LmNydDANBgkqhkiG9w0BAQsFAAOCAQEAcFco
hB8HTgETnX2eBmEF49U2ECKsg/u/NRogUPziHtAEH7JhmQ31gmmV+E7bVDPKHtljckl1aaDZ
1umf0RiOsxPLTgypvjYMfUTZ+dXMwxwxw1tkXrHvHiwiFCkFVDY9uXDdcXgMDLO2WvF8yHsk
2Hz0IZqDvHK+aL85fDWl33DcI2FYxg3InEboy7RrV5pBps3MlDy8cyn2B2WJmOe0kxuND8sh
2TRhyaO9eo8YyyFDNHMBoFi0V4KKBc1cfJP6FgcWmEki0SQIzz0LcK/MGpBtOI360idOL7n7
HcTMrVPLviBrWp/F3DGRyZZxnzVCtg2h41pk9oacM4BXWJFjxTGCBSswggUnAgEBMIGeMIGN
MQswCQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERl
dXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYD
VQQDDBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBAgwm72M+Zb9jcHYbNC8wDQYJYIZI
AWUDBAIDBQCgggJdMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8X
DTIyMDkwNzA5NDUwN1owTwYJKoZIhvcNAQkEMUIEQDZ3FUXnE2J81IKOwF0QPqd44d4Fz/ra
4TjVyLm19RZMoH1QOm2qBEToeCmtWd/HyeK5M2c7YUW1fcYKHrikhi8wbAYJKoZIhvcNAQkP
MV8wXTALBglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA4GCCqGSIb3DQMC
AgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0DAgIBKDCBrwYJKwYBBAGC
NxAEMYGhMIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVy
dW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdE
Rk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBAgwm72M+Zb9j
cHYbNC8wgbEGCyqGSIb3DQEJEAILMYGhoIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8
VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVz
IGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJ
c3N1aW5nIENBAgwm72M+Zb9jcHYbNC8wDQYJKoZIhvcNAQEBBQAEggIAnXg16PSZtqWV5eD9
CZK7z35zOU+Fq2Y1EtQtQ1Rq4Cs214Bf+tbAyKK7Ykf1juNxMCh57Vfrld311K2Yzv2ihC+0
JOUBdlKWPSmRLb5ZyAAlmtpNkKqDtyQXmNxtcWl406hBsvxXC6nfVY7qdUSVpCRZ1Tbu3OVp
U3Dr2hvISZJ8LCm3NcCaq+TuAOj0bzImWfPt7QHGJj/Al4mNqToHrlGqDTAmLvPX/4ewxMao
O4u4g6kMgx369DQ3QsaDT3+E2+oOzzyTMXlCViNCiEHPlCycyY0bTj8+UJFWU0JBaLnA1zkl
PlCf6dFsPiCv2syo6RqUMsGFXMt0gyhIhnJaxCpSGe/wZOX69p954De0aTasjP1dQ4RZj0Y2
DhvvgOHUCl46KLReYsL0c8sWebl5yhPFyhoZr5OfFKZhaapkj8Nbr6cVXlyBlUs9tpO1AXk6
kSuwPEbZ5w938A/Ces5FPRBP8lGaf0mSq0oXQ2RddM4o/Mo2kkSBkYo+bhJ46D+33aDFQIMt
NlRYZ8Zq1CMmRdhbwjmVLQsLBe+UdQ+TlTVvHZ6bIZeVcTVBVbXIApsDTgyQiZAyEW2gzJD7
QTCJeRvDziJIY+3Sc5/HZEwtLUoz8Cz6ULfWi9EujV6YSrQ11xQr1kFYV0szozBzqcKmMY9S
1KPyIhNbPwiIWi1JnysAAAAAAAA=

--------------ms060704060509070601050206--

--===============6265528475530481613==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6265528475530481613==--
