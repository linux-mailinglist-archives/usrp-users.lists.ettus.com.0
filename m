Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C672FF4D4
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 20:43:37 +0100 (CET)
Received: from [::1] (port=50806 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2frh-0006rW-DS; Thu, 21 Jan 2021 14:43:33 -0500
Received: from mx0a-00272701.pphosted.com ([67.231.145.144]:15794)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <prvs=86551c2823=rmattingly@ou.edu>)
 id 1l2frc-0006fq-Lg
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 14:43:28 -0500
Received: from pps.filterd (m0107985.ppops.net [127.0.0.1])
 by mx0a-00272701.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 10LJUnJN005812; Thu, 21 Jan 2021 13:42:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ou.edu;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 mime-version; s=domainkey;
 bh=SyKPRMnOqGIDvRYB3rixMf+YrMPRmWoyuGx8hISlWDQ=;
 b=nDS5H7b3M/CiikCgjHX4Qri/0irkkiBnNSxNSbyApD4H5iKsGrnrXfhoCwdrKJinOLc+
 9j+MUfFkSWJmkXt657sJ61q4ckgfqWmoOvlq80fq+EU/Z1lYhxsc3+YT6/AS76eJYV7y
 PgSjfX4DTlTR+H0vrYr7RonCCQKGXSzbdmPwLPvHYn2evKfe6UjiOJJS3qGrNXW3aO/L
 RrWEEH9Sz5t9YTdfth1uaaxWO9OjGiYgPKzcWn7Bq3aKq5G4vGyOVrh3kQwsnsyhpqqQ
 Bbf4zKQVGIAdbPiBnB2K1X3TkiJWjUnMoLZ2QuxvFnuDrnsa9Cdqdz2JBpfD1eP13bAP oA== 
Received: from nam02-cy1-obe.outbound.protection.outlook.com
 (mail-cys01nam02lp2050.outbound.protection.outlook.com [104.47.37.50])
 by mx0a-00272701.pphosted.com with ESMTP id 3668p1npg3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 Jan 2021 13:42:47 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QDWITkfKp2Uo4+dhZqBl+tDWSXvv8sblnVwGertjnG7r2l0n/JfVwYB7rzvxvCEM0gWo9F49e/kF1kdUQ9jL8F74LAFaZmrP/3Ss4DncWjpJ3dJQgVZRiEYxJuPOdSD+K3+x+IduuGt1LUzhIgDiBlmrjwZWjHtrnkgHHqbZTC35iTE+kRLPVVvp7sAkHNsm2IT4RNGYsITORFQFv+ptDX0XiktMhUmxugVdoiTVLvOhjO4FRoT4IVqWkqcsi9DCviPC3qPX/JXv0HrLZcu2Xens/dh6EUldzmO4R3pRbjZeYhGxVhTJlpNwGTArZYFZz/3clnswLb3xDX7G31u8VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SyKPRMnOqGIDvRYB3rixMf+YrMPRmWoyuGx8hISlWDQ=;
 b=AexgRiQJUQTq9asJfTQLxJnGPTauYcTmIeh2d4G2+fxhi6nqJ6lRv0SozbFgagZbZNz2qmaRtXZWmUFBYi2KBjqUs8LjbtAdfdIFLToKyAmlfEQD+dP7m88LzjO7IL54NEcypMUedVDo5w8V01IA1asYloYJ7OMumu0Dnz668cT7K3x4k1S6/M3dLxOI+2AVBPL/s7SUsniXhC9zz+1NpJtxYGpmFnTF3Vyeg95J5lVDGllcnfJt8GUGQ+JSf4eZfa0suDiQzjF4GdXn1icfScOx/Y+WFweFnLr1d978MAHi2RIw7OBCKGxpcYc3yA1rRomKZhoDF3aNjgzyUNWFSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ou.edu; dmarc=pass action=none header.from=ou.edu; dkim=pass
 header.d=ou.edu; arc=none
Received: from SN6PR03MB4160.namprd03.prod.outlook.com (2603:10b6:805:bd::20)
 by SA2PR03MB5788.namprd03.prod.outlook.com (2603:10b6:806:11b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Thu, 21 Jan
 2021 19:42:45 +0000
Received: from SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::8421:f343:7269:50cd]) by SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::8421:f343:7269:50cd%4]) with mapi id 15.20.3784.013; Thu, 21 Jan 2021
 19:42:44 +0000
To: Rob Kossler <rkossler@nd.edu>
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] RFNoC 4 FFT with GNURadio
Thread-Index: AQHW8AqSK0SAar/A0USi7wUPpRNdpaoycbWAgAAH1ZY=
Date: Thu, 21 Jan 2021 19:42:44 +0000
Message-ID: <SN6PR03MB4160E28C0ED4A6E41ABE516EB1A19@SN6PR03MB4160.namprd03.prod.outlook.com>
References: <SN6PR03MB41607B048DE4C7AF40F1F7F0B1A19@SN6PR03MB4160.namprd03.prod.outlook.com>,
 <CAB__hTSVbsoOpiH=J5u03QwB8bXQziZJYGqAXsTvA-GwtLy6tw@mail.gmail.com>
In-Reply-To: <CAB__hTSVbsoOpiH=J5u03QwB8bXQziZJYGqAXsTvA-GwtLy6tw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nd.edu; dkim=none (message not signed)
 header.d=none;nd.edu; dmarc=none action=none header.from=ou.edu;
x-originating-ip: [129.15.64.247]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c78b211-86ee-47a1-87c6-08d8be44b94d
x-ms-traffictypediagnostic: SA2PR03MB5788:
x-microsoft-antispam-prvs: <SA2PR03MB5788058010867DA4A8B0F39DB1A10@SA2PR03MB5788.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NpzLhaqXarM7ccbiGb3aJEmkh/PL/FBCo/bqbDNt0yMnz61SdK4PDQFjdtZO7giYqEa/THgWe0bt0Jcxk5NQD9UTg2diYwAFUJuxq+29FCzlMJWHIwY0YZUnbW9hrmoitPEr49nKVjdp1cVLONmFLn6JWGBYeggMLFqzBq2Mz2/UgblPbowY0F3QgVL6QQ1nbueC8Zvlj1BlfJ5zm+pLrwByskzC3I45vgixRUJa3LFiRFYqQqwgkoAHrV1p4FvkLtbeTf9KB5yvDOw+8NqK+XVsZe0s5bKOK94Gc80DwMEzCAykqC4IOiY91t0bOIkyn8f1f6oJIexPnjAjeWniPQco2mRHz4dVNHQ5mdkorbIacTXQRJ3qD5E8tPpSkhFUsb2syLFe2eIDZ/tA1OForo6o4Fk9Pv4PyEpoDtIQPyPyPSOeGM59urSPwTuY9ilEBZwYxQW4lSbnaVztfEQhy8fDENIP05zDIS1nRGsRdoqh05T54O8sRPpNG0o0KTvZSfOhyRskJOiUf9l75ShGNA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR03MB4160.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(39860400002)(136003)(366004)(396003)(8676002)(166002)(66476007)(6506007)(55016002)(83380400001)(71200400001)(52536014)(66946007)(316002)(478600001)(2906002)(76116006)(9686003)(966005)(53546011)(6916009)(786003)(66556008)(186003)(75432002)(4326008)(64756008)(33656002)(86362001)(26005)(66446008)(5660300002)(8936002)(7696005)(10126625002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?sMeZd4/mnrF9dZ7bxbLlqTBOgb0c+jVKD+oESdl+pcLVhunqFqr+b5evy07A?=
 =?us-ascii?Q?9ZkIQ1OB67py5QoB0nKQUT0cZQBpZ71d3UbsAr75OTge98uLM812voqGntT3?=
 =?us-ascii?Q?6Dy0cH8EyU7WlYd2lukj56SvQMUIXIyI3qZqPGBa4/xdHGArBml5HUnIn1Tn?=
 =?us-ascii?Q?NfnoJpTSW8Tx6u4vVlGhLmjrlaOTxnN9XsyAl+o4I0KUEqkSbgvE76VAby6c?=
 =?us-ascii?Q?jXFdw9F/lcGAlaK0Mzx+wh6F7qgNxAOAgL2nRDop8e31p/sz13lf1TAcWXxe?=
 =?us-ascii?Q?6tQlkm0eA0KjZnE6oKbjSiciofxdAWLJLdFDbSdzSVvVS9XnVijQkGT1X/JF?=
 =?us-ascii?Q?8gq8L1sRfPR3yfffQRswHB5zBI1Q72OdPoZNwbH1CDADpMcDkEodS7rjiix8?=
 =?us-ascii?Q?u2iOZOMHHj9vIkhRSeq2bgS+FSh44b6CTE5Zated3y35sYyCXj8OkQJf2oez?=
 =?us-ascii?Q?7s/4k2nFamP9y8LqCPthk9z+97m2NlFX2l74PQXIOS72RLSoZDqUkmI4oAQ1?=
 =?us-ascii?Q?dV9L839IE6FnblopWUPJVjEnyaNfMx7jdVZJJMX33eaLJLkVUrXNvHLNe/47?=
 =?us-ascii?Q?ewZOm2gWOEAN4AKIK5XgDnZZMI0NrIsutSYrLUg8pypaq9nlbtOBCjOjZ+0E?=
 =?us-ascii?Q?tLi/qkMkY6Yk0z0Q6OMbCNDNLXtqr1ePG4bGcrLRRY3JroBxUdorbEgJMX5D?=
 =?us-ascii?Q?0+aabBjzCiF5/opQKOvR20ulPUAMhVProazEgYivzTnxJxORw4PXgmddD9Su?=
 =?us-ascii?Q?GBLdv0paXfVkPS9Y6SXeNc2APZCuWSfhkEm8iFlzGdepfzHSxFKeAHy9QCGL?=
 =?us-ascii?Q?Ijmtf4VWMrKY5bTtSZNRfIdSTmd3o6WweVnXWUcxLTKvIxT+ItDaUsC/Egkl?=
 =?us-ascii?Q?hFlBSiUSVHNhSwPCFkY3KBwdZN4wL4YxO68OIBrI/8ii5HZYOYq20kYQoYpK?=
 =?us-ascii?Q?1UGkU4L/bcrxYGu8nhZlM5wryXtybnZbU2cd+VHjsVAoMTpijnX29JSZkl9s?=
 =?us-ascii?Q?RBP1V9j0p3uc8Ze+aPfJWBMi+iHNG5UA4vlhEymW5fLi3j03WNW7QmSSSamX?=
 =?us-ascii?Q?c5bPjE17ujOGLd8H75b8lW5EF4BxQw=3D=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ou.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR03MB4160.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c78b211-86ee-47a1-87c6-08d8be44b94d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2021 19:42:44.7635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c7de09d-9034-44c1-b462-c464fece204a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M8ABMLV2+tb+XhRleIt3LSYEvQ/HZdvz0mY7yWGfaPowOMhayi6j5+2mmX7nsDqna/mCusqfoyqWPDp9JzXPnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR03MB5788
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2021-01-21_10:2021-01-21,
 2021-01-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 bulkscore=0 priorityscore=1501 mlxscore=0 mlxlogscore=999 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101210100
Subject: Re: [USRP-users] RFNoC 4 FFT with GNURadio
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Mattingly, Rylee via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Mattingly, Rylee" <rmattingly@ou.edu>
Content-Type: multipart/mixed; boundary="===============7384873644383551753=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============7384873644383551753==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR03MB4160E28C0ED4A6E41ABE516EB1A19SN6PR03MB4160namp_"

--_000_SN6PR03MB4160E28C0ED4A6E41ABE516EB1A19SN6PR03MB4160namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Rob,

I did set this explicitly when I tried using the UHD Python library so I mu=
st have a different issue there.

But I did forget to set it in GNURadio which did change the behavior. Now w=
hen streaming, the first FFT length number of samples are valid data but al=
l data samples after that are zero and the graph cannot be halted.


Thanks,

Rylee
From: Rob Kossler <rkossler@nd.edu>
Date: Thursday, January 21, 2021 at 1:09 PM
To: Mattingly, Rylee <rmattingly@ou.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC 4 FFT with GNURadio
Perhaps try setting the radio SPP =3D FFT length?

On Thu, Jan 21, 2021 at 10:38 AM Mattingly, Rylee via USRP-users <usrp-user=
s@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hi all,

I am trying (and failing) to get an RFNoC image with the provided FFT worki=
ng with GNURadio. I am using an X310 connected with a 1Gig ethernet and bui=
lding images in the HG configuration.
I used the knowledge base article: "Getting Started with RFNoC in UHD 4.0" =
(linked here: https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0<ht=
tps://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_Getting-5=
FStarted-5Fwith-5FRFNoC-5Fin-5FUHD-5F4.0&d=3DDwMFaQ&c=3DqKdtBuuu6dQK9MsRUVJ=
2DPXW6oayO8fu4TfEHS8sGNk&r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCywQEkDFJVQQc&m=
=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&s=3DWRMR1ToHPgCgrxeKlDxekAf8=
zkWOnmzADEnOeDFFLx4&e=3D>) to add the FFT to the default image.
The resulting image core with FFT can be found here: https://pastebin.com/x=
Lqyx7qS<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__pastebin.com=
_xLqyx7qS&d=3DDwMFaQ&c=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&r=3DIR=
w4yqTQyxVHnwRt0l8Smy70YsBQKXCywQEkDFJVQQc&m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHI=
KZPk3Ssa4lGRSA&s=3D0apXU3AXxgv1drH2fIZHdjJ3lbHLbX9K2fImIOo5Uns&e=3D>

The uhd probe shows the fft correctly connected to through its own SEP. How=
ever, when I attempt to run a flowgraph containing the FFT I get a recv() t=
imeout error and then blocks will not flush unitl the USRP is reset. One of=
 the many flow graphs I have tried, and the consistent error are shown in t=
he screenshots here: https://pasteboard.co/JKFUlrH.png<https://urldefense.p=
roofpoint.com/v2/url?u=3Dhttps-3A__pasteboard.co_JKFUlrH.png&d=3DDwMFaQ&c=
=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&r=3DIRw4yqTQyxVHnwRt0l8Smy70=
YsBQKXCywQEkDFJVQQc&m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&s=3DJlq=
F2Qp2KClHzn0mvHswomA11v3zTzsa6gIGVLxN3FY&e=3D> and here: https://pasteboard=
.co/JKFTHji.png<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__past=
eboard.co_JKFTHji.png&d=3DDwMFaQ&c=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS=
8sGNk&r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCywQEkDFJVQQc&m=3D1s6oj0M92rhUqhJ9c=
wnA1ZVYmoTHIKZPk3Ssa4lGRSA&s=3DXtmxPj8fXQeJhRCuLKoCuFccvXZOvYLKTJl6oSunz00&=
e=3D>

I then tried using the UHD Python API deriving from the example shown in th=
e GRCon20 session "Exploring RFNoC with the UHD Python API" by Aaron Rosset=
to. Here I find that a static loopback example like Aaron presented with th=
e FFT worked with one length of samples but trying to extend that for strea=
ming from the radio creates the same behavior that is exhibited with GNURad=
io. The only way that I can get the FFT to execute correctly is if I stream=
 exactly one FFT length of samples. Any larger number of samples from the r=
adio (even length multiple) will crash the block and requires a power cycle=
 to be able to flush again.

Loopback example code: https://pastebin.com/03dScZvB<https://urldefense.pro=
ofpoint.com/v2/url?u=3Dhttps-3A__pastebin.com_03dScZvB&d=3DDwMFaQ&c=3DqKdtB=
uuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCy=
wQEkDFJVQQc&m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&s=3DsLbsQ4340BL=
t3mlqTSjBY7_4WeI-k3OCtGa0NXtXPT0&e=3D>
Streaming test code: https://pastebin.com/WQRn7UhH<https://urldefense.proof=
point.com/v2/url?u=3Dhttps-3A__pastebin.com_WQRn7UhH&d=3DDwMFaQ&c=3DqKdtBuu=
u6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCywQ=
EkDFJVQQc&m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&s=3DX6qNPBtpTwb5N=
ic40FgQofh-q3hb5bKlU7LKdYTv_zI&e=3D>

I have been able to build and use custom RFNoC blocks sucessfully with GNUR=
adio on this installation of UHD 4.0, GNURadio 3.8 and gr-ettus.

Thank you,

Rylee

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listi=
nfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DqKdtBuuu6dQK9MsRUVJ2DPXW6=
oayO8fu4TfEHS8sGNk&r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCywQEkDFJVQQc&m=3D1s6o=
j0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&s=3DaM0JcEUdk219VkyfzdD1qBVqRMWztDC=
98fCMR6xZu0Y&e=3D>

--_000_SN6PR03MB4160E28C0ED4A6E41ABE516EB1A19SN6PR03MB4160namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Rob,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I did set this explicitly when I tried using the UHD=
 Python library so I must have a different issue there.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But I did forget to set it in GNURadio which did cha=
nge the behavior. Now when streaming, the first FFT length number of sample=
s are valid data but all data samples after that are zero and the graph can=
not be halted.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">Rylee<o:p></o:p></span><=
/p>
</div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Rob Kossler &lt;rko=
ssler@nd.edu&gt;<br>
<b>Date: </b>Thursday, January 21, 2021 at 1:09 PM<br>
<b>To: </b>Mattingly, Rylee &lt;rmattingly@ou.edu&gt;<br>
<b>Cc: </b>usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject: </b>Re: [USRP-users] RFNoC 4 FFT with GNURadio<o:p></o:p></span=
></p>
</div>
<div>
<p class=3D"MsoNormal">Perhaps try setting the radio SPP =3D FFT length?<o:=
p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, Jan 21, 2021 at 10:38 AM Mattingly, Rylee vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Hi all,
<o:p></o:p></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">I am trying (and failing) to get an RFNoC image with th=
e provided FFT working with GNURadio. I am using an X310 connected with a 1=
Gig ethernet and building images in the
 HG configuration.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">I used the knowledge base article: &quot;Getting Starte=
d with RFNoC in UHD 4.0&quot; (linked here:
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.=
com_Getting-5FStarted-5Fwith-5FRFNoC-5Fin-5FUHD-5F4.0&amp;d=3DDwMFaQ&amp;c=
=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&amp;r=3DIRw4yqTQyxVHnwRt0l8S=
my70YsBQKXCywQEkDFJVQQc&amp;m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA=
&amp;s=3DWRMR1ToHPgCgrxeKlDxekAf8zkWOnmzADEnOeDFFLx4&amp;e=3D" target=3D"_b=
lank">
https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a>) to add the =
FFT to the default image.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">The resulting image core with FFT can be found here:
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__pastebin.=
com_xLqyx7qS&amp;d=3DDwMFaQ&amp;c=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8=
sGNk&amp;r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCywQEkDFJVQQc&amp;m=3D1s6oj0M92r=
hUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&amp;s=3D0apXU3AXxgv1drH2fIZHdjJ3lbHLbX9K2=
fImIOo5Uns&amp;e=3D" target=3D"_blank">
https://pastebin.com/xLqyx7qS</a><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">The uhd probe shows the fft correctly connected to thro=
ugh its own SEP. However, when I attempt to run a flowgraph containing the =
FFT I get a recv() timeout error and then
 blocks will not flush unitl the USRP is reset. One of the many flow graphs=
 I have tried, and the consistent error are shown in the screenshots here:
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__pasteboar=
d.co_JKFUlrH.png&amp;d=3DDwMFaQ&amp;c=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4Tf=
EHS8sGNk&amp;r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCywQEkDFJVQQc&amp;m=3D1s6oj0=
M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&amp;s=3DJlqF2Qp2KClHzn0mvHswomA11v3zT=
zsa6gIGVLxN3FY&amp;e=3D" target=3D"_blank">
https://pasteboard.co/JKFUlrH.png</a> and here: <a href=3D"https://urldefen=
se.proofpoint.com/v2/url?u=3Dhttps-3A__pasteboard.co_JKFTHji.png&amp;d=3DDw=
MFaQ&amp;c=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&amp;r=3DIRw4yqTQyx=
VHnwRt0l8Smy70YsBQKXCywQEkDFJVQQc&amp;m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk=
3Ssa4lGRSA&amp;s=3DXtmxPj8fXQeJhRCuLKoCuFccvXZOvYLKTJl6oSunz00&amp;e=3D" ta=
rget=3D"_blank">
https://pasteboard.co/JKFTHji.png</a><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">I then tried using the UHD Python API deriving from the=
 example shown in the GRCon20 session &quot;Exploring RFNoC with the UHD Py=
thon API&quot; by Aaron Rossetto. Here I find that
 a static loopback example like Aaron presented with the FFT worked with on=
e length of samples but trying to extend that for streaming from the radio =
creates the same behavior that is exhibited with GNURadio. The only way tha=
t I can get the FFT to execute correctly
 is if I stream exactly one FFT length of samples. Any larger number of sam=
ples from the radio (even length multiple) will crash the block and require=
s a power cycle to be able to flush again.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Loopback example code:
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__pastebin.=
com_03dScZvB&amp;d=3DDwMFaQ&amp;c=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8=
sGNk&amp;r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCywQEkDFJVQQc&amp;m=3D1s6oj0M92r=
hUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&amp;s=3DsLbsQ4340BLt3mlqTSjBY7_4WeI-k3OCt=
Ga0NXtXPT0&amp;e=3D" target=3D"_blank">
https://pastebin.com/03dScZvB</a><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Streaming test code:
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__pastebin.=
com_WQRn7UhH&amp;d=3DDwMFaQ&amp;c=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8=
sGNk&amp;r=3DIRw4yqTQyxVHnwRt0l8Smy70YsBQKXCywQEkDFJVQQc&amp;m=3D1s6oj0M92r=
hUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA&amp;s=3DX6qNPBtpTwb5Nic40FgQofh-q3hb5bKlU=
7LKdYTv_zI&amp;e=3D" target=3D"_blank">
https://pastebin.com/WQRn7UhH</a><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">I have been able to build and use custom RFNoC blocks s=
ucessfully with GNURadio on this installation of UHD 4.0, GNURadio 3.8 and =
gr-ettus.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Thank you,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Rylee<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DqKdtBuuu6dQK9MsRUVJ2DPXW6oayO8fu4TfEHS8sGNk&amp;r=3DIRw4yqTQyxVHnwRt0l8S=
my70YsBQKXCywQEkDFJVQQc&amp;m=3D1s6oj0M92rhUqhJ9cwnA1ZVYmoTHIKZPk3Ssa4lGRSA=
&amp;s=3DaM0JcEUdk219VkyfzdD1qBVqRMWztDC98fCMR6xZu0Y&amp;e=3D" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
><o:p></o:p></p>
</blockquote>
</div>
</div>
</body>
</html>

--_000_SN6PR03MB4160E28C0ED4A6E41ABE516EB1A19SN6PR03MB4160namp_--


--===============7384873644383551753==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7384873644383551753==--

