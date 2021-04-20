Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 831CF365759
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 13:17:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 62D0C3841C4
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 07:17:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="f/nvd77O";
	dkim-atps=neutral
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2130.outbound.protection.outlook.com [40.107.20.130])
	by mm2.emwd.com (Postfix) with ESMTPS id 65ADD384183
	for <usrp-users@lists.ettus.com>; Tue, 20 Apr 2021 07:16:35 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EfmlW/KN/157ro5FGxboQXWNHMXe5Wve4bPRLIQeBGrF2mH6P36q3ICIisADQOzqdOiKfd10tAWNcwVccxq+3a1AMzAu6muVHY+bTu0REK1DFD0Uhp/GKO1X680hm2c5JEqKkHhG1W10BswTMRAMUx4WzaXOyq3/HPhLbbE/fjEIHeN4siymVB7h8tm4lFqaqf2yhEpMdVMTLXwOzStSofldnIgtvB9z5JDd83HTBpIy8C/dCeSkAqldN2UC1PlH9zT+pocy4f7+ETK97ITA4Oq3EaiNK0iaPDSI+X7KKeC0JXni1UWq/jQ6ehF56MZz4eJoPawYK+hQl0X9mouKjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pUT3iyhtvUDpmJHFEjVYQ9dK5IL44KuqQw7OaB2/8cc=;
 b=U4H/6c+9d30VWGB8e3W4H8PLLf+dG3wUyGKbG6UO+BNN99PpXKndW7CeDAhDs4nxWhJSVX7iLj0lTr5/AQ639PvTfFj5NetDATnQOnAvHCR2fp6N77iMK1uXKkLT2BY56dyo/sTJhIF+omCl9QEgTeMoGGPRfX+3Ha6szsmR2Xypc54ryu2k5mtPjr996VCYMPCBWXfTd3mktF9y+9dT+WuQQPD+m7xeh23RWkBbZ76Oqi80seVVLGC8N6yew15/VSGlfNAiUxGeCo76AJr6JfWrlZQP6aGnPhAwLoU2OT5ptaxuIXlLl4t7PhYa9gbgK+IEXiRL2nQW5U/TC2w5jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pUT3iyhtvUDpmJHFEjVYQ9dK5IL44KuqQw7OaB2/8cc=;
 b=f/nvd77Ox9wLZpwMsDB8TwzlDZNEzuu7hBXFHs6jFBPPZVSiX1Af4t/YxnJx0RVBqbKksNC55huHYvevg/T2VgV5IpaNsyB+slf8NFq0X5evVcldsO8H+Vm9s8Mb4twkmZFEFktVsUDj0sYFTgxkBhrHHgK6HM0w5BygDwSq5OE=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1397.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:3b0::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.18; Tue, 20 Apr
 2021 11:16:33 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5%8]) with mapi id 15.20.4042.024; Tue, 20 Apr 2021
 11:16:33 +0000
Date: Tue, 20 Apr 2021 13:16:32 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20210420111632.lixq2x3mcryavb6d@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <8BD61B25-5BDD-4864-8C30-B1C133F513F2@gmail.com>
 <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com>
 <CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=A2swFYgsQ@mail.gmail.com>
 <607E0593.1040807@gmail.com>
 <CALNMZ8U3m_oj3T67VqZYOV53J3sCb=7=NCat2E0TnMvEB1QEbg@mail.gmail.com>
 <607E0A1C.5050608@gmail.com>
 <CALNMZ8V_1+PC-GdxwFY6iDT6WqGpOqzWbwN=XJQ4EjY-yfcfVg@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CALNMZ8V_1+PC-GdxwFY6iDT6WqGpOqzWbwN=XJQ4EjY-yfcfVg@mail.gmail.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM0PR07CA0011.eurprd07.prod.outlook.com
 (2603:10a6:208:ac::24) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by AM0PR07CA0011.eurprd07.prod.outlook.com (2603:10a6:208:ac::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.6 via Frontend Transport; Tue, 20 Apr 2021 11:16:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1431b8a9-bed9-4563-52e3-08d903edc15c
X-MS-TrafficTypeDiagnostic: AS8P190MB1397:
X-Microsoft-Antispam-PRVS: 
	<AS8P190MB139775F7A31D6FCA4ED7F1F4F0489@AS8P190MB1397.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eHMchv3Xjlyn5yqUnFQthEWE6m8+AIho3qD2wo+gQW8IG8jEbvO6RlB32eyMAZecQAO0+A5cU3U7wpbZ8F7PEg5A5lQLwBvliMbNPIMDYzIaKYifk9Sdr8MhTrDPG4N2WjAhF/TZCrzv7Ka2QRUPbCuAD0QKnLz1IXeN4Tx+2gCjeYjh3LmRPuVXHYTskvstAYUnWCiIR0UL5dlUJMuTKAfqbs8tjJRhCrNCtOezt/k0KbW7jjPGqyVGRXmO+nENU3l70md8b7jvITxcKdADYDfEl066YwnzdS7/6X5iN8IZheo+i0WRIz2Nc3sh265PikS3js6Z8abIg7Tb8c7QWW2JdBFTD7DOJy0y4er9pZmQak78FdcTIC7dvXzCfx2GcnYFvm9Gy6jlLSIy7RP1W2CK2ws3MiXLQ/4cTt83sSbmyY/v1HkdcoYbmhA4svmPqIIxJbk0Z1w2oxG6eiogQACMDGdzkp4r2Y0b703ZoGvQGQiLNEsvpldRtuwTZ/96ri0ApY+6P8FhcY/+xVSaR0m6AarYo72ur2REvIfB97kY8a6YelXKgeXR3DItJ0wKcS4tMjPuscuqw/vMQ5Q+cxMaglRxJfpyjQIeI/5ZtDinYcADTPSCk4k1W33Ipdt/uAGyVy7lt9e9oy+hXFcvFkHnCXZQPbZHeIg0By6AztmoB8RvSqgVGB+N9LNAZl2gihx/Y9cNfJdxxbWKN9pFr7xHXvOI0iq9PBa/FvKdwe8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(7916004)(4636009)(376002)(396003)(136003)(366004)(39860400002)(346002)(2906002)(6916009)(1076003)(5660300002)(33716001)(956004)(38100700002)(38350700002)(66574015)(83380400001)(9686003)(66556008)(478600001)(8936002)(186003)(86362001)(52116002)(786003)(53546011)(66476007)(66946007)(8676002)(6496006)(16526019)(26005)(6486002)(316002)(966005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?iso-8859-1?Q?h0QQuCaczA+RJmxAoJZgBTcFZha4q1o9ShzQoDluRPIgezf9sk0ysIH1aG?=
 =?iso-8859-1?Q?F2yDZguGJrw/wzzQfOm4XYArZUiJek57v7VWGZTqGqkGrC0JVDjKvi1v9Q?=
 =?iso-8859-1?Q?QGwPfAimFU6xmvyb9XaXXXbyMKSADbkHhi0SbdDI+eAJdfZZbL+vzUFFGT?=
 =?iso-8859-1?Q?3wh3bkFxCuxIN3RtwGmjBpwn2OyLQw2L0+LBl9L6blO/rQzRSlprPKw8J6?=
 =?iso-8859-1?Q?EsE6UJEcM5shLH1PwDEi3HfHR2MJgvQQpdhnSbqx9+BvkXtfAfvjWTH084?=
 =?iso-8859-1?Q?nr25/sVb1bAoh3SHeb1eQt1FTvwmSgLbKqhdaX61AoGF1Tl3LqfxYXQb9j?=
 =?iso-8859-1?Q?Q8IDdF6zX1iR5WQbngAQc4UDdAk1PmtWblrFfcut8Bf9QG4HDBc+LfCv86?=
 =?iso-8859-1?Q?ACiAcodAc2fpT3koQcv0scP4W8X7fH7XB0d1CkkjrmkBjgVBoynBZ/J8yN?=
 =?iso-8859-1?Q?L4IMcbWHpJizDOE6F8o//+k1ss0Hjnw5rL81DA1VuAreaJ+xCxqPKcBqjz?=
 =?iso-8859-1?Q?ysAwWVTKpEprfktAFowuKArqr3X063DGOHAUPCyJ5ooVgiSGd9AJzS1hR2?=
 =?iso-8859-1?Q?5l5Hko8LvlXOyzdIWiTppoAYoZJolc/Dktvfoyqu1aIHmu19IZ77bHz+J7?=
 =?iso-8859-1?Q?8mjP4xvHBYbL4jOFE0ZQH1pkFZZVHBnfi9X8lijVYx1gVYQNECFEOTQk1K?=
 =?iso-8859-1?Q?Chtlj4RO+TrWw64EhrP5Hb7OiHw0DZAQXTz9/itigykhtl5GyBCbw9fMkE?=
 =?iso-8859-1?Q?ec19YPq6vGYdyndhGFGCPTvg/pvIXnX36LfaBQ97HMqaXcipaqSKIZku3d?=
 =?iso-8859-1?Q?QfM1vqVudujCGDocAesxnEgirxBRqSAdFojI9gnPd6deTDuZHm+3/S048O?=
 =?iso-8859-1?Q?232EaOR7P0QaxK892n9HUQNW2i9f6pbGwNnnZsMgEj8lMuX1wP+T0d+Ar8?=
 =?iso-8859-1?Q?6lDNtXTm5XA+rHJc7DlDV8gyHmSj+qe2UbHNN15UNz9wwBswTe3uBTln+N?=
 =?iso-8859-1?Q?fXLoaT0IBEYyDhz7vpW4/tgBv4EU8kxvw2vUdCtVIBUEdFJQLhKnGoc3Pj?=
 =?iso-8859-1?Q?KrWK9IeV/ZZdChuDNfT2R3gfPHp272ETSSmVp5V9GrYtWZyu+ZTkz7kaFT?=
 =?iso-8859-1?Q?7mqOWsQkFvMlfe6aysBxMIjFUThrS/R6VakryW4aBPRoO1xrSvt1Dfgq1X?=
 =?iso-8859-1?Q?ByPkkEYtLMQDmL92YxMqQwjYviYEaVS3V2CiDPqvpWUXgmIP1Fr1gLGfhp?=
 =?iso-8859-1?Q?EZDdRbCJg1G/5J/+n0FstRD4WKUSSll7fCj33IGjl0VDdjqU2rzw3c++PU?=
 =?iso-8859-1?Q?leH35SAq4+7tCjXoytZ7OO7bcPDVmYIo1iTtDkqS8A29Q9X4Cp17rKlAjm?=
 =?iso-8859-1?Q?Pg4a9uMYo/?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 1431b8a9-bed9-4563-52e3-08d903edc15c
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2021 11:16:33.8340
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TD0Z9ghoc/Txy275eJDV9gGYC1za5FN9joGG6emjTQ5TAP3KWx4ibocR1YVoQnZvHMWqAbRxIfzrmQf/Monkxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1397
Message-ID-Hash: UHWR5J7B3MEFNNZCTLVBQ25GRBIR6VP5
X-Message-ID-Hash: UHWR5J7B3MEFNNZCTLVBQ25GRBIR6VP5
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UHWR5J7B3MEFNNZCTLVBQ25GRBIR6VP5/>
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

On 20/04/21 16:02, Brendan Horsfield wrote:
> I have reinstalled both UHD and GNU Radio: [...], the
> latter from binaries as recommended on the GNU Radio website.

Do you mean the binaries from your distribution repo=20
(eg. Ubuntu bionic: https://packages.ubuntu.com/bionic/gnuradio)?

If yes, it cannot work.
The dependency graph pulls "libuhd003.010.003".

I guess most GNU Radio binaries won't work
because they are built with other versions of UHD
and hence pull specific versions.

> The following NEW packages will be installed:
>   gnuradio gnuradio-dev libcodec2-0.7 libgnuradio-analog libgnuradio-audio
> libgnuradio-blocks libgnuradio-channels libgnuradio-digital libgnuradio-d=
tv
> libgnuradio-fec libgnuradio-fft libgnuradio-filter libgnuradio-pmt
> libgnuradio-qtgui libgnuradio-runtime libgnuradio-trellis libgnuradio-uhd
> libgnuradio-video-sdl libgnuradio-vocoder libgnuradio-wavelet
> libgnuradio-zeromq libgsm1-dev libqwt-qt5-6 librtlsdr0 *libuhd003.010.003
> libuhd3.15.0* libvolk2-bin libvolk2-dev libvolk2.0 libvolk2.2
> python3-networkx python3-zmq rtl-sdr uhd-host
> 0 to upgrade, 34 to newly install, 0 to remove and 20 not to upgrade.
> Need to get 2,310 kB/24.9 MB of archives.
> After this operation, 178 MB of additional disk space will be used.
> Do you want to continue? [Y/n] y

Strange, I do not see "libgnuradio-uhd" there.
It pulls libuhd3.10, but also libuhd3.15. What was the command?

> Any suggestions?  Should I try installing GNU Radio from source?  Or shou=
ld
> I perhaps direct my questions to the GNU Radio mailing list?

IMO, the "easiest path" is building from source.
That way, you are sure it will link with the correct UHD version.
Using binaries are ok as long as UHD and linked UHD to GNU Radio versions s=
tay sync.

--

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
