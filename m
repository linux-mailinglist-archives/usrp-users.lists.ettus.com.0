Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A616EAC19
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 15:55:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0AFB8383E26
	for <lists+usrp-users@lfdr.de>; Fri, 21 Apr 2023 09:55:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682085304; bh=jp7y/AkjwwjLPasJmylRWdPNJVagMhN8goo3kX41pwk=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=nb0z5v0zZUH3UR9uTGYp8zC+E5pnlHdbEGoRv70rNzvq/tSyn/DUby5I+dCsN/l6J
	 T7wmpi+vo/mVR6XucLjI9oiNuesNmhU/M2ZSU5FtvBaDQbptZlOpihPFFDfHoi2agE
	 KwTVeqnE5QBy5kGjnzx+Mz0hrB90jAioF1nhd+bQMdXnrDHqindiHC9VDpW9dIj6Gl
	 y12ebOC9oCfit1MKNnyyvhrEmYaYZRb7q2u05zcAec9VYbAZlGbnATJuOsaabKaa9s
	 G59KGV2RaGC4DUkzApbb7t8RK4PK+uxGgIgU10PD/efGccdHaP5ouW9Ib5qYHztXyI
	 G9pc/j4RIpRmw==
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (mail-db5eur02on2121.outbound.protection.outlook.com [40.107.249.121])
	by mm2.emwd.com (Postfix) with ESMTPS id C45AF380ABA
	for <usrp-users@lists.ettus.com>; Fri, 21 Apr 2023 09:54:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="U321gZjp";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZLvBi99V1ZG+rXHb31eCkwFGu3pukhJikxrqnjJeQVA8onXu5/H1WsBm5J9U06nS2t6omumfJ+jIuuV1+iRGFRyX+hr4BojAbqhwoov5S3z5gsmVsE0dbevFOYsVsFieRbKm+0WCVgzkAivnq8Fx1oyNoSQhNstO1Y7YeS9oodi19R+HtbfY//foVbQzibjCQ9SDlJOo/rmUDaBuSnXFRtrExIBq4Foo6Yv2hgN60VLMetkPjLNKXye3iV9ucX35CyG+qZS/GyuFGt4HhI2hBuUEXHfCSaRtF5WKiXAENg6ZWjUcxHTAKloozzlhHt5AfpqVcQytHAPM2HbTUKsK4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FbXZX7T7S2xhUFQtgjPNcBG9dtsogjU6zvfyboGmWEI=;
 b=f7ByICuCRBkPTIQakh4f6xh1x/ZM9WuUWj+sDILqhSKAt4qu3oXznVoFHShyaEsnOFNImtXbwrSjxT+E3p1ZrwJaAh+63dL7qiZdCn6OBys/Uxlo66FUWTZ8N1ykusXQZB00wyTIvqDjr9NPXg2Usp2LZ9+NDvHP9joLRYneeHqwmfou3Kn1LYP2cPqu6fHBVJJom0yd+64Jbd+v7D55Aus/O5KuZKvAIvehHZq4HcLM31Vhe3ZgRYWxj12n1STI539dzkZAoHQeJxt3JK+a6kvtdTairv4+VcRGrj3y/1tcHEcs+cySvYKdom8Rvg5s2t8TTikclnRvQa0P4NHInw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FbXZX7T7S2xhUFQtgjPNcBG9dtsogjU6zvfyboGmWEI=;
 b=U321gZjpaqVghzZtqrWJC/PYrbQiBRwO9dY4G9nDn1nFHZbVi1cPgGP4lg80C7HOxdRxzBrYuBnX2omYHYLZkLC2AVvrfjUL+g5nOsoL/OQw3bk3fQBHoDCKo1ZwBNrQzC5ZQaoXcPujaXEiUJc6MJBLg1JQGEkfjyskYwMjW+s=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 AS8P190MB1030.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2e0::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6319.22; Fri, 21 Apr 2023 13:54:21 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::b764:6e23:f8dd:8432]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::b764:6e23:f8dd:8432%7]) with mapi id 15.20.6319.022; Fri, 21 Apr 2023
 13:54:21 +0000
Date: Fri, 21 Apr 2023 15:54:19 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20230421135419.evigw742wpso7jvk@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
Content-Disposition: inline
In-Reply-To: <F31D8B08-5590-4DDF-973A-104B8F61C219@md1tech.co.uk>
 <E86D0222-38DB-4F37-A112-F1A4747BDD8D@md1tech.co.uk>
X-ClientProxiedBy: AS4P251CA0019.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d3::7) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXP190MB1848:EE_|AS8P190MB1030:EE_
X-MS-Office365-Filtering-Correlation-Id: d39f6012-9367-4d1a-c370-08db426fe880
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Nr3effRzmYxL6dhj8OeZ7GQENFucZhiMx7JzzPD2teeyXuexTle3LLA8XYhwGPRR82yN3/YKdoaQAUIIfteQu6CgeA+pEWtFwdZfd+5oGROt456pjRg3+vYxPyiQOVH1u9fQjRNRAJT6Bg1LHd0BA9LAIhijdJHuY4bA9Cl6yj4H67Kv2pTfrV0KsydtwxhLiOXfEaHAGcPPzKlU9RXrnhFgvJYEqYdI4dISHm++20rYJXk1TZXmQmFGI/zN8m3Njf188lFgpplsOnS4DFD2WiEKyXBUiZigzs0PEPOAZj/iPgmFiFCuy0ofyrJdlejmJNS5Tbrht20fXy0KoXhJ6Un4ttW+ntJDxx+/ASzyeXz8WlwSGGQSODUjq0AwKwCKtd2TXVy8I2Zt4xyc0lWjdHCBai2ug5AYSnx3zb/UT471LG/ZJhDmyR2zwyOylaWgKk5vzciOT2XXV2m3FMfDNHUJxRT1VVqK3nwY1kiF4obO7u22udy0+UdjPNZQgpcAH9yru3W2CuXYIPSe4jGA+zr76HXd7Rb7CCMtdx8XjbTNKGzjp2+sgf0EPrHSQNy6
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(7916004)(4636009)(396003)(39860400002)(366004)(136003)(376002)(346002)(451199021)(478600001)(8676002)(5660300002)(4744005)(86362001)(8936002)(2906002)(33716001)(6916009)(41320700001)(66476007)(66556008)(786003)(316002)(66946007)(38100700002)(6512007)(9686003)(186003)(53546011)(1076003)(6506007)(41300700001)(66574015)(52116002)(6486002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?vesEKdhrR75iDtDC1bcCXxSqGSdf2QCjdkDXQUkIaB/4LRIya3wYjWvcvP?=
 =?iso-8859-1?Q?GVRyFA1yPQG3Z3HQM9Z+28NdE8UHFeJfYBKUXoE6LdiB88xoOnu+8Myvpw?=
 =?iso-8859-1?Q?yX5I7FA3sbMRJoeRSeBUcaHcpsKCWn23qMoVSLz+NsI98n+RglIUQah0so?=
 =?iso-8859-1?Q?l4C9GvZcYzUqZ3zOg8ik540N2TeBALyTe13pE2xUflaQZGSWf/8te0R+PP?=
 =?iso-8859-1?Q?/RRlwCkvuvRE9vme7Whbw1XFwdxl8fVqbiWI1EYfkPqOyePLiYHzN76eIF?=
 =?iso-8859-1?Q?L39cBP81IJMnca1AgXqTeZJGu/gkb4XWL9W99JB2saJbISn434d7bWvjnA?=
 =?iso-8859-1?Q?n1v3VmtiOUpgxAsBf4WXJ61LYxdIaigSCqBIp61sOFzorXz87a9/xeTthK?=
 =?iso-8859-1?Q?y9oyp/s4fNgpZsWDCttz04WRmEABOEdp+vp3WQBeGZJY9BAYUIX294IBlm?=
 =?iso-8859-1?Q?OpSuQjYemBVAu5uOKw9vPPVE+wvjlfd8tBi0cfgd8bbzq1jbMFeeofk/mu?=
 =?iso-8859-1?Q?w52vetTJlcghmh0dVN0SsLVdU7lEtbsCSZcnYOJnvNDxyI0CLKPLGkY+tt?=
 =?iso-8859-1?Q?GYyAHAnM90Ie+sJ8C/xOq586FjF3laLEDCNvKxtbZai2F0XhJ8EwF8Koe2?=
 =?iso-8859-1?Q?apXYjjRWWrfcOAYVGa4sHi43SP1aNZ4hoP9dG7DhJ2zGibLrdpTs3dY3I2?=
 =?iso-8859-1?Q?4OxWR+NnvO0MX5ADHfayU1n70VoWILGebhkcJndrzkMRPb6weGxU6Fy3ZX?=
 =?iso-8859-1?Q?Cj6s0y++oA1N8ChijO8p2t06CNUtDxLUn9WiTfVMAJqtMfc0ERuZdTjeJc?=
 =?iso-8859-1?Q?DSa4PVZjVbUs2loqKY8mK2EuqbpkhaCXzVvggDWD+drN/KobLMNu24wUGw?=
 =?iso-8859-1?Q?f6R4g4J3cbJR2aSu5uB2yvp5/F22ONuoJieWQsthWGSDwk2RtJeWRYU4f6?=
 =?iso-8859-1?Q?xjXEKmweeYjXB49uHWGhkOVjFaQ1jdL5++9VaeX9WMPTz20GzyvVu6te7q?=
 =?iso-8859-1?Q?qsPN3v/yzdqCNiRhE7wjVZq/X6OC97z9GrzwqEgCDNRiNJib8V+fQyJC08?=
 =?iso-8859-1?Q?mjctgNVlwkq26z0uj6VatwgDHV8f//4plQL558c2Efu6O+sHAFf4lD6C+7?=
 =?iso-8859-1?Q?NhyHo3qp1iPewkbbOgbo3OjsSrD9hd+xYrw7WTOQ2KAMZuk9wPh85NuYZn?=
 =?iso-8859-1?Q?ktXBpP3MUTnWm2rxhjGEN7VxtASyRSLTxhQMoBPs2zpDHhv40URPNQWVMf?=
 =?iso-8859-1?Q?KhTqzyijrfLklD4rq08tcrDi/d/MzYKynaVRiCXW4QHzmWsHIXaBYqXYgx?=
 =?iso-8859-1?Q?sTA2qvOCfPdr1IQ/d/o/PCUKx6MprfUzABBDCRSeQVP2Keooc94DYgEMUL?=
 =?iso-8859-1?Q?B469HBYYvIPnuqnU2Zd9/lCfUsSQDTGhbn6elj8dviIdY1TeBKuniuns4t?=
 =?iso-8859-1?Q?n7bADlvB7gC9khMpeN+jJtnaHveLG2F4xIbAuftuENoT40XhIcf2z0Wcsa?=
 =?iso-8859-1?Q?T6NTCvUeTd3BMiqaeHYl99n3kskaj1Y2anStKHVFxwievwVdyWXYmVQe3f?=
 =?iso-8859-1?Q?FzCFBgzM/lTNSqmn4Q7humosIq8g/6YvubHAEfzf2OBNILz36X7G9Cphf2?=
 =?iso-8859-1?Q?NOX4993Tz0K0APKjyI/JmSu7COL1zZjPwf97o1wTc/YwWxekVmYpJqPQm1?=
 =?iso-8859-1?Q?DmF/w8RHiH4OEdnKpqcO58bc5b3HE/puIPuWDTdABY2m9e2L2ngaelJNJt?=
 =?iso-8859-1?Q?/cMg=3D=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: d39f6012-9367-4d1a-c370-08db426fe880
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 13:54:21.5842
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x3lwrHaw/Hn+N6maRY5FsAXUmxR7wEGnTqP9BEG7mmsFuFJngyDFn2h4eDUJzFVopR22901E3YDp7YBElRduHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1030
Message-ID-Hash: TURHIPZXAPHHUBZC6ND6WXQ3ODT56TBP
X-Message-ID-Hash: TURHIPZXAPHHUBZC6ND6WXQ3ODT56TBP
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200-mini  not detected
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TURHIPZXAPHHUBZC6ND6WXQ3ODT56TBP/>
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

On 2023-04-21 14:00 +0100, Ian Chodera wrote:
> Thanks for the replies. Neither of them have helped though
>=20
> >sudo uhd_find_devices --args 'type=3Db200'
> No UHD Devices Found
>=20
> I had in fact already tried both option, having trawled the internet for =
suggestions before joining this list

From this:
> [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.0-68-=
g02558b69

I am guessing it is locally compiled (version points to current master).
Does the output of "uhd_config_info --enabled-components" contain
"USB" and "B200" under "Enabled components"?
If it contains both of them, then I am out of ideas...

Best regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
