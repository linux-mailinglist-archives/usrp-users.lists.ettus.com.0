Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BABD38FFD3
	for <lists+usrp-users@lfdr.de>; Tue, 25 May 2021 13:14:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49A3A384042
	for <lists+usrp-users@lfdr.de>; Tue, 25 May 2021 07:14:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="DdA3MjSB";
	dkim-atps=neutral
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70097.outbound.protection.outlook.com [40.107.7.97])
	by mm2.emwd.com (Postfix) with ESMTPS id 068FC384037
	for <usrp-users@lists.ettus.com>; Tue, 25 May 2021 07:13:07 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gL38/NyHKt4uKMVsGa3MqEYhty8VgB0LYKLL3RJfN3y5Mtd3rE5ARsHtBbfNeRiRu9tj2mI2nMAn6lq9jmWFaG7+PPF6CD6ZtCsVCaOc4pLU4DyJkoL8xTg7U7c45h6aIlWFzGm38uIL7xEcakjEwTJXIuTZVwqR+kGnjqeTRfVJSrT862yZL111Wjg9C5MiJjYEYc6Vp6dY3rXlxfvASsVogcGJK0TCuvjbcs/5YnzS8obtb+AybYAgQ9k3N3A1w+0vehGaOWNcUfBvtcDxWdRub5VDDxlI21z7SFRaRwFPNwSrKMcpG/ey/wcUsTt/H79jMtHYO3Ay5afZgY1hMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hfYAjpoQVm+lS9Bk7GmXfnII5ur9oOyaRQ2R64eRQMc=;
 b=FpIO89sWq8srI5fTWJ/4IG0P3ZmqSXqgMWA/W57bPljFnMXj7gt4ijpU3P1m7ejKZ+48k9vvucOCiGhw4+YQUtbf0YbVYYIRPKV34bU0oSDNSr2h8AhGHQw5twSoDJTBN/5vXYEPXPACEjFvxulWLfmyE4/WmtyP0YtXCSNuUWH614AhiNcYqU+Vzn2qrjCAOWfbWfaQ1EeiAenaNj6do1UVx035C5X0CYjTQ+cMieeGJpyyPkoeXhEk7GKMcTytQaWVSE7aEWNpD6y96mwRp7NpHVmJTnqLvrTTAe8NblGaLGoyKDGiDRU7VENeGDjFPiDF/RYiJtKKf7u+YSjS2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hfYAjpoQVm+lS9Bk7GmXfnII5ur9oOyaRQ2R64eRQMc=;
 b=DdA3MjSBtCLaHATz2/mohL5/i3r/U3SwPjPZozgQMB7pXwwfTve0u4WHxHtZQmRBRQfXnnc5XAU5IPM1fo1/4SedmTtq9RUfZlIMJ/GW7Vi0uAdU9PGd/pRmr8ZUB60Mlp7XsC97rbakZmg7WeBJ15rYGaAUeBJqbRG9UbCDhKM=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1078.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2e7::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20; Tue, 25 May
 2021 11:13:06 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::f5ee:cc76:ee5f:4095]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::f5ee:cc76:ee5f:4095%5]) with mapi id 15.20.4150.027; Tue, 25 May 2021
 11:13:06 +0000
Date: Tue, 25 May 2021 13:13:05 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20210525111305.guilnebqzdsm6z7o@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <20210521094441.yvoqqxrqv7ioh23v@barbe>
 <157DBD65-B914-4138-9752-C21735C0AF8E@gmail.com>
 <20210521134221.jnh5mms6iuhoghos@barbe>
Content-Disposition: inline
In-Reply-To: <20210521134221.jnh5mms6iuhoghos@barbe>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM0PR04CA0007.eurprd04.prod.outlook.com
 (2603:10a6:208:122::20) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by AM0PR04CA0007.eurprd04.prod.outlook.com (2603:10a6:208:122::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20 via Frontend Transport; Tue, 25 May 2021 11:13:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: db864b9d-0077-4710-c5f0-08d91f6e120b
X-MS-TrafficTypeDiagnostic: AS8P190MB1078:
X-Microsoft-Antispam-PRVS: 
	<AS8P190MB1078372B0B9D7C97F5B0B0DBF0259@AS8P190MB1078.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+8W6Z2AvKbHOLsyYqBY+OJfCfFDBmZHxLafOldQu+97v3hvIVJpdc8iLw/UjNI2PXmNXaqiSL21TQSSbK02D7HI9mdgyZApbr1mO0tgLO6LbzVEhDJ6bgKFXFwhDQQFv/o/uZqrUCmWiN8Q6zQuUcbMXwB6y0Ac68gX06lXDiLOShaNVGA+Caqkel+YGfeRfa1nCrb0eG1XDKBE0rG89NkxOiKiqO/bb27q/zGbRfje+z680x8eFMziPnSMzB5CIZ26vNHvzHtDsOc9RodoM/fdKJ8uGjgwdD0eEgIMnxa8jR4BdeRKWkoNoXOIqGJ36tYgrBOeRKPn7hUmBvpUSc4DKs/nosnCFlz13zucpYcAP6F/WdDL6Fq0HTV/fz1c/TvndVzeogrfD3iyxnpHlZicelqEfTlTzntXwM5+5KOZ2ZBn9H6ZxiaDcEd7uyR1PYpQNW3j/JK05Y3DpCK569/X3Q0MFQplF5NH1cmdWZCgKKDp/HrX7TnYXP/RnTR14x3EXW7HcZ3UKE3xLl/TYURodeSJHzd/tqbMBDk+u+haXSRBfq+vyJZnTn/OUSy238WmPU9qcVN9+4MAsJV0XM6DuAPXbJ2u6q54j5FLkMtjESHRJuwmBxgdQJ4FHWpydptQI2k4imgQ8p3gpJ7K6pccebimLX0kmDZK4mUpsxT3Wx9u2sTgbzfXefSUMXr07cc6ByzLyDgNIr6mVWvTQV1To4Rxu/tpVxG+JUD05ZUD5jcZf9HnBUgQnU+sE06dTt+sDMR5O108QkD+CTiFTNw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(7916004)(4636009)(396003)(39860400002)(346002)(136003)(366004)(376002)(4744005)(66556008)(66476007)(6486002)(6916009)(5660300002)(1076003)(186003)(956004)(66946007)(478600001)(16526019)(966005)(9686003)(38100700002)(52116002)(6496006)(53546011)(786003)(8936002)(316002)(26005)(38350700002)(8676002)(33716001)(2906002)(83380400001)(86362001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?iso-8859-1?Q?1Ey7yQTz9jr3HaT4HNBAPmZR88m4pRudG9vAAh3FCk7prvtyc4GhbTdwmu?=
 =?iso-8859-1?Q?cC1ipS2O+PbOPgo9Gkn0kKh4SiDoGHMifzVJPJNu3fzZgfllhkQfnh+AS4?=
 =?iso-8859-1?Q?17QUpfZwYDg2+Coc7e6NMw2AbtOIJg/W/CbRS7Ct35q0h0k7i8dKD6+PCp?=
 =?iso-8859-1?Q?S9rxYPR5uhQ94XBbdzhw7owhUTBaekv/hiY6abBEgeFBh1XE1nteHCfMNP?=
 =?iso-8859-1?Q?ytHTYwRJlmLdrececYugaaRmN0SrqMIsYsNTn2TwgEgOQX8rSk1G/f6vNK?=
 =?iso-8859-1?Q?BgDdlLj4WodRP8wZCGGQOnhKfXfTu8OY7qbtlO3LmQTGnbcFWO92tWEJvi?=
 =?iso-8859-1?Q?hSYrpEbBn7aXnr926t9tvbrT/nzzYf4binRkLoVf4JYWwLwIUSBQt6qkVU?=
 =?iso-8859-1?Q?zjugaW5hFAaFJPoTd6oXlND2uiEom3Clk3H3XmdGxda7EOZ/zwbfRhvGQG?=
 =?iso-8859-1?Q?EwzQx+NUPMAk4CneBoxHkDvkd9C+ucU8pBYlYP0KpUAdTmX3B3uoiD77B7?=
 =?iso-8859-1?Q?1js0ogj4vyDX0WKz4QSfpGazDwRnGpi8ivp6kQe3+cFBXbX3XYql0aaihk?=
 =?iso-8859-1?Q?Rq/oMBQsb+RM1apbhgRScoLsHWWJthhUYxKPJW/JTZBZK9rqVMUl3epLxb?=
 =?iso-8859-1?Q?V/SExZDdxsabSAuHsSsEQJiyz3xsd2OpMcYMslKBklPXbiCDgG8gIkYV23?=
 =?iso-8859-1?Q?ZzPPollXR4neT5WevbyWX2RfldOAUCWw4Sr/KizTrNc99tLum7VXxjCOea?=
 =?iso-8859-1?Q?EyPwCzmgajxY8HXTHUGsRHc+PVS461JlJA8f4zqfDsayTY0SOYcWEifLbH?=
 =?iso-8859-1?Q?tD9q7r6vK63faQ+XVL5Z5djU5uqhH94UTKxzDB+AZaW7FtH7JF9d3p+jga?=
 =?iso-8859-1?Q?AXXUBD8cFdiaYABMjYSl118JUi8PhO/HP2nthyZrH5GHMV/3gqMvaVwUK4?=
 =?iso-8859-1?Q?YL4aVv9WvU5/TIZTSO3FGa86KqMuU2nsvLqzZhsYAOZHw2mZfmj7K34hkN?=
 =?iso-8859-1?Q?g2bj97FF4ojoBRD5z8GM1xM5OFyOhleY/ElahHu5x0AfEP0dWNGAGq+cDi?=
 =?iso-8859-1?Q?v5jlZp0j88NL6xk6v8mXeF+D3s4hnp0FyTGf7zqftNELeNmLrLwKlbM3s9?=
 =?iso-8859-1?Q?VZxBOBOMU9wubNCGp6yw4l3057rssETqdYrNzXqL6TciSiqFkQdXhZ0uWm?=
 =?iso-8859-1?Q?bayFfqHuAbPtj01Ze2ND9AZ9Rg5/6nZwshZD0b0cq25wDrJ9vtBVpez0wD?=
 =?iso-8859-1?Q?TQQwyxq790aJwz+Y5PxjhZxHjZCKEVRLNp2nbfOLXEZNEfDjTy53vqCAx2?=
 =?iso-8859-1?Q?I3HeA/CzESqt9vzwuNGK4ckd9JYizm+3k+NM/bLwcPlsemWRsZ3mHhw71a?=
 =?iso-8859-1?Q?6Wuyehxtv6?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: db864b9d-0077-4710-c5f0-08d91f6e120b
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2021 11:13:06.0714
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mvQ+R22tryonFmZ6mNB/wlZdR6pMGYo2nz2y3cE07TD7XQFwppiQDaiQ8rlcH/a0RXXPc9LLyBcW3YjavYE+MQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1078
Message-ID-Hash: QQYE7SRJQSY75ZIF3HPX7FAJJXAAIERE
X-Message-ID-Hash: QQYE7SRJQSY75ZIF3HPX7FAJJXAAIERE
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E312 died
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QQYE7SRJQSY75ZIF3HPX7FAJJXAAIERE/>
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

Hi Marcus,

On 21/05/21 15:42, C=E9dric Hannotier via USRP-users wrote:
> On 21/05/21 09:00, Marcus D Leech wrote:
> > Have you tried disconnecting the batteries to see if it will start with=
out them?
> I did not. I would have to unscrew and open the enclosure.
> And since I do not know the policy of Ettus & NI,
> I would like to avoid the unpleasant:
> "your warranty is void since you opened the device".

I did what you proposed,
following [1] (it should not interfere with the warranty).
Unplugging/Replugging the batteries was the solution. Thanks!

Regards

[1] https://kb.ettus.com/USRP_E312_Battery_Replacement_Instructions
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
