Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51502369588
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 17:02:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33A6B3841E6
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 11:02:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="1/QSDUtF";
	dkim-atps=neutral
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80111.outbound.protection.outlook.com [40.107.8.111])
	by mm2.emwd.com (Postfix) with ESMTPS id 03034383E8D
	for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 11:01:37 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Of6SHK+Xwut4cPOciwzBWlA2ntiOGPy875/PziuJ+lyt/VWm0w7Wo6PPAyu7k2UytsotB0xMIoL/yO/yngc7GXLZtDEuK8CPDbXt6GDgVWqSzr/OxjpStQk5SzpNAZV79IFi+GgcVgf1xYynP6kzJQGXM91GaruO0nzKA5g2h7j8G/ZVdJlnQvim4a6CBqb8HCOJ2m3tcJ2HfWfY9y5+veGAyiytEomxWSx9JNjRIaQbGsw389OP55UKPlCWnFLWyr5ZbPpE27vt5kInxJbcm+fn2pASN05LY4PIBWlZ40uULKCzvjUz05eGayxNXgqsegIlPeH5H/Owu+nIbYvBkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fHTXLLXytu4DQiZgdRGp/rkOKijDHNmDcGotMQR0faw=;
 b=CYxHcPaf0HLVqJUWgUBWptMks/4cvWsrHy0WhyGl/7CSitLnQ/J59kba3tieedIHMTqrhwe+BooJTMZb9IV9imugB8GbKju7sX3UqYQ5BLw7qeYSGO8CY9Kku2YERzGenIlWGhdiiHp62DuSQzuMSJr5JBWoamAGpGF00OGAIc5E78Ms3YdNmEQoXtqb87umVJ0NQMK1kNUM7VqG9xhJ7Di2libaYoDjn+KMH6fird05mhsIZuOzO6x9w1xn4Yg9K5lw7sUYzqv2/dFRRkedfzYQaUDYCfknRGm1B5UR0XleQVSjmizZhPzDFlzlpevvVosjNOpkNQxrFxVeeQC8gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fHTXLLXytu4DQiZgdRGp/rkOKijDHNmDcGotMQR0faw=;
 b=1/QSDUtF6/AXNWJtkHpsQOV5xW/297XZGHqwPff5v01d02dw4I9WAvHlMFvDwgN55aRWzxkWHMe+7y9scc7l5y+BAhOLPzHCl1Q6JuDMHWYYthJ8yL89GKWtR3lkGD1qXN1l0f1Og7fJKVZSiE/Wx3K59t/F3HhkoHvtZUmolsE=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1447.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:3f1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22; Fri, 23 Apr
 2021 15:01:35 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::f5ee:cc76:ee5f:4095]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::f5ee:cc76:ee5f:4095%4]) with mapi id 15.20.4065.021; Fri, 23 Apr 2021
 15:01:35 +0000
Date: Fri, 23 Apr 2021 17:01:34 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20210423150134.pqtcdylst3m3lnwj@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <20210423093121.uw2z4fwanm6xayzw@barbe>
 <325916070.97754.1619180810755.JavaMail.administrator@n6.nabble.com>
Content-Disposition: inline
In-Reply-To: <325916070.97754.1619180810755.JavaMail.administrator@n6.nabble.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM4PR0302CA0017.eurprd03.prod.outlook.com
 (2603:10a6:205:2::30) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by AM4PR0302CA0017.eurprd03.prod.outlook.com (2603:10a6:205:2::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.20 via Frontend Transport; Fri, 23 Apr 2021 15:01:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 029b4ffd-6f47-4717-cc73-08d90668b042
X-MS-TrafficTypeDiagnostic: AS8P190MB1447:
X-Microsoft-Antispam-PRVS: 
	<AS8P190MB1447D010C256CD7E0B817EA8F0459@AS8P190MB1447.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	P3qvNz5SZ9yc1gNhcHIsN3ZhtOB77WEONFEFBkmCWrEFEgMqvXDwG4Nkc1y5ZbAcjwyhA22h9gOk44z/7mClZfHrr+ze9oTITdmwyxmaNcvIUl1ixE5ORUd3AJi+gwRRlS/i/8+tKmWwk4RVSmCu/jbKZ9ZOHKoGzIaXOrtCe+hhYjiBM+4XcueH2z7CpsEOX2/ZIIHIX1pF3JiPOZCa93fcdKAI6ZuH+C1AYgqy5ZHwNgZysINlKjaXI6EKtABPEK1WYevy06wi0IMdjMRjAjsGmj70Y6cJduM8nOlX9kw3vVBFodR29Slh4rZDvnwgqlSY8ndFR8qwV9B98aHpw7N/Qcq5AHAa1ZcDuTZ1B0xfHufHG2z86Ipo9XdYrs+q84BvKx4FrIC8R4dwucoG8yv5uB8OyINevYn20290TFxp54peBuKIPlsSUuBMSWb9ySaeItRviBgE64mPCXsYzDaZ58sbJtHRTf5r/IPU09qulyDmlmYl9qITPJpNm2XUPKVKYOMyEn/XmxCmBMTRUTk5+cRzoigoC8hkJJpN4PbbG0h5jcUhacuLSpEsSWl1vqyw0HaotZMyDuHLoXgFtGB0eFxuiSOKfCC4wTD+jGsAhnaIG2w7N+BMksJ1bfCxRMSu3go2pZxpCuL5zcNtOrFv9NR6wt1QcvNwmM0E1o1EGlTELpCoRJr0o6mv+gRdhhyDcldqWmTe63cFvycUPgOAlMDZsHDLa1kUC+0i/QA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(7916004)(366004)(39860400002)(136003)(396003)(376002)(346002)(786003)(52116002)(8676002)(316002)(83380400001)(956004)(966005)(6486002)(66476007)(9686003)(33716001)(66556008)(186003)(86362001)(2906002)(5660300002)(478600001)(1076003)(6916009)(53546011)(8936002)(6496006)(26005)(66946007)(16526019)(38100700002)(38350700002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?iso-8859-1?Q?/myuc+0WSDI4BNFYXDAvpq7/kbAJ9F1cHFbAIc3nhp9ABDc0CaE0sa5yy+?=
 =?iso-8859-1?Q?OQe9xnVDq6NfwF8y71gCJiE8U1DQwXLBusal3/Aa/hByN0UyZ7c/0y6J0F?=
 =?iso-8859-1?Q?jjb6+Ajp+DlWAPXL5gVP/rmlXcmXwUjj9xMaAUNtmsvZRzoJUFpplhJrY+?=
 =?iso-8859-1?Q?d0tv8zQFrUFpOs4KU/7A0gR5Ap/sUAUOgkGdBYr6Lxr/kCbkn8KyZoLIIr?=
 =?iso-8859-1?Q?3DW9zhIwLQmho6qiqiYqScGncBpcM1xfqPkR9KUoVfgfQMQa6DARgnQy67?=
 =?iso-8859-1?Q?VuuimSP7hI4It3TzF674BdGMoWaR1zQ+76+V/AmgcWYUVd+HCK8vFzpE9r?=
 =?iso-8859-1?Q?4m6JGLv60kvC7eP4BkCiNBkUDOOyUuINqP8mtREsPTFmXNIIKPwKS8sJ3s?=
 =?iso-8859-1?Q?OxRGgnGoqyYEXLaxcGDzkk6L6JyVNPBuGm8/14JtcIpItGNvtFwUTjYTH3?=
 =?iso-8859-1?Q?i/JZmRDLNVb0O8a3cazaNa3B4CeadTSJsBF/59UCGUo/g53TIarrCjFMwf?=
 =?iso-8859-1?Q?XlUw246C+0ynpZSBRNja7WxnDs0wsezdqdb+w6uKAE2lH9kZq63UDla1jh?=
 =?iso-8859-1?Q?RKAbUjg8FOdkDuCzvJi1qqfCmB7Tz55JioLD1mEpENeSsSb0CjOcOcFyx+?=
 =?iso-8859-1?Q?E8hrJf3FTq5e9JAh9mqLaeU1Vl1t8kDtxa3qX6yxeFhIS2yFAsM/VWH1c4?=
 =?iso-8859-1?Q?rVICjZ1XkwQzsP2fzl8C+fdZMdX1mv/DH8SXkBFdeEGVniRvbRFv3OyhFq?=
 =?iso-8859-1?Q?2XRikD4BoSFzBEmSH8MNT0S1cyFvRoQh1aNgsmqK/Tmze82GW3ynkyFevu?=
 =?iso-8859-1?Q?EET++OBi4OsKZud4QuZH/uOcNwkKVC86bL33x9EcuyJrumxSH2laBqescn?=
 =?iso-8859-1?Q?/gKv5FNp0f6hvuawQJllkcrIxq3KanDIrr/qfHFGWvjUvbzW0iTv1CvW2P?=
 =?iso-8859-1?Q?iVFZJNCTblGYKeIJlTziZLeJyrkVzo6o1tNu3VzXlIAKakD4c/KSn8BrYl?=
 =?iso-8859-1?Q?muVe5aYDRQN+9XQi8viE8eFz0wVVWvxbXQf8hGF50fJeRaVRwdVZS1UyVZ?=
 =?iso-8859-1?Q?PYx396gOGsYh5fm3P0Zn12nU3JfigdyGk4Uh+tkHUaNUFcyh6vl1TMZQZQ?=
 =?iso-8859-1?Q?DScZP0okrZpufKwAKIAI99jqo7MMbpz3Jo9isPpgoRned2T2NixWBJ0J2E?=
 =?iso-8859-1?Q?TnjZnP9XKn4VSY1LUagpgPnni/u6NnCiSovocqCX5crs2BgosPoZ05S5XH?=
 =?iso-8859-1?Q?Q7rLA0/kFUP/YBChIUnrxDdx2RtUz3TloNtk4KA35SiG79s1AVthalf7Pa?=
 =?iso-8859-1?Q?Y4WmXOEU5POFyZBcno2IAWBA87C2EIwFYLdI9WVZFyiNOeRiD3JVeCAGA1?=
 =?iso-8859-1?Q?3IGK+L3BsG?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 029b4ffd-6f47-4717-cc73-08d90668b042
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2021 15:01:35.5837
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DUHWDOWHXDVzVGQ2QPSzPySgVEZJhUojCRbBM2P1DDZEx66iqE4gqDviX5gtNefqfUoHalThzQzZRzZ3Vv4AIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1447
Message-ID-Hash: YT6IAQQBLCLFYOU7QWOK2AATWDYENA56
X-Message-ID-Hash: YT6IAQQBLCLFYOU7QWOK2AATWDYENA56
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transmitter thanks to USRP E312 with high sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YT6IAQQBLCLFYOU7QWOK2AATWDYENA56/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On 23/04/21 05:26, margaux.bgd1@gmail.com wrote:
>>>>> What is the procedure to create a transmitter with a sample rate of
>>>>> 61,44
>>>>> MHz with the USRP E312 ? I wonder if I am not limited by the sample d=
ata
>>>>> transfer rate of ARM processor.
>>>>=20
>>>> As stated by Marcus, you are limited by the ARM processor.
>>>>=20
>>>>> I want to use the USRP E312 to transmit a sequence, with IQ data,
>>>>> continuously
>>>>=20
>>>> Do you mean a known fix sequence that you repeat continuously?
>>>=20
>>> Yes I want to send the same sequence continuously all the time.=20
>>>=20
>>>> Does it need to be send continuously or periodically,
>>>> eg. sending the same preamble sequence every x ms?
>>>=20
>>> I need to send continuously.
>>=20
>> Then I only see two options:
>>  1. Build a custom RFNOC block that streams the sequence continuously.
>=20
> I don't really understand how RFNOC works.
> Does it allow direct modification of the FPGA ?
> So I should use GNU radio to create a RFNOC block?

There exist online resources such as [1], [2].
None of RFNOC blocks available on E312 can do that.
You will have to write a new RFNOC block in Verilog/VHDL,
then synthesise an FPGA image (expecting there is enough space),
push it into the E312,
and then instantiate the block using C++ API or GNU Radio.


Regards,

[1] https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0=20
[2] https://www.youtube.com/watch?v=3DM9ntwQie9vs
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
