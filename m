Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCDD31E7C3
	for <lists+usrp-users@lfdr.de>; Thu, 18 Feb 2021 10:09:58 +0100 (CET)
Received: from [::1] (port=41818 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCfJj-0001LL-3q; Thu, 18 Feb 2021 04:09:47 -0500
Received: from mail-am6eur05on2102.outbound.protection.outlook.com
 ([40.107.22.102]:60128 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1lCfJe-0001GO-UP
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 04:09:43 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ozie9+LUfaJDVREf0Is+ykiuLhMaBwOdAfw7LNFRUSMQFDjS0SdHOt5KeOkJhxmGH/0p4Lg1kTTmGCj0wJ+2G+YWXTfLjHPh9Nh4rjd/jMzBQkwUXPFUvvDsw93zRdPDl01YO7z7gzI1PgdCTxtUkLLFJxN63Jg6jUPx2O6i8by5yoWEy5gb95OvA0nVKljnEiuY5id8lVNr3Dl/9HqEdw+xNUUxislbSIaZ0tpzxYDMgT81hqKQk8lxuEVdDGalOIzMXFL/BqO8JKxuR8lkxB2GocGbgUXpRTggtyvVjY9uOtdx1N1Qzm2Avp4+dUslNDfCjAnxKbq3+akthZ556w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y9tgesiIBOBUhokxgAIoPU3pbdk1SFY3hemyFT8y214=;
 b=JMEdrl5HVxTrHfX+07okHywihN47ndJv7Py2/53bBf/yVotanVETAg9YkuVYuyvUfBoXf3rBUYv47BItvNcjKlF16gIoNsK0NZ3mR/xWYGlDqdchnKsHlym8b8czIqQZN0iHX94HaFyeP0FHX0NtURohmQlZkz4e8I7IkESycw+bh10Ljm/VFmHMsaqaLBskiXYY9D1ulFjkiPFKMu2POkaeDywve3BjqQhNi9M1eVsL+UaMZESJAxWUDMh/3/MCEcyFyqe30XKxCeXt4Zhj5o3d3TB6GgCiBJbYuWg2XBlL69Ay2sRziPNemPpew4cT5RnlaXCYcqvR7/3cmVDm0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y9tgesiIBOBUhokxgAIoPU3pbdk1SFY3hemyFT8y214=;
 b=w1d1Qa7Pr7A7MtdJ9TosJ4SYck45anSP3Rj56YIYrpaGPTrPiQRiCCO59cqj7BzZaJg17HhNlOxFrcX1ecbHMvwVOjTdAJ4UYBcAc91mNC5MCVyliX1qVZy1U42gHktqKrhU6/ibNNfcgx/8hWP43uKzq7b92yob0MdzVH9IRiI=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM7P190MB0696.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:114::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27; Thu, 18 Feb
 2021 09:09:00 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3846.043; Thu, 18 Feb 2021
 09:09:00 +0000
Date: Thu, 18 Feb 2021 10:08:58 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210218090858.serfuy4u67rmor6c@barbe>
Mail-Followup-To: usrp-users <usrp-users@lists.ettus.com>
References: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <20210217172935.joprwj3f6rwdu3jo@barbe>
 <CAB__hTSncBC=XS1YvCoE1jip2kY607aWC2hrFUOYcPCq4V6+iA@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAB__hTSncBC=XS1YvCoE1jip2kY607aWC2hrFUOYcPCq4V6+iA@mail.gmail.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM0PR01CA0081.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::22) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by
 AM0PR01CA0081.eurprd01.prod.exchangelabs.com (2603:10a6:208:10e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27 via Frontend
 Transport; Thu, 18 Feb 2021 09:09:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4ff4a573-131e-41c9-ca16-08d8d3ecd458
X-MS-TrafficTypeDiagnostic: AM7P190MB0696:
X-Microsoft-Antispam-PRVS: <AM7P190MB069646A40972BDE8F6C98FDAF0859@AM7P190MB0696.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8ClLMlbWyGzoZDyN/uDMk4QJXLByyInqsc+kOFByEK07kDt23fEU5zaaLGnMBclgwNIUK4MXX0WWKY+LRV3js7czUlv8mGf9MG7SmGJJJ5m9A8M2LkCdduh5Fk29Iz4upiNSg1ZbNInZjsVXqjhmo7vermDTVpy5pBc4XyZtE05mrx4npvVWcmsU0dd3LgYz36/ErsPi9jnG3pf6kyDPLMvHvcnO4xy4EY9SdsBDyhyV1L3pHoOHHPVcAGjPAkN0NZSatQVhCnXrKO9IimkXLFa0ErCUBYMVJ5EIhMWp4wQMR2Ei7HxbHEqDM1+an6kxIZVlc5SVBrCh9uKLrUHsFvJslPV8Jfi7yOeXxsxvqY9XkeJeLr8DxLBeo2aE0TGcNJ2t5zqPKPFPyW/vCXQT+M/9vmbFl1Y0A7wUFYjOtKK4IDLH8/tycB2sJs7DqrADUuWtNxEmVY4FMdWqLr0RSM1qFXJrC4imCVSUCe6oH+qD4p/5mMfAUUQiWCr+lxuTWTV5RGrd8VGtZgpFFZ0nMiRwHl6DAMym6hKa5zQpdX8I4bww0mq1cfUHs/swQCNlAXRhHpmMA7HrCvWyj4P+QlP3tUC/U/i+epBw1+HLT44=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(346002)(366004)(376002)(396003)(136003)(39860400002)(4744005)(956004)(6496006)(1076003)(786003)(52116002)(5660300002)(316002)(53546011)(6486002)(66946007)(66556008)(26005)(16526019)(966005)(186003)(66476007)(33716001)(2906002)(9686003)(6916009)(86362001)(478600001)(83380400001)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?79GSDa670i4tMW0NBqf9EUrLfkQXI+nW537pWYrJoXN68mjZmLP8pS6QwL?=
 =?iso-8859-1?Q?n38aub4rZAIC/n7OfIhtmKq0zyZOg3p90ZqJfjC9kSmiHX2s7LdnYym65T?=
 =?iso-8859-1?Q?u36dntV+tpKZCqEiX3cYq+dTOTAuC/bKQGYzBDx5kq2h0Rx2nhfBt9nkE2?=
 =?iso-8859-1?Q?Nxpuk7uVTYBQBfe3qB3GXKRyzZE4Pp8hBFSz/HbjU09NUub+TA8tXjYe7j?=
 =?iso-8859-1?Q?LIBumTzGEbLVOF1tRsMcs5zXYkZQX+EzLaOUBOx0MnBTyuMOD2C/GooWxS?=
 =?iso-8859-1?Q?OhUOez49PCI53pWBmFyGiQLpWymy5SZt27sgG6LKM9YN+Lqmyj6rFzv+4h?=
 =?iso-8859-1?Q?E9z/imwiN5eBTLqMeeoM+1GOK8Sq2saXo8md8kuZ3YmESpGUhhT5309a1Y?=
 =?iso-8859-1?Q?tWuCBIlKneBvd6pWtmlHb47oSPAs0A9tftzuvXSgNZun9k7DWJgn+wx7nu?=
 =?iso-8859-1?Q?6+oc1jMnbzRYngY17+da+khMOhLOTwDV5CGyTQjDfTc5NVo49PjEEVy8eD?=
 =?iso-8859-1?Q?mYKyTC8N7ntoQf9iA+tFACt3xHQVEbKoPTOoktU7vM2n1tDxjtI6S7OspS?=
 =?iso-8859-1?Q?RTrVj7LQ6MzhXOH2CzlupGlHMnfTfXtK18XlCuJZk0EaCQqSnW605nOYJ7?=
 =?iso-8859-1?Q?G5OOed4/76vdfP/2F+Mwv5PapMybpMzvfFBZdmPM+EZaUDsc3Dp32M8QL9?=
 =?iso-8859-1?Q?mu/0+dRXaZoA05AGue5n+aVsWvw4ODJp8P61V/JHMowSJskUjGUe9UV9eD?=
 =?iso-8859-1?Q?mIq1QYcYwdIVwdcRuUb82xccyHSBY4clgQdmY4MfG3T3F8E9YkSm8EMyyw?=
 =?iso-8859-1?Q?D1mlV5WVYcXeabvA20B2/YlmGiMLJCYENFN6xtbwPuX3bIEV1akti6LjyE?=
 =?iso-8859-1?Q?t0AjYO1LJgAPm01eg8APAn0ud+Nc64MCgkni59HbDeUpc7w0Pvs+dZgPee?=
 =?iso-8859-1?Q?7YXCHS7Tqs9sQtF4E7hoD6SDGqeE19hLIwIDnTsSB6yB6Awb6KDiKKX8Vk?=
 =?iso-8859-1?Q?hEJ9soI+IZAllTqIoWayZw/tMT906nBtTRS9os/5pRJpT6TA35B4dwDMtd?=
 =?iso-8859-1?Q?QSAnpwSGnUxnZIFKOL/1Bt6j84T/u68dnqbkjYa+7VF3xyhf1vLFGMAir1?=
 =?iso-8859-1?Q?NzbmGEYV3VHGsB8dhjsTF1/0RtfKn1jPOBmmYGkn9/wUYGBtTAbuHQ7Tl/?=
 =?iso-8859-1?Q?6wQk6lG21mDasdTEEoCONRiEZZ8cAxKf55H0MX1+ci1PnYGKtWLQ7q751H?=
 =?iso-8859-1?Q?fV51Svkmz84LpmybCI1UQf2nzJDW3nmk7RhQ+7nDgo4aQVb0FWJYz691ov?=
 =?iso-8859-1?Q?QgCeiUUE84z6IXYmVTBy82RBvmwfGOGI/lWPUbJ6XxmjtdeR8CdmoBEw7K?=
 =?iso-8859-1?Q?9HGm/IpYYB?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ff4a573-131e-41c9-ca16-08d8d3ecd458
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2021 09:09:00.3456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xWqwbhkL0CmcmRP+ckDgyiv0xv2HbRa+CF1hOhirO4YBcTYSnLhhHwFpevJFd85r48gJcJbN5FPKqNQR6cu3Yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P190MB0696
Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
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
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
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

Hi Rob,

On 17/02/21 13:38, Rob Kossler wrote:
> Could this be another case of the "issue_stream_cmd" never making it from
> the streamer to the Rx radio?  C=E9dric, didn't we find that if you don't
> have a custom block controller, the stream cmd does not propagate as expe=
ct
> to the Radio and thus you get a recv() timeout?

Yes, that my thought as well.

Information about the bug and known workarounds can be found there:
https://github.com/EttusResearch/uhd/issues/406

and the mail thread is here:
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2021-January/06=
3522.html

TLDR, your custom controller (cpp|hpp) must be compiled in-tree with UHD, n=
ot OOT.

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
