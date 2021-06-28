Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B96733B667F
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jun 2021 18:14:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ABE2D383F3A
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jun 2021 12:14:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="hLbcR3Rr";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=nio365.onmicrosoft.com header.i=@nio365.onmicrosoft.com header.b="K79XhSu0";
	dkim-atps=neutral
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.158.57])
	by mm2.emwd.com (Postfix) with ESMTPS id 529B5383F38
	for <usrp-users@lists.ettus.com>; Mon, 28 Jun 2021 12:13:36 -0400 (EDT)
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15SG4Kwf012426
	for <usrp-users@lists.ettus.com>; Mon, 28 Jun 2021 11:13:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=PPS11062020;
 bh=W/nvNWJ2zI88rNE0fF6adFn3v7InUrLhZsQozbGm42Y=;
 b=hLbcR3Rr9DmN2pMcsp8kLzxHxh9nOJgwmYkfqoUTnEEumWiQxbtPOFqvh0XzeG21qgZG
 nDxZ/W43lj1p/uqQUN4JxDmKHlXy8A2bfAEpmTSq5Qg3j+VDc0khX7dlfSWQfsibgC5L
 FWtGcjsLNsc1YtC4Q0v2e/nFKgk/zm747lbZ3fy6ydbgTA51+1EWaeaKzwmQkZB99jTQ
 0Y/KNWxaVGx6PxYxx0chIregIYzCCK5MC7vvCpBe8HcOShOEskjDv9/lJ5sC4c1az5MX
 NSQKNjrBwsTRbqZuBKhGlHkiDV3k9nq8AJbzhL7DEI+HyDrlNAGcyx9NdRTISevhGXXX SQ==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2175.outbound.protection.outlook.com [104.47.57.175])
	by mx0b-00010702.pphosted.com with ESMTP id 39fa4krqxe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Mon, 28 Jun 2021 11:13:35 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sz5pCJ/PxB3rT/y/nghpz4bE6sfa+I0CsRK5RxbiFi+VMD+6GqPORqD8/CedKV5bTC4ldMBUJnVwAGTxNBr2h0N0VOtgCY+c5KV15BGqIMWesnKjUA+zwHhiOsCm+PteyFqQi1DADIYah5ajaEhJkKxkyVaWjTRxH0Zm0qEmBx5vsoXtxo3s/zSwo8lptz9fIqfVY9XajwTWT4HyTSWDgj3dfOpvC6pYIvdClODosDo4NEY6eTYEvyzydbch4+MysuYmUQMsbzR7ULWdMNr/3l596IUa+muDy3ldwX/rlu+/GTeXv9wiMR6nNd1/VsoL3+WRXhOfF8JMWmV+g3Vxug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W/nvNWJ2zI88rNE0fF6adFn3v7InUrLhZsQozbGm42Y=;
 b=SpyStDEbcSJVFPl3honV4mHqnYdVh3CazncxIWFtj9ZhBFJ7vbU9lZjLjBScQu2P4Q+6ILUFIs6osAVYLXj8rOSfZfOszuvt3dlcMxaH0oz5hwPhaJH99YUFjb/MQe3li/4iwPrGTkBV2ZjZs4D7P5q67mHuZUw9qTks4nnLQ+fMuSkL9Wk1w5IET3Li2BytsfbTPLvDH4TGzf3BkHimu2DZIAgChx6xtxIL/Gn2YpWUUtBIIaAOJuO80Hi7/r+3mHtKoYNueiMsTjcBnlzdG4NIGmrnULIsI/u6LI0jb+kIElH5kj3fGdypBDQ3F2HxckIjMqIcBbmUk8T3WlZLvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W/nvNWJ2zI88rNE0fF6adFn3v7InUrLhZsQozbGm42Y=;
 b=K79XhSu0TOzbOMZtSCtlf0dYxHjCutfe0AzmlmOJRNKfyYk2RgHx/+/Rl2T2vzp6iQ6sw/mA3dIsaLSnDpSWK19V3lmgo+xE7SCpf0dA8jhCE4D7PM06GOSItvpBfH4RXbzYX16as+v+BzaFEwojEfFUE4ZUs0DPOgZwONAYmrg=
Received: from SN6PR04MB5053.namprd04.prod.outlook.com (2603:10b6:805:95::12)
 by SN2PR04MB2334.namprd04.prod.outlook.com (2603:10b6:804:17::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Mon, 28 Jun
 2021 16:13:33 +0000
Received: from SN6PR04MB5053.namprd04.prod.outlook.com
 ([fe80::5960:e1c6:d45c:a24a]) by SN6PR04MB5053.namprd04.prod.outlook.com
 ([fe80::5960:e1c6:d45c:a24a%4]) with mapi id 15.20.4264.026; Mon, 28 Jun 2021
 16:13:33 +0000
From: Haydn Nelson <haydn.nelson@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD 4.1 and support for the NI Ettus USRP X410
Thread-Index: AddsNo5ChmIkDDMUTrSxxeRxUg9KuwAAcsgQ
Date: Mon, 28 Jun 2021 16:13:33 +0000
Message-ID: 
 <SN6PR04MB50534A050DADFC2BD4B4EC1CF3039@SN6PR04MB5053.namprd04.prod.outlook.com>
References: 
 <SN6PR04MB5053019CFEB0D85C2C47CFF2F3039@SN6PR04MB5053.namprd04.prod.outlook.com>
In-Reply-To: 
 <SN6PR04MB5053019CFEB0D85C2C47CFF2F3039@SN6PR04MB5053.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ni.com;
x-originating-ip: [70.119.96.242]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fba4b471-aa8c-4c6e-8c08-08d93a4fad6c
x-ms-traffictypediagnostic: SN2PR04MB2334:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <SN2PR04MB233455DDAD06C00D868C3F45F3039@SN2PR04MB2334.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 QEY5yEeaVyTQDPEuCre14MPwzNcxNg6trFqGn0JdcTDiS/5wS2DXvLjE1DDIVSXgGV6216sDRg8br2Qf/TJMNks+AQA6PNY7MUT4Tsidyu1V2JKNk2zMI1cQfemUpkxFegNK2UdWXSDUKtYjntBI1wKjEJSiJHCACiPON15xMXhl40nPcsD6OQPiTEkTbLyzSJNhNYSrwwWrQiRwGHFYy/C9JfesgWpnVzGMXJuMGDdJcy+BuVIp7BwLsrzsNyQwG1UonCljMEbx6bbYAI5rl9NByTp1RszVB9L8CrxNwwtJJSHOBd9iEjpy5gbYw9ApETVylNq5CXeaSjSnQjPhqtk5nOh6XV4y7w28Z39N8MtX9EXj+QDW7RCP9NFd4xKPDdTNoKSxUa1gItlUVqzvPUr2//3DYWMXFt9491jzNskeX7breLkhb/++rIa8nWzsNdoZLG6ubObDThruq+wFbiFLwZHdJhZBJls/8gXICP8hXQaUF5+1IfnvkT8V6pR1qk4MUZ1RzkbY+B5Byq6WyDbDeZ9KQHglkmEViERAuYQpuT09FXfDOoGCeUydR4J1MXbPcoT5yMmi/VJXTpfG1exmF28P8ILO6UMrbv4hAvVIlljTcrTf6Fs2abivRySMZRV1ogg0VVsD82PC3GcbP89wx4Zkf6h7Sip2PI1UxdVxORQhH5HJECD/msrDtE0VJLDSPGxOQvdNZ8zzRxM4mLQBJ0fEssG68/99mAUJql0+D1ZxVjZIFyMexCFCH1FI0kc/0arhnXbm5ngrU8ndnTcZCg1UGzu+bTd25L7HoImWG8UBoogT+5V+mN0zpwxw
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR04MB5053.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(376002)(346002)(396003)(136003)(39860400002)(99936003)(83380400001)(478600001)(8676002)(6916009)(52536014)(166002)(316002)(5660300002)(66446008)(2906002)(71200400001)(2940100002)(8936002)(44832011)(55016002)(66946007)(76116006)(86362001)(66476007)(66616009)(64756008)(6506007)(38100700002)(122000001)(186003)(9686003)(33656002)(66556008)(7696005)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?yau5669bjaZvcpYpcOTsT91ygCeJ7xVUu1ajyP08Jl6qJkIQBRGO1PCbzI63?=
 =?us-ascii?Q?WXb7KldsP3rpS4f4sg+/f1NPbn+gNFDXH7fpaQsppOwnStKXJn72hGISEWFD?=
 =?us-ascii?Q?ChTGyyTUX7a6XJj75F7jdxo+J1kFaezfgAwfIYC0cJy0Hp/vL/Rc4LQY1Zqt?=
 =?us-ascii?Q?3+MfeX84QlJf2v6VI4axfShSjmQ7xMboQ0Q7XvFDt4+JkznYlrXESREqDnXT?=
 =?us-ascii?Q?85dvyUw7XcpVn1R2pICQmXBcJXez5JVtAd3Jw1/Fx/T0mPcoefx9aWIe6gbb?=
 =?us-ascii?Q?Qb553z4caY9we7j58NxoQHcDs+6+v7Ab8F51grqd2wKcarLTLV7ivw0zIiyj?=
 =?us-ascii?Q?9fifYXdlyBl6TLhhesvtiNwz3P6MX0h9cX9BTPN3pQxsciN0DXSFVnFvn/qM?=
 =?us-ascii?Q?GP/53TZsYHiDmSrhu0h/IXDNa0uN38Dd8t5bLBwXt0XRcZ86TSYHcWOgUzsn?=
 =?us-ascii?Q?Qmmwq5CIjxMGf2l5EO1gi8A07PrXooorGAZv5TwSIyjepiioU7LHCOLgrk9P?=
 =?us-ascii?Q?lqLR7a2Q/ojlWhtoU8i/d7CDbOaEHg7ARwd56k2+5FJkENgm1sFr1cJ1cWLc?=
 =?us-ascii?Q?XN+8C0sTstp1K1+w/BYyOy/wJCuBNM2fFa1itg2QdurI19r3xjO3Zw9rdQA1?=
 =?us-ascii?Q?sTHwCE8o6MbGApdmUfmSo+Mv64Dp910g4j6M9sak7p18XPtkQgaEoEONbP/Z?=
 =?us-ascii?Q?MJC3SZ44yoDUKIwRmBppPeKgUQhN5wpqTKGFnxzH/djB87Qm2Bc+s4s9xG9T?=
 =?us-ascii?Q?xnGe10BDD3e/F5s4i6hGxb104z5J4PufMFJFkg4GWxTXbxH642Z42DQnYzyh?=
 =?us-ascii?Q?58pQUNTewTMABGxFPL3dYSJ5CLNGb2ajoUVzkjy3iWZ6qKluDQlP/HJpoyXB?=
 =?us-ascii?Q?uo9NBoHMEs+2YrrRGdahZufUZBKNn6rZEy3M+7upgpx0TelZfmzHmChI6xBt?=
 =?us-ascii?Q?yhnxkNKo3wWWJYZFfJKULu4c/MjWTSZtRlQubTWUbdmkG1zVMcoYy8DCMP/a?=
 =?us-ascii?Q?nznjVHARcEwzAc/NUjwt2NjGIWDEBlK7zSFnryAUz/SkR/rv3FQaGmkvUrp5?=
 =?us-ascii?Q?zBQ3W68tkMAq8pRbC+aTHrz823gw+MYQz0GXb5v1bDCTvVdlonZPPfb79FDH?=
 =?us-ascii?Q?BIWjrscaHcWo4L1f9eCjBAdih90Sj9vymAbYePgp0Z1eorRCAn4IgJpZVa/B?=
 =?us-ascii?Q?8CYh5jbbQYXK214AnZDTUJQFo/MET2RITYWGr8MW+1wlfQX3akjG401kl7vw?=
 =?us-ascii?Q?x5PcoFXjaAPJ7iqKcF662demgIgOQBbZS0o/CYlyEROM5m/5uxoV4Q+V2eWj?=
 =?us-ascii?Q?IxGiG5qHa7RP3N0NgQ3HLBsv?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR04MB5053.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fba4b471-aa8c-4c6e-8c08-08d93a4fad6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2021 16:13:33.4646
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9VnipP23nOV1XHy7kBsKsJNvMwr1CmUloHwZDjWbIiikJiWOwwT62Wx9OMfxbY9h8nEEZ1DdomDkcjYWLkSA0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN2PR04MB2334
X-Proofpoint-GUID: 1MupC8sIrxzWpgu3NkO75P-uNMkr4--6
X-Proofpoint-ORIG-GUID: 1MupC8sIrxzWpgu3NkO75P-uNMkr4--6
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-06-28_12:2021-06-25,2021-06-28 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30 spamscore=0
 suspectscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 phishscore=0 mlxscore=0 mlxlogscore=999 impostorscore=0
 clxscore=1011 classifier=spam adjust=30 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106280107
Message-ID-Hash: 3Q23FMPS6XQCLDBFFJ3OJ2OMMOZ2OFYD
X-Message-ID-Hash: 3Q23FMPS6XQCLDBFFJ3OJ2OMMOZ2OFYD
X-MailFrom: prvs=2813f910b4=haydn.nelson@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.1 and support for the NI Ettus USRP X410
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ECWQMLEZJMLDJP4VO6EPUCLLH277P6RR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8861860763512721471=="

--===============8861860763512721471==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_SN6PR04MB50534A050DADFC2BD4B4EC1CF3039SN6PR04MB5053namp_";
	type="multipart/alternative"

--_004_SN6PR04MB50534A050DADFC2BD4B4EC1CF3039SN6PR04MB5053namp_
Content-Type: multipart/alternative;
	boundary="_000_SN6PR04MB50534A050DADFC2BD4B4EC1CF3039SN6PR04MB5053namp_"

--_000_SN6PR04MB50534A050DADFC2BD4B4EC1CF3039SN6PR04MB5053namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello USRP Community!



We at NI & Ettus Research have been hard at work advancing the USRP to the =
next level. We recently released the NI Ettus USRP X410.<https://www.ettus.=
com/all-products/usrp-x410/>



Perhaps you saw that UHD 4.1 was merged to the UHD GitHub repository<https:=
//github.com/EttusResearch/uhd> with support for a new USRP, the NI Ettus U=
SRP X410, and that release 4.1.0.0rc1 was tagged? Release 4.1.0.0 is immine=
nt!



This USRP is a new generation of radio, combining features of both the N- a=
nd the X-series USRPs, and is fully supported by UHD, RFNoC, and GNU Radio.=
 It provides the highest performance of any USRP to date:

  *   More channels: 4x4 TX/RX
  *   More instantaneous bandwidth per channel: 400 MHz
  *   Greater tunable RF range: from 1 MHz to 7.2 GHz ... pssst ... it will=
 actually tune up to 8 GHz
  *   Larger FPGA: the Xilinx ZU28DR RFSoC
  *   Higher bandwidth data connectivity: dual QSFP28 ports



Resources

  *   Read more on the Ettus Research website<https://www.ettus.com/introdu=
cing-the-most-advanced-sdr-the-ni-ettus-usrp-x410/>
  *   Check out 3dB Labs using the USRP X410<https://www.youtube.com/watch?=
v=3D8P05Hvjwi3U>



If you have interest in the USRP X410 please feel to reach out to us<https:=
//www.ettus.com/contact/> on the Ettus Research website.



We look forward to seeing you either physically or virtually at this year's=
 GNU Radio Conference in September<https://www.gnuradio.org/grcon/grcon21>.



Stay Safe
Haydn Nelson
Ettus Research Marketing Manager
[Timeline  Description automatically generated]


--_000_SN6PR04MB50534A050DADFC2BD4B4EC1CF3039SN6PR04MB5053namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.paragraph, li.paragraph, div.paragraph
	{mso-style-name:paragraph;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.normaltextrun
	{mso-style-name:normaltextrun;}
span.eop
	{mso-style-name:eop;}
span.EmailStyle22
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
/* List Definitions */
@list l0
	{mso-list-id:1510830973;
	mso-list-template-ids:-2045198944;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1
	{mso-list-id:1530989702;
	mso-list-type:hybrid;
	mso-list-template-ids:1417204314 67698689 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2
	{mso-list-id:1931812783;
	mso-list-template-ids:1560828378;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3
	{mso-list-id:2131317519;
	mso-list-type:hybrid;
	mso-list-template-ids:1581646558 67698689 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"paragraph" style=3D"margin:0in;vertical-align:baseline"><span c=
lass=3D"normaltextrun">Hello USRP Community!</span><span class=3D"eop"><o:p=
></o:p></span></p>
<p class=3D"paragraph" style=3D"margin:0in;vertical-align:baseline"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Segoe UI&quot;,sans-serif"><o:p>&=
nbsp;</o:p></span></p>
<p class=3D"paragraph" style=3D"margin:0in;vertical-align:baseline"><span c=
lass=3D"normaltextrun">We at&nbsp;NI &amp;&nbsp;Ettus Research have been ha=
rd at work advancing the USRP&nbsp;to the next level. We&nbsp;recently rele=
ased the&nbsp;</span><a href=3D"https://www.ettus.com/all-products/usrp-x41=
0/"><span class=3D"normaltextrun"><span style=3D"text-decoration:none">NI
 Ettus USRP X410.</span></span></a><span class=3D"normaltextrun"><span styl=
e=3D"color:#0563C1"><o:p></o:p></span></span></p>
<p class=3D"paragraph" style=3D"margin:0in;vertical-align:baseline"><span c=
lass=3D"normaltextrun"><o:p>&nbsp;</o:p></span></p>
<p class=3D"paragraph" style=3D"margin:0in;vertical-align:baseline"><span c=
lass=3D"normaltextrun">Perhaps you saw that UHD 4.1 was merged to&nbsp;the&=
nbsp;</span><a href=3D"https://github.com/EttusResearch/uhd" target=3D"_bla=
nk"><span class=3D"normaltextrun"><span style=3D"text-decoration:none">UHD&=
nbsp;GitHub&nbsp;repository</span></span></a><span class=3D"normaltextrun">
 with support for a new USRP, the NI Ettus USRP X410, and that release 4.1.=
0.0rc1 was tagged? Release 4.1.0.0 is imminent!</span><span class=3D"eop"><=
o:p></o:p></span></p>
<p class=3D"paragraph" style=3D"margin:0in;vertical-align:baseline"><span c=
lass=3D"normaltextrun"><o:p>&nbsp;</o:p></span></p>
<p class=3D"paragraph" style=3D"margin:0in;vertical-align:baseline"><span c=
lass=3D"normaltextrun">This USRP is a new generation of radio, combining fe=
atures of both the N- and the X-series USRPs, and is fully supported by UHD=
, RFNoC, and GNU Radio. It provides the
 highest performance of any USRP&nbsp;to date</span><span class=3D"eop">:</=
span><span style=3D"font-size:9.0pt;font-family:&quot;Segoe UI&quot;,sans-s=
erif"><o:p></o:p></span></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"paragraph" style=3D"margin-top:0in;margin-bottom:0in;mso-list:=
l3 level1 lfo3;vertical-align:baseline">
<span class=3D"normaltextrun">More channels: 4x4 TX/RX<o:p></o:p></span></l=
i><li class=3D"paragraph" style=3D"margin-top:0in;margin-bottom:0in;mso-lis=
t:l3 level1 lfo3;vertical-align:baseline">
<span class=3D"normaltextrun">More instantaneous bandwidth per channel: 400=
 MHz </span>
<o:p></o:p></li><li class=3D"paragraph" style=3D"margin-top:0in;margin-bott=
om:0in;mso-list:l3 level1 lfo3;vertical-align:baseline">
<span class=3D"normaltextrun">Greater tunable RF range: from 1 MHz to 7.2 G=
Hz </span>
<span class=3D"eop">&#8230; </span><span class=3D"normaltextrun">pssst </sp=
an><span class=3D"eop">&#8230;
</span><span class=3D"normaltextrun">it will&nbsp;actually tune up to 8 GHz=
</span><span class=3D"eop"><o:p></o:p></span></li><li class=3D"paragraph" s=
tyle=3D"margin-top:0in;margin-bottom:0in;mso-list:l3 level1 lfo3;vertical-a=
lign:baseline">
<span class=3D"eop">Larger FPGA</span><span class=3D"normaltextrun">: the X=
ilinx ZU28DR RFSoC</span><span class=3D"eop"><o:p></o:p></span></li><li cla=
ss=3D"paragraph" style=3D"margin-top:0in;margin-bottom:0in;mso-list:l3 leve=
l1 lfo3">
<span class=3D"eop">Higher bandwidth data connectivity: dual QSFP28 ports<o=
:p></o:p></span></li></ul>
<p class=3D"paragraph" style=3D"margin:0in;vertical-align:baseline"><o:p>&n=
bsp;</o:p></p>
<p class=3D"paragraph" style=3D"margin:0in;vertical-align:baseline">Resourc=
es<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"paragraph" style=3D"margin-top:0in;margin-bottom:0in;mso-list:=
l1 level1 lfo6;vertical-align:baseline">
<span class=3D"normaltextrun">Read&nbsp;more on&nbsp;</span><a href=3D"http=
s://www.ettus.com/introducing-the-most-advanced-sdr-the-ni-ettus-usrp-x410/=
" target=3D"_blank"><span class=3D"normaltextrun"><span style=3D"text-decor=
ation:none">the Ettus Research website</span></span></a><span style=3D"font=
-size:9.0pt;font-family:&quot;Segoe UI&quot;,sans-serif"><o:p></o:p></span>=
</li><li class=3D"paragraph" style=3D"margin-top:0in;margin-bottom:0in;mso-=
list:l1 level1 lfo6;vertical-align:baseline">
<span class=3D"normaltextrun">Check out&nbsp;</span><a href=3D"https://www.=
youtube.com/watch?v=3D8P05Hvjwi3U" target=3D"_blank"><span class=3D"normalt=
extrun"><span style=3D"text-decoration:none">3dB Labs using the&nbsp;USRP&n=
bsp;X410</span></span></a><span class=3D"eop"><o:p></o:p></span></li></ul>
<p class=3D"paragraph" style=3D"mso-margin-top-alt:0in;margin-right:0in;mar=
gin-bottom:0in;margin-left:.5in;vertical-align:baseline">
<o:p>&nbsp;</o:p></p>
<p class=3D"paragraph" style=3D"margin:0in;vertical-align:baseline"><span c=
lass=3D"normaltextrun">If you have interest in the USRP X410 please feel to
</span><a href=3D"https://www.ettus.com/contact/"><span style=3D"text-decor=
ation:none">reach out to&nbsp;us</span></a><span class=3D"normaltextrun"> o=
n the Ettus Research website.
</span><span class=3D"eop"><o:p></o:p></span></p>
<p class=3D"paragraph" style=3D"margin:0in;vertical-align:baseline"><span s=
tyle=3D"font-size:9.0pt;font-family:&quot;Segoe UI&quot;,sans-serif"><o:p>&=
nbsp;</o:p></span></p>
<p class=3D"paragraph" style=3D"margin:0in;vertical-align:baseline"><span c=
lass=3D"normaltextrun">We look forward to seeing you either physically or v=
irtually at this&nbsp;year&#8217;s&nbsp;</span><a href=3D"https://www.gnura=
dio.org/grcon/grcon21"><span style=3D"text-decoration:none">GNU
 Radio Conference in September</span></a><span class=3D"normaltextrun">.<o:=
p></o:p></span></p>
<p class=3D"paragraph" style=3D"margin:0in;vertical-align:baseline"><span c=
lass=3D"normaltextrun"><o:p>&nbsp;</o:p></span></p>
<p class=3D"paragraph" style=3D"mso-margin-top-alt:0in;margin-right:0in;mar=
gin-bottom:12.0pt;margin-left:0in;vertical-align:baseline">
<span class=3D"normaltextrun">Stay Safe</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:4.5pt;vertical-align:top"><b>=
<span style=3D"font-size:13.0pt;line-height:105%;font-family:&quot;Arial&qu=
ot;,sans-serif;color:black">Haydn Nelson<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:4.5pt;vertical-align:top"><sp=
an style=3D"font-size:11.5pt;line-height:105%;font-family:&quot;Arial&quot;=
,sans-serif;color:black">Ettus Research Marketing Manager<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"172" height=3D"75" style=
=3D"width:1.7916in;height:.7797in" id=3D"Picture_x0020_2" src=3D"cid:image0=
01.jpg@01D76C0E.77D0E600" alt=3D"Timeline=0A=
=0A=
Description automatically generated"><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SN6PR04MB50534A050DADFC2BD4B4EC1CF3039SN6PR04MB5053namp_--

--_004_SN6PR04MB50534A050DADFC2BD4B4EC1CF3039SN6PR04MB5053namp_
Content-Type: image/jpeg; name="image001.jpg"
Content-Description: image001.jpg
Content-Disposition: inline; filename="image001.jpg"; size=6314;
	creation-date="Mon, 28 Jun 2021 16:13:33 GMT";
	modification-date="Mon, 28 Jun 2021 16:13:33 GMT"
Content-ID: <image001.jpg@01D76C0E.77D0E600>
Content-Transfer-Encoding: base64

/9j/4AAQSkZJRgABAQEAqACoAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAmJSMg
IyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMpPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAARCACDAS0DASIA
AhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQA
AAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3
ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWm
p6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEA
AwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSEx
BhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElK
U1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3
uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2Wiii
kMKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiq9/exadYT3lwSIoEMj
YGTgUAWKK56C11/UoVu5tSXTmcbktYoFkCA9A7NyT64xVvRtSuZ57mw1JI1vrTbuaP7kqN911B6Z
wQR2IoFc1qp6pqlvpFp9ouN5ywRI413PIx6Ko7k1crA8QSJa61ol5dYFpFLIjO33Y3dcIx/HIz70
Awk1/U7SH7TfaFNHaDl2imWSSNe5ZB6exNbcE8V1BHPA6yRSKGR1OQwPQ025uYLO1kuLmRI4I1LO
7HAArL8IxNF4btd0TRK5eSONhgojOSox9CKANqiisO8vdQ1DV5NN0qSO2S3VWubp03lS3IRF6Zxy
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

--_004_SN6PR04MB50534A050DADFC2BD4B4EC1CF3039SN6PR04MB5053namp_--

--===============8861860763512721471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8861860763512721471==--
