Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EB35B34AB
	for <lists+usrp-users@lfdr.de>; Fri,  9 Sep 2022 11:57:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D550A383EA3
	for <lists+usrp-users@lfdr.de>; Fri,  9 Sep 2022 05:57:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662717447; bh=ygnKKGsaRbWGVXZNO0hZJXy7n7l29LQeN2LXUpGELzY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=I3Co4E18Kufx1jAaJ13uNry+Luxl1t4YwwjrjfETtJpF6+YVhbm2mzFyjQyC399ZK
	 OLkQUPfcVXz8zvOPNA0Td+a83Cz5M8bY9QPfTkZkrHsLOvkHgBRPkA8KqUo16KXk60
	 IQbevkvlCozY37V68lHPDeV5oAOkk5+jTKjTXgKaZ71i8o92SmWKBAmAM88SkSwcdL
	 tbD5Gh8bEBEn7EzKjWCJwy/HMPu6cS6EwecQ+ndL6pDEoG6vyNvKHCHsQ0gnKTXwef
	 PXmXPTzF1EV3EALJzhiv+HVjz2t4fsxmz+93edVUAjoFPo8IlpPz25mixlSKL6F3lf
	 fs1pp0Bblrs2g==
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80130.outbound.protection.outlook.com [40.107.8.130])
	by mm2.emwd.com (Postfix) with ESMTPS id F2308383E7A
	for <usrp-users@lists.ettus.com>; Fri,  9 Sep 2022 05:55:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=antunibremen.onmicrosoft.com header.i=@antunibremen.onmicrosoft.com header.b="ZC60Yd1Q";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ofX0q02vxCoKM/EQyr+qHWOsteh/5MqphuDB3mWhRlq2sbPqxfhq9s6y+kMiqnvCAPtEmIJkNj+ke7+AVUmaUqp6yLy4E8Av0AScNAlGdl7ynajhd+wMGFyRmAcD2mXpRkDk8TdmBzhSvlCmCqWIW00Sc/0NMyL9OWUM9mGfPaO9UesZfjxZRBHTULgm9bSImw1C1+Ji4M8On1wKxqBOQ1OTMskE9ZhUa6QAVKXX8mPfZOHofhq6bL7hknrzPKI2/jDoh4FhzWvjhrPD/ZpxYsbhA3U1Lbpcme+DbAg7DT62KDvQBFjV0MtRDgCPZiCMe+wyEEj+AHsF0nL0KXQh3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jvARPrmg+fuBWbnUtrtPQjnEDNUbLsF5jselgaKCNRI=;
 b=D4nvJRg3WrMwYnePRTrX/hQKXTfTDwDf7rkQUrIIe4imF3mz0BGrpY8Z/XcUTQXntXcFRaYoXQEKmq9LlhOpwVavSw2oj2NzTsiZomzLjH0OzQIp4lDA0TuBmpQpKKDY1chfZF5klGh5k/XcoZkcvkj4aPWO9w+gxmY2RwxrxcVmuAaf/Txu75mPTbbixuxFEfse4hF86OH5Jnb3XXCuTcL1I1pAuaN8bprCsBUfw2siGFJ2ZD6DVykfZVygk4c72J4GDxIddWgXFUK/+GoJGDxduNLuDTGK6KCXoTNJE7CqQCIjV41hmhQaksnDFkmPDiRnmyGkqUuHyc9Kosoicw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jvARPrmg+fuBWbnUtrtPQjnEDNUbLsF5jselgaKCNRI=;
 b=ZC60Yd1QTxhrfTCVt5rQYaAvlxFek2XyaNbjJoMe56KmWz+Hae8rdDilL9vlKqbU3dgHIkM1XNAf1kiee2yUrVh5Z/+Z0orR+W43ifbOjJCdvELunlnEUAUQwnHhwPTM9dc3+ns/UdPJTkNAV/VCr61EAcfD/2zzd0/v07DCo6g=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ant.uni-bremen.de;
Received: from AM8P250MB0294.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:329::7)
 by PR3P250MB0178.EURP250.PROD.OUTLOOK.COM (2603:10a6:102:179::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.12; Fri, 9 Sep
 2022 09:55:38 +0000
Received: from AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 ([fe80::70a8:534:86b:7078]) by AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 ([fe80::70a8:534:86b:7078%9]) with mapi id 15.20.5588.014; Fri, 9 Sep 2022
 09:55:38 +0000
Message-ID: <71a13fb1-9c46-b596-caa6-397e672d71f4@ant.uni-bremen.de>
Date: Fri, 9 Sep 2022 11:55:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MNPagOuctsByX8yExSc0I7PRDFDuhS7atXUyjJPnE@lists.ettus.com>
From: Johannes Demel <demel@ant.uni-bremen.de>
In-Reply-To: <MNPagOuctsByX8yExSc0I7PRDFDuhS7atXUyjJPnE@lists.ettus.com>
X-ClientProxiedBy: FR3P281CA0176.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a0::11) To AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:329::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 28f7fba0-d439-4e8d-db50-08da92497302
X-MS-TrafficTypeDiagnostic: PR3P250MB0178:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	bj/tcL/kGN03PM62z9F6IvpWzV40UhfcIujU2/nZww4Q/u3NZOM9O+BjQlryyP46PKI6du/UEwyn4FreWWUUXJmauERNlTU/64tHilfzNIRP6uZLgjXHIaO1YQZOUJWT32CutnRmNhTRavp6nyYd/vhzz7htAdENt6TjFkmxv/bo5x+XGhxVIcsSOE/avI5YyQ0Al6OACyOE9GN9eyI66xjn+/DJ/IRL8bV/DaeT48IX6h7aVHG8oJKWuoGxW7eYC/WVfebzSJQiMFP87kPmaF7ceFX7DuDhkxHCdveNaCgc+jPOH/b4SZXn7bs9YVEuhgc6se1VkoXiz5QmnXLexY5nzd47TNZHsGQpAiI1y7p156Tg7lQ3Bst3MWZ0+7Xk113jg5up+cgvFUpkX5MQbbF7aYrjMgDqrWuOa5yBIKLKuCJKsQKSk98CdNFMX/vDCcHGTWlHH44k6CcFTdQjyii6alMeztIHTW9ikPtp27F+Komuv8ygdHa//+VsUjadXquRq2rQr9vy0o0yFRTccZ/X3Odo80wD0ZY+8bvtgHDfHsMNru7iFvZoXTDrEoWqiuZfFCGBke0E2pP4MAvIURQF6LWR5p7RRQ3lM/wC7pCrxj7JykFSmyxHgAu4S3vYNvXuCoH/dbLytlK6EaXXvOph5oXRaCpmkohvT12bhRTffuVA3rUY8EKlZEZjhLiG1kuArJ7YzybSwGCgqBNI2IaJZXNBBUumPtlr6NcYqCujDjGmcZ0ZEOBnZZoZHhS4Q02B+yzroJJ+fcoW1ZqS9JKqEEHrV9hhnfVYzP1Sa3z9QqOemWRs4QrLn7nfQN5M3Uz+LKoRWNHIH+mTZRe6/5/V8KDuiJ5mdEZKc1hlUXc=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8P250MB0294.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(39830400003)(376002)(366004)(136003)(346002)(396003)(786003)(38100700002)(66946007)(66476007)(8676002)(66556008)(6916009)(316002)(2616005)(2906002)(235185007)(53546011)(6512007)(41320700001)(41300700001)(33964004)(186003)(31686004)(8936002)(5660300002)(478600001)(83380400001)(6486002)(966005)(52116002)(31696002)(86362001)(6506007)(21314003)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UWVpMzQ0MFNHbDZVR0FBREppY1BucnpBK2tiaXZWbU5zUi9YNmNROEJkZHpP?=
 =?utf-8?B?cVFYV1ROZ0hXak05R0ljQVVUOVdxb1YySFh3ZVcvcVJYK0ppWmt5eUJyR0kz?=
 =?utf-8?B?c0w3aTM0emZtaWlsaTdtTmFaT05vbHlGQkVKbTNBa2M3YXozNmRlanp0YnQw?=
 =?utf-8?B?Njh4R1NWdWJQdTBwMFpGSHkyOVg0a0ljS1Y5dGVPT2FGYVEyK0xYdHJFcTQ4?=
 =?utf-8?B?Wm5aYktkdlh5Q0tXa2ppcU9hNGZuRFR6SEZ5ekV0bUFka2VhemM4VU9lM0Fj?=
 =?utf-8?B?L0lkUURObktid0Q0bUd1SU5FZktMRlBBdC9yRGZqYkE1Mi8vU0pGZFN3NFFO?=
 =?utf-8?B?dEFYcFlycUkvU3hueXdwMVR1NGxobVoyM21MQ1BLNi9wOWdHeXY3VmdSVjdm?=
 =?utf-8?B?RGh4VGRBblBvRnhRQW5WWncvL0YrYWQ5TUkzODZPZE5QMTlHYzNSbGFLRnY2?=
 =?utf-8?B?SkJKN0JTMXRuV0c3MVJ5V09yczdhcCtQNUJqQURaZEtWajRkTFJKWXVzdVB4?=
 =?utf-8?B?T3cvbUl3QUx2WWtCUzdQV1E2Z2Q5LzQ2UjZwMHkzVlYvalIwNjJmYUdJSnUy?=
 =?utf-8?B?VzdhYS9yNVU4T2lKOFNpbFJWVVZMcDBnV2ZENjBFTFZRL3BSR05BYldKUnZz?=
 =?utf-8?B?cmFYUUFUTmR5UmF6M0J0RDF0bGsyUkNQWTg0eTNMTDg5OVBWM0N5SSsxZ1NE?=
 =?utf-8?B?SGJnTE5vc2FTRXlLQjlQVjc2YkxNTkNLY1cvTlJEUXVFVGViVE9PSFhTa0Z3?=
 =?utf-8?B?L1JtT3pwNm84czh5Yi9sTzNtZXlUaVY3Z2J5V0tSV0U5TlIvY2c5ZkxSZEVo?=
 =?utf-8?B?dEFkb051bk1nRHhMRGhuUUkyekIyZENaS2pVZGNhRmp6OWhKNFkvaTNSblpi?=
 =?utf-8?B?R0VuU2x6amozbDZQc1E5ZmJtWllpNFVVdjl6c3Vlb3NsbHdDOHVIQUY2dWhB?=
 =?utf-8?B?NlhJYmwrK2N0b3hUelZUWVpLTTg4ODdSbFM4WFZkeXEzR3FRWkRlcG16RmZE?=
 =?utf-8?B?Q0dvcDYzdnEyL0ZDU1ZKTUFpZVZmazkzM1J2S2UrR1Yrb2w1T3lGRE0vS3BP?=
 =?utf-8?B?RjlhSmZCNTM5dDQ2ZkVVcnNodk51dGlDcnl0Z3NUNnN6aUc5ZXlHYXU0UWlM?=
 =?utf-8?B?Rjh6YW1hb2RIUjZIZFBDMWUyTVNDZG9LaHNZSlE5cWxZWVdMdXBsT1pHaURo?=
 =?utf-8?B?emxOMzEyaTNZT2JnTDF6bWtEZjhaNTF5dGhGWG1OZGd0bXkybmFEOFdsUGJ6?=
 =?utf-8?B?Tkd4aW8raXAyL3hTWUh0YitUdXE4WUI1TzBZWDN6djlHWmdFQVBOT1U1ZTNx?=
 =?utf-8?B?WU9WVTJPVnBsaEs5bXBOVFExRkZaY2x2clJ4bUlhY1Bid2QwWHJWQ1BSOXha?=
 =?utf-8?B?anluQTJRR3hqNlJ0U0FaZnltUTFDcHJ2Z2g2QStQcDl1ekhId1Y3WnBreFZE?=
 =?utf-8?B?V3NrK1BpKzNWWEJpSkZic0ZuTHBDVGYzaUJ4Wmt3bWZUTmtiSEpFUzRpTVRw?=
 =?utf-8?B?Y1ZHcUxJYVZUR1NrdTdjT1gvdE40UVFDclRxVVZHZEZRYmJIdWpMOWt6Qnd3?=
 =?utf-8?B?N1pIbWVHTW91ZDRUVlBMeGRTWUtYYURPWHV4TCsyOXFZTnpKRjFYemJBYm5J?=
 =?utf-8?B?Tnl1MTBLRGpON1J3SnZFWk9vckRibkVJbTE1VnFmenBoYk5taVFEalhncGo3?=
 =?utf-8?B?UlAxYy9NZzFCR1o3MTlYSFpBSUZSd3BkdXVhUXBNU3pGOENhUU50TWhWOHI3?=
 =?utf-8?B?K1Z2NlF4cWNneXM5U05aWUhVdllPcm5hZmpGbVVDZExIMTk1Mys3Wk90azVE?=
 =?utf-8?B?czlPdTFwdlRUVVJNeGdqckM2Qno2STBXU1RObng1bkwwTUQzVHhvdmI4eUFr?=
 =?utf-8?B?dmlURHBhd3ViMGNnR25Jdm5QZ1lDNlBVb3FJMDQwUEFpcjZ3TnRSb2o1VlE4?=
 =?utf-8?B?WCtibTBMbVJKVUJmZnVsREh2emtUQW05eTFWdE03V3U3KzFWbkJycDVJMk91?=
 =?utf-8?B?Z1hLaGxzSXZ1aVBSRHdYUGRyeDd3TTlJdVhXZ2VyLzJTU1o4QVkrQXBLSGdY?=
 =?utf-8?B?V051bE5QRnBheVNIaGJxVElCNENzZEx5a1JRYnY2bGxtUjVZMUVmWFM5eU85?=
 =?utf-8?B?VkNCcHlkOTVkVi9ldUcyQ1V0ZXNqZ1NETTdieXRETnpPa2lRM21tbXlkRkd6?=
 =?utf-8?B?K0haVjlTdWoyelFYVmZreU4vek8zNndqSFFYQ2VRTDhBcFY1RHlaQ3N4Kzhq?=
 =?utf-8?B?SVNrRExSeEhsSTMzVWZJQ3MxSTlRPT0=?=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 28f7fba0-d439-4e8d-db50-08da92497302
X-MS-Exchange-CrossTenant-AuthSource: AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2022 09:55:38.7431
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D4sGIlB23rJPzHltv5G3nrc/ogQ0vfBAbkB8FDKpcO+I6DJrj1B0xYFC2Hs+TI/5LN9Ssr4XCJ6VBMpX5JHKgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3P250MB0178
Message-ID-Hash: WKCIDGVYKOCAM2MSJE5BPTJAI7ZXZM5D
X-Message-ID-Hash: WKCIDGVYKOCAM2MSJE5BPTJAI7ZXZM5D
X-MailFrom: demel@ant.uni-bremen.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [External] Re: B210 reporting U/O on Ubuntu 22.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WKCIDGVYKOCAM2MSJE5BPTJAI7ZXZM5D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2364029412952511372=="

--===============2364029412952511372==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-512; boundary="------------ms040301010100080506090309"

--------------ms040301010100080506090309
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi all,

there's smth else going on. I tried the UHD-4.1 and UHD-4.1.0.6 branches=20
and all cause these errors. I will investigate this further.
I need to switch USRPs and hosts and see how the errors appear/disappear.

Cheers
Johannes

On 07.09.22 19:29, perper@o2.pl wrote:
> Johannes Demel wrote:
>=20
>     Hi all,
>=20
>     thanks for your suggestions.
>=20
>     A few more details:
>=20
>       *
>=20
>         Ryzen 5900X CPU
>=20
>       *
>=20
>         UHD reports USB 3. With USB2 it would probably fail above ~8MSp=
s.
>=20
>       *
>=20
>         Ubuntu 22.04 with GCC 11.2, Python3.10
>=20
>     I tried 2TX streams alone at 30.72MSps. works. check. I tried 2RX
>     streams alone at 30.72MSps. works. check.
>=20
>     I tried configurations with
>=20
>       *
>=20
>         num_recv_frames=3Dnum_send_frames=3D256
>=20
>       *
>=20
>         num_recv_frames=3Dnum_send_frames=3D512 Doesn't help.
>=20
>     The error pattern looks like this: UUUUUUUUO[D00:00:07.60063828]
>     Detected Rx sequence error.
>=20
>     I tried
>=20
>       *
>=20
>         send_frame_size=3Drecv_frame_size=3D8000 also in conjuntion wit=
h the
>         num_xxx_frames configurations. But that didn't help either.
>=20
>     I will try to use UHD 4.1 on that machine. If that works, I'll just
>     switch back. Otherwise, I'd get suspicious of Ubuntu and the hardwa=
re.
>=20
>     Cheers Johannes
>=20
>     On 07.09.22 17:17, McKnight, Ryan wrote:
>=20
>         I have found after much trial and error that adding the
>         arguments =E2=80=9Crecv_frame_size=3D8000,num_recv_frames=3D512=
=E2=80=9D to the
>         device string allows for me to sample at the full 56 Msps rate
>         on the B series devices without any overruns (tested using UHD
>         4.2.0.1 on both Debian 11 and Arch Linux on various computers).
>         I haven=E2=80=99t tried transmitting at all though so not sure =
if there
>         are better arguments for that. One additional thing to double
>         check for is that your device is actually connecting using USB
>         3.0, I have found a surprising amount of bad USB3 cables that
>         would only link up at USB2 speeds (check using =E2=80=9Csudo ls=
usb -tv=E2=80=9D
>         after running uhd_usrp_probe to load firmware onto the device,
>         should show speed of 5000M).
>=20
>         /From:/ perper@o2.pl perper@o2.pl <mailto:perper@o2.pl> /Sent:/
>         Wednesday, September 7, 2022 10:31 AM /To:/
>         usrp-users@lists.ettus.com /Subject:/ [External] [USRP-users]
>         Re: B210 reporting U/O on Ubuntu 22.04
>=20
>         /Use caution with links and attachments./
>=20
>         perper@o2.pl mailto:perper@o2.pl <mailto:perper@o2.pl> wrote:
>=20
>         |perper@o2.pl <mailto:perper@o2.pl> wrote: Hi, I can only
>         confirm that I see the same result: 24MHz is working, starting
>         from about 24.5MHz there=E2=80=99s a lot of underruns. My CPU: =
AMD Ryzen
>         Threadripper 2990WX, 128GB RAM, motherboard Asus X399. =E2=80=A6=
 and the
>         system is Ubuntu 20.04 with UHD 4.2.0.1.|
>=20
>         But with UHD 4.1.0.6 there situation is exactly the same (not
>         working for >=3D 24.5M), so if you=E2=80=99ve got it somewhere =
working it
>         would be worth sharing:
>=20
>           *
>=20
>             your exact UHD revision,
>=20
>           *
>=20
>             specs of your PC.
>=20
> If you could capture situation where it worked and stopped working on=20
> the same machine that would get you much closer to solving the issue.
>=20
> You could write a test and use it for automatic git bisect (git bisect=20
> run): https://lwn.net/Articles/317154/
>=20
> If it=E2=80=99s UHD fault this can show you first commit that worsened =
maximum=20
> transfer rate.
>=20
> Best Regards,
> Piotr Krysik
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------ms040301010100080506090309
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
DTIyMDkwOTA5NTUzN1owTwYJKoZIhvcNAQkEMUIEQEmW6e/YB1Q3csdjQ1Kbmdlz74pWWBMZ
M5htkjnFSKsX3hWo8KTxfvRqtZuPSgeI1Bcn0Z4DyZ+Ih0YS4sKdgccwbAYJKoZIhvcNAQkP
MV8wXTALBglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA4GCCqGSIb3DQMC
AgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0DAgIBKDCBrwYJKwYBBAGC
NxAEMYGhMIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVy
dW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdE
Rk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBAgwm72M+Zb9j
cHYbNC8wgbEGCyqGSIb3DQEJEAILMYGhoIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8
VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVz
IGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJ
c3N1aW5nIENBAgwm72M+Zb9jcHYbNC8wDQYJKoZIhvcNAQEBBQAEggIAHn9NvvfR4BcV237f
Z8IIknBkeYkJu8GBuhj66OKtwEvOUsdgR/3urrWKb5aV6g79ERm/p0zyk1HjGKUlwsqEsNfN
hu9Va+nLv90/jcBDboWrF3EN8ejIB0NrHihqCTkUSWygwiCuLTQAmqGyDFmJKrWg0hDD1JNC
IUgHshPG2Yx0+B0veT12XZ8djkQYh3Vsn/64kmFOThtGeVZ1CQ/8BfOFicsySNBq+SUblaoU
6XVhuWwnQvpsgUhquKQeCohxoVPjoaNZwqo06g1bNnaAJYohVXpVxUqkZO1PPuqE3x7HB8P9
lyiGz76TMTHY/4G2frqTDrQ0DVZDYGaK99wUHt3JhnBkZQqksiuR8jFqvHJhIlg2L7aGWfMp
pwF5bxkrEZmG/KDiwJwHMrj/QPwYgviVkii6gqKB3jot5KLW2NbP7K4LYWp5CamCty85hYBh
jtFVGwTxEQToA/YSOLwc4nkxQEoZ6l0VNTjG89NDHxZevs3f86kGTXmzuAfiuMTmU9a9ddfo
8ADUJSwxz34fMkw3joB08NfZOTnpDDd2ECjUVadyW0gtvTvXoJD4cgLERaWSho2CY7LIVAZm
cRiKfZtTRFAbbOfZgkFK53BfQ8dkgil+uxzt+w5vo4vKTCLH9ZkYq9UPSgbDjkbcZxpOVRWe
mqsOYGFX6VT+Q3eDiwIAAAAAAAA=

--------------ms040301010100080506090309--

--===============2364029412952511372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2364029412952511372==--
