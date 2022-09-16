Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB4C5BA807
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 10:19:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0FA3B381927
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 04:19:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663316359; bh=Q6k0hjeJ6tomM25MAItzebSdBDcwourdBaeCzz6geyM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mbnjZ1O+vYMZYEgYQCFgLfAKZZfn4nx2zuKXRxOfYmej2d6CT8/8J/DPuz1u12pa5
	 os0UDQOLNELogggpiSObglEqncf/Ch53tSqZFV4RFqNo3zKuZmiC9LYGjTqjAhvV3A
	 WwXlVK2CyPHixmfJew9DYvK/M90nz5UlzhHIABwMi4tusJ6kI/0ZwbINa8KBlKTlT+
	 8nSUSxliJqpJLhM+zKTmQZ0p674UViXt+8BK95ph8tqxCRW1tz3RDyYc3I9Rg2SLbJ
	 BDu9+5Lev/8YfsOaufthq+1I9YoZVhZjd+TyPN1xmdHrVCSU6KyuHayj7TxyelXaZc
	 Bhbry0dhmLf1w==
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-eopbgr140117.outbound.protection.outlook.com [40.107.14.117])
	by mm2.emwd.com (Postfix) with ESMTPS id AB7EB380C91
	for <usrp-users@lists.ettus.com>; Fri, 16 Sep 2022 04:18:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=antunibremen.onmicrosoft.com header.i=@antunibremen.onmicrosoft.com header.b="All/FAeM";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NLis5z+JjlnzTGUDMXNpWI79Bbc7RxWg4z0gzznVXuKL2EzR7QWgRCSwv8+cFXPSKqT4Xj9Wfk6LAAq0fETEtHuGAFYShbQrd/rOfDy+TaQihVoih/JNxrbLlGBwPJW6VXKyIZwL5QTyDVDg5le3fdjQ9SmnhPfAWuJIqC7hBgfpT2OmrIf8fnKMITTaasQ9rAPYHwGC874hZVLyfOSiCJ63uTmZqs8m+zyRCoDJ0CEN6cD3yXXeNrcaRIliTboSH1NrD7LHSCPmS5mV1Irg/gPQ5yCP5A3vwW+5mcdmngotBAvp+7yML6veW81mB8JWZBcEABG1vIh8Oha5UJ+s1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Te8BkQPF7aLXiLi4HwN1O+yB+GH1fXo9mvS1Wp9+ly0=;
 b=YsKYFEOuE6ubEjnC8478hf24021naDkA+GcTybT2h/Pp7fr9DMSTT5OVfl4Gll5v2Ls/L46oqR9lI29ZugiMVjsYPfSPTCWck61ygyR5C1hdau+xNgxzbeS323SmTonmEHKBarO62p/yR1aMjVoBdNc7zhPfxjNFiTC906KREdLamUQpwUtY23wu+bb6Qg5MSAmoS03v4ReDy/Ruv+HaJd+SQxJElxY0D5fW+asVLTeE1eUXYL54XMNb9HXTbHbNnMqDR3KD8PnLrFIchcL1I60Bzh9iTQVyHbYjuPTrDc8DPnq3VbXiz5jD9lEJlJcPTBIEbRexUyGgvCI8Gbb0kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Te8BkQPF7aLXiLi4HwN1O+yB+GH1fXo9mvS1Wp9+ly0=;
 b=All/FAeMMRP4t8sySIZPPHTfdU5JKJ0jbgTi6qw05GBLBdC4qsjJzYCDB5EVEJbWq3YAKhhePZHGsgxcoK0GVbJN+iLLzW+n3RPX3kf0iRlwv/7BiZiZxZ3yEpN3Penscl1jX7GbvQ7+3F3uVseKsftT/YzsBoIWe0j2P3Pa3o4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ant.uni-bremen.de;
Received: from AM8P250MB0294.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:329::7)
 by DB4P250MB0759.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:378::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Fri, 16 Sep
 2022 08:18:27 +0000
Received: from AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 ([fe80::485:5c30:44ad:20ef]) by AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 ([fe80::485:5c30:44ad:20ef%7]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 08:18:27 +0000
Message-ID: <54b2a3fa-1f0b-bdad-5a09-ab5c162e5037@ant.uni-bremen.de>
Date: Fri, 16 Sep 2022 10:18:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MNPagOuctsByX8yExSc0I7PRDFDuhS7atXUyjJPnE@lists.ettus.com>
 <71a13fb1-9c46-b596-caa6-397e672d71f4@ant.uni-bremen.de>
 <d5713f3e-aba2-69ee-cf38-7db901990d54@ant.uni-bremen.de>
From: Johannes Demel <demel@ant.uni-bremen.de>
In-Reply-To: <d5713f3e-aba2-69ee-cf38-7db901990d54@ant.uni-bremen.de>
X-ClientProxiedBy: AM6PR08CA0043.eurprd08.prod.outlook.com
 (2603:10a6:20b:c0::31) To AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:329::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8P250MB0294:EE_|DB4P250MB0759:EE_
X-MS-Office365-Filtering-Correlation-Id: adfd6fa6-7fad-41b5-9538-08da97bc081f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dRxAMNvWaR5DTcLvquMQ5nE4XZHHGmVm5TkEcDebMANf978ut+FtJ2Fuv7X1jokw9u2ZI0iQiv7xaZnXCqSLRPGDDcEg8GyV3kSaKyvPgng9976JlMd4WK5efbcIjc/7b4j62pQ0+47yPdLdoOO3lyffJomk/osfQBNZkmVSFDwXHkiLUhOb+efihm/1Id09/2pJe7axekfgXqtCZCkPE9zXARBdU+QZgZs62kDYBEdBAWQP9GlcDwUW1ACsqi+cYmYkpCM0uAmnYT34OTx1wPMJwaXOKiptkKDeRrL8kBV7rtwpPXBdPDtS83uGOtecDzOD10A/PM3dE7OmUy+keR6Mz+QLB8W5nAc9WrzJgMU4zKtLz+qp+fhRw4z5B87EpKZ/883ZZh8BbCorKo7GqPGzzHXEz5aYxY3Kx8O7Qz8D6gp8p7eDOifG2bsePvUfBlSDyMyeJjMsjKBnU4gSJgMPtFSP4onSfjk18vOsMBCikfdIEXTjMFVcgMRCQfekf1mPtqX5kSRGt2ek7bzPpDdGfObMUU6bc0TP9fX+TAevChkUMiO9I2ypZul2pi/5hidcUo55PBZy2aLFbiqYYuGNOtnQqUQWY9xCg7ai6MlX4CEuUpOOP8cEyadbhhDYfrtyGRbOlOg6lMyVeZYLe6k+trBx+lBcdlXDqIaSz+KFKlkR3wHeJ5x+/joyysT+zBmYJxclxVAspVfwtiI8EiWb75dmJaoSbN8i2QNJYFWmai9t61LKfFuVAaTu62Ta1S2gvF21ewmQh4v+S3TUZBYRUpvAL2U5cW8ppOYiyJyrcL/OrC5K26p4liVCMscZLbW8HynfxUsrMeHyf+SEVnkN33R0RiOUSvRQUPM14Jw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8P250MB0294.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(136003)(346002)(396003)(39830400003)(366004)(376002)(451199015)(38100700002)(5660300002)(8676002)(86362001)(8936002)(66556008)(33964004)(83380400001)(66476007)(2616005)(235185007)(31696002)(6486002)(316002)(186003)(52116002)(41300700001)(6512007)(966005)(6916009)(41320700001)(6506007)(2906002)(53546011)(786003)(31686004)(66946007)(478600001)(21314003)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?c2xiM1BadHBkcnVQcWp4K0hwVjh3WHc3N29tYmxlazVNZ3dxRVdrTXU1Vmdm?=
 =?utf-8?B?MHdHalNEVTdDQWxvckJUb0IyRjRQQWpXdkpTWWZUNVg0T3huWVJldzZuOU5X?=
 =?utf-8?B?REhHWndEMkUxNnFtQWtDZ2tRYmlWN2NSb3RxREszS211SUpOQ1huZDhiakdr?=
 =?utf-8?B?aytyRGx6YnovMCtNdFpTcUlrNlJZWXl3dFJMYzJ0VC82TnZjcUNEZ1JyZzFn?=
 =?utf-8?B?MjBUKzBrLzJTTmJVK0VaYkZMK2VXT2RBRUp2VnhhZGtSZVlqUlRMbURpejJU?=
 =?utf-8?B?Q2hKZThqTUU3NEY0ZnZSR2ZZc3ExSEYxTDhaK3ZmZkxGanR4eXpVUkZBQnlr?=
 =?utf-8?B?RFczZlgvYjlhNXFHeHZ2eUpqd2VINXdhZEVObng5VHRSZkdrY2ZOaVM5cDBE?=
 =?utf-8?B?emFuMVdDS3pxZFF0RFNjR2JiTC9JZkR5aGUyQ01kUEEydWdEWWhpS2djQUww?=
 =?utf-8?B?UU15cGZvdmV6Q0RDSzJyOTJvcmF2QlIzWmx2RGM0Y1lXT3h3MUgvbXd1eDhy?=
 =?utf-8?B?RHFvaXZxbDY1dDlOelp2VnY5WjZiZkdKTEVnUy9HdERleExWa3dKNGF6SEIw?=
 =?utf-8?B?UVhBc3lkcHBJNVNaYXI0eTFlWnlOdFdValk4SUl4VUxRVDFFWGtIUHZ5aTdK?=
 =?utf-8?B?L3ZsVDVIWXhrVjIvUCt2WUo3NFBlSkZFV0lRNDFrMXkwOEZhNWZ4dWE2S1Bj?=
 =?utf-8?B?dDdhaWVuUkIxNHVYR0xQL3ZlZEs3ako5bndLZ3NvTDIwTG9EYU0yR3duSGcz?=
 =?utf-8?B?Mm9rYVdjV3Z6NUsyWlpYY2RzMzB0Vlc2R3FiR09EWldxTTFsUmxsUFQweFE0?=
 =?utf-8?B?bnRkQ2FraU0vWTNxRFU0VnBLb2NuMUlpQU8vSVFvOWM4L1g5WHpLb1pwNk9Y?=
 =?utf-8?B?Z2NITk5xQWNTVVpWVHRsaU5USVZUNUVoRmptMXNoTmJyQnFWRjFmVC8rdk0w?=
 =?utf-8?B?cFV1Ny9XaEUxci93dzlvbnAxUTlJUkNERktRK0I2S0VVaUo5RFZaRjdpMVBk?=
 =?utf-8?B?NzZEd3N3TGtFNEJKa25KMmFUbWFqSmY1elMxd25MN1AxSVhXTEZUWGZCVVJ1?=
 =?utf-8?B?aVduN0xMSWlJR0gvTDJySjVPTUxmOGwvNFNlTnI0ZjVWSGwzalE2Nm9jb0lC?=
 =?utf-8?B?OGwwQUgzVjFwVUtjVmpSTGVJVTA2NEFvbHFpZEFkaTBiUktsU05wOEFKYk8v?=
 =?utf-8?B?YzNUY045YVRjT1pkTGN0VnMraWgrWjhDaTZvT1dHbmNPQ00vWnhnTnRiOHVm?=
 =?utf-8?B?blFJaGJ4bGlXRXBYSlFULzY0M0d5eU9iYXR1ZDJKWUhWbEgvODV4RGJIT2pp?=
 =?utf-8?B?dkc3NGlTSnJPSGFsT1g4emlVTkUrSkJ3eEsvaW82UGZzekRMSzNsSVJUSXZm?=
 =?utf-8?B?STc4a3lmUExaVWppblE5RVdJb3pRUDExTWVmazIxWFVaM3dlK3hLUjNndzlI?=
 =?utf-8?B?YUpid2owZGI3QUJuWkZndXBWczkvZFI3Z0doVEFqT2daOEZUK2V5TEwwcUZV?=
 =?utf-8?B?bW9Rb2phOHQzdllxREhyclR2ZVY4a3BrQkNHZGxpZVBZcXQ5RGJXSVZrVkxU?=
 =?utf-8?B?V2V0UDUvbnBBeXRWWTZ2aUU4RE5uNk9YZWEwaXhVTDJoWVk4QXo0Mk9mVDNu?=
 =?utf-8?B?VmVvZXRTait0RkEzWTBCUktLQnBtWGEwYnhYY29BYlMxMEtLRlpOU2lrTm55?=
 =?utf-8?B?ZmJIL3RDbTEremxQUXRWck55VmJCcFFKbmR5Y0R2N3BDd1luTEhkcmhra3ZD?=
 =?utf-8?B?RmxTU0pXeXB6RldZYy9rWDIzN0FsTmp2YXlPa09CTS8zUElUVkNFblRZVmhK?=
 =?utf-8?B?d2p4WmoxSVpxcEdHNG9SRzEzejBjR3pDRDltNk5qWTBBVlowa2Z4MmtBM3Ax?=
 =?utf-8?B?SC9vVG5oUnNuWm9wQmNFR25JRThaTGJkM3k1bXNTNTZRZWRNcE5rQVZIcnIy?=
 =?utf-8?B?b0JBbUVsZVp3ZXM4KzFTUDdXaEtyN0dUM3ZhQm1XbWRBS0NvWDYwT2ZHSG5G?=
 =?utf-8?B?UU1uSlkwTklKY0ZXK09pSXpjVy96VHRqR09lWmVIdCtkWE9SMVRqaUdESmJO?=
 =?utf-8?B?bEJ6S01pVitQRjRtUjdaTzFRa3RwUkJGQXcyWVAzaEhKQ0hzV2R1ZW1tMzdT?=
 =?utf-8?B?SU84NmhUS2Jwd05FekNnSXFGNzdTT3liRmJpckMwbXcwZjhvR3I5Z21UaFRm?=
 =?utf-8?B?eXZBT0hQSTlSWEVNS3NyQ1ZsY1o2VEJPdEh5Q2tEa0VNM3pkTzhTZFY2ZVF6?=
 =?utf-8?B?RUhvM0prV25WSGhJT2FPdTI0Q1l3PT0=?=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: adfd6fa6-7fad-41b5-9538-08da97bc081f
X-MS-Exchange-CrossTenant-AuthSource: AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 08:18:27.3217
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A3/RjA1Z/mTWzASwWWz5qia+Atgq6HpAjSE/6v7+q644nxMbzhKsMkBqGBsA7doDIj4wbL9g1bR7p26Wu3VsKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4P250MB0759
Message-ID-Hash: LCTE2DMVYM5EHXERXASOH2TRIABIHXJT
X-Message-ID-Hash: LCTE2DMVYM5EHXERXASOH2TRIABIHXJT
X-MailFrom: demel@ant.uni-bremen.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 reporting U/O on Ubuntu 22.04
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LCTE2DMVYM5EHXERXASOH2TRIABIHXJT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3177074575161185632=="

--===============3177074575161185632==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-512; boundary="------------ms090200010002080405070602"

--------------ms090200010002080405070602
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi all,

thanks for your suggestions. I'd like to wrap this thread up.

Basically, my application seems to work. However, if I run the same GR=20
flowgraph with QtGUI sinks attached, I observe overruns after each burst=20
transmission. This doesn't happen with a `nogui` flowgraph. Also, it=20
doesn't happen with QtGUI sinks and N310s. Only the B210s seem to show=20
this issue.

I played around with `benchmark_rate` and different sample rates. The=20
highest rate I seem to achieve is 24.4MSps with 2TX & 2RX streams.
What is the highest throughput you guys can achieve?
I was under the impression that USB uses half duplex, but according to=20
Wikipedia they changed to full duplex with USB 3.0 in contrast to USB=20
2.0. I'm curious where the bottleneck is. 2RX or 2TX streams at=20
30.72MSps work flawlessly. Thus, I'd expect that 2RX and 2TX streams=20
would work as well.

Cheers
Johannes

On 14.09.22 12:29, Johannes Demel wrote:
> Hi all,
>=20
> I'm still trying to figure out what the causes these problems.
>=20
> I tried different B210s on multiple computers now.
>=20
> It works with 2x2 up to 24.4MSps. And breaks with 24.5MSps.
> However, 2x TX+RX @30.72MSps does not work.
> Also, 2x RX @30.72MSps and 2x TX @15.36MSps works.
>=20
> I'm sure things use USB3. UHD reports it and the "working rates" are=20
> beyond USB2.
>=20
> I tried 3 different computers with 3 different B210s. I tried=20
> UHD3.15-LTS, UHD4.1, and UHD4.2. All seem to show the same behavior.=20
> Also, I tried Ubuntu 20.04 as well. I was under the impression that 2x2=
=20
> @30.72MSps should be possible.
>=20
> One of those computers has a 10Gig Ethernet card and I'm able to run an=
=20
> N310 with 2x2 61.44MSps and more. Also, `htop` shows benchmark_rate at =
a=20
> maximum CPU load below 60%.
>=20
> My application runs continuously with 2RX streams at 30.72MSps. However=
,=20
> it only transmits occasionally. I use burst transmissions in GR with=20
> length tags. The aggregate rate would be below 15.36MSps. This=20
> configuration works on all devices except for the computer with Ubuntu=20
> 22.04 and UHD4.2.
> Moreover, in this case I can see an "O" reported whenever the=20
> application transmits. Thus, I assume after a burst is transmitted, smt=
h=20
> fails.
>=20
> Cheers
> Johannes
>=20
>=20
>=20
> On 09.09.22 11:55, Johannes Demel wrote:
>> Hi all,
>>
>> there's smth else going on. I tried the UHD-4.1 and UHD-4.1.0.6=20
>> branches and all cause these errors. I will investigate this further.
>> I need to switch USRPs and hosts and see how the errors appear/disappe=
ar.
>>
>> Cheers
>> Johannes
>>
>> On 07.09.22 19:29, perper@o2.pl wrote:
>>> Johannes Demel wrote:
>>>
>>> =C2=A0=C2=A0=C2=A0 Hi all,
>>>
>>> =C2=A0=C2=A0=C2=A0 thanks for your suggestions.
>>>
>>> =C2=A0=C2=A0=C2=A0 A few more details:
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Ryzen 5900X CPU
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UHD reports USB 3. With US=
B2 it would probably fail above=20
>>> ~8MSps.
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Ubuntu 22.04 with GCC 11.2=
, Python3.10
>>>
>>> =C2=A0=C2=A0=C2=A0 I tried 2TX streams alone at 30.72MSps. works. che=
ck. I tried 2RX
>>> =C2=A0=C2=A0=C2=A0 streams alone at 30.72MSps. works. check.
>>>
>>> =C2=A0=C2=A0=C2=A0 I tried configurations with
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 num_recv_frames=3Dnum_send=
_frames=3D256
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 num_recv_frames=3Dnum_send=
_frames=3D512 Doesn't help.
>>>
>>> =C2=A0=C2=A0=C2=A0 The error pattern looks like this: UUUUUUUUO[D00:0=
0:07.60063828]
>>> =C2=A0=C2=A0=C2=A0 Detected Rx sequence error.
>>>
>>> =C2=A0=C2=A0=C2=A0 I tried
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 send_frame_size=3Drecv_fra=
me_size=3D8000 also in conjuntion with the
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 num_xxx_frames configurati=
ons. But that didn't help either.
>>>
>>> =C2=A0=C2=A0=C2=A0 I will try to use UHD 4.1 on that machine. If that=
 works, I'll just
>>> =C2=A0=C2=A0=C2=A0 switch back. Otherwise, I'd get suspicious of Ubun=
tu and the=20
>>> hardware.
>>>
>>> =C2=A0=C2=A0=C2=A0 Cheers Johannes
>>>
>>> =C2=A0=C2=A0=C2=A0 On 07.09.22 17:17, McKnight, Ryan wrote:
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 I have found after much tr=
ial and error that adding the
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 arguments =E2=80=9Crecv_fr=
ame_size=3D8000,num_recv_frames=3D512=E2=80=9D to the
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 device string allows for m=
e to sample at the full 56 Msps rate
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 on the B series devices wi=
thout any overruns (tested using UHD
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4.2.0.1 on both Debian 11 =
and Arch Linux on various computers).
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 I haven=E2=80=99t tried tr=
ansmitting at all though so not sure if there
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 are better arguments for t=
hat. One additional thing to double
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 check for is that your dev=
ice is actually connecting using USB
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3.0, I have found a surpri=
sing amount of bad USB3 cables that
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 would only link up at USB2=
 speeds (check using =E2=80=9Csudo lsusb -tv=E2=80=9D
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 after running uhd_usrp_pro=
be to load firmware onto the device,
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 should show speed of 5000M=
).
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /From:/ perper@o2.pl perpe=
r@o2.pl <mailto:perper@o2.pl> /Sent:/
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Wednesday, September 7, 20=
22 10:31 AM /To:/
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp-users@lists.ettus.com=
 /Subject:/ [External] [USRP-users]
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Re: B210 reporting U/O on =
Ubuntu 22.04
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /Use caution with links an=
d attachments./
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 perper@o2.pl mailto:perper=
@o2.pl <mailto:perper@o2.pl> wrote:
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |perper@o2.pl <mailto:perp=
er@o2.pl> wrote: Hi, I can only
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 confirm that I see the sam=
e result: 24MHz is working, starting
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from about 24.5MHz there=E2=
=80=99s a lot of underruns. My CPU: AMD Ryzen
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Threadripper 2990WX, 128GB=
 RAM, motherboard Asus X399. =E2=80=A6 and the
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 system is Ubuntu 20.04 wit=
h UHD 4.2.0.1.|
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 But with UHD 4.1.0.6 there=
 situation is exactly the same (not
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 working for >=3D 24.5M), s=
o if you=E2=80=99ve got it somewhere working it
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 would be worth sharing:
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 yo=
ur exact UHD revision,
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sp=
ecs of your PC.
>>>
>>> If you could capture situation where it worked and stopped working on=
=20
>>> the same machine that would get you much closer to solving the issue.
>>>
>>> You could write a test and use it for automatic git bisect (git=20
>>> bisect run): https://lwn.net/Articles/317154/
>>>
>>> If it=E2=80=99s UHD fault this can show you first commit that worsene=
d=20
>>> maximum transfer rate.
>>>
>>> Best Regards,
>>> Piotr Krysik
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------ms090200010002080405070602
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
DTIyMDkxNjA4MTgyNVowTwYJKoZIhvcNAQkEMUIEQEJDjvVjSwnqGtXHEJ8w7PZ6OHp5W3Is
adnlp8TD0fpTiZZII9Z3rlc07nVIMjvJt16qnbo+0BJe4ch7wkgFe5gwbAYJKoZIhvcNAQkP
MV8wXTALBglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA4GCCqGSIb3DQMC
AgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0DAgIBKDCBrwYJKwYBBAGC
NxAEMYGhMIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVy
dW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdE
Rk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBAgwm72M+Zb9j
cHYbNC8wgbEGCyqGSIb3DQEJEAILMYGhoIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8
VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVz
IGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJ
c3N1aW5nIENBAgwm72M+Zb9jcHYbNC8wDQYJKoZIhvcNAQEBBQAEggIAhIxcnq0yJfVUX72d
pcpE6gKzqHhhZVoXJ0Y8an61/IauhhgX4NxH8MDguU4gv52Wdc9m3hpYqWh6HeR0mM27VaDs
vR7qeUHUA5Wps/nueOWYxwEkEqEdq4y02yLivGeva6oLPXCTJZKMsONjqJl6wQ0hEXcAjuQ9
nYLVaf9sVoOIORIsrXAbNlwd1455cABiTwl17bAL5l7ZCeng2XA+SwKyAG9gzjUwW/u2OPw3
H1b/tf0X4UjS5VDClQorsqtQhR3AgUYL+UOwsTRFWpiLeqQFybBn7Ow6ZZC6WHeyvEM1MYJw
3JM8xE9xHhoRsl8kKYlM0K/otzodCZXIQp5iS0UAh1qGOWQW/MyHnbYOGY+t+uEfTaAR8Efl
lxEDti/U1O0v7smC164xzkT7r3FedeuZzmzEP5uu1XfFoSXR5RJ2foio7vJ9jdPs+35KtfjG
wRBEM02G37q2tMj7pE7dSLF8sRVus4fMyG87cc81qVjSzz09usU05vXLkikA4NggF3P4hIf/
yJ3AeAvNr1jtiq3ZN6EumBG6BlMj19IpXYxKBckQDQ3sYX8vX8a67Rk9HdlPsFwubEXGBKoi
OwxV6KmoHkfB+j+YTqpTx96pLXzwK4T/6NTxQQvdn37HKDrvUheiyoPspPfSAqDS0gclM7Cf
SOzsTmAFQvikdnc0MbMAAAAAAAA=

--------------ms090200010002080405070602--

--===============3177074575161185632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3177074575161185632==--
