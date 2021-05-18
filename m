Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B492F387A6A
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 15:52:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9F82F384607
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 09:52:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="fP4XKkxJ";
	dkim-atps=neutral
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2109.outbound.protection.outlook.com [40.107.22.109])
	by mm2.emwd.com (Postfix) with ESMTPS id 800793840ED
	for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 09:51:22 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R4q60Mflk+vQD6nm6/ZKsVtwIAS9V+ieLvxYRYtRYub0736+oEllmppxBPPYQHfA9H6GEANOJkerfL/rngXTtfKHmVZ79aG2ixfwKamdSqUAa9ghFySEsMKeep5mAKFEppbcftFt/z/0QxqWBNvHrOM0vo2koTAH0hshIxbzvVGBxT57jU1YJ4vUE4ZcB3X+E6zKH5GosjTkQtiVI6x2Lq8TdCXZVjFcvWxkLvUSUYmn39kHwX9s1sFA6JQX5Oj6Ao/PsWRs3SWFUu8K6qW8tE5g/HJws3cyBNgNo7qPp/229qPV3qwbQeyVGavVYN//zaEFdVOO4mJfwAuKv5RWjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pdkc8zS8Pb8OtLhoIY3OaxYV5PtuyZZL5dQinn6or90=;
 b=WRYmyUNJoOyDGOwWBxfSZY6Ulzhj1K7+5UbWqmDVq6GTd3OJcPi2EtS7Pk0+wHLgSCkU62v7BmPWXs5na6rZ2t5xou/J87xTLaU0mzC+VhKFSb56xxcfIdF8fgpbxtLBKnXRqCH896WatISVmZjPtjDSOfh2AzrO+8QayZqHrWqZ5WFaVlpALDhotvGWQV7Aiv1FH2rweDXtL8ujtLjFQx8qEitzBL4oVX8U0gKZfu2LQIGhgPmaRHDBRUIhDHuPX9EwaGyLq/IKBa8iKNZDyw9i+j1o8eCF/vLTIPixAo09QTE7hZtgezbyH4zJ29DoEQfIhUF3TlplqF4h4wHsDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pdkc8zS8Pb8OtLhoIY3OaxYV5PtuyZZL5dQinn6or90=;
 b=fP4XKkxJL3m8X/XcV+PdPJ5r3GUeceZr2fDkPIxnPCqsUz+z5dvVr4hUvf0ESzuUcjnjdxzmIdGSynCV+UlwanaNe1xdjysF5rLdaOp1bBmWD87td19fS1IzGsrGgquZWGuDhk5DrY3anUaGkGncXbFtow2Q+CPElg9JT/8tS8A=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM7P190MB0711.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:117::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Tue, 18 May
 2021 13:51:21 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::f5ee:cc76:ee5f:4095]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::f5ee:cc76:ee5f:4095%4]) with mapi id 15.20.4129.032; Tue, 18 May 2021
 13:51:21 +0000
Date: Tue, 18 May 2021 15:51:19 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20210518135119.wqzzwhymc575acto@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <CAL0m=NacROnWkmwJaSFc_EdtF3Rs9bFitbTwJQjCgPY==ZKpow@mail.gmail.com>
 <F69F86F2-31B7-487E-8714-6542540F800E@gmail.com>
 <CAL0m=NbmR3DY6e_AKX-inbdO-d1cAE+Yz1MJHTTj0uH2oRBi9Q@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAL0m=NbmR3DY6e_AKX-inbdO-d1cAE+Yz1MJHTTj0uH2oRBi9Q@mail.gmail.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: PR1PR01CA0026.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::39) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by PR1PR01CA0026.eurprd01.prod.exchangelabs.com (2603:10a6:102::39) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25 via Frontend Transport; Tue, 18 May 2021 13:51:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c3e96552-aa33-4466-12f0-08d91a040474
X-MS-TrafficTypeDiagnostic: AM7P190MB0711:
X-Microsoft-Antispam-PRVS: 
	<AM7P190MB071147286E2B60517E581A79F02C9@AM7P190MB0711.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	EaT4nIVc0yW+ux1rUp9UxK0VehN20rVTeCqVF1DW4oJK/dOQ9qjpbtFliNd8/CB2+FO7i9ZTFq9WoA3N7mX4nQbsBTFjhDZQTum7eMxcStP6Ucn8RZ3jbbYG4CuCgGjyn7IYwKbo+NSk15ant9q5ON6ZRLl4a4O9zm3Zhj2J+57vk++whQprKtqERJOa3mjA8WEOINJo0nG4YOhyuhFNYM+6yf7sZ93nmhp8BQZ1GX0hgKrls8A0YvSkblLcegPfS7a63hqFVcGc9DWs6AHVDIWk4ve33GP70ucFl0INrh/OAAZ+8jK1D7ro3bUX10HZAwOpR3rj2DnjUv6vmlwOpVOAu89cZvPckhppsDc3YxTMEhJhpEXbstNZYla+hC5RCAyOFeuWDn+V1aU9N2dkc0l2s3vSpG4GF7Hn4WZ5jQA7qYoLGDbCkezRISfZBUWEVBdYX3vdfsfDK93W1MI6Fo1Pbi0W91FpgGkTQ3+GujdTiofE4vom3JmCf8jt41Sza9WsC/NNI7vyHfF/t97UxaMICpB6BzpaGsXXqLir/kQcU1UQ/o/fnJqGSe+8ScQuSsvnluaExbLyCPcB0liLd0tcPwsgoEHQ14TNFYhosvSYmfQ+C4j70rBHkqNAc4mTLpADy6z/fOoocrVkX/esdszEyzJs3L5QbQ3qO4dSgYYfV5jxf1OC1+Va5dGeJVmMCEGVidBmP+vkTjxvIZUdA6mEGOqRja0OZ/2u0MndwtDlKmNEDXMBrcr0TXS3K9NRadsh9AzLF1mfPAK09JUkRw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(7916004)(4636009)(376002)(346002)(366004)(136003)(396003)(39850400004)(2906002)(6486002)(316002)(966005)(26005)(478600001)(9686003)(956004)(33716001)(16526019)(4744005)(1076003)(186003)(786003)(38100700002)(6916009)(66946007)(66476007)(38350700002)(5660300002)(83380400001)(53546011)(6496006)(8936002)(66556008)(52116002)(86362001)(8676002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	2ymQyt+BCXsiisDlOnIP/86YXEamRf0iLkvvhoOS5wOCGu+umASrQMLKC256o9iycKHS+CJV60CVCm2A561E5pzQSI0v0iTdKCIgknFrQNKIFaXK/yBSYkFqPCJekrJilgu7MfkFTaqlitPz4dpXpR6s0Pr3O8hTzd33s0ybkV3jXxwrH09nJM/riR5iYh7aWxFJwRqSvf26P8rqV3T112+ntVN5OhPxn1SFgpglZuDR3f/zRUb2qQw8kxZ1hJR0yV3Dl80q02uYVqQZKSgDsRBywYzUPqivBzYlr0YAqwCKfOF1Zk4mkz0DX/zz1H3XJyCEejttBbSANEtMsY+eoXBjZ32xUCueXjvGtoxQLLZ/y3/DN0LIsMgQWwdc9IjHOkbrU0s9B9NLvIcOCYq7kdberXSYrUQNKrmUlsTTNdSYdhl8Xm7itiYV/iRUaGFUQH5lT6ftMrGg1V+mBtUuX75clhlhEBHwFP2cpmWcZwE1te2o0voahsQuvav0Rn9mYj/hjoquz/Taat6MT6BgUDR6xfqC0tcM9TwsRrKJ0E+U9NWm3XvzpDvNI8A6Hv5IWCmvD8eB9z5MNEyx0Mfcv5iOuQnzY6KjUp4gpT1pT/wQmScOVxfmeu7TVU9Wn8/9SD1FQ8KRVoBtoQVZjE7PSGfGPYMcWNhStTHj55FKqkdKZMFXgfNc9JPBjrmZo2bXoppW83sEMSplYROdTHfDlr0LAAGQ/cIYxeHKz8kLLHKSQhVcIFdwiBqIx6qhvW1h
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e96552-aa33-4466-12f0-08d91a040474
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2021 13:51:20.8917
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qD7zFRHYByo5XyUYkhzmnvhWBQdPsp1SjbwuwwWmde5zsR3kOjpCYRvW/UFTJKDAeDSyV+gkUYMiVHl8TLAI8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P190MB0711
Message-ID-Hash: AURVT5WSAXJXOXH6QB4EINK7OCOOAYKB
X-Message-ID-Hash: AURVT5WSAXJXOXH6QB4EINK7OCOOAYKB
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Synchronization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AURVT5WSAXJXOXH6QB4EINK7OCOOAYKB/>
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

Hi Hua,

On 17/05/21 16:27, Zeng, Huacheng wrote:
> Hi Marcus,
>=20
> Thank you for the reply. I am using SBX (40MHz)  daughterboards for X310.
> For my software setting, I'm not sure what is the best way to present the
> details. So I copied my code below. Hopeful it is not messy for you to
> review.
> [...]
> int main() {
>     [...]
>     sp.sync_opt =3D "internal"; //"pps", "mimo"
>     [...]
> void sdr_dev::configure_usrp(sdr_para sp) {
>     [...]
>     // clock and time sync_opthronization
>     if (sync_opt =3D=3D "pps") {
>         [...]
>     } else if (sync_opt =3D=3D "mimo") {
>         [...]
>     } else {
>         usrp -> set_time_now(uhd::time_spec_t(1.0));
>     }

It seems you are using set_time_now() to synchronize
the two daughterboards inside your X310.
Could this be related to [1]?
Does using set_time_unknown_pps() instead of set_time_now() help?

[1] https://lists.ettus.com/empathy/thread/YHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W=
?hash=3DYHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W#YHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
