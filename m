Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CAECD5B0AAA
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 18:53:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8FEBB385C67
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 12:53:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662569606; bh=dRDVw1sMLfnF4pIkRyJfUeLQFm1D1lKSD8wWGOn1P6g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FlyNF3Y+XtLpS/cIyH3nRPnM/Bq3tb0s3TXR0nIQFB095QtJI8SrD4csgZA27fgQK
	 VJLNDpkAR8nPWBCALX1OyDRLXWd9++N0Tda6HArgyZ4uCFs6XHBFlh3lI9cW0plSpj
	 STeHTVQ6XAOy7ZX4977Qi9qiQoKIac5kLDksfQBZUaiHzK+OjHoZKGzaKpm3fdwJyz
	 3fweEy1ID/KPcXjVl7Ppb/UaJk+2y/7SIzQKDme+fVmYSSDAYlDbM4gjXHabjDKBiN
	 lID6e6quxZ6woFfOOhLbTU6qoawTJBZ6cKJ5ixPyCl6KpxZAZYknFjr4RsvYmtsUJl
	 hUsP5MAAbCPzw==
Received: from EUR03-VE1-obe.outbound.protection.outlook.com (mail-eopbgr50105.outbound.protection.outlook.com [40.107.5.105])
	by mm2.emwd.com (Postfix) with ESMTPS id E6D723858B5
	for <usrp-users@lists.ettus.com>; Wed,  7 Sep 2022 12:51:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=antunibremen.onmicrosoft.com header.i=@antunibremen.onmicrosoft.com header.b="ZuKnUtoB";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kBwvg7GacPvFhCQQ2IEWEg/6/RVx23r7vuARWmePEy2j8X413bjTd7eQHyVXM3nCxjYBEhD/7d81u/bZpgctK1rOsfar5HkDNHzjDIH97JeZfqc7hjrv17xqTQW8WWf2qJht3ME/vk2wL2v2zNa3xzqlpi7c/Ir2X6/do3UEboIf7piGFNbpAx2xzSbuzjXmD+z47zTb0ANt/1KgR6Jo3esJxDFuqoMB7135/NzpJ29IVdYy+wvpqVEiOmTMb5WZb6vD8ClMRm6C48COGynlN8Oupgd9DiVuakVNgzup1iDMCsjJrEATWk+lKlbhTpEHiRgskoxgJEjzkeXYCy2j+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wW03/yrhUyotwocDzM27UGdVx6904h8h6LWavyXjfvY=;
 b=Vbbz27sRIBOGew2/eX4CwMP/dL+MTq22lh0x8X8B/7Ncmd9zEZ9qJM5OzCkkuuq6Ywybq5AHCva8Ytk88XzVH+/GsAQMh8z3GvD3p/UqXtFgQvJDKE6SS0V08KA3+CxTvz/CwbAGJY5lpd0VzrbXg1b07OY2s9R5YNvHDB10JVecjfZlj2HvzDECZ9QaA1UkPfaFXy7igEoO/JEUiwnIewb8OsclvPmihoNBwSJMmjNA9lS1wy2bp0qfV5XacFhQ4kFPrelU1hgWQhsRpl4QJFiZyzmGY/2PzGp/yxgPto1xTXhuw9c61NiBTt1aYYyIsOD07+ewv/PGiZp7v9Pupw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wW03/yrhUyotwocDzM27UGdVx6904h8h6LWavyXjfvY=;
 b=ZuKnUtoBsqbCrmDU27LM4GWIJFZTnPJKCB9wVNojpN2epHk99clh0gmcVgjU7AttOj4d2Rm8IpUGDjUd15YQX3OUOMzGJxUBODED0QV4eNa2TiQ9wgAi6Ii1LnkTmVGYL+HJIZoFDow50fgV6ukVWEV3Th1c8vgdmyx5amt9wj8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ant.uni-bremen.de;
Received: from AM8P250MB0294.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:329::7)
 by AS2P250MB1013.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:597::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.12; Wed, 7 Sep
 2022 16:51:13 +0000
Received: from AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 ([fe80::70a8:534:86b:7078]) by AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 ([fe80::70a8:534:86b:7078%9]) with mapi id 15.20.5588.014; Wed, 7 Sep 2022
 16:51:13 +0000
Message-ID: <3500c1b7-7bd7-81da-9823-2b20d9086ab3@ant.uni-bremen.de>
Date: Wed, 7 Sep 2022 18:51:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <1Hm1rldjLwi6DwGdCNSyE1y532Znn4wDTXq11ctA@lists.ettus.com>
 <CH0PR01MB7050A6321912A3A8F6D8DF2AB5419@CH0PR01MB7050.prod.exchangelabs.com>
From: Johannes Demel <demel@ant.uni-bremen.de>
In-Reply-To: <CH0PR01MB7050A6321912A3A8F6D8DF2AB5419@CH0PR01MB7050.prod.exchangelabs.com>
X-ClientProxiedBy: AM4P190CA0003.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:200:56::13) To AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:329::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d598d01f-15be-46ed-88c2-08da90f12c37
X-MS-TrafficTypeDiagnostic: AS2P250MB1013:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	V6B8GKdraTncy2M6WOBs6v1Lrq6CsX8zK+K+7124dVyuPRDLxQL48qnNsH9DoCSGCamcbHp4L8pcP/+upEi8IFauQhhuiBR0awXBUJhvo2rhxcwhaY7qIgCWKdJ3niDoSap/Rj0qxV6XtS1GSO8JOJv1cJrD8DYmkPP1b+l/yYylB59d+Ol5vcEcmzP8DCU/1GUr3e7N5C21uNeOTahJAESB49weQGIiVXpjreMo4X6NKyAOq9vx5DeHNLi6AveqmlQZCrWp8qOTEs703r8bI/09qUKkelEQZ6CEVxnbo50gh3GPQOc46asswGuK6smvIeL6ZEWVlhutT/EF5kb/k/zFl+jqAuWxNlI0uRocJ0KpAVkUXmWWIjf1kF1+/jO6RLAoBb4FRUYHvBY2FOBWISA16V2XKKcr60hPPAo2evKkTYDpctTmlpATnFSEtreu4gogpPw2BUBwhXSt6efQO8iNrHt50+xa+WZso5b6eKDe6IbpTMWx+hycHZ5HCTxoUUCED6ZiVKOwCpuo4kLPLcaPpHhfk8mYGsGKYaR7IoVKw2svHXI1JN0/jUxqaDnNnK1W7PjF11j1muOx2xv2XLmxmHqtEWZ8Tceck7wq/BhDHacNy76IFEc1TWYVHlwmgo0M3TSTngZX2xZq4Dt8DTWE8AHlwHIS6WJHh8A7cQdQSFNM38imzQDCllNtcoAKwVI1/mBkoqhQIFqpYRuR1RF3avbhk86tNR7ENQAyuWTfQN51H0Qbtac6eUs2aKkgdyUglhUMmu5iIke9Knt4AdIZADu4aBnksLxHtYdy/4qY+ZTprhDUwt5tcZqhazSj6x2ykbEtz7mrWEpBGWkYtL72QF1WydcixHPO1Opy7eU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8P250MB0294.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(136003)(396003)(39840400004)(346002)(376002)(366004)(38100700002)(8676002)(786003)(316002)(66946007)(66556008)(66476007)(38350700002)(6916009)(2906002)(2616005)(8936002)(235185007)(5660300002)(186003)(41320700001)(83380400001)(6486002)(52116002)(6512007)(6506007)(478600001)(26005)(53546011)(41300700001)(31686004)(86362001)(33964004)(31696002)(21314003)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b3ordEJWdzJOLzU4YUxZQ1JIV1JweTlQeUF2dFI4MzkxQ3lnTldsRS9OZlp1?=
 =?utf-8?B?d21ac0J0Qkxia2VDc1ZZSFhyUFlQcGJuZ2tadk91SWwxSkt0OC9oM2lId3pV?=
 =?utf-8?B?ZUNxV043L2gvOWNDbk9yb1RRWHhieW5QVk9jWmM0eHF6T2s4SmdockpOZ1JI?=
 =?utf-8?B?eUpWMlo3dUJEbXR2ZlRvRWdabSt6NDZ3S25mVDBwZUJhV1NUaWpTMmdUQyto?=
 =?utf-8?B?VnljRWZaR1BCQlgzaG1IMENRQndwWXFuZG9aaVcwTTBZOHJrR3lKSzNMSzlr?=
 =?utf-8?B?NmtqWXpiSDRZdzFlZGZKZmRNellHcklEeUpCYURGR1oySUg5YzdsWnFaWFZp?=
 =?utf-8?B?MTFUc1dhd0E5czZYSFE1S0hJaU9zU2RFbGZPNmo1WWxGSDNoUStqUks4SDNQ?=
 =?utf-8?B?NkZqaDlzdHZhRjVIV3Z3ZlN5cmtMaUdDOUFWaFhocGF4V1U3TWlFdFczUk9P?=
 =?utf-8?B?UmQ1T0RyUmJVMUlYaE9sQ05OWjdOb2FNZ2FkZTByWHlySkRTS09DcGxFemdK?=
 =?utf-8?B?VjhNNnlLc2FQUG5EY3BOL2JQaTVEblo1OUZid005alRyOEc2c3RUcCtqVzNB?=
 =?utf-8?B?Mi9YbWFGM1FTVjM2YlY3RzVSay85WW9nYWpGL01JMk5rS2ozQi9EaTYwaGFT?=
 =?utf-8?B?REdEcmxtYmZUeVNxMDVHVUtYMkllbnd0RGRUN2tmYXNSalp5UTdHYlBsaEo1?=
 =?utf-8?B?ejB0dS84WkNGMkhxZnozdmo1aldJOVp4am5qZEZ4bGtzYXIzYlcrdVJDOWY2?=
 =?utf-8?B?SS9PT1Z0TDREdWsyOTdDYlZxN0FyZ2poRjVKa3pnRnBLNit2aEdPN1BkSFRj?=
 =?utf-8?B?eEpvZE9vcHhPVjQzM0RZUGVCdlM5OXBDeFMrbVorVEZFSXBkRzVDLzNZdG14?=
 =?utf-8?B?dzk5SjJWSDRTdWhRSUtubkdjWGg1ajIycnVBSTBwRHJuckRiQVRrdjF0NUdH?=
 =?utf-8?B?dElMNE94TGNNendTT0ZGd2poZjN1RlVkTFIzM1g2b3NDOGM3WWVGeXBjMlVz?=
 =?utf-8?B?eUF0RzlKeERxTDFSTXVyZEFveEpheU1xK0dRWThNQnVwV3FsVjZ2L3drVkYz?=
 =?utf-8?B?V2xFSGNmQXQyeFc2QXpKWGJVaFpQYXQ5S3lhaEdqeEpRSnZoRHN1UXU4MGZK?=
 =?utf-8?B?M3laeUtQVjRZV0Zoc3lQM1R1ZURtRnBUWjJNRVNqUWlOYmE3aDhBeU4xV0Yz?=
 =?utf-8?B?Ymh0dDA4U2VhVUMyU3VHc3BkS2VYaWFkQ1lYWDMrdkpUU1BOVHVQWk0zL1ls?=
 =?utf-8?B?aURjVTFDeGxzbU0wTDZxLzJqUGdwbStPZ0pCbEtuZ0RnZ2xJYi9DdFg4d1R3?=
 =?utf-8?B?a2c0KytKVGZmQUdMOTFhNm5PZVc2cFk5ZUtSTFplZlM1aFJkQUw2Z0JuSkdW?=
 =?utf-8?B?S2NQd2IwMUFLTGJORHhBQy9JOWNRdDJmY2tjSEdueVlaVlhqMWtEZVlHWml0?=
 =?utf-8?B?Tm85ZlBYMzllWEpRQkZOMEtackZVR3VwNkRNMFdCcFU0VXlkWlZkV2s4Q29s?=
 =?utf-8?B?YVlCZitBcWVkUTk1NWloTWQ1NHNwV1hQemJSZVdQUGFqWXNaaC8vVW5TMlpV?=
 =?utf-8?B?Q243M0l4bEtYdnVNMG0zV3VpbkRGZFE4cmhQYTNYTVUyRk9TYW5NZHdwVDNB?=
 =?utf-8?B?eVJ2RzdQQ0h2Y1FSNy91eStEbUt6UVYrcHZXOGl3dzJYaFhsR1RzUEFqUmtX?=
 =?utf-8?B?Rm1aZW1XN3JHVldkWmt6LzNhZVpJZ3F2UTZxcC9qdFMya3Q3N0k2cEZzTktk?=
 =?utf-8?B?VHBJV2NicFdZeGs3OTlNZXBjL2lXNXlNN0RWcG5ia2QwYk5QOVkyc0VOaTFw?=
 =?utf-8?B?NjdXcTZGU3k3cHVIandQckUvZ01rdmRuNHc5UVJ5VXVpTU1VTXhZUEcvM1o4?=
 =?utf-8?B?MnY0bWROTUNXWkRHL3BuWTRjdkZ3T3AzcE5VRzJyNFlITk93ZVorQzFrakZx?=
 =?utf-8?B?enZrQzBma29PUGRRWFdDZHRDd3dCY3YreGxNYVNURFAzMDNMSHBzbUttZ1Bi?=
 =?utf-8?B?ZThmalRwTE4yNUxOc3FOZmtzaFo3enllNy9BdFZpc3kzbnVqSERKVXhtc3dx?=
 =?utf-8?B?NnVRU1RMNjFRa1RTYW5YUGVzc3pBY3JxdHVEbkEwY1lKNE9yT1daVkt1bU9y?=
 =?utf-8?B?WXBtSkVqRUxtR3NoMkdLQmU2U05xa0tzU2JGcXFKZmRqalhicVlIeFdrL1Nq?=
 =?utf-8?B?anc9PQ==?=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: d598d01f-15be-46ed-88c2-08da90f12c37
X-MS-Exchange-CrossTenant-AuthSource: AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2022 16:51:13.0951
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZF9LB0eYA2aFjW4skampZkVv7LWOYaBYw6TbPfVTij3oAiaNhmkupnvuTcDZTfnz1ej/1P7QcWyqru+3EmWk8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2P250MB1013
Message-ID-Hash: IY6BEGO4MFYZSGO76BN6XUUY5STPPHEA
X-Message-ID-Hash: IY6BEGO4MFYZSGO76BN6XUUY5STPPHEA
X-MailFrom: demel@ant.uni-bremen.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [External] Re: B210 reporting U/O on Ubuntu 22.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IY6BEGO4MFYZSGO76BN6XUUY5STPPHEA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5202262440626682750=="

--===============5202262440626682750==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-512; boundary="------------ms010203090509030309010002"

--------------ms010203090509030309010002
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi all,

thanks for your suggestions.

A few more details:
- Ryzen 5900X CPU
- UHD reports USB 3. With USB2 it would probably fail above ~8MSps.
- Ubuntu 22.04 with GCC 11.2, Python3.10

I tried 2TX streams alone at 30.72MSps. works. check.
I tried 2RX streams alone at 30.72MSps. works. check.

I tried configurations with
- num_recv_frames=3Dnum_send_frames=3D256
- num_recv_frames=3Dnum_send_frames=3D512
Doesn't help.

The error pattern looks like this:
UUUUUUUUO[D00:00:07.60063828] Detected Rx sequence error.

I tried
- send_frame_size=3Drecv_frame_size=3D8000
also in conjuntion with the num_xxx_frames configurations. But that=20
didn't help either.

I will try to use UHD 4.1 on that machine. If that works, I'll just=20
switch back. Otherwise, I'd get suspicious of Ubuntu and the hardware.

Cheers
Johannes

On 07.09.22 17:17, McKnight, Ryan wrote:
> I have found after much trial and error that adding the arguments=20
> =E2=80=9Crecv_frame_size=3D8000,num_recv_frames=3D512=E2=80=9D to the d=
evice string allows=20
> for me to sample at the full 56 Msps rate on the B series devices=20
> without any overruns (tested using UHD 4.2.0.1 on both Debian 11 and=20
> Arch Linux on various computers). I haven=E2=80=99t tried transmitting =
at all=20
> though so not sure if there are better arguments for that. One=20
> additional thing to double check for is that your device is actually=20
> connecting using USB 3.0, I have found a surprising amount of bad USB3=20
> cables that would only link up at USB2 speeds (check using =E2=80=9Csud=
o lsusb=20
> -tv=E2=80=9D after running uhd_usrp_probe to load firmware onto the dev=
ice,=20
> should show speed of 5000M).
>=20
> *From:* perper@o2.pl <perper@o2.pl>
> *Sent:* Wednesday, September 7, 2022 10:31 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [External] [USRP-users] Re: B210 reporting U/O on Ubuntu 22.=
04
>=20
> *Use caution with links and attachments.*
>=20
> perper@o2.pl <mailto:perper@o2.pl> wrote:
>=20
>     perper@o2.pl <mailto:perper@o2.pl> wrote:
>=20
>         Hi,
>=20
>         I can only confirm that I see the same result: 24MHz is working=
,
>         starting from about 24.5MHz there=E2=80=99s a lot of underruns.
>=20
>         My CPU: AMD Ryzen Threadripper 2990WX, 128GB RAM, motherboard
>         Asus X399.
>=20
>     =E2=80=A6 and the system is Ubuntu 20.04 with UHD 4.2.0.1.
>=20
> But with UHD 4.1.0.6 there situation is exactly the same (not working=20
> for >=3D 24.5M), so if you=E2=80=99ve got it somewhere working it would=
 be worth=20
> sharing:
> - your exact UHD revision,
> - specs of your PC.
>=20
> Best Regards,
> Piotr Krysik
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------ms010203090509030309010002
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
DTIyMDkwNzE2NTExMVowTwYJKoZIhvcNAQkEMUIEQHMU/E8fEKY+ITb0lB7qX4NFo4Xep/Am
lMnfov0i5DBcl8hrrWWr7w3j3gQJMCBjipq4xiglt33qw9X9M4E3OQcwbAYJKoZIhvcNAQkP
MV8wXTALBglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA4GCCqGSIb3DQMC
AgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0DAgIBKDCBrwYJKwYBBAGC
NxAEMYGhMIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVy
dW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdE
Rk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBAgwm72M+Zb9j
cHYbNC8wgbEGCyqGSIb3DQEJEAILMYGhoIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8
VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVz
IGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJ
c3N1aW5nIENBAgwm72M+Zb9jcHYbNC8wDQYJKoZIhvcNAQEBBQAEggIATU8hfY6+Vr4RDzd2
FX+apH4MtbFjvRN5v0Wl0wpj0Reej+WCmDza+f+mvVQaPVQIr8PfpJUyKe5iT8419GRUWWdz
PRZAFQrEauLMNDPSyGD9g1uNtHib/bTNzYuQ2aWH/9grxTKL7hvTgFvmLZNv9CAT3a3O446V
thkVl2wLbP/mFFJDt5ljZqe4PCCo4W25Fw0m63w8e82o+avUeTEv+wZ+2Ig0+ihNq2TOA2K5
2iwL/zcl8LDIsGNhPZEUi2Pip4jforwVE0zNXh9/tczatgP8FZthRou+bzZVFbs87tz6OxDC
ODFMEXwJ20+7eQhhgLBx/q6/50mkNjMSyg/IOj+g6cQI2Y/9D+tT7jAibBf+vCH1XMfn7KHp
BpnuaCweILQvSUvJbaUErGCGtuW0pXA7e45xTgbgLt9g/3KcMlV5geaw/UNn8GGHHJbM/LiO
YCRkWKQLnzngqILzCFwEGnJ0nD6vtzEnQVQ1OqDqGbfkCae3F7O6n8avVZn51N2tH6W9XDeC
DwzaielolKxmI8KxxUBvVcr2m+OooPviwczBZBaCLAyMLLo/c9Gqm4wVUHdKuzSopQ1N5izz
Bh7R8XX/QA4/zcf1zDVkE6/HK8zd3g3pATzLkZ13L8a/YISgzOWCRtTHwPKGY50z8OrBj6ZF
nsPx2KnwnHbDMxspiNoAAAAAAAA=

--------------ms010203090509030309010002--

--===============5202262440626682750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5202262440626682750==--
