Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B54571825
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 13:12:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5B49B383B97
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 07:11:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657624319; bh=CSJ30aecYALPaZNYzkP7e8jBCk3AcU8do4w27tsXsDM=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=XY57zgi+kGPaSTVh1GIJnYYoLNLOeDdnFCO42ha6rLeciA9YkKawF10PL2rePpg62
	 rUMc8b3EugQWm8Q9CD/bSad4vpMvWXxQvxzk9Vmf0hhoXTe3KRQ/hUQyKNL5oHL7yD
	 30EC//RneGKI4aA90U0Z5ocHF6/B9IQwWSAJHDVQzWZQF83gbFbFpijy9N/r85+s0i
	 353gXgtrzoU31eNE7BMgCACQzWexi6DPPFGFUHB9QVUyvpty+4lts1nN+Y+xueMtqJ
	 Z1sg+y3bkCZK6O68skn6yTRrvCuBnV8Dr7HwXNxtnT0ksZRU9YmptPv1AouI5D3amk
	 tueb5QlQlN6cQ==
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-eopbgr150113.outbound.protection.outlook.com [40.107.15.113])
	by mm2.emwd.com (Postfix) with ESMTPS id 0F0D0383A2B
	for <usrp-users@lists.ettus.com>; Tue, 12 Jul 2022 07:09:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="Bqg8SpqJ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FH6IhAFZG1WnytJX3fLjwr1dDURmL+ilW9W7mKB5ud/dZh0iwaP34Mkx7RnyicuaUOBvb3LNWc+M7ITg4pMAgwPmr0XG/iOQtrOEPlSZiQoeUCij2hHuNzuRPVSe27Sr1YzzMoF9NZg+n7OV3mNJhvoBSUXdlQuaiEe6x/sCzvP+iiZhnw9GezYcmhxQiRy63urZMTsz2oPSbrEYHZ2MAD/LbjurGlI/bN9xmkfVfDoNygZ0G21yl+tg1qbQUtWY3PyLmjhkzpnmPq62LYNDo9LBPW/masHGBjpnPHYfb383/dHubFt6hW/7QkAYhNSFa5ADw9es9pxNhDy5nHmBgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lh5ie4998jnvaXvYru/fu2r0yFGjP9UoRFQbGB7bygg=;
 b=mAmNcVtSJpQ0hTR2CIwMQiYDaVbZSEiqEcBUehbzd3UMQjhuOkmBnU0CzYoh9BU3UR6GfHX3ZfgLA0dbR/ImK7kfy7akBcZnmSyF1p4CRa/ANGTJwlynAG0FkNe2zFRam3J3KlkJp1zuVge32jW+5IcpwWNl6IWvYN9OtZ+6H3Q7mB+1fr/NB/ayof0xzEgKmyd3y5Or1p9FFGt8n+hdKzBvMyGyC9fF70+cqXQtAZusVVusFPcn96q8KNxt7ACJoyr9/YYoaKzOfmshsLa/0uxTc4FYKGhM1F8GchoDWnBSNxsBjoUbS2pK0zVq2giE5W/SDTwEAyrjeCmFY1MzlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lh5ie4998jnvaXvYru/fu2r0yFGjP9UoRFQbGB7bygg=;
 b=Bqg8SpqJfSQo6RqwGrARKD0l7MJDEpOEli3p9iMHcI3DLPGko1NXc4OAs/4laZN1jIYcPzlSA24AjYF0DKS8AVBu29P8OoayeGc+N5jS8TeSMNQyK5VpnZWm4Fr5hzIF/2na+iOo2uMn8McKd+5geonmagUiO4nzCz9CSfM3Hh8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 AM9P190MB1252.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:262::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.15; Tue, 12 Jul 2022 11:09:56 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::960:5271:b057:b4a8]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::960:5271:b057:b4a8%9]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 11:09:56 +0000
Date: Tue, 12 Jul 2022 13:09:54 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20220712110954.kuctc2ohvpec3bau@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <TYCP286MB0991EFFAC0D4E288F4EA3C97FD879@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
 <A5177C84-C60A-4614-A9F3-C71ED7A49489@gmail.com>
Content-Disposition: inline
In-Reply-To: <A5177C84-C60A-4614-A9F3-C71ED7A49489@gmail.com>
X-ClientProxiedBy: FR0P281CA0069.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::22) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8563620b-36cd-4526-bdd8-08da63f70d70
X-MS-TrafficTypeDiagnostic: AM9P190MB1252:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PsXnvBCUaWBkrhq5p+MVrPNqf5ED5Z/slVylUJ+8FDPSK2Fu/GH92oNarR/lTf70eJD9WoBGvjZe6lLL/bnKA6LV+oc/iSSVcfxHXxmxDiiZUpEBVes+gjmXjpSHHGZIT+FNVVGWviBtUsLe1OQvM6ZugnAHtAKU9FqGcjqOSY19OsTFOJJe8UBiRNajjFSypofhGBk2MZx5EsAbIqYc1e5AtWdZVx6nYHp/j7kRGOSQ5kUCl+VYpmdPbxgKhsEIWnk3HXraXb4/oz/Mx+KbXsXCJsDGbf8QLkqh+usYmcS8AgM/g4Y1uLo47XNaqYl4z98CUijGZKreR88qOktUweflHb0tfzvoWb6+Vdlo0vqH2y8VcnkfF+7z8r8uzhGKSdR2jL2aBKwknepEvozRzVemL4IexxdUHJDn8ypuz1FINcTNL/9XmB2jHlyAbv2266on5+no89oUPYAcLoy8z40ogLN8+JOgb7EI/SPb/wWBWkplcVSP8Ncaz8S/Uu1VGbG8z89GB7EXanbAXe5+ivBUAUbtL5dBw8Tt1j6Z58U5qu9ctqSWozy2D8qejY6Bl8g/DlWrYU9XQ62EeUD1maCnhKIP9HVnzkLtPkKi9fwjrcmgLio/v8ogaqnw/oxdbHfhjtFU66xR0nQsbLe2bIKJduuTtriCSm9yaz8dZc30dolioyOX2J7tNR1wmN7JNAzgB/Omkvkcz0c4hoIFT8JKUvgFhotWHgU7mEdDCi73TNWgfFHzWL25JOZEh5vq1DXKp2THOkkAk0X4JpW212f84PCHw563IpD3VWOEUpE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(7916004)(39860400002)(376002)(136003)(346002)(396003)(366004)(38100700002)(186003)(33716001)(786003)(83380400001)(5660300002)(66556008)(316002)(6916009)(66946007)(66476007)(8676002)(4744005)(966005)(86362001)(6512007)(53546011)(9686003)(478600001)(8936002)(41300700001)(6486002)(41320700001)(1076003)(52116002)(6506007)(2906002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?wxbLaDXlFjvstQSkQ8IeiQA7+ypXKXXCDAVMTSFtSujuwf+pk8O/VFuO5o?=
 =?iso-8859-1?Q?eS9x7lL/PRtIN3aQWhZRtBS1WXL8Hm6rNXI2ZWl07GxfIrBPHEWBOg8o6i?=
 =?iso-8859-1?Q?adfY/3YxLbQuHZeI5ZKR1pZvm+lNiAeA6HvaSEvRLpI3I1oKyZ7dI8pSka?=
 =?iso-8859-1?Q?dkV2D6SWDu6w+/8xo+DlbJR0IRMb8IOhgwza1QLt2F3B44iGx6F05IB43j?=
 =?iso-8859-1?Q?RvAOqEkZyr1l7bUuYcOcjmU9cpibHBXx/YTUhfiylCFIrjxGW643Abv+ES?=
 =?iso-8859-1?Q?Haqy5rUntMmEJW58OVI7+MecYfKY32M0veKFWl5U8MdrQ+hqis+ZmpK7j4?=
 =?iso-8859-1?Q?Yg08UiP+ELM0Zy+LmM0SiFqaXQ+NuNGSIPL//3yuWuzZ25woQj/Q/i/6ab?=
 =?iso-8859-1?Q?0+IpAJ+/rTkT8ff3jBwTzPhy61/C98Di6Anx0pEYS0kqv3LxudnCGZcCF2?=
 =?iso-8859-1?Q?TdiOpGOGiOhOfnjMBjiwBdAMR2u0ImWUzCBSqsYcZABWGxeeiiLS4/Pz/e?=
 =?iso-8859-1?Q?f7ajNUgEHdpgakZ1TlK/vHXLfTuDkktE7s1iz+II/OgA1Ru28zISR1r/bi?=
 =?iso-8859-1?Q?Q6N5EN+pLIAnJXQA7Eaiqz79dnBNdX10i2bZovA7r87+YZQgij0CxAj4UW?=
 =?iso-8859-1?Q?SAZN0bf6xyK3quOAlBgVoM3l85RxQz/CNPVIZpPou2m+A/CIOvaKATCfEp?=
 =?iso-8859-1?Q?+ToL5Ku3cqXV4X8rhiCJagPjGvDARHB6l2Ws3HkMyMykZX3B+sZh2S2RXP?=
 =?iso-8859-1?Q?t1CpoN4xZGeu7LCGgIF8e7w93S8vSyrOTu2UBB6mALj9149gOC+cXCJF6m?=
 =?iso-8859-1?Q?xHY7cVQ08HA/QPl5Fc9mZC2aZ0HiZxP8jP/k/h+GyyRHX1llAEfpxi0SWo?=
 =?iso-8859-1?Q?SBfu02sFmLHteK+iOVS7EjlS9PP7XNM5/Zu3eNjhj6XJHa8YOe4ewrYbub?=
 =?iso-8859-1?Q?HoWdLH1alp1meqzLa9Ug7SkE6liwvC/ERhn9RkFuWGveAYchtmIwixM9y6?=
 =?iso-8859-1?Q?KemkmKQxTedjxDvWyqMIpMnJ9qheN48ytXhYZFOZ+h0qrx1c7HhnHW9jQJ?=
 =?iso-8859-1?Q?n0L9XFig5V2D7o6RhAtlw1jQr4/c+4EEq/MW1II/IZKmKkJrg4/DxG5kck?=
 =?iso-8859-1?Q?oqNvFV//gsMoYM/D7nFif4rnUfy9OWnHNIDSLXgxo4PxfS90eQGBv8qrMa?=
 =?iso-8859-1?Q?ZEmvJzRhSYIhoI8Yk//Z/d2UmbPBuxzWJll5RJ7fSb+g/o1s9+nIPOMZtZ?=
 =?iso-8859-1?Q?MY7TArvrbd965myO0UmmZAac35+o9ZLs03egDu+N0XEsibVlvxDqNaZ+iZ?=
 =?iso-8859-1?Q?RHiefX/vP/FkdxuMKCIc7RooW3po60i9AEIdVK6eughXQk8IP/kmvnFQoU?=
 =?iso-8859-1?Q?1FvvicdxBOK+0023EysZyfrLZ/unIbN+mnfXbRZ9SIbMSclP9kfd0u+o8B?=
 =?iso-8859-1?Q?BB8F/nSPT4lxtpW4t4OjU7Q3KyfT68Ywd1cn8z8IS+oh8QylZ8W+I8atK3?=
 =?iso-8859-1?Q?tsY9ccfdTCpqQqkQq1adOVcDQA0F0wfuY457aTRqlqlSLg/+o++6iiIyGH?=
 =?iso-8859-1?Q?GmZm/i7kaE47eSlwejdi/Ujg6wwFonXMyClnsUFMLSL1o2H8W7vSZhwnLg?=
 =?iso-8859-1?Q?yJkV080Hob/9tbTCqtIg4c4ZtUMBbcPjFNFAJFsxz0acs7YoyfDWqJJVV8?=
 =?iso-8859-1?Q?ZwsSK7NtSU8X0L4xGiGiFfoVbm14k7TqkqxW8ipWlc9IxbI5aDNQmkJnsV?=
 =?iso-8859-1?Q?zsvw=3D=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 8563620b-36cd-4526-bdd8-08da63f70d70
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 11:09:56.1955
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EdUBMk4T/2FFAiC9ympmGB/fFRjLfK0s41d0cD14bOdaEDxme7gqWUBCIJfZj6+GhwkEz4AenFp17tus3Yumuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P190MB1252
Message-ID-Hash: N4O6EOBPRIRRNECKLLL7OUH2JKXZQ3VL
X-Message-ID-Hash: N4O6EOBPRIRRNECKLLL7OUH2JKXZQ3VL
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: fx3 is in state 5
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N4O6EOBPRIRRNECKLLL7OUH2JKXZQ3VL/>
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

On 2022-07-11 15:29 -0400, Marcus D Leech wrote:
> Unfortunately this likely
> Means you have broken hardware.=20
>=20
> If it was Purchased less than one year ago, send a note to
> support@ettus.com for warranty support.=20

Sorry if I am mistaken,
but the Ettus "Terms and Conditions of Sale" [1]
redirects to NI terms [2] which, from my understanding,
seems to be 3 years-warranty in some (all?) countries.
What am I misinterpreting/missing?

[1] https://www.ettus.com/legal/terms-and-conditions-of-sale/
[2] https://www.ni.com/nl-be/about-ni/legal/terms-and-conditions.html

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
