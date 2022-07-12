Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F28885715E3
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 11:39:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68DD33837AC
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 05:39:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657618763; bh=987sAQ/6P2SQLbZwOx7epfX7egQEBh8DfXxFgHzUSAU=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Qzs3K1el6q3KsSYR8jBC2ZfX8l9RBt5KAmcG0B1Nq1nrXMvb0pivI529xQHT/KPjg
	 Fgzm8VaJRs0UbxuqFLk4Waqq3+ToGmcyuajoipArdvN3MM8c9bu5ATNaW2T2qrko7X
	 gTYB+BRO9cYsVD4NR23FXHf/MC8XrPL7vfybDLcID1APWZJ+we4BwZzPTyAe+piMrV
	 dm3xt/ne0Y0ZRQDw63MJnhGPuw4gG3N2xYyTcAa2530lXa+N27D433eeGcKRdtmFbh
	 rwmKXqlJFWx4zAr6qwPFWKdH/HOCRczWjTL2Gt30D2SndH/Berfj3oETkqzl12yXv8
	 zBMWPBfnW05zA==
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80117.outbound.protection.outlook.com [40.107.8.117])
	by mm2.emwd.com (Postfix) with ESMTPS id E2535383683
	for <usrp-users@lists.ettus.com>; Tue, 12 Jul 2022 05:38:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="p9K5QS4I";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y/UvKwqBELtyWutdJCJQ4CMvak4KoT1tZpM5Ry+RpcAMhdhDfuGv91110rSxdZQHy77CQ2reBTbdnoJUITzTkmBFORha+c8FmOY1eyve9rMXl3HsEY1gu0Hl40N9S2SompEPmurw3RsMFZcGQBcF1BmMXWTHClarBPlyyUl92OwWwW+6X77HfZAWps72gnmVh1zBf96YFJh+ggzfDrK5SYX/BIcu4jwarG2ATq0wUPaDHIMG6AEHPedn2w+5Jlvi9i1MgDUN7x/DPomlpScmFESEQsApr7d0DVXASPyxEg+2++92tzSzbNTqDbL/jK9kcJ/DOrGCZ/tj5mi3e/y2AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tVu4ORL2o89DBxYoRsOGRAr5Um0fnRN70sOx+DyIAxU=;
 b=I2bi+Ejff+4Y434A8n8kxaE5STVH6op026mO43y9asN+r/5TkiqnGXU2TdSwYj6o6qt8LMetVuRApxG6V5fv26Zx84nYVgm36JI2i3mCYzm2wUHYYANyPxp7H5nKRiyv8Zv+jQWKQDZGHaZD8y31HTw4ozT6NMPnz9vrSXBIBfMSa6pwtV1M5Miy2/P6QJt8YmIgOV6ta8XFncd2qJs83fRIPX0ReZfo/iCCrQJsiY8/so2eNedhqQEX7/3s2Ku3ZlQ0lPOd+PZPzdPk/ip9ULhnMDbPiBO74w6bEqGOdEmH5JYV5SgmI2V7iJUKfEv+Q6h5nbI9wCu/IjaFYSWQGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tVu4ORL2o89DBxYoRsOGRAr5Um0fnRN70sOx+DyIAxU=;
 b=p9K5QS4IICS0z0VNC+CXVpsZfEvOUy33f8e7+W5UsEx5G1ZHaptqJKj7KKZL9fm7CqChfG3MENpZtEsDHmFuXMF9IrutQzJ8AI9FrwSIKo3j9FLXXjO9M1925WUy+TwkozPzpH045sTKGKDwrH0b9vb2iSVlbktTHagXtz0JuKA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 VI1P190MB0685.EURP190.PROD.OUTLOOK.COM (2603:10a6:800:127::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.16; Tue, 12 Jul 2022 09:38:10 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::960:5271:b057:b4a8]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::960:5271:b057:b4a8%9]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 09:38:10 +0000
Date: Tue, 12 Jul 2022 11:38:08 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20220712093808.dog33qimva7ipyjo@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <m5FQ7PJuZCFN5wwWxMDd8xvXsySCyh5kHX53asf2A@lists.ettus.com>
Content-Disposition: inline
In-Reply-To: <m5FQ7PJuZCFN5wwWxMDd8xvXsySCyh5kHX53asf2A@lists.ettus.com>
X-ClientProxiedBy: PR3P250CA0028.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:102:57::33) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6aea8d76-a1ce-443e-ab7b-08da63ea3bb7
X-MS-TrafficTypeDiagnostic: VI1P190MB0685:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	uFE8uJpzOI2yoGBWiDI2HTtSCFbNGC/iQEDzlq+XItJP4IrBu3KRmvuI8tLsWZY6HVBvWGy/2C2tWhISsMbVpNSw7ipiKw3sP3BhDc/c931VjgTOyQy2+Z+Kv+JvHLuC5vaw0cQOG5FKTsGgjiFE4ClTFyLDQ4HZpqkTSFiw+/DZ95/F94ZZe8r9hPyKPkQP2CDSOk4volFJ8kHtbswRGqGbIEJ8LHyvZx3TLg0evj1LNWdz8pOE7Xu292MVm/I8MnD8SuNT+XWx8HMKUTOIylzu64Mxq1CBeeNR9bzSjRR8nmpc4ZjYbxQx4q3pP1aWrhAy4fSMTz3S2VhaOfh/Lzi5UCmUzaL2ACVcaW2XWCFqBLtLXUm4nQdsXs6JUHlJJ0U1mRjgS3SstUl50Fo18fVvX49Spc3FEU5/gROE+TfutVBP1LcWDqCwsMHoXn0EbuRjH9K7+HooIvNDhL1MkTqTQ40NUdTz6/eBMY3aNF/PP92/v8rHaqg2fdBS2QWIamuMquu6BGfKe4cd8R/BXZGv3tf8IEa5qn2sDwZQEwU5c6qR5PvAhSs09//QA/VUaYYKt8+QXJNRRrah3zgpqQGhuxETOW6I/1RDbxr58eCHNmmeHXyoBPi56ZkZeZXjTEgVfsWmDr7OnOItoQ6OZc/psmNodVRdHUqV59RrR89vRBxSSlgMvAFJXjZiqOKFHnsaOWsZqBxpK/Ju84Kdb/eVTuN8CtHgAL7+Q/Ph9rAaKF+kEwyRYk7o5Wv63kRs3rcpAdgsRNUqHfOyP7NxeBPgZW/UOID3lXAicy5dvcuam49QnggKtTPMl+C5PZLuK6aVs2rtxvqAjJ83sHohxg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(7916004)(376002)(136003)(396003)(366004)(346002)(39860400002)(6512007)(38100700002)(9686003)(6506007)(33716001)(52116002)(86362001)(5660300002)(8936002)(41300700001)(2906002)(53546011)(41320700001)(6916009)(8676002)(966005)(66946007)(6486002)(66556008)(66476007)(1076003)(316002)(478600001)(3480700007)(186003)(786003)(83380400001)(414714003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?wFFYn/qtkjPGPRM6muziqc+Gg2TfNFE5BB0yubyP8rOOlMJN0inhEVCslA?=
 =?iso-8859-1?Q?BzAAEW8KAKlJZ+GeBPBRZfwhfpnamSutZ+fWfyXiKM+YhCttvAqQfGlNw4?=
 =?iso-8859-1?Q?25U/sKnUZSfAiD5s5/NPqGDaye7tHS29DDNEJUCke8Y19QNerkB6v2rmtT?=
 =?iso-8859-1?Q?4FljQl/hqL5O9bdlP4RHvB4Zao2g8IhmOgOr+dMVzVr9LajwdhcnQypQVP?=
 =?iso-8859-1?Q?JCZYHXSy4TvcxKw91tKnrUvgB2YZkCqi1WOh66x6h7YmPQukGMy+YQwfPJ?=
 =?iso-8859-1?Q?XyBS4JJADq7IiWlJMbQKSyU7ym5yaHkuxiCOqQLV3cqzb8uOHqwDDYSdfm?=
 =?iso-8859-1?Q?0Pzsycl+NxPQPPYloeuZ7sSxdQ2VGgn9V8L5cR+lZ4z3MKHQZzzw9Wf2lj?=
 =?iso-8859-1?Q?uI93+OCW0oIejzuNZrlVHKVJ9fFsHmbqFQ/WRuzjzybbZaL56EcAMF+W4H?=
 =?iso-8859-1?Q?qQeuSh5Cz2dCFyExa4GlQoRRp2qelEVN2jj6zMDp3nEFffqnmIwx6UODyy?=
 =?iso-8859-1?Q?0f7OizgJE0Vz/z8FigDNl6OJ+Q3ar5Apnv5La/05QC9NCZEXopiMMtGOyS?=
 =?iso-8859-1?Q?iM1+VVM5KGPlbR1a+JmhPScKYT1PDr4u7T0m1uayGRp3H51mJnrJlW4OgM?=
 =?iso-8859-1?Q?xl7aCUKvE09WKz0FS+gNnQXeS/xo2w1H72TUCQHM0FZW8cSoHb1HH1PG7C?=
 =?iso-8859-1?Q?bL+xA5oMSaNNmDJ8Wyt3fbyLNYB9vMkJfMKO4hJzk55FxGk5XbSoERTIlT?=
 =?iso-8859-1?Q?ggm7VtVboZseB6lr6CkINKl2pA2NweqXA6GKuWxhTCUO9tmcT8Mcf0YIo7?=
 =?iso-8859-1?Q?kaPnCUi8SOij2O+7mluVhIIFXJYqL+lG1BJa8eV007Q09fy4sDxZbZOoAn?=
 =?iso-8859-1?Q?7km4PKz850+OFkc7r1cWYgqhOcsi3kFIkQAFImG1Fy+c2VL+izw1JGS0ur?=
 =?iso-8859-1?Q?pmKzU/+akK/loBGZtIe9O8A1JLq3g66/guIIjEeMXCkHDRCTifouwK0ZOb?=
 =?iso-8859-1?Q?cG/ja8qtLostc7wbOb3c30N6WwfhrQST5wWDlZ5nozXJrjureL/BNlDP+Q?=
 =?iso-8859-1?Q?WvU6HgW05/kS92HozFpCkt4dJ5ic7ffM+HlNN44HTqeH4H4Y919MaR+YuX?=
 =?iso-8859-1?Q?qi0opP157irtsrzzOuNmOdprWXXxW7ROavuwbs+EHhGyxINYtHsEzJo/Fs?=
 =?iso-8859-1?Q?E9kQbAwVc44fwzMYOHfxWpr8bQg9c4l0ZQF647DSi2L6zkITu0AagjmUUe?=
 =?iso-8859-1?Q?rTGkd0vEi/OOs0ODirLjb8E5kQb1uZGFe2BOWf32CIDcmllnepKtKnKxuF?=
 =?iso-8859-1?Q?oMEJQ5RcxS0y1Nk9iYTm1xwVyTxVDH9JkADarNOBez2SUeOTXHNC27PEnO?=
 =?iso-8859-1?Q?5r8AruD9TpKx+p19IXrJuJ7c27Hw89bcTPTZhzqFEvgUiXIw/fEgWEu8Q4?=
 =?iso-8859-1?Q?Od9MW+gmeUYADC5GxbPexivDy+r2GNEt38A1kupztpaJiPqYVi60t6Mstt?=
 =?iso-8859-1?Q?eu4JPOofUzvsN/S4x2q5QqZnHiLlrl7cja8mt2gooTO0Q6NzXula+rGhej?=
 =?iso-8859-1?Q?evDoN0sizj49LIyxGRgDIEzZbfKh7fqGYhRa3JO1xF+lGZlDzSKoArILt5?=
 =?iso-8859-1?Q?KYt1ac4K7mWb6jw4zhSmyUMxQVQYW6Axo729yrYdy3bQFLnsr8cDqp8vJl?=
 =?iso-8859-1?Q?GDulW4KqdY3/kkq2cIO9/0nxdZ8e6feNJ+xFt1aUjzN0/SPvsfx1Ks0bb1?=
 =?iso-8859-1?Q?bGrg=3D=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 6aea8d76-a1ce-443e-ab7b-08da63ea3bb7
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 09:38:10.3779
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pd2isUtT5Dx0+I/NMqHFTwWVfDMlHcUziCNBlfASiczDPkyJqm7aC5W2MlBDM2GLce68Fx6nXw6/BH4aPPYo1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P190MB0685
Message-ID-Hash: QCEPBA3UDVE34ZJ7C2UX3BJLGBLFIUSJ
X-Message-ID-Hash: QCEPBA3UDVE34ZJ7C2UX3BJLGBLFIUSJ
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem installing UHD dependencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QCEPBA3UDVE34ZJ7C2UX3BJLGBLFIUSJ/>
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

Hi k1barrett,

On 2022-07-11 21:44 +0000, k1barrett--- via USRP-users wrote:
> I am running ubuntu 22.04. I am trying to build UHD from source using thi=
s guide here.
>=20
>  https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolch=
ain_(UHD_and_GNU_Radio)_on_Linux
>=20
> However, when I run the following command:
>=20
>  sudo apt-get -y install autoconf automake build-essential ccache cmake c=
pufrequtils doxygen ethtool fort77 g++ gir1.2-gtk-3.0 git gobject-introspec=
tion gpsd gpsd-clients inetutils-tools libasound2-dev libboost-all-dev libc=
omedi-dev libcppunit-dev libfftw3-bin libfftw3-dev libfftw3-doc libfontconf=
ig1-dev libgmp-dev libgps-dev libgsl-dev liblog4cpp5-dev libncurses5 libncu=
rses5-dev libpulse-dev libqt5opengl5-dev libqwt-qt5-dev libsdl1.2-dev libto=
ol libudev-dev libusb-1.0-0 libusb-1.0-0-dev libusb-dev libxi-dev libxrende=
r-dev libzmq3-dev libzmq5 ncurses-bin python3-cheetah python3-click python3=
-click-plugins python3-click-threading python3-dev python3-docutils python3=
-gi python3-gi-cairo python3-gps python3-lxml python3-mako python3-numpy py=
thon3-numpy-dbg python3-opengl python3-pyqt5 python3-requests python3-scipy=
 python3-setuptools python3-six python3-sphinx python3-yaml python3-zmq pyt=
hon3-ruamel.yaml swig wget
>=20
> I get the error E: Unable to locate package python3-numpy-dbg

I don't know if someone is updating/correcting information on
this kb page (why pulling NumPy debugging symbols?).
You can find the necessary dependencies for UHD 4.2 for Ubuntu in [1].

[1] https://files.ettus.com/manual/page_build_guide.html#build_dependencies=
_ubuntu

--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
