Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 402FD368F69
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 11:32:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 084CD38419B
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 05:32:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="l7eg/qQG";
	dkim-atps=neutral
Received: from EUR03-VE1-obe.outbound.protection.outlook.com (mail-eopbgr50130.outbound.protection.outlook.com [40.107.5.130])
	by mm2.emwd.com (Postfix) with ESMTPS id CAC9A383CCC
	for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 05:31:23 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BWXJ5wJaUrLYuwUe5GzYiNtvocPYClt9AzOta2AcTCDuEkLfKcFYld7w9SuDTKfmoqfwoL0F1l8ZfSlM7eQAMF9cIs712sXRWAfHYFjeW8dgw+WLPvKfsZstr1GkyRtebR/np+YjULma5tPrLKBXdAWskIX3j+wahMLKcszGH0BG23uzOsfEsqUxxovuMHgFJkkuI24j55BJmXlXQp8rKUCK33gvfINCZ0TLG2W742XuEyJNmhcxr4wVi1oJ1smpYeyATQQSR3LaTyKUX1XX3CxH8OCgE0MUQrbZByGuxRIkNsSwknkOVAXESeUcnMqGoQS9uVz43QBBHgWt4Wm59w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/9Kih+0w+Ixe6Wenl5/Y2FEpHB9O0S5S8gHVOtBD6xw=;
 b=kOOKNenMrrcfTM0Q3vKO3xrF/r1nS/DyCcrT8SxxsFMuAPSZNoRfa0BsP8evjuMX3yampV16oAr2curBRKWaI2DHcO3jj5/c84itWtSWRiXooBJSRVfXQ0XDGLtI9PDjdBcQMiC3qF55UB3ak3S+LD3XlDGxy1AUWPM1aoLX3foPzdTf/ocLM4wrPJnkm9AopSWV3a+Qja8BEh1w4niws++eizfUXkW3axh26WrZ8tcZZ3wxYAj3aW13RKgD1gF0mbpfBKbzMq5YNXN+8BYQ06I77bpstnOevXG4ijbnoqDVs+IcWqZDyXHiscuR7BLWXHh7KLBgoXUzCtZmJUjW5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/9Kih+0w+Ixe6Wenl5/Y2FEpHB9O0S5S8gHVOtBD6xw=;
 b=l7eg/qQG9+sUGbDwtbPF7Y5gzigXVU7JfoSqMnQYqPTKcaBU4cfV8G6s6xUs7+vuuJpCAE/iaAilPLhTAkoIpFHeJeHpOIVIx6f3bl+F9QTHumpnZHg5RkXBb5RS6WoQK+ie6RKSNxxZxjckOz8abXMjkU0w/q/7aAV6fJuNYWo=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM5P190MB0259.EURP190.PROD.OUTLOOK.COM (2603:10a6:206:22::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.20; Fri, 23 Apr
 2021 09:31:22 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::f5ee:cc76:ee5f:4095]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::f5ee:cc76:ee5f:4095%4]) with mapi id 15.20.4065.021; Fri, 23 Apr 2021
 09:31:22 +0000
Date: Fri, 23 Apr 2021 11:31:21 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20210423093121.uw2z4fwanm6xayzw@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <20210421142813.ersfw3ko3gx3xcco@barbe>
 <638142112.96483.1619163159045.JavaMail.administrator@n6.nabble.com>
Content-Disposition: inline
In-Reply-To: <638142112.96483.1619163159045.JavaMail.administrator@n6.nabble.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: PR3P189CA0017.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:52::22) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by PR3P189CA0017.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:52::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22 via Frontend Transport; Fri, 23 Apr 2021 09:31:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cc58cc0e-4f77-4722-4516-08d9063a8e95
X-MS-TrafficTypeDiagnostic: AM5P190MB0259:
X-Microsoft-Antispam-PRVS: 
	<AM5P190MB02593E714BCD086D483CF40CF0459@AM5P190MB0259.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AIg0C1XXX4bTF4KAGRrfSbyRu6gi+7CaYXmNv29jb2Fx+1zBtGwqVgGu8FRFQHK1qSxjUE8t8c49V29vmiDnpFhjsdWUuRod7lhQ8YQtl0PrE4L3Bj555pJYHcqBpKRCu8hS3ufFygfi6u6PJo0+oGvZgBF+Kdl97tr1CKOYVECCF6iKZRqxgijJqvrZA93VRMMMrxbQ/TIdowXyaG/3fOJhpHYgLgFp9LXDAvf0ByN5yaes2PJ0foqkbEy9u4mf/fcKJLQKkfpRfiXt9L5NskVNyEnErUtyAqly1He6gw8fa2Cha6zXohIJvsvcYJbkp7GS3INWY8sa+3dVk60S2VCk4N77TszNUXgNKUHNaqpvGV3Swfl0SYl+J6/5yuCuyVxsFPQSRcocwUQBVcZUQo4yERR/+2PvXs+c4VnM/t2UbiINQL/BsQFma82tOXtHVscXNeL9qoeXFER9dn2+c19c+0yqNXDdfZC4Fp8KQvKxEqEiz97TupQYa0zJxMsAkXDZXQ06XzMsQpy57yEaiGCEaoXLQWwCkNUMqoEvJDcwaG/y71/CrWTR3nGfJSe7SjyQGP7c3xLbuMAMWKAg/nYXEtjUqgaRijAoQrkYPV1056l9lHptomWUuee8moBVDDm6KNJKhiVlOaJh2J1AbBvcdFTSC2F3GHhn7FXYxPs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(7916004)(4636009)(39860400002)(346002)(396003)(376002)(136003)(366004)(316002)(8676002)(786003)(956004)(53546011)(6496006)(52116002)(33716001)(478600001)(1076003)(38350700002)(66946007)(38100700002)(6486002)(5660300002)(9686003)(26005)(6916009)(186003)(16526019)(2906002)(66476007)(66556008)(86362001)(83380400001)(8936002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?iso-8859-1?Q?riffR2qDTH2e//MV3IBY5rCcwDH+FZMw87YvpX/81ExeJ5n/EEwRP3FKgr?=
 =?iso-8859-1?Q?V2mCpeAlE8BVvpxjGhRr0pWRv7e6GpqTceWXroeBQNLLLH2NLEbm5tWVtI?=
 =?iso-8859-1?Q?1H5KGL3FfdIYZwb7vlxToWd36+OrWAdtrQkJcVVDhYCPflVgPX5HcEr2eP?=
 =?iso-8859-1?Q?HdVycNVLe6HQ6l/YFDP7tzuHrX21XPam7KKTWsmSQ7hxqv1YKCUATBhqpT?=
 =?iso-8859-1?Q?Nva0Wf6UPe86ZK/iSONzzehV0ra/KdYgHGTC2s6zZR0AYPKRWj+jRaebAK?=
 =?iso-8859-1?Q?iiG62OeAC3TUxVIpoHv2DRhYJ2WfWDhZkg2Yq41IDBV0R+5OiA+Ze1ZJ/v?=
 =?iso-8859-1?Q?DC9+mviezB8U4yMBVO7w7+bqfLcE9YkF0tQ/8SO28nViStruFVyV4+o+pB?=
 =?iso-8859-1?Q?1NBRcSJHum6NSsby/9ZgxRpxlDoNpLW9hFjH8XoKGWepAAcmYNCU9Urfab?=
 =?iso-8859-1?Q?qqmFDs0lI9BRZMIJQEt3HazZ/LaQL9InT8qKyqg5vJMBnKH2DfdFrs7DG2?=
 =?iso-8859-1?Q?J8pxYsvF2X1tOs22hR4JjOkSeaeI6cz8fzmgjBMDfNVUR9AXp7gxzccYZm?=
 =?iso-8859-1?Q?wsac6gEIn3PYDpK/cseYj6OmVh2GsM41LvjcmJ9hwQID6JuoHcs4htHGA+?=
 =?iso-8859-1?Q?Q+VaIF0SZe3CsjcppTMbqkDZgw3OcsD1ussRFMSEC0/xo7Mb2Tle3ueW6a?=
 =?iso-8859-1?Q?OzT3yT952uMbHvqNYf1o4bwQhirpLkwNu5j1xHaTFOPL2Y4Yojo3xaJAjL?=
 =?iso-8859-1?Q?J+z1LuR07e5yxVzrF3Xz4zsQ29zR1i35dyRg0qTno90xUfWpoQZ+AxGJ0k?=
 =?iso-8859-1?Q?anFmGZ3I+85A/b/P+Oi/1m6sfmRqfBUljQK7m02duIa0eaLz2MBYN/82Iw?=
 =?iso-8859-1?Q?T2EdUEpSeEB8sZauwMiidsef+AO3G0rA2o4jUJO64E5ngdifOHMjefwmiG?=
 =?iso-8859-1?Q?3tglLIdELNjdyz4QnyuCi39sVT6jwIm8xwSgmB/iQnZpHkXPUQcku5WSrw?=
 =?iso-8859-1?Q?CYcREcLvwPJxDL7RUd+0hYJ/NzcM3cYA6f0SLsN41KDUD2M83N9rC6UT4F?=
 =?iso-8859-1?Q?VzMFeOzKN/TxX1dQz1erahBAnksCwiWDtM0DqO69PxCFVIvtCJU2JdNvnu?=
 =?iso-8859-1?Q?Iw+ycVeuRHL9ix8Ftbbd6bckUAY/cvdYLZhaUKTU+jzs/Wh9Bgam7kUB30?=
 =?iso-8859-1?Q?lu/OLq0ey+H3QKeFI9nntxRsKjbgLiwUF36okISf972BPMbfH9VpT7KxYA?=
 =?iso-8859-1?Q?U4onO8FU21+aCKQD25nG4yNhk18idi/+3rJGFG7S2k9zwE+oP+H7hqPTrY?=
 =?iso-8859-1?Q?bI83gjiKsLUmZHGCHb8TjhQZ/yARDu7oBEE/excfaRmr9AwgACtCeUmtxq?=
 =?iso-8859-1?Q?ZqaoVHoyn4?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: cc58cc0e-4f77-4722-4516-08d9063a8e95
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2021 09:31:22.1554
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: znXL27kUYWeEPOdspjGM15g5aaQncaRY9kmF9NVke9TUwEClxIOuomeBqzzr2koB4E/9upF6AdP9fcg3cjvjVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P190MB0259
Message-ID-Hash: 5UVFTQDDXACDOQZXJMDXGEL4BEJASEPY
X-Message-ID-Hash: 5UVFTQDDXACDOQZXJMDXGEL4BEJASEPY
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transmitter thanks to USRP E312 with high sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5UVFTQDDXACDOQZXJMDXGEL4BEJASEPY/>
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

On 23/04/21 00:32, margaux.bgd1@gmail.com wrote:
> On 21/04/21 16:28, C=E9dric Hannotier wrote:=20
>> On 21/04/21 14:16, Margaux Bougeard wrote:
>>> What is the procedure to create a transmitter with a sample rate of 61,=
44
>>> MHz with the USRP E312 ? I wonder if I am not limited by the sample data
>>> transfer rate of ARM processor.
>>=20
>> As stated by Marcus, you are limited by the ARM processor.
>>=20
>>> I want to use the USRP E312 to transmit a sequence, with IQ data,
>>> continuously
>>=20
>> Do you mean a known fix sequence that you repeat continuously?
>=20
> Yes I want to send the same sequence continuously all the time.=20
>=20
>> Does it need to be send continuously or periodically,
>> eg. sending the same preamble sequence every x ms?
>=20
> I need to send continuously.

Then I only see two options:
 1. Build a custom RFNOC block that streams the sequence continuously.
 2. Use another USRP. If you need something embedded and portable,
    the E320 should do it (using a replay block or an external host).

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
