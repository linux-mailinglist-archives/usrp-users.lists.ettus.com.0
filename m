Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 488B258531C
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 17:52:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C5DF2383FB9
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 11:52:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659109971; bh=OGVieIhhPI2oBq2PC88mLerTnKZVk0LFspz8mDQ/vkM=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=lD7XLB+uEuTSCbiYRjf6713DoqueW03XBvWTUdvKcaSdD1zSUsk9EX5WwmZC6zn+a
	 n0+Hk/ZQx9cZ0NfUtWUuNcc3vc26GpFiVwrMeom8nIKWGQl1I+48v4tDNYBiBBauRq
	 vqBft49WCVdHI0FwK7H+ssv6Sf+a7H4VXBhp0WuOIh6p4wSily6dg608CVrq7Krn1P
	 T23yrhZooXDNLY4kxxAqP7ufkywzhfAxJqcZ2mgp/Ojgn7dj1VSsv19fJC2Y44R5de
	 s9NUrPeaQrLOZJLhp2KtI9VMj4xIMUwjkoo0ISYxFJ3u1utx8attoAn7kRoeTh1W1u
	 ubflKY7dl3c+g==
Received: from EUR03-VE1-obe.outbound.protection.outlook.com (mail-eopbgr50092.outbound.protection.outlook.com [40.107.5.92])
	by mm2.emwd.com (Postfix) with ESMTPS id 190B9383E14
	for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 11:51:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="tsm7/R+A";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SKCHzgm3unCrjx+GTJLX1NcDUEULHc4Lysg6X3hIDeIivI8GppJ09ZrU/ukMHjej9dPAkIJoOuckYKQuxJ9trm8XWXZt18jfriYza9W02wLCfSq1dYMQo0mABwAgbZ8aJ0HO90PNz88RFQQLYgSusAF3IcHV0HLVbm3tvjeyizXIMSJdlVyak3POiiEtvjRaAveHXcNp7ztW/g/rFtvGDvcRsT771gcNhlEu1NyDBL1oPp9igsQnSVL3u2PNrcOOUshXaNoQxdB1vKaLaiyn43UgM1zypcnz5tkhyB/IQy7I5YpCkjqxaR8otNU2JWHK7K3k7dy661mtEW5K4MmqLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gBtbRpQDt8yNwtUiVfmyFTytjxIyc/kbitvS2WT8ONg=;
 b=CWtUG39jqJ/F6w4xrnhqbiVrSjHUsHhwJ+p3C4oUEcI2yp5uQ6V4GNlOJflWciFowr+WRDnNSvPlupv/n9CUWGHPuR/WRZyLT4IccP+TFTIW9BCiTv2NdYWnGnJBNm0EMHTPaZ1kdRc0NuMBq7Khk5BC3b7U7H63FOz+INyIh0xE0VASdEM0ukAWIsHgPLMHeCQe14OSnqkzTrTkWs1vNg0sem1v6z5SWw2kq8Na0l8yIuyP1VUC41oqJG0qc83Kh8r/P8OESsuCTdzq/cakqaYxGbHiwQxuBEnsKgH9hVTq8IK6iT090m69Spe75CeVW5kDbPNu3TyvApFPNss0MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gBtbRpQDt8yNwtUiVfmyFTytjxIyc/kbitvS2WT8ONg=;
 b=tsm7/R+Azu722SrDdFB0BRoNtcOGRFZIcxG1X5QX2pvSp9Y9sz+ONkyIwl8D9BJ/woSxzRBEaqn/AWYOow5Nprkht3oimjMZJLxZ87KmQ2ouHp6ZiS3MUOl9rEa4NRBJZ8QyNNXJ127e71isctGlHWuXOE/KPkqbq3BzlN9eMeM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 GV1P190MB1995.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:5a::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.10; Fri, 29 Jul 2022 15:50:58 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::3d8a:cf3c:ebfb:aa18]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::3d8a:cf3c:ebfb:aa18%6]) with mapi id 15.20.5482.011; Fri, 29 Jul 2022
 15:50:58 +0000
Date: Fri, 29 Jul 2022 17:50:57 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20220729155057.icprheru33lq3wam@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <MAXPR01MB43596E4778E0A0DA838DFAF489969@MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM>
 <BN0P110MB101544FAD777E6C1534B1D66B1999@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
 <MAXPR01MB43594CC488C6EBD2C92798A289999@MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM>
Content-Disposition: inline
In-Reply-To: <MAXPR01MB43594CC488C6EBD2C92798A289999@MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM>
X-ClientProxiedBy: AM0PR04CA0046.eurprd04.prod.outlook.com
 (2603:10a6:208:1::23) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e14f07fc-8b01-4305-d04e-08da717a2106
X-MS-TrafficTypeDiagnostic: GV1P190MB1995:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gxWf7qeg+xgIqSbNymUd1Ta5BS0MBLlVo8v0mjaSik3Lj3R0StJj+DjHV+553j57RPl+XzpxtE4uOAthaVcRb9lXWIdL8P2KbKoRNvVGNnEL9/rD/WQ9MvF9pR/w/SHO/D1E71/qgCXPN2vnB91uI1rCzFp7MrKWHcEkE9fDpFPUwzPiiENCxIboUUVhfMNZbMC/dEHSinE6b6DBixjRylE9UQ2TundrcB0xD7RJqcrdeAHKM2CIATDIJ5oH8El4xTmPD16MysEE8D5TLklZCN/ja2TDZ1ltOcwJF/cW0HMjkAvQMjoFvTbZEKtq/5br6vuGisMwgyAI4bkdH1CUUok6B89X5xmm0hcIlSvsFfKnIyPV9Sqr3TNMS/eh4iKpr0OCDcSvb+TkDGNSUdisdQrR7FfEDAUCM2JMvuWfghmbaiGShBj3rkiXVwh/IHXzz06iaGc/ErCOwAbDVkG4S3EIxZsnG7AgX06LD+XR2Yq5q1jTdiQ0WX1yO9d4qWR+d+C/wxRbDJWys9uvhmUGskbCVvS6Vb7QE1VtOqiAHW1IURTFR1hVX9pSdo6lN7+HaMIJsZ1Bjq7dGvvd1z4m1MZoTxW5KEfjt1iEg7JG3l32I/mQhb5+yBabRkFHrqvAIaGLwKMPKP7BG3gxSnAW+i7H8oko04VFADXLeUDDmVYbiVog610nHr0hRw1E9zKFAUyw/no3UcTeEU5JXUhG8f5sJxc+NOfHGbC3ww4ehW7bRab+cClt8y4UwkS+uQ9qEkIaNhuOpMAiaMg/qpkSUWr2knc8BA+eVtoRjwHvuXs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(7916004)(366004)(39860400002)(376002)(346002)(136003)(396003)(33716001)(1076003)(5660300002)(26005)(9686003)(6512007)(186003)(2906002)(4744005)(41300700001)(83380400001)(786003)(316002)(38350700002)(41320700001)(6916009)(8936002)(478600001)(6486002)(38100700002)(6506007)(53546011)(66946007)(86362001)(66476007)(8676002)(66556008)(52116002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?2VfiXCcfm4Fwf6h4uVmWbHA0WsKHn1Rtkj1kNIr9SiQXwzlmw8Ntw7ebag?=
 =?iso-8859-1?Q?3rj2BEmf49uj3RSfFcpnXtp4kr9kOpFxFDSwSvdfa5zW4IrQSOUtm5nqCo?=
 =?iso-8859-1?Q?R7VuRY2EFvkA5DV3yiEmerOsWSNI1PLasj2U2nnEk/hFaWOJBCAiqnHewR?=
 =?iso-8859-1?Q?eBtQmrQf5JaRVM+Byo4ZjbdV82eILw4L/ojhrzBuq0YUKHt9WS9NIbySyE?=
 =?iso-8859-1?Q?M+KDesv43VzZd5MEX6JWRBBruxm0IOPVQkQgASdzQqb7mU7IjeViPTsgYx?=
 =?iso-8859-1?Q?jH/MzWQ/4CQIToldsLqrLKRzZamN4USP73Gckvab6M0jQARLsaSuqVtA9v?=
 =?iso-8859-1?Q?Z584md9Jvv3fjH7G/HsPI/S6/bigigDZ3AE/AXqlwiaOaa4nsmvIW0D2UA?=
 =?iso-8859-1?Q?fjFgLRfRn1f5r4BE7MVIrNK0P7NvxYeCfflQG/skKAyojtCi7hv8O6hNhF?=
 =?iso-8859-1?Q?Nk4BILjKTrqoqFKXcy7ChsQhsoc0g395Y9MaERQ50A44yiAmZQwHr+0Bnc?=
 =?iso-8859-1?Q?jnuYImIZUGs6IJVda7NJefqzaEUOZaTfubxLNv+iB7Q2kf8Y2FwwFTSgNH?=
 =?iso-8859-1?Q?lHGEM9DtJnkcrZGn0Fxr9xno/s5XevP2QSj32LNAeptz+v/lvqI4O/HhCt?=
 =?iso-8859-1?Q?GQi/UAyPpcxJ09pUBl2CgZBznbXmH7EVXQoE2R2ni2gMlS1yW1P/yrQBa1?=
 =?iso-8859-1?Q?SoOCEFo0ALXJwODgaYM+vSY7otPWa9Ol1zkvcXsymY/thDjdgP17KtKk2b?=
 =?iso-8859-1?Q?uy+pTiA5ZlmyLVokINfn2QGBNs244eAojKks0ueW0zpP+J/dcCbR7Wgzpr?=
 =?iso-8859-1?Q?2zOWPMfnDWJA9uURlp0JG3ThpxrWtEDF+oW5/yXayyr7SajoP5Ez94v1ob?=
 =?iso-8859-1?Q?yXVhJ5Cfri2lQMQVNZDUHsi++dZ900EpSjGAmwMJL1lTVeGq3NVh/Hmt/l?=
 =?iso-8859-1?Q?H8nUlH38ec9VhudbSAKsxiN2/3UAEAOc5E675IbQrXRsakgJgYGsi5MwPc?=
 =?iso-8859-1?Q?dp3eAPLgefD5Jp6D2JB4zQGo5r93IMEm8TvT6n04k0kYCEpR6DAxlJhwYz?=
 =?iso-8859-1?Q?bbJrsAH+PUG7JMzVhBHBHS8aE2AykXjV/uzT0zZGOGmzFMVRlmOhBWRTO1?=
 =?iso-8859-1?Q?M7fsG5TuYqinEjQ/yD5YNwC6mykNeFjyLUkgkkhtrV9Ig8khHZoY/BJ+rC?=
 =?iso-8859-1?Q?GMfpvnPJ2jZKONhB1k3NBa349y67mqo4p14sHtWNxbpJO/8S+QLLH+jT08?=
 =?iso-8859-1?Q?KYi6iVtXgL5gv9qTX1/ujrn7qqLX7UOtNDRTa3L24yxyqI9J09KYmxqPRY?=
 =?iso-8859-1?Q?ytSk7NlmpKhA9srQ9TxZO7J7RwhMyRGsYfvtpJv/s4ENyEqX9fX1RIn1w9?=
 =?iso-8859-1?Q?6kWCYqiXnS0lxnO53Iy/C4TZQL1tcEuX3BBRFU4lPMBqsRdKReq7gZ18mw?=
 =?iso-8859-1?Q?q7GMFCNCijPpXCFbG5/zfNQVeCrujvT44s4vpHNbZIadJSYuVQro4ASOLu?=
 =?iso-8859-1?Q?8VtndNHksnAMOmqHks7Bv8WRetaWonzxN/I4MSu7PA2LcIRJfVjY1Y61sR?=
 =?iso-8859-1?Q?jD6wWIZknMMyxdfWzSfICWMya1uPuA+SAYqGo9jqvaxdJkmwfGnFwIccew?=
 =?iso-8859-1?Q?8BbhueL7iSOBBW7l2eis9fMqOpcrFqjkPj?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: e14f07fc-8b01-4305-d04e-08da717a2106
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2022 15:50:58.1952
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hEUH0OiOQnRcOE2r18RlbYFHvG1H7b2F/TX5UVMjWtFbTT7zTZVDsTsAfO4j7hlIWey6qRWgEa+bk8AFChH+Pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1P190MB1995
Message-ID-Hash: YAWAGENQQJERHEIYTU3J4AL5YX2FV2LE
X-Message-ID-Hash: YAWAGENQQJERHEIYTU3J4AL5YX2FV2LE
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Python API on windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YAWAGENQQJERHEIYTU3J4AL5YX2FV2LE/>
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

Dear Saurav Roy,

On 2022-07-29 14:26 +0000, Saurav Roy via USRP-users wrote:
> However, I am stuck at binary installation in Windows.

The binary executable does not seem to provide the Python API.
I think you will have to compile the UHD library
with the python binding enabled on Windows yourself.

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
