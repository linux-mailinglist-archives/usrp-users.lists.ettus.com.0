Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0766B5866B5
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 11:07:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DCFFD383A2B
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 05:07:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659344857; bh=Jscb2ZNjj0A/b+JbBgWF+2cMZ50OhvA9oUtoaKBzSIA=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=hDebhXCyo+x8oJvUkpK4MHr0dcCKTh80fYQBNarJVPGODjH8+nwQcYggwqSRaUl+s
	 XqZvOIXi0iax/yEBxUf9rW1zb0kVFSjSbowDJU2dv4ejnr3uC/yVngsxwU3vvKNW6V
	 HOGb6+o98MUaISV+gAWswEB5aQhYhF2HSj63E6OlQP6HfGQIEiXvYdVB9fx1PaK9tm
	 eFm/2j7gs5eYDyUVCSCRPgvPO6GIDCQQ1ES90tpKZU5ZFvmEg2dgzX6QhPY3aqvQvE
	 sC4DlKz11pl/DeqxMDtHNLmsrGAnpdK41Lh9orioLKzUTa2xwsShrVASstG+W8wjmA
	 oo0RUTBENw+tw==
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80113.outbound.protection.outlook.com [40.107.8.113])
	by mm2.emwd.com (Postfix) with ESMTPS id EDC653836FC
	for <usrp-users@lists.ettus.com>; Mon,  1 Aug 2022 05:06:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="T0UQuwhu";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZJMbWZmU4Tv2SK3idIQlkHkvvjYcYLInTqVki6BN6h6NTefGmPf+FkwzU2+4JkS5OctRRTJJ+Yd26PzFDZKo7mTylwEhevP4P9wSU3HA8W0SYHKfLUtg7NjkozY2tSfvGrJEjuWwNPABGpxBIw6TcKMUJ5jvro6nvpYvSh4PlXmZzIAytFHdwZw3nbKA1pOdp6UxMpCSGrmLgeVy3slQNohisxGMfaBxtvab7PkQiS8AM4YrphwxhrONNWSQyy1oeVKsaBqa1gCTcle0H3BiorhixGoTr0KG0r/M1a0Obns4hUejgAiE+5AqAvVtu61Jtyhy9fzfxfLk/XunfvBGEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=71py8d3WFyvN+GcFAYIgaTFdHezoFToAZ8JAYyagLqM=;
 b=B5Bvg03czo6FqTOC2ac4/NxG6W1omCe4rCpXcMFIPZM3ueyzPSb1ZwTLBc57AVRv/wqOksS88AIvsioxwd+NY9O3mO6io4SbXezWg4R9XwjF1UiSdJkR8rxhqfiApb7ooWXjh9klWVL27+lXq4fQDByznJMoj/Y8noWPVwcwezqnwGJX7vaNK6PceIzUgKG/INVo34Jt8OoJ6EtblH7LeOwYJO4Qoh2fuaGSjTEbpVmqo6iN73E0PuGWdNrKvmmjk2KDABfQF/6rLNtwpF8QkHra/nCygklQBZCflHhg5js85YecGtDkI4yvZMsML32zesa3nNlfmrlqhk4LnPGIJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=71py8d3WFyvN+GcFAYIgaTFdHezoFToAZ8JAYyagLqM=;
 b=T0UQuwhuKouh7j0jiXTbKmlGBMgspcwd6gKq3eCzBWGSfXNQ9kzueR13+vHNIfggp+rEWVY8AWf6SCbuQIH+ApYjnUj3OP55sTJUzJwRR5kqPzpcCjXO3sI1odYoJQX6DVC9nMTpb+7Vpd238yMGZBH4n9u2FE14p2o3wFEzHkw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 VI1P190MB0413.EURP190.PROD.OUTLOOK.COM (2603:10a6:802:3a::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.12; Mon, 1 Aug 2022 09:06:21 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::e47c:7fa9:a65f:1228]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::e47c:7fa9:a65f:1228%4]) with mapi id 15.20.5482.016; Mon, 1 Aug 2022
 09:06:21 +0000
Date: Mon, 1 Aug 2022 11:06:20 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20220801090620.biarppbagmc6bbwd@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <DGTT1gkdzjUFIP5Jril9sRDzclNJARs6DBQLGzpsgoM@lists.ettus.com>
 <66cc52b3-7d63-8299-a770-c705d0e8efa1@gmail.com>
Content-Disposition: inline
In-Reply-To: <66cc52b3-7d63-8299-a770-c705d0e8efa1@gmail.com>
X-ClientProxiedBy: AM6PR10CA0088.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:8c::29) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c813a727-cac5-4399-c5c7-08da739d1a36
X-MS-TrafficTypeDiagnostic: VI1P190MB0413:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tAFQOIclT7GoYML5/AESjw3bKi6s+kby5imoU2TFf+1+Xz9j4OutU7OXxklsOD5eruLaWw3UVMXLeUqeq9SAqEpKfA5EtaEOlzHCwRUni3+d4f/fyZrQ2LRRACEfEdjIO9g/jrCRSwk9hReP46bXrvsc1ycCwTd4uqlmscMYjrn5FJ5jAXXsNouTXM23z4+Hkrt82WSoz2cywRaTK1hxvdkzZ/oegu4c6wL0OVSzWqlkVgS8z+pw6O0+WGd0+mdg4gIphRokJLMhiHD4W9CUG0z0gIcoDFVFhsjAltZSp5BUm/0srvipMd++R9X59HfIXAJgmC8SQU61NwXi178wr10GxrHr+CnTJOtVkPVk9wfA2fW3OD5BybRmaxJKnuAINejc/a0VXU1odoXNjbXOlCLaUKHJt8XpE0k/xdJ2StR1yzMldWQBKPOXKqtUUrRRsEi2JX4Owr2KUPnyHT2CXfpTyobD59PIZOecS3usRazsjW3F3m4IKmavYbEDyyWSmHyubJcxYCpesqsn1TU0bRQrvKAlFzJ7X2qs/0pahrc49stZPEAxj0PR88LO5qi40Zojlbyq+u0O+fWyOJDNS3IUYgWIGq44gqAaF8jt/mOlZmQKeo5tHrJ2kt4uzKtz1FuXh4nCWfUZx2QjcAaKioMTpRD4jWPJV5GS6F1eFfnjkOmwf0BkWVRi4vRi35yjSpsZSk/awPjD465CWShEuBloUpRo4OQJX30+IHlbOah+LiQjsZLZms7EJ7JKgtud
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(7916004)(4636009)(376002)(346002)(136003)(396003)(39850400004)(366004)(53546011)(478600001)(1076003)(86362001)(6512007)(6486002)(9686003)(41300700001)(8936002)(2906002)(52116002)(38100700002)(558084003)(6506007)(41320700001)(5660300002)(186003)(83380400001)(66476007)(66946007)(8676002)(6916009)(7116003)(786003)(316002)(66556008)(33716001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?694SyHc5NCArOi2PJNyUUpgO7PRS4Ap5I9tyOKewR86A+Lb7kWw3Lkr1g9?=
 =?iso-8859-1?Q?MMavmBbNP9y9WTn+dtOhP7jAAqMQwyGvLMx3zpf+klBO6Py8rrifJjBpWF?=
 =?iso-8859-1?Q?K2XlJE0UrGTGgvdY7IX1CLdpQdP2Kibzh2SxnIZTsr5IADBRUJ8zgtYyJY?=
 =?iso-8859-1?Q?qGBx5o6HDDsalOJDW3lKdJrV5D36m2lsouv+eLYgAoQe2qzoiqgqkWvFHk?=
 =?iso-8859-1?Q?7PGzc0EX38cgpercqKZKkLYceRGWW2W4IbNUDXUKovE1WiTGsAAnxQCOA+?=
 =?iso-8859-1?Q?vjVNspTLBJAX+SrqEn2CsJWSotA3TnJV+j7qOH7jrVV9wDG8NgVtiDAQMj?=
 =?iso-8859-1?Q?04xFVJ8S0uQUcBDonR9qxEWvkPb0XrzH2inFuxOb2DkjsyKrEzy+SwsFhO?=
 =?iso-8859-1?Q?F8LQ2uqK+UWEJObYS07vTYlxbNZijwTgNTCVQc4Wb3f4rWcv/rp18bqDvJ?=
 =?iso-8859-1?Q?e0XmeOLBAqzm0r9GvlxlvbnncYCy5vVgFYdr4pkHxICbKceq5LLplZzPRV?=
 =?iso-8859-1?Q?O+PXi1ZJoZ6xj/P3hpp8YM0Q+TGATN9PL8/22Wt1EYnTuKquzx+vZwkx8d?=
 =?iso-8859-1?Q?plJNBJW6AF95cI7B3tn4z4vmMlBET/4ujDyvHVz2iPtCQqiF+f9sfkCJD7?=
 =?iso-8859-1?Q?BcxNSozbdcbxuaNpclGB4ZAPyjjLwLJNNr7Nle6430bAkmPpJt4yuv9sq2?=
 =?iso-8859-1?Q?1gbuRCcZCOHTF3TOjN8MUjkb1Ky2prRgNZ/gw1t05SYIn+ycF3nlTIR7/y?=
 =?iso-8859-1?Q?q6/uFNzQY6kAl6PuYwsY0CWtv1BQAg65KIcdG/pnOE6XoBqDT9egM+1qlC?=
 =?iso-8859-1?Q?jznEk14ZTBh1E3Q+7Aw5Ncv7XODv+xpoMljc8x2cSrudEdGDYxQkGMs9XQ?=
 =?iso-8859-1?Q?neGKRBu93luEn9dOHLS144hNYf7LUASrU/ysUVQIrWcDe46S2WIOBbyZRU?=
 =?iso-8859-1?Q?YgiQtyw2v+jB+EMceMZHuU5oRAyQyhoYPmHxnaFdfFBiRVks36J1LS+tG+?=
 =?iso-8859-1?Q?IzJ8tDIO7tVh8XhMbM855nJtsaGmVedBBkgDP+EuTmY8x8CTwg7D2+t1B4?=
 =?iso-8859-1?Q?Jj68TS4qFnPaCXNdj6t1X0ZUDtsPkqbbCXjssHSU1zN0aTOm9/ArwpT8sA?=
 =?iso-8859-1?Q?nboh0MWhmorxACDjeGdt0NcR9v+LWHyF5bJNpuk/UY7dNiR/uehAmt+yiQ?=
 =?iso-8859-1?Q?DtTDMxPBlLJnJh67IwT1V2pLF1qxwyZqFH1Qx9XIAAXBEUMBgoPj/3tmTd?=
 =?iso-8859-1?Q?VC5+5XNmfkVgk88cHYHt8UzulcJ6YRtBVEnWQOtpr5oNOtJ850sLSpOVZR?=
 =?iso-8859-1?Q?Tc+hz8L3JVs4UxSqUa0FNoHUifE1aXui7KzaSm9i6ZGn3XCRF2uM5gG2JN?=
 =?iso-8859-1?Q?xrTubNFw1O8TuCH3KHMC1wOA8y/P2xFVssoGxD7e0KE/FuZ3tdBEGl/SXG?=
 =?iso-8859-1?Q?KqBrPM+4k+3L8ILYK2EwLQ9aECvKk5hHd0dRBSADJpI68Z18MV2Weujcxc?=
 =?iso-8859-1?Q?pg4EC4CwkgfHFuDLWg9fAsFisfqcN0PWw9sJ8hRI4mYJGjIef27+3XvsRg?=
 =?iso-8859-1?Q?rryUAHxhpetgtXoCN0LrzhaSCekvBo9t+6exurQZxPQYPOWPBzcCJPETdJ?=
 =?iso-8859-1?Q?dvM+ntBn9jOjJLY8lxqzf9GCuFwEEO2psdFEwPV7xoK53NIIoi6qe3B9JC?=
 =?iso-8859-1?Q?kzV5fczVcd/moIVbkaoZkXLpTsNvZwfPzz8/FpD5mrrJ3cmq5rS5Y0lTCO?=
 =?iso-8859-1?Q?9nyQ=3D=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: c813a727-cac5-4399-c5c7-08da739d1a36
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 09:06:21.4296
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l9DZwWdWKiTJokoRy0Dh/HOp0yJKslo0HrI3cqOZupAOcM1qBrV83tVOp26OH7rRQCLmT8Uxe2LDEWDWQcOsbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P190MB0413
Message-ID-Hash: K3TLSCEKBFC3MDEM2CMCNNT3ILK44BW4
X-Message-ID-Hash: K3TLSCEKBFC3MDEM2CMCNNT3ILK44BW4
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 Sample Rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K3TLSCEKBFC3MDEM2CMCNNT3ILK44BW4/>
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

On 2022-07-29 18:21 -0400, Marcus D. Leech wrote:
> Well, I'll note that 41.667Msps is NOT a proper fraction of ANY of the 3
> supported master-clock rates:
>=20
> 125MHz

I think it is, with an odd decimation factor (125/3 =3D 41.666..),
which is non optimal.
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
