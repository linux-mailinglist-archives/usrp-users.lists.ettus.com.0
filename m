Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8418C50833C
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 10:17:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6340F38412E
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 04:17:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650442668; bh=B3qae8ZfdyS+HXOuPMw+c+HEdMdmRSnrHKTQ6M8/6cE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=n88h8cFw1NvJKFNRtY0m314m49CP0tDK757C9gMJK00S5ljR1yeMwMp1YXRtMVcR7
	 JBwvdVbMudeGwKlSWW9EnCCLl21N0SGiyYwJauRcvV6/4C8h2PbxsuePAMH88YA/J/
	 Oop7vyr9w5TciSnedbBfA7vFbcxaouFZTVslzzimY8zRy1mlxmcE2NdRit1O7PPID8
	 Tf1NGLUnp7ijj+//URClZbHT6p+DvApgBrPhcw7LqTbAEJ7uiwrklHDf+ylAE1lN2C
	 95B8rsRYns5+OI9H/d/JRGj20Kkv3vRE7t+4qtB1ekNDwDBlkuuE7+Swe17sg22zz2
	 pq3T1uTDVuzZw==
Received: from CHE01-ZR0-obe.outbound.protection.outlook.com (mail-zr0che01on2070.outbound.protection.outlook.com [40.107.24.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 3E44C3844EB
	for <usrp-users@lists.ettus.com>; Wed, 20 Apr 2022 04:16:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=master.hes-so.ch header.i=@master.hes-so.ch header.b="l2sR4ps4";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQC9t782ZSuMKiLetGr+Hll6KCDNRhefTI3MmvPvetCgIAocAScyjCdE8nWM7ppYey5tyn9uJgGJorbXooYTn5UkYWRM54PGQ+cCh9nuh5uHrWkQSSTzbaAbN47VbSW+ic5dxSJcGHc5iIFP+ZsIi6J8Cg93WxipB3svSo9SND1mi/4SSC0XsPr6625qmN4XV40DRH1QMfxvgQMWTBL0gX1a1IHbaR0KKnxo3CsmVeQKNrDtAWGNOiE3k5nVdEuCONAwAYzI8d0DWmGRr8nwZ0RtTw7OSXZOG1rU87Om6/VMfxEroCV5VWGwHUNKYv3VZb0yx7cPWouLHlo6Pv4FhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F1YSQXp60tp5ccG6DuyX5Ub2x+R4ZfqjpVuPiJGY9Z8=;
 b=IL8bKG0mCbtVTfMytepx5WZmPHkjMTtIkIM1hvrkyOIricf8bsgNtB2an2BtZR+AA0V+j/7G8y4UDElpVeRGfGSKn8rLkg9/kyA9Fvu7h4+JJt4oXDC/h+RmuyOoHEbwl7pOdVIDJ7GhwkeF1j37VNISdP8x2HJc7us1/iT3ueZOFp71Ftoi0ctMNda503m/97lUp/0GZEWR1ITJD3yUbRiakPmzEwoRkLPGitM0ybx7qQNYs9Ayejyl77ayQsBxoU8gGQ3jZEsTRFF/VpL89ONKNu4Q+zPlcdBTqlHtCjvb2i996VpiEUNZHysdjtsikdpyvrQFrPZPUDBJdu8d+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=master.hes-so.ch; dmarc=pass action=none
 header.from=master.hes-so.ch; dkim=pass header.d=master.hes-so.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=master.hes-so.ch;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F1YSQXp60tp5ccG6DuyX5Ub2x+R4ZfqjpVuPiJGY9Z8=;
 b=l2sR4ps4na/tiKaKp6sU+jOR2T7c5x6RozY+PmtBLVn+ravO2nXftj6pPlP/MYhIBfnG/RYsSnjNZ1URHOKBi6uqsCwtvtTawcwgavoaP6xHUX8OgTP0AtdAPp5Ap5tpAmBfjkpp+8/D2qJXYlx1KpAq/Y6Jc8yUFi+dOJNLYNew9pyHx9Y3bIszQqBvK7ERJ60jBcbEd5uyHpVZkSaWoDLyUk6+omEQzAWaklJ3V6k7aLgzQYap+VXPpMJx6+syCAvhocQVnGQvl4zuxtK4L4gQb8MIo8Gl8Febe5XzFm1jMGSkt9Zn+KLsWO9/d/swGCAVxn1ENFSrgO+XOYVQ3g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=master.hes-so.ch;
Received: from GVAP278MB0296.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:37::12)
 by GV0P278MB0036.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:1d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.13; Wed, 20 Apr
 2022 08:16:35 +0000
Received: from GVAP278MB0296.CHEP278.PROD.OUTLOOK.COM
 ([fe80::ad2d:3563:3bef:5973]) by GVAP278MB0296.CHEP278.PROD.OUTLOOK.COM
 ([fe80::ad2d:3563:3bef:5973%9]) with mapi id 15.20.5186.014; Wed, 20 Apr 2022
 08:16:35 +0000
Message-ID: <7f0b56f1-a744-2b52-601a-62df63ddac31@master.hes-so.ch>
Date: Wed, 20 Apr 2022 10:16:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
From: Mathis <mathis.raemy@master.hes-so.ch>
X-ClientProxiedBy: GV0P278CA0014.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:710:26::24) To GVAP278MB0296.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:710:37::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1c1e6954-e92f-4260-48b1-08da22a615c3
X-MS-TrafficTypeDiagnostic: GV0P278MB0036:EE_
X-Microsoft-Antispam-PRVS: 
	<GV0P278MB0036245DB67B0691804696B6E4F59@GV0P278MB0036.CHEP278.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TqezyW5nnNIOW0bwm+xaPwcwf/GxZRDY48ZXW3rwLzb0XsWHMpL84H5tpEmwx/DxLa0RJhB0llwFeJdNK6txAlOnLh6XGPmfJrcsBT3huUA9X1FJqsX9sFmejkx+TLcuVYWY3WLJfZTkZxvOhXTyFMzqTKI6cne6cJKp/lhYDY/WttmJzCLEyRTYWmuVyXtcBJsWof0HQW2boQpioo4B+j/faLGqL0QOYWbZ5LFRwh2kBxAtTUey6NX7X3CYGkulTxlEU18lHgcwFjJv6pdT8I2MKnaypnCqMDQSb3LwIcvPzN5YJSimwTsq5sDaltPsaKEXDG/wDd9auuUIM/0iAsoEVlvFBzNONHcOQdATxZSL3C3ksIGlcIKKPYfDLt9v6cZc5j7bxIFhxlowMehGCz9cz5PpwC+36DSsaqLkuuNOSxlNxV59OQ2+2h3nJFSqfzo0DIwXuY3D894Y3xA5H46Ut8m6wCRP1gYbEhF2ZrZzMyoL0I5egJD6CAndMo4BTkFjM0qVRwkTT6g3YJ7yzdj53JsplW8BbETpvWSTbrZ/v4V+0w/RuUiqHo9HwldXVeybQrzptuWlUbwWH3r1e5tB9Uz/rd8xGOAKA9AHikDhOIAjEIUS97FGij/XAqBa5CFXTjji6KkEuxuC9J3csSkcuOfR9eIHM2g3MY0Lj6nVGe09pbktaoxars2vhQKCvvgFqxMv+8kcFlV5l1FyLCeCtMcB+gD8Wf8m+bQSUqRnZACTCx8G78DbVcruTsH/9Zy0pwb8oZ3Hu4L3wiJm/bewRGpXZ3HxhaHRpEjMicy0Hq86hKixOUQQSZNt/frq
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0296.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6916009)(66476007)(31686004)(186003)(166002)(83380400001)(8676002)(2616005)(66556008)(66946007)(6506007)(19627235002)(508600001)(5660300002)(6512007)(33964004)(8936002)(38100700002)(52116002)(316002)(786003)(31696002)(6486002)(86362001)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?N1lvNzBYY0l5WmdqUG5mNldQcVc2aUl1eitiU3NPSDNxdnRrbUZuakxHVEEy?=
 =?utf-8?B?RzFuaXVGeE9YVURuL3ZTalFGcXVVcGJ5eVBPajBvUTF5cUl3RGJ3Y2EzWUpN?=
 =?utf-8?B?Y2QxWFdneEhVWVpXNUhFYm5DTnNXZk5WVjM0NEdzak10cmVZbTYyQlpKR2M5?=
 =?utf-8?B?SVA4RkYwUnFoQ1djS1dXWmlrQjM2MXNudCtmOGFmM2MwZWlIUis0aGtXOTB5?=
 =?utf-8?B?eElLUHZVN1k0K0NJU2NYdjFsRXN2ZktJRmFjNzZma0cvMmlnK1ZMSHEvbVdn?=
 =?utf-8?B?dVhrSlZoTFJMcFRxL2xqeEc5OW5rWE5LazZRRXMwSHF1OTN0QjBoWjlOdDNl?=
 =?utf-8?B?b2ZwNW1iblhkVFpuUEdwSFhOQy9BWUZxQWZDbWc2YkRRblM1blp2QXBZRVNX?=
 =?utf-8?B?SGlzbGZnRWdjakRZK01nM0grY1p2NytOU2xwOEJTbUVXWGU2aEt2S2pHU0tM?=
 =?utf-8?B?WnJxaWxCeFhsRVM1Y0w0N0RYNzZrWE50S0VicSs5bG1RbVhHc2NTdWQybzZx?=
 =?utf-8?B?TllzdGpqcE1TQklyVWFLanhaSHBheG1NTGVmUGlYelo0NnlCNlZMQmQwUWYx?=
 =?utf-8?B?RHRUeUFmeEN1WE1hbSt5T3d2SUdxTTZVSS9lNlk2WUhBWjl4SDREWHRhMHVw?=
 =?utf-8?B?L3BkT3ZwbDFUY001ajhpRXVNa1VxVVR5a0FGcWZsRi9WUWRZQS95TDhMNlN5?=
 =?utf-8?B?TEM2N0todkhIM1BsTmRzeDFnc3ZrdmhCRlV3OHYyTkt2VUdOWXVyTkZoZnBG?=
 =?utf-8?B?ZUlSbWlLUCtrK29wZTA1am1oeEg1TER0RFRRMHF1MjlhZ1R6N01NdkJXOVRI?=
 =?utf-8?B?K25TZFc3RjIwbmpRbWdla0o0ZHd2aEVheElLcmF4YzdzUDFaRmZ5UG1iR0pB?=
 =?utf-8?B?blIrb2cwT1VyRjZSMXFkU3ZXOGo2TXBZVVhuaUxMdjFldDA5Slk0TjI1bTI1?=
 =?utf-8?B?YnhHbHdTL2ltczIxMGZRN3dQRDhKS2J5c1JTVWxuREJiTEltOXNkZkhoRllq?=
 =?utf-8?B?cFliQ0lsM3pwV3FQeTZCeDgwTVd0QlZWUnhDaWlTVUE2eEpoV3VlR3FuRnZw?=
 =?utf-8?B?NkhHS1MxQ0J6TnJZcjM4M2t3clBFdjVZa0YrQ3VuWXk3SGl0RFJPL00wT3p0?=
 =?utf-8?B?SmRka3Y4dEhHVU1TNmw4Smx6RWlMdnVGZGtuM2xkMDhIZk5lSTNDeEpoM2JW?=
 =?utf-8?B?d1JRaSs0WFVvYW5BMU9EOGlBSUJSd013VUJWQWJoVEM5b25NVWtRZWZnL1JV?=
 =?utf-8?B?dE85UEFIWDlKUmpQL2xmSERIdXBSTGhsNi9DYVVJd2lpdE95RTdDR1EvWkJP?=
 =?utf-8?B?bnVrQll5Ni81Y0pJWGxxUGMyemRtTzk0aStLaVpMZC9vVmhNNDhEQlNOSDlI?=
 =?utf-8?B?dWVPbDRDTjIrNFVyRTU5T2Yza2NsWVl4dThUdzVNSHA1TFloanV1VlI4ZU9K?=
 =?utf-8?B?OG1CT1Fyc05acFpaQ3NlTzhhbFJJbk5pdXNRSE4zZmFmbG9IUDVycC9iZHd0?=
 =?utf-8?B?Vm5aWkpZNG1nSTNtNWJXWlZCNk1GRnEvelJ0Z29wNTcvemhLcE1kTGpmY29T?=
 =?utf-8?B?STVKNHgyMTNMMmJlZjloYmtnRVB1UlAyWVVyaDAydjNtcjV1bURCWmw5SmRQ?=
 =?utf-8?B?eVBKdWI4ZWFZdGZJaWZ2akhtcG1lNzk1MXE4dy80U0JqeVdiMGxWNkZDRUlz?=
 =?utf-8?B?cXhXNC9vVCtNUGUwOW9iRWhnWG1KNy9Cd0hjUUJPZDMwMnRhYzJRYWxSTnFX?=
 =?utf-8?B?UXpnUXMrcVJyRzNwNWV1dy9wL3VaS0F0a1V6OWg4Qk5OVllwT09NenhOT3RB?=
 =?utf-8?B?eWw5bTcxdjRqOUZHdGNoRGt0VkZrbE50cVI4aXlRaWNDSkVRUzc0NlY3UVpn?=
 =?utf-8?B?ZXc1VnZ3RW1qQ25NODZKV2FOamt6dVAyeE5BQTgwYURzYmlVdEJaNFRLQWdK?=
 =?utf-8?B?MXZaalBIdUFQbkFPQTkvZmhyKzlzRm9YbjFpUnFkL1VCZEk1bkFHQmZOdGtT?=
 =?utf-8?B?RjNxcmxXUFJWS2FnVjNnWGRnd0JGbkovcTNXNVZUbExTSVhIWmJCdlFWcWFG?=
 =?utf-8?B?bmhRMkR0M1RuaVNHT2Vqc3N4SWtHclk3TEl2STU2bmJHNDZpZHlzdTdSdHh1?=
 =?utf-8?B?Lzc4dmMxa05LUTg3d1VkNFFuUm5OSHZPYzJWd1p5eHdTd2RvNGFzWjZhbjlE?=
 =?utf-8?B?djF0K0ozS0xnTDZ3NkE0djJvOWMyV2RySXk1Mmh4MDlrQk84cDk5U0JBWWJN?=
 =?utf-8?B?dDFkRWtWTWpwRWtMelZhSWxvTFR2VE5uQmRNdFdMeW1PMzlQK2d0ZlVNQWh4?=
 =?utf-8?B?RjBKaEFFQjRyanlzbmtYVVh4RGc4TEZpeDdoODlNYWo1VkxyZ2pPcWhTUi9M?=
 =?utf-8?Q?ielwxo4vTcxBmpGCUCwAVZL94z0pmxADsFlun0NhIiBsq?=
X-MS-Exchange-AntiSpam-MessageData-1: EhD3QGVnHZTRFdqRL5acrEySjLFP4qL3QiE=
X-OriginatorOrg: master.hes-so.ch
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c1e6954-e92f-4260-48b1-08da22a615c3
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0296.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2022 08:16:35.2162
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a372f724-c0b2-4ea0-abfb-0eb8c6f84e40
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZApMOZrD/+HfYYPzSNZ8Srx/3sfLiIjQVXGpfyKRr5qrzmmeSncW3K1QiT6ArWMnDqghqwb57/B7DGo1m0aQxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV0P278MB0036
Message-ID-Hash: CGFUJYWSNFX7KLPBD52W7KRZRWZFKSKG
X-Message-ID-Hash: CGFUJYWSNFX7KLPBD52W7KRZRWZFKSKG
X-MailFrom: mathis.raemy@master.hes-so.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Implementation of PTP in Ettus N320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CGFUJYWSNFX7KLPBD52W7KRZRWZFKSKG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8260092443023061953=="

--===============8260092443023061953==
Content-Type: multipart/alternative;
 boundary="------------Zwt2taasWAG7GeQFR31BqUia"
Content-Language: en-US

--------------Zwt2taasWAG7GeQFR31BqUia
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,
I'm currently working on aprojectabout theprotocol White=20
RabbitandPTP.Todothis,IusetheUSRPN320, andI'm able tostartamaster/slave=20
architecture andruna complete synchronization between twodevices.Fornow,=20
I haveto redirectPTPmessagesoverradioinstead of optical fiber.Sofor the=20
firststep,=C2=A0I'mlookingfor the source code thatimplementthePTPprotocol=
.I=20
didn'tfoundanything inside the hardware source code of UHD=20
<https://github.com/EttusResearch/uhd>.So=C2=A0I thoughtitwasa=20
softwareimplementationofPTP, but=C2=A0I didn't found anydaemonrunning in=20
theEttusN320during the synchronization.=C2=A0I=C2=A0also found=C2=A0thewr=
pc-sw=20
<https://github.com/EttusResearch/wrpc-sw>whichincludeas a submodule=20
thenewversionPPSiwhich clearly implement PTP but it seems like any of=20
those two software are notrunning onmysystem.

Myquestion is:
Where is implementedthePTPprotocolfor the synchronization for the Ettus=20
N320 betweenMasterand Slave?
Is there any easier way to redirect PTP messages in radio instead of=20
optical output ?

Best regards,
Mathis
--------------Zwt2taasWAG7GeQFR31BqUia
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div><span style=3D"white-space: normal;"><span><span style=3D"displa=
y:
            inline; white-space: normal;">Hi,</span><br>
        </span></span></div>
    <span style=3D"white-space: normal;"><span>I</span>'m currently
      working on a<span>&nbsp;</span><span>project</span><span>&nbsp;</sp=
an>about
      the<span>&nbsp;</span><span>protocol White Rabbit</span><span>&nbsp=
;</span>and<span>&nbsp;</span><span>PTP</span>.</span><span style=3D"whit=
e-space: normal;"><span>&nbsp;</span>To<span>&nbsp;</span><span>do</span>=
<span>&nbsp;</span>this,<span>&nbsp;</span><span>I</span><span>&nbsp;</sp=
an><span>use</span><span>&nbsp;</span>the<span>&nbsp;</span><span>USRP</s=
pan><span>&nbsp;</span><span>N320,
        and</span><span>&nbsp;</span><span>I</span>'m able to<span>&nbsp;=
</span><span>start</span><span>&nbsp;</span>a<span>&nbsp;</span><span>mas=
ter</span>/slave
      architecture and<span>&nbsp;</span><span>run</span><span>&nbsp;</sp=
an>a
      complete synchronization between two<span>&nbsp;</span><span>device=
s</span>.</span><span style=3D"white-space: normal;"><span>&nbsp;</span><=
span>For<span>&nbsp;</span></span><span>now</span>,
      I&nbsp;<span>have</span><span>&nbsp;</span>to redirect<span>&nbsp;<=
/span><span>PTP</span><span><span>&nbsp;</span>messages</span><span>&nbsp=
;</span>over<span>&nbsp;</span><span>radio</span><span>&nbsp;</span>inste=
ad
      of optical fiber.</span><span style=3D"white-space: normal;"><span>=
&nbsp;</span><span>So</span><span>&nbsp;</span>for
      the first<span>&nbsp;</span><span>step,</span>&nbsp;I'm<span>&nbsp;=
</span><span>looking</span><span>&nbsp;</span>for
      the source code that<span>&nbsp;</span><span>implement</span><span>=
&nbsp;</span>the<span>&nbsp;</span><span>PTP</span><span><span>&nbsp;</sp=
an>protocol</span>.</span><span style=3D"white-space: normal;"><span>&nbs=
p;</span>I didn't<span>&nbsp;</span><span>found</span><span>&nbsp;</span>=
anything
      inside the hardware source code of </span><span style=3D"white-spac=
e: normal;"><span><a href=3D"https://github.com/EttusResearch/uhd">UHD</a=
></span></span><span style=3D"white-space: normal;"><span></span>.</span>=
<span style=3D"white-space: normal;"><span>&nbsp;</span><span>So</span>&n=
bsp;I&nbsp;<span>thought</span><span>&nbsp;</span>it<span>&nbsp;</span><s=
pan>was</span><span>&nbsp;</span>a
      software<span>&nbsp;</span><span>implementation</span><span>&nbsp;<=
/span>of<span>&nbsp;</span><span>PTP,
        but</span>&nbsp;I didn't found any<span> </span><span>daemon</spa=
n><span>
      </span>running in the<span>&nbsp;</span><span>Ettus</span><span>&nb=
sp;</span><span>N320</span><span>&nbsp;</span>during
      the synchronization.</span>&nbsp;I&nbsp;also found<span style=3D"wh=
ite-space:
      normal;">&nbsp;the</span><span style=3D"white-space: normal;"> </sp=
an><span style=3D"white-space: normal;"><span><a href=3D"https://github.c=
om/EttusResearch/wrpc-sw">wrpc-sw</a></span></span><span style=3D"white-s=
pace: normal;"></span><span style=3D"white-space:
      normal;"></span><span style=3D"white-space: normal;"><span> which</=
span><span>&nbsp;</span><span>include</span><span>&nbsp;</span>as
      a submodule the<span>&nbsp;</span><span>new</span><span>&nbsp;</spa=
n>version<span>&nbsp;</span><span>PPSi</span><span>
      </span>which clearly implement PTP but it seems like any of those
      two software are not<span>&nbsp;</span><span>running on</span><span=
>&nbsp;</span>my<span>&nbsp;</span><span>system</span>.</span>
    <div><br style=3D"white-space: normal;">
      <span style=3D"white-space: normal;">My<span>&nbsp;</span><span>que=
stion</span>&nbsp;<span>is</span>:</span><span style=3D"white-space: norm=
al;"><span>&nbsp;</span><span><br>
        </span></span></div>
    <div><span style=3D"white-space: normal;"><span>Where is implemented<=
/span><span>&nbsp;</span>the<span>&nbsp;</span><span>PTP</span><span><spa=
n>&nbsp;</span>protocol</span><span>&nbsp;</span>for
        the synchronization for the Ettus N320 between<span>&nbsp;</span>=
<span>Master</span><span>&nbsp;</span>and
        Slave? <br>
      </span></div>
    <div><span style=3D"white-space: normal;">Is there any easier way to
        redirect PTP messages in radio instead of optical output ?<br>
      </span></div>
    <div><span style=3D"white-space: normal;"><br>
      </span></div>
    <div><span style=3D"white-space: normal;">Best regards,</span></div>
    <span style=3D"white-space: normal;">Mathis</span>
  </body>
</html>

--------------Zwt2taasWAG7GeQFR31BqUia--

--===============8260092443023061953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8260092443023061953==--
