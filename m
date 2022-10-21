Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34ED7606F5F
	for <lists+usrp-users@lfdr.de>; Fri, 21 Oct 2022 07:23:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDBC8380D8E
	for <lists+usrp-users@lfdr.de>; Fri, 21 Oct 2022 01:23:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666329825; bh=CABSH+zFtCnkbQmmidCufZzB7c9/LtYrytZXGePyw5c=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ikQWcyrQpkgJnxYqVA1iYaoqcPT9TkDs/XyqDxsxqvM95AoU/y5izEMKsw2AfhExL
	 L8gihcWPYjJHNRH2gb21mpjqxhkNhi9LOFcFSPco4EV5O/aX2D36JuG3UEhHFK50PC
	 MKkaVtPjcwh0ADQLpSbKxL9/VxrYkVbufCfYh7qqRqlSK/D7i6+WnVMYNngO5VtIr+
	 82uRSTp3HxObPb75Q31r7GmBz3MZbthUPm3eC4mzARQtIJo3V3LUY+cEGITj5HVQQG
	 fEOtX6u4QZbwELKsyBYsvaR3CR5UYrnTVqL+8AJ2zKxeLRZLET7iBOIYfEn6wiGwnH
	 /3J+U55HxO5Mw==
Received: from APC01-PSA-obe.outbound.protection.outlook.com (mail-psaapc01on2101.outbound.protection.outlook.com [40.107.255.101])
	by mm2.emwd.com (Postfix) with ESMTPS id D209738094D
	for <usrp-users@lists.ettus.com>; Fri, 21 Oct 2022 01:22:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=Haleyoffice.onmicrosoft.com header.i=@Haleyoffice.onmicrosoft.com header.b="BmdmhyXW";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mP/IHE+0xBqKsDud+v8YA137x3p3n74wGWl4Mxvyzkqr3JdhM4Lg+BH6tQyjjy3+yB/LrkarrZ+GAQziW3hu/IPfQZBmZpiUNO09J6MWDkKbXtDqQeyT5o44CsvsQMUSE62GOOs5b89YCLR759u4D3EQ5QdmZZBOXBodE4QuCYgegzsgRsFeNe2fsWfBifRXMdklwonVSFhKfSOFa0nmORWEmx0IfeKkUPFPbgkQEAER6wZm2iu+B2koOOS8YqXVwgEutY++VCYyBVGcNcRLoQUSAlhmmIC7c9DyFor9sLuhhrugrk0lNhOAY+el78RXIepHIwnQbLcL891UJ9C1Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BxVUS3aV3LclYf1gK0am30mrvPAafhUokkpKHv6sbUQ=;
 b=IDU78wtZv07YXeOltaNiloaetFx02yMQse20u3wc5kdyyu++6VRNLUaRD2BKTvAIZ5T3t8Ly0wIuk9kRzbR4ALPApYsVQQ71mwpl3Kc+p/4kSKfIxRseClPHbAlSc/cwSVLqsSqExJeBbdwyOsomHgf8BC9bdrIel7klcy3fbLrqEZ2h1+00K92em4H62glelqF7QMn8QqqRJo2Nyvbj7E7cuIPlKdEWTWnQKPuH43xo6emv37eNHETB4n8BN/wdTRD2zFow3P2P6+Ku85rEwTkYtvBiPb+xlxaTgQmZfrCoPOxd7SHME3XHKGolAK4MPPRIjBP9vWSq2xzlIJ/pBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=haleytech.com; dmarc=pass action=none
 header.from=haleytech.com; dkim=pass header.d=haleytech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Haleyoffice.onmicrosoft.com; s=selector2-Haleyoffice-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BxVUS3aV3LclYf1gK0am30mrvPAafhUokkpKHv6sbUQ=;
 b=BmdmhyXWIPssjF9ZzZN/yuGd0xanwDc7zIN+xn7jv4efqycyeZMOErVn3Wgl73mGMOc0ZbPn2TKiObb6wxSYPliNG42XwfMEwVYcnDuylkt+i0/IP/tyGQCTGaHmE5Ypu58ics4ezeCvLzsH7wNLuA4Co2BILUc64PA3j9cQItM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=haleytech.com;
Received: from SI2PR03MB5497.apcprd03.prod.outlook.com (2603:1096:4:12b::6) by
 PSAPR03MB5718.apcprd03.prod.outlook.com (2603:1096:301:87::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.17; Fri, 21 Oct 2022 05:22:53 +0000
Received: from SI2PR03MB5497.apcprd03.prod.outlook.com
 ([fe80::5a63:b0c3:4eef:d3be]) by SI2PR03MB5497.apcprd03.prod.outlook.com
 ([fe80::5a63:b0c3:4eef:d3be%9]) with mapi id 15.20.5746.018; Fri, 21 Oct 2022
 05:22:53 +0000
X-Gm-Message-State: ACrzQf3aJoM9fJvJ6yuUy0cYfoMCAFJIcw+SggHzFSyFWlfkyasbyyvv
	MSSSzZgR0ol9xDCsi8Z1Va/+Y7nCmosTg8G0Q3s=
X-Google-Smtp-Source: AMsMyM44jZLkzzxhzwfeg0OP2xo318CPiixB5xMQOOxRTDjeXxXi4LngC5U98eAH9/t/Y4hQ1pCJKYRcqX1e7HFaNaA=
X-Received: by 2002:a05:6402:254d:b0:45d:3ed3:8aa9 with SMTP id
 l13-20020a056402254d00b0045d3ed38aa9mr15254016edb.157.1666329766359; Thu, 20
 Oct 2022 22:22:46 -0700 (PDT)
References: <rZiEySXywiyNnVKI0FUQjzk0UMFynHph7bILViKQQ@lists.ettus.com>
In-Reply-To: <rZiEySXywiyNnVKI0FUQjzk0UMFynHph7bILViKQQ@lists.ettus.com>
From: Paul Chang <paul@haleytech.com>
Date: Fri, 21 Oct 2022 13:22:35 +0800
X-Gmail-Original-Message-ID: <CAHPxm4=obSCO2wfq6ySUZLT-ChyH6zJLmr6eRLEExobNm0xELw@mail.gmail.com>
Message-ID: <CAHPxm4=obSCO2wfq6ySUZLT-ChyH6zJLmr6eRLEExobNm0xELw@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-ClientProxiedBy: AS4PR09CA0006.eurprd09.prod.outlook.com
 (2603:10a6:20b:5e0::16) To SI2PR03MB5497.apcprd03.prod.outlook.com
 (2603:1096:4:12b::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SI2PR03MB5497:EE_|PSAPR03MB5718:EE_
X-MS-Office365-Filtering-Correlation-Id: 76492444-4a42-4e46-4dca-08dab3244d68
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oO6/yEJVzEKzab9JmS6VgR3iZiPy2Ni4HgxziMzleP2XzibNMPbycf0NV/dw5CFP6QOEhFgwPxnkPNtDvXYENTbeuQYFTrm1sCy36g5YRWhxOMxyJvJKjigAP8Oid/4vCDjcwVaGIHNH4pV1tTy/TgOL0AeFAzUaejteMxzU9WVb6A0MThD/G3tal2BCCm/z7yZToUQ0/BuYmivoxS2BHklZ1b0RWLtl4Wk6ktnRBz1+cjaDGllnhu6xdCyBlC8+D3PZjmiUZsjV3r0IFjGuleHb2sXY5w4riLgHSFMYBWNvb69C8EeXCzxfSGyX98iOyHI7Vf+0HajRbRsNSizZVtU+ReZ/ocPfy+Ir+xT0RPR9ImE9XgBuhDKYD9Y/aM/jehi2M/0PiWBc2he55hLotQXhyZvjGuXbJyjNqJSy7XPcz6ffSidIkWcxf6d7f7Lbw1EiEsGX9Zgs8TywOgtBzTjgsyL2CXLO6TwQiRX0bKVNAaZyzVlqJnXT49wwmGYzA3J0mUzjTX07gGZQl/ezD0jp2aE4mxI65FycNtrqpQ6RCxh9/ghwaX/GYOVhrhbxdBgEBD7tgrPFsJR/1qP/LKLtUoHYJSm+WvQMFpvS+n0rODrj+rgIeaJRIVgnXkzs68XE0MmezOfd2OowIFudMx1CKRXA0HsWTQDYwqYgbtatRpHVhj95nIitLyIqT8gxolGC53/O8lWVg+FCpRsDVKaNB1rnpNzkLrii/h9svWEdalHth/0tbgUqUB3E/0QmLVEWLv/W2pDIrphwrvGP7g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR03MB5497.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(366004)(136003)(346002)(376002)(39830400003)(451199015)(66899015)(2906002)(86362001)(38350700002)(38100700002)(55446002)(6506007)(186003)(8936002)(33964004)(478600001)(6512007)(9686003)(6916009)(52116002)(26005)(316002)(8676002)(66946007)(66476007)(66556008)(6486002)(55236004)(5660300002)(41300700001)(6666004);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Z2VHZ3dtRFlkTDNPRHhtek84ZkQ0Lzd0ZGw0Ym01SlJVcTRaMitFbXpmWlgy?=
 =?utf-8?B?dk5wdkl6c3QxRXRsSmFBcmRLUU5CaEoxWXMyOFZSWmRzQkZjVEUzOWErZUJ3?=
 =?utf-8?B?T1FXdERJSkVzM3hqd3JMRGtVZnNoaWhTRHNBWmFkaktOSEhpSDcxaEZmeCsr?=
 =?utf-8?B?dCtxTXZmV2o3c213SXhBZGhHeTNwVFJoNDZMRFFhcTRERUNFRCtibnA0aE51?=
 =?utf-8?B?ZU8rQ28vMDN0dVBFcHQ4dTFtdVllMVU5d0FMb3VsUitnQ05NK201TUFpVWlS?=
 =?utf-8?B?UzQwRXBqMzREbm9Pc2tVUUI2MVpaaWxLSkJYejIyYkFUbmhUMy84MGZmK2Nw?=
 =?utf-8?B?WWNRWUVteTkxRC9HZVBWY2Q4OWRCbERiQ1ZaOWIrdU9LWUdrN1NuMXpqd2g4?=
 =?utf-8?B?azVTU20rUnFxSkhhOWNMMW12Uk93YnljaHgvMEpVYS9Kc2JxVmJiR2M3ekVQ?=
 =?utf-8?B?OEhpM1d4Uk9UWHBUOW5YS3I2T244UVY4NzE3M3FFUVZKMXBnNTYvUm9aOXNY?=
 =?utf-8?B?UWhkdkV2WmVTUVVOeSt0RE93a2NUSHhQSnBMNUF5VXJpKzgyY09HLzM1Y0Q5?=
 =?utf-8?B?RUYraVNJZU4vWUdJM2x5M1V0eVd4R1dGUDRKMXFocTdoMFgwNFRrMVRra0Ey?=
 =?utf-8?B?U3JSQktRS1ZZV01TTlh5aVQ1OThzSTBSVWZ5RDR4dXl5N0o2QTRmdDdEb0lk?=
 =?utf-8?B?T3V4WHYwRnI1dEJKdzdUQndwS0k0SGhBTXUrdnpibDJhRE15cFlNdUFvcXpP?=
 =?utf-8?B?WjFMWjc2OFpaWk1KRVJFNzRNMkNjdmtTaGZoVTk1bG5nR1dtc0VjT3c3Rmtt?=
 =?utf-8?B?YkFuNUo3Sk5LUDdUSzNLcVl1SVQ5V0tvYkEzc0tHRmhWVjJWYklQOXNsS28v?=
 =?utf-8?B?c0FPMXJ4b01ySGIrYXplSWlTWmROT0xNb2IrYjN4VnI1UmZqZmxQWmlhRE9V?=
 =?utf-8?B?QWljeU1VY09Jc1hBVVFhQUtIL3FCcXZ2Y2ZLeXNKMU1FeFNJSzJUcmk4MGFk?=
 =?utf-8?B?ZWcvd2drcjFhS2dJWnZsZzJkZGF6eFVudXI2OFhaOGRqTU05d0liQkkxY0Zw?=
 =?utf-8?B?NUJQTmxNUlpQbFdaQWZ5UndYbkFpMmxDQ3dnWEpWcTlxa1BOU04vd0tIRDJU?=
 =?utf-8?B?MHNGMnEzMmEwYWtQU1NqY2I2cVpram9lcFhMWWJZZnNvQ3AzamFKNkdyWmRD?=
 =?utf-8?B?R1hOOVdFN3p3V2g1VW5vR1l3TG13VWd0V1hvNkRlazluLzBIMFdIbjIzd0xS?=
 =?utf-8?B?dllOTGJCNWdPWUNpeDZrcEFsaHpkdDVRL0lQRmIza051b1VCVldFMm1vUitM?=
 =?utf-8?B?WkY5Q1U4d3BMclNLcWpjQWcxSVo3M3hCMmhJZmZOQktoWUZDMmNzY3VYVUlZ?=
 =?utf-8?B?SE5DQmdYdmgxVTdIWjNpTmJaNnZvYlhNaHBhMHVIWEloeEFFMmMzNHdiUktU?=
 =?utf-8?B?VDA1NG5BQm14UHhxMXZhQnJ1ZlRmRi9DV09ERkRYbDNnTWZ0TkZkZ3g1RHRM?=
 =?utf-8?B?VDNxL3VzWTRhWlVVdHVSbVRUaFMwV2NOczJ4c2Y4L1lzRldOaFZPSVRaaExq?=
 =?utf-8?B?MVJvZUxVNFQrTUlJUlhlRXpZWGExYzZGeUpJeGU4R3B3c1N6OUl5RTNFSFFa?=
 =?utf-8?B?cTM0RWRINU5OSnFzaDJ2TWdTc28rRGQxWE5ESDFjY2NwdUJ4a3NjTzhicU5y?=
 =?utf-8?B?OTd2T1BiNzlqNkxjSmlGNEJCUlhzek9lakY2dmpIR3ZQN1R4VzVheFdIRHlK?=
 =?utf-8?B?ZDNJNGRhVUFSODhTcVg2OXkzYlJwZGJtRGtNQXNyQjdKcktDcm9oR2ZiTjFG?=
 =?utf-8?B?OFNWajROUHFjby84MmVsSUQvV2U3c0s5ekRiM2FwVzlBVnBrWW9ac1BXNEY1?=
 =?utf-8?B?MEVLN2p2VVFxb3k0VmpFZU9SSThON0cySE9wYmJJb1JtbjUzRTcxWFR6VXE5?=
 =?utf-8?B?WHQwSEMrWWlMSy9ZT0hqR3VYRkw5Nkp5N1NTMzNSZVFFaUpkTGVCNEhMeWgz?=
 =?utf-8?B?QnhLY0lOamN0UFhYVE5jNzlmK0hWOGMwTjU1blJQdG9nUFZpckNYTnRQQkZ1?=
 =?utf-8?B?RklZQVdjWC96K2xucFY2RzQwNGExRWlLUGtORFlmZE55Vlc5Z2dxNDJhK0ow?=
 =?utf-8?Q?7CYXn0wcNinAw/DmKJY4liSQV?=
X-OriginatorOrg: haleytech.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76492444-4a42-4e46-4dca-08dab3244d68
X-MS-Exchange-CrossTenant-AuthSource: SI2PR03MB5497.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2022 05:22:53.1315
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 14ec469d-11e7-4abf-913e-f7dec9b7b172
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UkAUto4jByhwUWLyQNL0Abrjtv5uSuQpk/a2IJyauibGu8wNedySa0cJOmG/xdKWHnbkjonjxKAv07yonPugsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PSAPR03MB5718
Message-ID-Hash: GPUNLSSNPC7SSOHO6IQURDWLQIVXLQ53
X-Message-ID-Hash: GPUNLSSNPC7SSOHO6IQURDWLQIVXLQ53
X-MailFrom: paul@haleytech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B205mini-i issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GPUNLSSNPC7SSOHO6IQURDWLQIVXLQ53/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6089220734945262842=="

--===============6089220734945262842==
Content-Type: multipart/alternative; boundary="000000000000cd786b05eb84a12f"

--000000000000cd786b05eb84a12f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have exchanged three cables and two computers.
How to solve this problem?


<paul@haleytech.com> =E6=96=BC 2022=E5=B9=B410=E6=9C=8819=E6=97=A5 =E9=80=
=B1=E4=B8=89 =E4=B8=8A=E5=8D=8810:44=E5=AF=AB=E9=81=93=EF=BC=9A

> How to solve this problem? Another USRP B205 without this error.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000cd786b05eb84a12f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8"><d=
iv dir=3D"ltr">I have exchanged three cables and two computers.&nbsp;&nbsp;=
<div>How to solve this problem?&nbsp;&nbsp;<br></div><div><br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">&lt;<a =
href=3D"mailto:paul@haleytech.com">paul@haleytech.com</a>&gt; =E6=96=BC 202=
2=E5=B9=B410=E6=9C=8819=E6=97=A5 =E9=80=B1=E4=B8=89 =E4=B8=8A=E5=8D=8810:44=
=E5=AF=AB=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><p>How to solve this problem? Another USRP B205 without this er=
ror.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000cd786b05eb84a12f--

--===============6089220734945262842==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6089220734945262842==--
