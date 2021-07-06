Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D6A3BC7D5
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 10:27:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3792E3842E6
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 04:27:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="Bgg7HDBc";
	dkim-atps=neutral
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2125.outbound.protection.outlook.com [40.107.20.125])
	by mm2.emwd.com (Postfix) with ESMTPS id 1DEAF383E8D
	for <usrp-users@lists.ettus.com>; Tue,  6 Jul 2021 04:26:36 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V7tGyDEA1g0ndfmRKejffutgh0HGnH1znHMLHTKVzi//FthsQonunEvLpazLbbIDrWOtjizyVUx95w2T4OpepH+OP97rRYqzV8jaHCAsVFx2TIC8cByTLpLD/nJEeK9uwjWZnd3Wq8ydqWvEvr8e0Ccawvd4SDVe6/7j1Qf6Oa00ENj2+rYg2u6AMe8qKGwzXwGu2uGpeDemn2iWsdGUeUp1vsQAS6iEHgqPfRM5iALVDU2T14T1IdYQ8hcdARmHvufN/2QQEwnUSGiSBNcvt3HSkJZ8EmSe3vO3Hmzj6qQRf6ziDENkEA0lko7nSihyoHsGZMVXcCkG/XpPwJDOHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KKPVWYm00zhkJF/RuPMN7yCpmMoyJbShp55+CRHfgvM=;
 b=C23wWMxKiMdMbWjcVWb5DhaUuzFGQ5N77QaNBvkC6wc0IxWYZgh+ArcATNNZlGjFoMDhX+X41JMGSeJgmlzNLC9Q/kx1yDK+YIicxYKKSnin1RGsHHvUrqr8vcD/9wVeZK8WXm5hnT9JFTcsxJw8TO8sviHBgwx00gRlNio7ZwrSOm2UFfvhTFwHO3A+XRwT313Z4ziVSqdTKy6iC5uvypBV1/C49xYj3QFNxV0PIw5D5qu99IoblDB/dAWZ7f5SHBFPO+AzGNydD4IhFBnIqWcJWPmCNqWyOTE16/AviPhU1JC2ZuZoTFSX3bqi8CE+Q7P9iQnxfdEnzBdLXrRf3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KKPVWYm00zhkJF/RuPMN7yCpmMoyJbShp55+CRHfgvM=;
 b=Bgg7HDBcIaqPn/PMrkMy8wNwxtA2O5Z+FCpwsCXOEALoEoUW1IbpwyirpQR0XR7YVnVlDuOfpvphHfpfSxo4wSi+M6rW9wjqeflfZM1g0k8G45UOu2dyjPUQ97ccwo3W0FIJwEx9GbSz5XsulQAqg5nqldY9xXcW+11rldr85H0=
Authentication-Results: outlook.com; dkim=none (message not signed)
 header.d=none;outlook.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM7P190MB0776.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:119::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.27; Tue, 6 Jul
 2021 08:26:35 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::64af:1bac:3690:e237]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::64af:1bac:3690:e237%3]) with mapi id 15.20.4287.033; Tue, 6 Jul 2021
 08:26:35 +0000
Date: Tue, 6 Jul 2021 10:26:34 +0200
To: Oscar Pablo <oscar_pabloo@outlook.com>
Message-ID: <20210706082634.7ggx7wkbfpkrczsc@barbe>
Mail-Followup-To: Oscar Pablo <oscar_pabloo@outlook.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <TYYP286MB1407D3F10F883B963086DA60F01F9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
 <20210702144145.hgwtczc2zruignh6@barbe>
 <TYYP286MB1407FECBCE067E3C500D0362F01E9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
 <20210705111547.4rrurvdl7yl5dudt@barbe>
 <TYYP286MB1407CB42585AE0B2BCE87C0EF01B9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
Content-Disposition: inline
In-Reply-To: <TYYP286MB1407CB42585AE0B2BCE87C0EF01B9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
X-Originating-IP: [2a02:1811:371b:2300:8cd:8224:5bff:b3c2]
X-ClientProxiedBy: AM0PR10CA0107.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:e6::24) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:8cd:8224:5bff:b3c2) by AM0PR10CA0107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:e6::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.19 via Frontend Transport; Tue, 6 Jul 2021 08:26:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e86b1fd4-02bf-4d9c-aa3c-08d94057c443
X-MS-TrafficTypeDiagnostic: AM7P190MB0776:
X-Microsoft-Antispam-PRVS: 
	<AM7P190MB07760369D13AAFECEF838F88F01B9@AM7P190MB0776.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QbO0HBVouGh7RNzxUk6UmJ7iHEdMSocbMoO+2RSXjUbacO3JCzCOjyYiegZHdMcEAVXYb3b3ivQjlxVw95M08VgRKbfzkTtIviRDAR5he9lfVopPpIqaO/wFM/4kskOqga+iFRtINU1i5QfAu3XMHui0n11hEPwrxOo8J1zb9FTGwZ0DBonDxOGalTnx6EGMB4G4dnh67Pz+nbxvC4QF5B7QZH9NQMz6kDV3btJo5UHBNGvBAjr9unD8/bnmvHCiKegyRp4AMi2d6+kCXQonfSL32+4vdMh7J6fuuXEbLH3cOkgacNInBruB/dqrN8c55f6nDS3Q4G0AJtIIKfnkEa7EM6dwW+Kb3h/32p3I5sHoTV0E9cXdcHVr35/hArR/L5wpFzrPvELVVu4gey8c5+iw7qoh2+BqNHBmG6hCGc6fyHeOLMqhyTNBEHccotYxx5xV4UMnTYN8V6IEh4X29YCrdqhkdChwklfKm5rjzVYN0nF0gpuB7EpzurLno9OdR/dNH7tW3vFiCVjP/bz0gcGo2riJqCiEA1n5npiy5L0ghayY0KUG4hn7nmY5Fyqk3IKzE1xAEgHUlbSYjBWX+Fx/cb9ZmYPoqNXChIA1gLMBx0IMYoZGDBq4oE+mFQj1GdpoLhFzrtG9SK84C8YEA3NAzJZJwoAlkCMSckvp3Vz4R5DXCgsdpQCyRcjIJLKkTs7CWfhLnihzBiwkRgCHXg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(7916004)(4636009)(136003)(366004)(376002)(346002)(39850400004)(396003)(33716001)(66946007)(6486002)(478600001)(316002)(34580700001)(9686003)(66556008)(66476007)(786003)(4326008)(52116002)(38100700002)(83380400001)(8936002)(6916009)(86362001)(53546011)(16526019)(8676002)(186003)(5660300002)(4744005)(6496006)(2906002)(1076003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?eo4vQWfGxawF6nS9SDWCLaVMlyIu+hO5fHP0eP8MDMOVEpddF9QrT0McCB?=
 =?iso-8859-1?Q?iEhQ0V/eFePDQ6FnqLgJD/3NUoZS7S2OnWg/ujmsihxAaxBpftA6UWk7zr?=
 =?iso-8859-1?Q?Z1n8EMEArMc3No6qZC19hw5k9Sj2gJZ31+MehQ7lLvJLkTGcIHeTvmZ+An?=
 =?iso-8859-1?Q?TKGsjn4+RAIepUEKOESm74JTmkhukM0oon3v+tsl5EN/wqSrEW60rfDHfe?=
 =?iso-8859-1?Q?qL8G/1A6nXKk9I9Am7PO7nnRqwS6cMvAfDYMmCEkUjD773DQ0gAC+ujIEV?=
 =?iso-8859-1?Q?YsGVpMZmSlmW1hwLnT2ws8ZUha9Pjs0Pcrqf/j9cbGOvzEFvjPwjdiPQwU?=
 =?iso-8859-1?Q?koAJLy8OgpL83t4PBizkNg/UsQirr0oB8QTQqBI/P3cy4pzgNQWfQGNnZ0?=
 =?iso-8859-1?Q?OHy1TYU1DbHL/wxwyVhgP+b0TkMO03B4LxX0lA+1i6kOSNWhb06MDllL9y?=
 =?iso-8859-1?Q?uz/OK1Vz778w/Wu39n8UL0+ErUNxHZZFclkAZ8SAcRAEYek12Wstx72gz5?=
 =?iso-8859-1?Q?cLwOVRes3Kt4/P2JFrXGpID5LEFZQYge+uua53PfCeBGqVFkAV1ozTJGXe?=
 =?iso-8859-1?Q?PdjUWFIqcjg61ZBPr056Ska8pF7BvxJZuNwzKjPDSvVjekRtLcFmXP7Tqd?=
 =?iso-8859-1?Q?nqzSJD4TsvPMn1MtoGEuI9r2sC/x2Z6zZZRW7PQlUz+QY1k/utz3bOdgvC?=
 =?iso-8859-1?Q?Picswx8xw57Vq70QYL9M44vwGbaWCWMzy+eamk4+WmKhYTZIeNLpohH7or?=
 =?iso-8859-1?Q?rHBx4tc4frz2pVB5xe0hCjhxt25nr2F91yDwquDueWNLHsutEs4xr5fBhA?=
 =?iso-8859-1?Q?zn0lQn2nZm2BoppCdx13BHhJR34k4P0Ko3h6qsf3Ey9k0ijpSTYO9tbUY0?=
 =?iso-8859-1?Q?gyauShmbebwuLs9BGcaQs4+v6KEsWH1UStzJZuYyFXkZ3il6Y65BTv94Jz?=
 =?iso-8859-1?Q?D48n09O///IYAP1fxECtTukPXS5Kev8lpm3Q8fbUqRzREky2q+0R4F5HE6?=
 =?iso-8859-1?Q?jnXTrDHuCaUqrceaRLN5GpnPgtfnrV142Fb9I75B1OZbeSIv7kj2IJWia/?=
 =?iso-8859-1?Q?zhLAD6LiMu/BrKvkaE5FChFwMD7t+KS6sp7+gVX0u/91K1raROKPT9L1f1?=
 =?iso-8859-1?Q?k2UaX9Q1L5Vx/GuLW/7E5HPUzBe8qVB3dkDUhNXxCHHeVEtpXFwG4P9JuX?=
 =?iso-8859-1?Q?aWPM2wADpOPIXJq2/uLpbcdbF/GxgmpI6HZ99A40R7iwdTzx36FO8CGwDy?=
 =?iso-8859-1?Q?La3M7bMztJIEwioGwvSieNamehv+aiWwUfd3q4Kx7CyTYK4sJhTTse/qxP?=
 =?iso-8859-1?Q?Qgnu1F5SRk7GsRZtn8RoiBF64+DH40DcGBZaXCey4lGyODfuKgTv6u52DF?=
 =?iso-8859-1?Q?tMdqeW/bckJqVig17ZnuR95Zx62zUSFNxEjAvR4fOgRluzDLU6wMmUfyOH?=
 =?iso-8859-1?Q?CYqtZjIZMBkfPuAS?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: e86b1fd4-02bf-4d9c-aa3c-08d94057c443
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2021 08:26:35.1415
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pySq7Yi6CpIo0WPIJCqqgoWcXwjeCpquLbC0NGbyae6MbLmg/kPENiw4IWxICsbGKQXjQNTfzRA1AQZ7krPcXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P190MB0776
Message-ID-Hash: OFRFHCBNDUTAD3PDHBH3IXXUYBXFJMP5
X-Message-ID-Hash: OFRFHCBNDUTAD3PDHBH3IXXUYBXFJMP5
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to use pps to sync different usrp in gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OFRFHCBNDUTAD3PDHBH3IXXUYBXFJMP5/>
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

Hi Oscar,

On 06/07/21 01:11, Oscar Pablo wrote:
> assuming i have multi usrp and pc. each usrp connect to different pc.

If each USRP is connected/controlled to a different PC then
they are not under the same multi_usrp block.

Being in the same multi_usrp block means that in the USRP source/sink,
you specify every USRPs in the "Device Address" parameter
(addr0=3DIP_first_usrp,addr1=3DIP_second_usrp, etc.).
I.e one computer controls every USRPs under the same instance.

If each one of them is controlled by a different PC,
then there is no guarantee that they will be aligned
(even with a shared PPS).

> each usrp set unknown pps time to 0 then i want to get the samples at
> time 1. so how to do?

If they are controlled by different PCs with different execution delays,
then they won't set their 0 time at the same PPS rising-edge.

Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
