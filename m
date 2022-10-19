Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A14603B39
	for <lists+usrp-users@lfdr.de>; Wed, 19 Oct 2022 10:14:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 353E6380C91
	for <lists+usrp-users@lfdr.de>; Wed, 19 Oct 2022 04:14:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666167281; bh=bT5qWPnuC0fY8q5cG+NLBeFLxXT0+9joVNJ8c9bUVqE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=a7CNazReRVoyU1dbi6aU0UL3QD6CQwt0gEewY9eDnNkxZzMBANgk4Kk0nFLwhvliA
	 xDGlO4UFEtN1aN1PXujKTkGlFri6qj/BOZ0AK3Jh+VAWXiMxwGKQZVU9pSKT3s1Br9
	 6izOMRt4W9xxCTkd7jISOel28Gshi7rhuDsnfM7iSE7H8p2JhK2bcNjb+pKEsAPX7j
	 ujrpCsiHw6+89WwAumu9Dr7BIR/zIZDgmqvoaMe+mJfqhRYci01pn5mEP3qzx6h6ZO
	 9FgvdMeqhE40eqAe0p34eGjK7j8etpQclXewpz1ZJ56b5LVibZo1y0jvwBcl8Cn36a
	 6yMTu93fuuOgA==
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80134.outbound.protection.outlook.com [40.107.8.134])
	by mm2.emwd.com (Postfix) with ESMTPS id CC3D13808DE
	for <usrp-users@lists.ettus.com>; Wed, 19 Oct 2022 04:12:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=antunibremen.onmicrosoft.com header.i=@antunibremen.onmicrosoft.com header.b="gBPx5k5d";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZrXNoTmocgowSidORkfcUI0q03K/73ntCHH7B9CuVRSah/LI/RBhLs1DnlHE7mNDV3tmDx3aS6F53R81ATBCbIZ4zrZ+ol1/UCQM010gBfcsI5j2Uj/yzYyvj6YcBipd4IVeWRdPitKrtmymJKCRdp672TZurclgNOU7v9eRmw5s3rHADNd1JSkzI1XGrqrvAatJY4hdTjz2ultFdssWJ0foc0OLs8Q3x+8+XmdWrNFGQVxaSFD4w4AEKlksaaLiJzU9EoH2Ha5dmtebhKGgxX1ezfJhAj7uOZ3lg+KcWe2Mtsh7yecTKAIhk1oAGe4BuyFYwG+MgmK6lF3fWMhMWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=InhHVbQ5fpXxEQoPe1T9C+jofUdFbERNf9qgzbPkrdI=;
 b=NitgeEYkoPF/omC/bp4eiYGMBo7nMl+QftoOu4GjNheVt1a/jVd2W5cLN+2NuAzRltIhapwJasUNfJoz9KIGW62MOesTblHzhBg47reSzDa0fOLyD0iw6J29Kx//k797avi96eQPcGhOJ98SKpVZE3n33TxSgHPFVAQa5+uzBDe6KelvhEN3QG3BI5afDXYOZU3Z/5BIx0QD7arJyESXBaDyeY/zY00KY3dm7kVReveIObPxYCjjxS0wE2cToMbwBzom99cG8gYimCjxMNzdg0BGg/RhuLu/HXFf4Gm7boCVKR8PZeXuV2ktHkwraEyWqQuvid6t31XZlfQnxnACNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=InhHVbQ5fpXxEQoPe1T9C+jofUdFbERNf9qgzbPkrdI=;
 b=gBPx5k5dzQv6TPzNIUxIJgD/wOtzBH96gf5gJUiUEFBpt3tsNABnAIstkb+Nl8TjC983EXQbAwLmbm8NwP/C0MGH1ijGIS29p7iEoMXTNKR6LQ9FsrMTMbRahvq0GF2+gYKIX04TiJ28U14IC2RlM3enpaPlGVU3jslDBTE+xLU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ant.uni-bremen.de;
Received: from AM8P250MB0294.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:329::7)
 by PR3P250MB0067.EURP250.PROD.OUTLOOK.COM (2603:10a6:102:172::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Wed, 19 Oct
 2022 08:12:51 +0000
Received: from AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 ([fe80::992b:4a65:c704:2985]) by AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 ([fe80::992b:4a65:c704:2985%4]) with mapi id 15.20.5723.034; Wed, 19 Oct 2022
 08:12:51 +0000
Message-ID: <638c5478-4004-06f1-cae5-8047a8a4169d@ant.uni-bremen.de>
Date: Wed, 19 Oct 2022 10:12:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
To: usrp-users@lists.ettus.com
References: <MNPagOuctsByX8yExSc0I7PRDFDuhS7atXUyjJPnE@lists.ettus.com>
 <71a13fb1-9c46-b596-caa6-397e672d71f4@ant.uni-bremen.de>
 <d5713f3e-aba2-69ee-cf38-7db901990d54@ant.uni-bremen.de>
Content-Language: en-US
From: Johannes Demel <demel@ant.uni-bremen.de>
In-Reply-To: <d5713f3e-aba2-69ee-cf38-7db901990d54@ant.uni-bremen.de>
X-ClientProxiedBy: FR3P281CA0047.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::10) To AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:329::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8P250MB0294:EE_|PR3P250MB0067:EE_
X-MS-Office365-Filtering-Correlation-Id: b92f46e6-9fe3-49a0-90e8-08dab1a9b74e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZOKN1bOJWRuWhxuUqHjeIa3t536LFb0I41bfl/Ww/WfKrZ44gyg+VIlDGW5OnsVAqR8PEnUiObyyExyBtSdVj74QhKUuoWTWr7MXiy+E9D19xXLGiPT0bvnAmzJDPCkBJIhE2yHCcWY47GY9b08YpFN/1e94bMU4PDnrtxgaqERmuep4L0Z97ObgunubpD2LKPDm5NFHAdR6E74MLrWrLFJNSzUMvIka5MAdqq0aiQLVOH1WxZ1CTXv/WYHnkyCzB8VidEn1+b2wus6yGilncsg9hlve6o+p8NFj3QlTkoqy1w5H31T7UZVy8u0VaUq0cKARSI9aHKV1Vrs6T4GutGl5tjbbAibVWMGKfQVedSk1jtsGeI8btM2HiJ1FuAokDmI7JiL7tuoyEATNnPIhMf5rbskH3ZQzMt1KLymZTh68Y2F/CMCgli3Tx6PPLV10fFZeFLcEDXUv7iOXeOSPe4Qs8QKme7gigGRYnT1JdfhP8fSt9dTyG4b/CjmDewCNthmiUa3E2q6SDKRRlCB+E4fzBySeVMfU6Byc9Vw2yDDgkx5i2EiXuwop31JeplKDl/bll+zlWqeOXfHvaxTKAvJnzIhzCu3XGILvpea4jJB93dW3G6gcht/sqjNohKwyTE0Mq6VUUDSqXvQha9L/vGzi4UcH5ZAstID7Y4aFH1JIjCv0vTbjs7Y0rXdpSZ/cxC+skAEemCogad8O1DG48vLzQT/qDDhXA80TejtWrOI0PaHjRv75afGTUW5oN4JPK7zkA+Qa1kX6dSyKk8xx1XhDWbZbpHK/r9WhHrwI62Hk0dhqj6hJZQ6jAjGFWaaWtS9D163GlAThtJ1L8xT8f8gNdkQDP/XubddxqRb9jkiHxxfpHi5FkaCVyHswem43L1PtpgfUadK0mofXUf9LLA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8P250MB0294.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(376002)(396003)(346002)(366004)(39830400003)(136003)(451199015)(2616005)(83380400001)(186003)(31696002)(86362001)(38100700002)(2906002)(41300700001)(5660300002)(235185007)(8936002)(41320700001)(316002)(6486002)(966005)(478600001)(53546011)(6512007)(6506007)(52116002)(33964004)(8676002)(66556008)(66476007)(66946007)(786003)(6916009)(31686004)(66899015)(21314003)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OHJHVnZXYk9KdmpQTTBNS0s4d01FcE5LaDh1ZzAwZzdOVGdYaEl4dEtuUHRp?=
 =?utf-8?B?c3pTa29oTmFlazZqeWQ2SzMrSTJaa3F2bFN3b3pGQTFvSm1XUzNYZ0FPaW1C?=
 =?utf-8?B?bTVWNmJsaUkwY3NxNjJiTXloaW5oNmhmNVVBYWdaOG9mLzlPeTlFVDFodlpV?=
 =?utf-8?B?Z0V5RVh6ZHpVWVpLWHI0RDJ2VjByOWN1WDFvdThFMjFtSk5YRld6bmQwdFov?=
 =?utf-8?B?Q1JkRUg2SDR3VXMzaTlpUDlOYUI0RDFtaWViRHNCUEJNNDlTRGIzYjFqVjk4?=
 =?utf-8?B?U1V2ajJyYk5TUkRNZjltdHU3YVRzUllSdy8xYURuN1YvL21VNUJ4QWdzRE9x?=
 =?utf-8?B?QkRrWGJtek0rNFgyVmxBOEZLcnhOS3RXL1NOdFpka1pCcU1NVVVpL0xCOFZF?=
 =?utf-8?B?Sm1aUUFCNFV0L0wvdmRzZ04zWHJqSFpScnpYNWo1aWFBQnYxYUR4UG9uaUZa?=
 =?utf-8?B?ajZBT0pBYnpUY1dBNCtLRzRCTmwreE1oNEJveUJCVlBaTVJpQ01LMnpnWXNH?=
 =?utf-8?B?MnYwSDIwSkk5KzZQLzdXTW4rbTB2MGdUaDBmb0R1bHA1aUxyai9zQzdCTW4y?=
 =?utf-8?B?Zkh0SFUydjR3WExOa3hQN0VITEtkbndxTFJWN0hNMkVQVEl4ZmxRZFNpUTRO?=
 =?utf-8?B?TkRiNWwva29yYUl6cHZwQjBWakc5YUE4TE1RdklsVnlrWk5SYnM0dlpTblYv?=
 =?utf-8?B?dHlVamRDUlZmWnZaY3BnVWRVaEZ3WVZQdDh3L1l6eW9hV3ZsekRzbEVSM0JW?=
 =?utf-8?B?THpnc3h3YzRvak5yVlc5NUlQQ2tUcXZUbCs3T3VRNzZaOFV2L0gwVk1HQlRT?=
 =?utf-8?B?NzRldGhBTkxrZTVnQ2xWQVR4MXZCYWpsYmpZYnVwMXM1eWUwNUtRTmlEM2pB?=
 =?utf-8?B?cEVPUk1CTzI2OWlxWkIvQ3hYY0szQWlmV2l5Wjh4WkRzanJKR0FkWkk1YlBy?=
 =?utf-8?B?Y3ljbWwvQmIvVCtla3JrYS8rV05iNWFkd2JWSlA2STE0SGJHZHlucjNKaHgv?=
 =?utf-8?B?THRoUU1SaDJOZjFIUkQzdktuS0I4S3IxNUwxdTF3aUIvYUhYZXFSVk41SG4r?=
 =?utf-8?B?M1hPMU15aDFUSUdXQjlDaHlGTGJxWUdiN2hhekU2QXZLd0x3K1NlTmFxdCsr?=
 =?utf-8?B?RGlkNmdXVUovSUs1Z2tQQ1h2dE10V05XYlF2L1RxUURBZVpRb043NktiSC9z?=
 =?utf-8?B?cGRsbm5nVXN2cTROOGphUmJwM21rM2ZoRkRVMGRteE5ucU5HZ1VwT0RkNVhr?=
 =?utf-8?B?Vlk1Z2JhQjFqV083R3B4TE9FOVd3VVIrdjhlYTdlOExPTXF6ODQ0QmlVNUlN?=
 =?utf-8?B?RS9qN3lmQ1lQOXRPV0EwaFhpR1ZNejFudDgxS09WT3k5OTVOb2lQTWxIK1Rx?=
 =?utf-8?B?MlROU00zSk9XSUgxTXlYRVdzUnZpbFpCL3pyZ2ZWN0ZNR2N2NExDUWplWkhE?=
 =?utf-8?B?cHZGbkNkenJCVEVNZ29wU3h0NmpBT3JvVmVLbXZGREpMVmtDTlZMWGl5d2xT?=
 =?utf-8?B?Tms2Y0hTdnVKYUd1SmtoMEJHWHVST2ZETGp3cVFzSGVtSm54TEdPb0ozVVJi?=
 =?utf-8?B?b2szSG50WnVWM0xsUnJmZ2d3QnR0MHc3SENYTHlpR29JMDNpaE9Wb0tnSmlS?=
 =?utf-8?B?Y05yZ25GWFA3bkhsbTJWcUI2d0x6QXZudmJGTFZXUWdTbzlWL2FmUlB3QUta?=
 =?utf-8?B?c1lWYjVid2hCOFoxSTNRZmhjclEvWUpWQW9XZndLVG5DZkNvWFp0YStvQkpS?=
 =?utf-8?B?K3h4MEYrcVF0WmMxaWpUNUtTZmI1WWZoRGFtSzhzLzhmVzU1ZytPV2MvVHp6?=
 =?utf-8?B?S211SXJ4WlBMM2FNQTBleVdlK0NuMnVTbTZNWkZVdWkyT1U5b0YrbFIvSHFw?=
 =?utf-8?B?T0dtRFY5M0JmcjBJQm5ocU16blRpdWlOa1pYMUM1MlQzZHRxZFdZNFpRbHpw?=
 =?utf-8?B?NDFJVVcxdXA2V01HN1FGa0c1YnB0MURvNjBmbnoxc3JuTWpETnYzQ0VWMUg4?=
 =?utf-8?B?K3d1dHF5NEFGeUY3RG5ERmpMQ2tUNHo5NWwwM2tycE5EQUJVN2hKQmJCT1RB?=
 =?utf-8?B?MHRlTTlUZHEwQklyY0piKzRITmdiQ1dQbHU0Y3hOUW4zQkZGcVk2TnhHWmdH?=
 =?utf-8?B?OWRzbFlERTdVQlVLZER0Q2FYR0JTSnVXYVVyaHZlY0FKVGZCaklGeUtFcTI0?=
 =?utf-8?B?ODR1QzB1NkRWUzNhUlp6ZDZBZXQ1K1EwUGNKZnFJd0NYWXZxa21Na1g0b3dY?=
 =?utf-8?B?WTNvc3Z3N2lsbGtQTml5TkpxaS9nPT0=?=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b92f46e6-9fe3-49a0-90e8-08dab1a9b74e
X-MS-Exchange-CrossTenant-AuthSource: AM8P250MB0294.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2022 08:12:51.1033
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KLbF1A2Qq19w8GVl8fErtlmrxLcrRwdvtS6gN8RV0k4/eN7ItRVKdTBwZ4mg3j/eufIenemvZUZhOG+QwM6ZcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3P250MB0067
Message-ID-Hash: 7WPVH7BP7DTG6G3DTEHDSQWNXBPWJMOC
X-Message-ID-Hash: 7WPVH7BP7DTG6G3DTEHDSQWNXBPWJMOC
X-MailFrom: demel@ant.uni-bremen.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 reporting U/O on Ubuntu 22.04
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7WPVH7BP7DTG6G3DTEHDSQWNXBPWJMOC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4548731218252978794=="

--===============4548731218252978794==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-512; boundary="------------ms070006010303070302010707"

--------------ms070006010303070302010707
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi all,

after a discussion at GRCon, I was able to "fix" this issue. I'd like to=20
share this knowledge for future reference in the archives.
2x2 @30.72MSps on a B210 requires the `sc12` over the wire format. I was=20
able to confirm that with a `benchmark_rate` test with the `--rx_otw=20
sc12 --tx_otw sc12` options.
According to the aforementioned discussion, the reasons seems to be a=20
bandwidth limitation on the B210 between the USB controller and the FPGA.

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

--------------ms070006010303070302010707
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
DTIyMTAxOTA4MTI0OVowTwYJKoZIhvcNAQkEMUIEQEs8xgtLTVZZjR6SLEmoM2jROulLg77Y
cElCa48o9M6jmXhStiwPF5hgVQmlB5zzfDSe6JXCZGJzyRJXYE87D4AwbAYJKoZIhvcNAQkP
MV8wXTALBglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA4GCCqGSIb3DQMC
AgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0DAgIBKDCBrwYJKwYBBAGC
NxAEMYGhMIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVy
dW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdE
Rk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBAgwm72M+Zb9j
cHYbNC8wgbEGCyqGSIb3DQEJEAILMYGhoIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8
VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVz
IGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJ
c3N1aW5nIENBAgwm72M+Zb9jcHYbNC8wDQYJKoZIhvcNAQEBBQAEggIALc0fZ9b66QUDFnv6
PIuUryXIIoWPmqRUItcMUUZA9ps0UKwgwg7yKjoZnuDoyzQofSmng5F0jufxDJ+c9yGgfsQP
QzsJ0pBnHrUze6KH1UVxkw9fb6L976dNIAbpgmrmmNx2AziDhw8PZXHtVMzMla37zueDGzZ/
+fZxA+nz296RbyGy8YHdJ8Z4cIG3PwVhMhGkZZPf4wNzHo5i86eF8uxgvMfhg8Zyd52CDSiZ
a3wLEwWy5tO9LzB/oecavv67FQQMGFBDb1zb5CZzGoMd+SsDmSSzsAU1aw568ZPYtRt7ttpT
J9v5mROCMR7dSVpPl8+UgExOpPL1ru5p+e0mvbXWFVsBNH/fEQR1dxccSIOE/tpyeVouKuIB
hYqt3/rKTJ44O+EcfQpvb6ppkJRKExGWn2qfzhzec5XreTJ5V5Qj185Lr5Ktx2QDnBc5LIE7
UkQRYwbj+6qMdqEYuLdkMpu1pog9M4OSklwJb3jjSxk3MUl4aVgQyQGMPG0R+LffzR/V6j+r
xRSTmqDQ08S3rbbMdfMTgeV/uAOjmvsySSeTQHGzyYNqvfRCuDc+pQmvSNnPCYz/Wnq2dlx5
CTPzVKgntDZiJMV5ssH+1abiBqExQbJ/TFPDOVWUzNljFuVsdgY+LgtlWVqgPObbp9y+x7yW
99AVPv8j+V57/iUoR0UAAAAAAAA=

--------------ms070006010303070302010707--

--===============4548731218252978794==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4548731218252978794==--
