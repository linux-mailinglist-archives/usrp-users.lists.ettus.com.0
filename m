Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56713483139
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 14:03:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F990385308
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 08:03:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ou.edu header.i=@ou.edu header.b="aru3rAb5";
	dkim-atps=neutral
Received: from mx0b-00272701.pphosted.com (mx0b-00272701.pphosted.com [208.86.201.61])
	by mm2.emwd.com (Postfix) with ESMTPS id B0CDB384B13
	for <usrp-users@lists.ettus.com>; Mon,  3 Jan 2022 08:02:50 -0500 (EST)
Received: from pps.filterd (m0282637.ppops.net [127.0.0.1])
	by mx0a-00272701.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 203AvBpf017057
	for <usrp-users@lists.ettus.com>; Mon, 3 Jan 2022 07:02:50 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ou.edu; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=domainkey;
 bh=kfAWt+MBup1GFXJZvnr3Y+4ucZtT0xGZ6TexIpQH5IQ=;
 b=aru3rAb54hopxDvJ8SLkicdQWNmnwNsmvS4fnHo1AGARi8Pw0Ng3sqGXLhvHQ8wIURyx
 689o+Uyifc1REZOwbv/z6uEHy3914dZclFN8hr206mRVB2FhH+IS8ZfaF/GDag36rz20
 284GOpwq9NhwjT0E94Hi37uRV7ctfBkADEPvlSkRk9Ii6IO6o8jeNVeyQaCzwN1HYN+0
 g+0Frr8W5CW49O6xyFqqPCm0EOPVn4x9s7WFauraJdnGIdmZSZHyEQuFGcrIV4c3GKkm
 bRnQlD3ooTUeZdLBsOaTEty9EMe/jDbDQN5tG2utVyOuYOFcFPeItdXA0fP1BL23SxEQ /g==
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-00272701.pphosted.com (PPS) with ESMTPS id 3dbhpe8yet-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Mon, 03 Jan 2022 07:02:48 -0600
Received: from m0282637.ppops.net (m0282637.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 203D2mZ0032630
	for <usrp-users@lists.ettus.com>; Mon, 3 Jan 2022 07:02:48 -0600
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2103.outbound.protection.outlook.com [104.47.58.103])
	by mx0a-00272701.pphosted.com (PPS) with ESMTPS id 3dbhpe8yes-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 03 Jan 2022 07:02:48 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mAMr3JetqK6oGj168AqUKpW63IW1WZ8Uc/dGfdCMlxDZa2jVtKFC5AA/0N4l6mC6Zs4UwdZs1CATkEShdNQ33kHKXGbMgeaW/Dwcx2AZfpw6Clr3eW2PNJ2QzLruZlQLoVZ+fyE80ymIQYb/wNZdoexUFbN0xpa2S1lxrqax42WhWhogUSxI4SELqvTabcK94wE0ERYhCqFXHPkRbxhzWbfioeUFndIzdV3/tx/AB+Ex9HD8vF3Den3E/RCS5PNMbRsZ0FlN0yxQO0RG4mSgJwRFwdp4wPIyHxRnYP84ojRGl/e8fKXHTlTx7MSmFYjKD2SVVK3kd3OSQ0i6rUA0CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kfAWt+MBup1GFXJZvnr3Y+4ucZtT0xGZ6TexIpQH5IQ=;
 b=REvzeLqa8vH88AbvPWssDc3AxWDrOUDVsZRY4uuVrEoqaXODA0BqUqap3NnAUvPkU2RczySPGTb9/9T+4e9Z9UkbyNC8+7WO/2i7W/JiiBrYUvEtSS69KCRyFcGqsTxt2BDm3qOjRBxq950pq2ZQaeptbFs7XWIwWPEzVYedj/57YKTWsZojbiyAVLoyhio0PQxc0uBwXVeV09T4zP5hHBR8Q+zHUs9BeH8eS7DnoP8kAyQ4stV9ENy2al/dp76LrukD3kt4uWSx6c2Im9SfHIXwZTDdOl2YRUm7EQqH0Ju9P9wQfYubylfBURuQY1htqxGJFy7cM0Tu7tEcn0cWTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ou.edu; dmarc=pass action=none header.from=ou.edu; dkim=pass
 header.d=ou.edu; arc=none
Received: from SN6PR03MB4160.namprd03.prod.outlook.com (2603:10b6:805:bd::20)
 by SN6PR03MB4094.namprd03.prod.outlook.com (2603:10b6:805:c8::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.15; Mon, 3 Jan
 2022 13:02:46 +0000
Received: from SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::bcb6:30a7:c814:9d4b]) by SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::bcb6:30a7:c814:9d4b%7]) with mapi id 15.20.4844.016; Mon, 3 Jan 2022
 13:02:46 +0000
From: "Mattingly, Rylee" <rmattingly@ou.edu>
To: sp h <stackprogramer@gmail.com>,
        "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Can any guide me in rfnoc blocks?
Thread-Index: AQHYAI3rozuuh+KVw0yVBEMFSpDVh6xRPi/R
Date: Mon, 3 Jan 2022 13:02:46 +0000
Message-ID: 
 <SN6PR03MB416071E56A30ED011BAB98FCB1499@SN6PR03MB4160.namprd03.prod.outlook.com>
References: 
 <CAA=S3Pv+aWAsGxtMAj+JcNA9FG8H6WFdQsKgbSJ0SS=+Mym_vA@mail.gmail.com>
In-Reply-To: 
 <CAA=S3Pv+aWAsGxtMAj+JcNA9FG8H6WFdQsKgbSJ0SS=+Mym_vA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5624ef43-5100-4036-f8a7-08d9ceb9565e
x-ms-traffictypediagnostic: SN6PR03MB4094:EE_
x-microsoft-antispam-prvs: 
 <SN6PR03MB4094F8694342DE792449D0A5B1499@SN6PR03MB4094.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 CShE7hmjWH/GCMCJsSkmAiJ3ahb8qXNmYGdwFcLBaP6brM45XlwxNqlTwL9Q3490nsVNGHE7V4PluDC5R+5EYSeGa1K/ZA5a9iYrBOctj0/XhtAPc5+5RR0IcXu2mQ9PXdSeu6CGHFnP4A50tWIkFFNBpuwkEJhWI1hHbob2DitksXSGaFF9ch0qWR71qfXbgrC9pCu9yvmKwpiVPDALS2wfe51nEzgRRQbzfdyaFuo9b+NYjjupq2cGeJ5Felm8ZvUT1r/qPwuyLHI8iQQECIhRbbzbhtuMzq9dkPkkxob409cAmkgnV04ljcLrULOwSdvMeUUYwf7OtOcIC+MN6LKHD4sI9YeYTxGCiXTSoabdA5l08fObeNbSOUenP62nkNENfkcZQgql4WnA+WnMOFVeWjHiqDxJsGIzaXALXwk2r5QXAemVP4e8Ghp8wWsiBe5ZAaKD3c3HY1Yt1D6PDXFoZ3PrrUyb6ANcjIHDh3T5e8WPpaSXxWilwY3Ig5lqmI1Y6uMI3lbVb1l7ZeKLvDmYp7izRXPDWRw21cJLvpjYSfbdDFYh/GY2q/DkZxqhhGSOMPRYrhcKj+AYqO/9JQWuF7mpVV7zouISu8kQzjKvINNYU5qCAM2hbCMZM8zyhv25lw8M7W3TWKjlxvgwZtDeifHXrEUJJEKoixeb+9kiA4jq23NfD5BKvt92Hjxq+dd+WkgbEzkpI0qp17UqDxQ23uoytHeSC2fW5GJ7nGFK+vWBT/zV7QTocVj7rlLTGpEfR3H/18+EmdGEuRQbig==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR03MB4160.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(316002)(66446008)(2906002)(786003)(55016003)(66476007)(33656002)(86362001)(508600001)(110136005)(966005)(38070700005)(38100700002)(122000001)(83380400001)(66556008)(64756008)(75432002)(52536014)(9686003)(5660300002)(166002)(76116006)(7696005)(66946007)(71200400001)(53546011)(6506007)(8936002)(186003)(26005)(8676002)(579004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?xEyLYykPQmICer2hRXMPGP8NdRpIWB9XB/tlXmxAn2azytfC9wgz5MSJ?=
 =?Windows-1252?Q?uzvUTZqZaE6Q1cLdysZ5T7EGt3IRpRkgk1zL331b83ONRgspmjUaqdyw?=
 =?Windows-1252?Q?y1FgfDocYMh9O9T/+YgsnZ8G/G8NuAsNfPbc/jDFtniSTs4SrtSN3hnl?=
 =?Windows-1252?Q?/A/p+KQq32VILTgv8zARq33/Pu+D9P5In7h3I4p0AYamJAYAt0oPHDFo?=
 =?Windows-1252?Q?4ehcWI9fhlhFNO+5PlvulOUDeyZ58XzERtdz3p/9A5mN1G//sfNqwM+T?=
 =?Windows-1252?Q?Vq4uA+/l9gxMPK4vSdS6eYY1jWtzHJxeHWaFNanY13lhNkZGg8AfIMEU?=
 =?Windows-1252?Q?MTkSraCoWq4CjhZ2WcLozbZHcq6l3BDAiZJi2BLvMQVZLzBg8S1dz6O9?=
 =?Windows-1252?Q?wG7LHj6LUZUCEDg+fptbvO6xOs3muiebyWhst67fB0f4NYt71zDzVHiH?=
 =?Windows-1252?Q?tBjfDDkMxeTaE/Oc/zAdw+ASnbJ7WzI5LlwuYlRLuhtHdZ2tpqDZA1wH?=
 =?Windows-1252?Q?bsw+vdcSBf319U1/qix/dMxJqfdjloYs4qB4c+Knwzq/G24/eyYt2Es2?=
 =?Windows-1252?Q?n7/jbOLx1FJYERPTNRnyMQZ+9UYHn2A4RsLbXopD7BGhYT2VgMKT2ojL?=
 =?Windows-1252?Q?fw/IF9ZhKQNOd9NsKJ7F22tBiaVhjEsH1MUF7s7ZCPc7mnxVtNG87Fbx?=
 =?Windows-1252?Q?5IGVIWqZ/Ynm5HXy992V8ZXKM6VdagN8UGMArVkQIpMv46E2/IfMPPb+?=
 =?Windows-1252?Q?NFqR5F6li30I2G2h8OzSPcZctttET5KiH0IbO+o4igf3Wxomrzrps6Dt?=
 =?Windows-1252?Q?O2cnsFbPbEjXNawNTcjVZsh25lVcljddLhrSQBMP6THYiNoTOVEJ/QjW?=
 =?Windows-1252?Q?d+gi7XhvwN0JMRjNz0dCuJvUYGyBVLsmdpWiSKm4JvCEXB+FyqZ8I7xn?=
 =?Windows-1252?Q?l1VPIlHELGSjQ4wUi8Ss/3p0/KtFx3jvk3/bNx2BvxWJU3OSMIcxPZ4V?=
 =?Windows-1252?Q?kt0QXDm607EcsYNpLpeH86b3CUgpWGu576OBV6Abp1Xl3h/J31Ur1zEj?=
 =?Windows-1252?Q?7q6IKEoLp3zJ24+wesK2FGDmAhJsNMZ4O99tx9zUNdVLn29RTi0/Yf8W?=
 =?Windows-1252?Q?abjzaHuA+tcq7yVVx8V7PqnkuoM3AOgrQRz5Z/KbYpmGbshYcCb4oVKn?=
 =?Windows-1252?Q?aeXhNAHQGDkfkjJmcj6ET33rGtJqQgKtPifAeANDMIQASqC0E0LBGzbR?=
 =?Windows-1252?Q?7UZyvOn7+324qx6kdBvfnuG3lIzR6HQ6Pff30oww6jnsC73VjjQF3i3x?=
 =?Windows-1252?Q?cmcwQkaFRVwjSDS8392uzXcHUgzn2g6j4lOstZRYNa9PPhLopJc11yrP?=
 =?Windows-1252?Q?t/kfJb1Ggj+xq2Re4Vv62MpvRkRJZFz+TExgci0OqvbmhIEP0J+KDs+e?=
 =?Windows-1252?Q?9Ghdpi36H2FaZDih70m0c6u/lyFQC8Z2RP+j9YUoNvv34OK8V5lN78Td?=
 =?Windows-1252?Q?od80DSPh8pxHNDimPd2ZAlLyZM29U/EGjs6gdbOmXiSeWrEu1SkuQC2O?=
 =?Windows-1252?Q?H5d8L3Cd3L1hHHIDN0ZaT6zqlJyqbazVrv/A5sU/RbblqRC3mIATaflu?=
 =?Windows-1252?Q?+43uX+qDHUBYhhlfHjt5SD6x61gr2ZsC9uagZJLd2KcssWl71Lejl40v?=
 =?Windows-1252?Q?Jr5R2ssAjEOt3N18cRFxlawGJiHLGvs/i1Dhd4QYsziBkToQziOtnVEK?=
 =?Windows-1252?Q?9eD6OgKrPF6rftNODv0=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ou.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR03MB4160.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5624ef43-5100-4036-f8a7-08d9ceb9565e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2022 13:02:46.1565
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c7de09d-9034-44c1-b462-c464fece204a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pgF1q9JkyrYYGokY13qy1c1YpJHtcR5j3fUdwmql4vRjL5+W2po5FYzyj1LxXJavUmr4bpoPOOYU+we4Q5sVrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR03MB4094
X-Proofpoint-GUID: Db96zgdAHGrKhTKB7PyEV6NzsXOVrQKI
X-Proofpoint-ORIG-GUID: pszfvP6_953ENGcvWWx04z5LOZCMcgF-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-03_04,2022-01-01_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 malwarescore=0 spamscore=0 adultscore=0 clxscore=1011 mlxscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2201030089
Message-ID-Hash: IFJAQA3IBDASVWVPWUO2F6I2FO65HO3J
X-Message-ID-Hash: IFJAQA3IBDASVWVPWUO2F6I2FO65HO3J
X-MailFrom: prvs=0002734522=rmattingly@ou.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can any guide me in rfnoc blocks?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JPPMEQHEDDUQ2A7ZJA5M7WB4LFJ725YE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3139994392782288112=="

--===============3139994392782288112==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR03MB416071E56A30ED011BAB98FCB1499SN6PR03MB4160namp_"

--_000_SN6PR03MB416071E56A30ED011BAB98FCB1499SN6PR03MB4160namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

My understanding is that the NoC shell, instantiated inside the RFNoC block=
, takes in the raw CHDR bus for the control and data planes and provides a =
more user friendly data interface for your user logic to interface with.  T=
he NoC shell is autogenerated by RFNoC Modtool and shouldn=92t need any edi=
ting.

Here (the default case) the NoC shell provides the AXI-Stream Payload Conte=
xt simple data interface as the client interface. This client interface is =
what the user logic interacts with. The framework interface is the lower-le=
vel interface that runs between NoC blocks and you shouldn=92t have to worr=
y about this interface.

Similarly, the control bus comes out of the NoC shell as a Control Port def=
ined in 2.3.2.2 of the RFNoC Specification.

Section 2.3.3..3 defines the AXI-Stream Payload Context format: the payload=
 stream is used to deliver the actual data samples while the context stream=
 delivers the header, (optional) timestamp and (optional) user metadata.

Hope this helps,

Rylee

From: sp h <stackprogramer@gmail.com>
Date: Monday, January 3, 2022 at 4:37 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Can any guide me in rfnoc blocks?
Hi, I am studying  RFNOC blocks for USRP, the file that I am reading is in =
the below link...
https://files.ettus.com/app_notes/RFNoC_Specification.pdf
I know Verilog language, so another part I am studying RFNOC blocks Verilog=
 Code.

However knowing Verilog and RFNoC_Specification is not enough, because I th=
ink I am faced with a Verilog framework for kintex7.
So I had some questions yet. Verilog code for an RFNOC block has two main f=
iles for example: for gain example, we have two files:
noc_shell_gain.v
rfnoc_block_gain.v

my question is about noc_shell_gain.v file. there is a section defining the=
 input module...
anyone can guide me on whats do this section(Client Interface)? what's the =
difference between
this section and the  Framework Interface section?
what's the difference between context and payload streams?
thanks in advance
//---------------------
// Framework Interface
//---------------------

// RFNoC Framework Clocks
input wire rfnoc_chdr_clk,
input wire rfnoc_ctrl_clk,

// NoC Shell Generated Resets
output wire rfnoc_chdr_rst,
output wire rfnoc_ctrl_rst,

// RFNoC Backend Interface
input wire [511:0] rfnoc_core_config,
output wire [511:0] rfnoc_core_status,

// AXIS-CHDR Input Ports (from framework)
input wire [(1)*CHDR_W-1:0] s_rfnoc_chdr_tdata,
input wire [(1)-1:0] s_rfnoc_chdr_tlast,
input wire [(1)-1:0] s_rfnoc_chdr_tvalid,
output wire [(1)-1:0] s_rfnoc_chdr_tready,
// AXIS-CHDR Output Ports (to framework)
output wire [(1)*CHDR_W-1:0] m_rfnoc_chdr_tdata,
output wire [(1)-1:0] m_rfnoc_chdr_tlast,
output wire [(1)-1:0] m_rfnoc_chdr_tvalid,
input wire [(1)-1:0] m_rfnoc_chdr_tready,

// AXIS-Ctrl Control Input Port (from framework)
input wire [31:0] s_rfnoc_ctrl_tdata,
input wire s_rfnoc_ctrl_tlast,
input wire s_rfnoc_ctrl_tvalid,
output wire s_rfnoc_ctrl_tready,
// AXIS-Ctrl Control Output Port (to framework)
output wire [31:0] m_rfnoc_ctrl_tdata,
output wire m_rfnoc_ctrl_tlast,
output wire m_rfnoc_ctrl_tvalid,
input wire m_rfnoc_ctrl_tready,

//---------------------
// Client Interface
//---------------------

// CtrlPort Clock and Reset
output wire ctrlport_clk,
output wire ctrlport_rst,
// CtrlPort Master
output wire m_ctrlport_req_wr,
output wire m_ctrlport_req_rd,
output wire [19:0] m_ctrlport_req_addr,
output wire [31:0] m_ctrlport_req_data,
input wire m_ctrlport_resp_ack,
input wire [31:0] m_ctrlport_resp_data,

// AXI-Stream Payload Context Clock and Reset
output wire axis_data_clk,
output wire axis_data_rst,
// Payload Stream to User Logic: in
output wire [32*1-1:0] m_in_payload_tdata,
output wire [1-1:0] m_in_payload_tkeep,
output wire m_in_payload_tlast,
output wire m_in_payload_tvalid,
input wire m_in_payload_tready,
// Context Stream to User Logic: in
output wire [CHDR_W-1:0] m_in_context_tdata,
output wire [3:0] m_in_context_tuser,
output wire m_in_context_tlast,
output wire m_in_context_tvalid,
input wire m_in_context_tready,
// Payload Stream from User Logic: out
input wire [32*1-1:0] s_out_payload_tdata,
input wire [0:0] s_out_payload_tkeep,
input wire s_out_payload_tlast,
input wire s_out_payload_tvalid,
output wire s_out_payload_tready,
// Context Stream from User Logic: out
input wire [CHDR_W-1:0] s_out_context_tdata,
input wire [3:0] s_out_context_tuser,
input wire s_out_context_tlast,
input wire s_out_context_tvalid,
output wire s_out_context_tready


--_000_SN6PR03MB416071E56A30ED011BAB98FCB1499SN6PR03MB4160namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
<p class=3D"MsoNormal">My understanding is that the NoC shell, instantiated=
 inside the RFNoC block, takes in the raw CHDR bus for the control and data=
 planes and provides a more user friendly data interface for your user logi=
c to interface with.&nbsp; The NoC shell
 is autogenerated by RFNoC Modtool and shouldn=92t need any editing.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here (the default case) the NoC shell provides the A=
XI-Stream Payload Context simple data interface as the client interface. Th=
is client interface is what the user logic interacts with. The framework in=
terface is the lower-level interface
 that runs between NoC blocks and you shouldn=92t have to worry about this =
interface.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Similarly, the control bus comes out of the NoC shel=
l as a Control Port defined in 2.3.2.2 of the RFNoC Specification.<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Section 2.3.3..3 defines the AXI-Stream Payload Cont=
ext format: the payload stream is used to deliver the actual data samples w=
hile the context stream delivers the header, (optional) timestamp and (opti=
onal) user metadata.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hope this helps,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">Rylee<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">sp h &lt;stackprogr=
amer@gmail.com&gt;<br>
<b>Date: </b>Monday, January 3, 2022 at 4:37 AM<br>
<b>To: </b>usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject: </b>[USRP-users] Can any guide me in rfnoc blocks?<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal">Hi, I am studying&nbsp; RFNOC blocks for USRP, the f=
ile that I am reading is in the below link...</p>
<div>
<p class=3D"MsoNormal"><a href=3D"https://files.ettus.com/app_notes/RFNoC_S=
pecification.pdf">https://files.ettus.com/app_notes/RFNoC_Specification.pdf=
</a></p>
</div>
<div>
<p class=3D"MsoNormal">I know Verilog language, so another part I am studyi=
ng RFNOC blocks Verilog Code.</p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">However knowing Verilog and RFNoC_Specification is n=
ot enough, because I think I am faced with a Verilog framework for kintex7.=
</p>
</div>
<div>
<p class=3D"MsoNormal">So I had some questions yet. Verilog code for an RFN=
OC block has two main files for example: for gain example, we have two file=
s:</p>
</div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:black">noc_shell_gain.v=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:black">rfnoc_block_gain=
.v<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:black"><o:p>&nbsp;</o:p=
></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-fa=
mily:&quot;Courier New&quot;;color:black">my question is about noc_shell_ga=
in.v file. there is a section defining the input module...<o:p></o:p></span=
></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-fa=
mily:&quot;Courier New&quot;;color:black">anyone can guide me on whats do t=
his section(Client Interface)? what's the difference between
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-fa=
mily:&quot;Courier New&quot;;color:black">this section and the &nbsp;Framew=
ork Interface section?<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-fa=
mily:&quot;Courier New&quot;;color:black">what's the difference between con=
text and payload streams?<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-fa=
mily:&quot;Courier New&quot;;color:black">thanks in advance<o:p></o:p></spa=
n></p>
</div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">//--------------=
-------</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New=
&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// Framework Int=
erface</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&=
quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">//--------------=
-------</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New=
&quot;;color:black"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:black"><o:p>&nbsp;</o:p=
></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// RFNoC Framewo=
rk Clocks</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier N=
ew&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> rfnoc_chdr_clk,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> rfnoc_ctrl_clk,<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:black"><o:p>&nbsp;</o:p=
></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// NoC Shell Gen=
erated Resets</span><span style=3D"font-size:10.5pt;font-family:&quot;Couri=
er New&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> rfnoc_chdr_rst,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> rfnoc_ctrl_rst,<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:black"><o:p>&nbsp;</o:p=
></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// RFNoC Backend=
 Interface</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier =
New&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Courier New&quot;;color:#098658">511</span><span style=3D"font=
-size:10.5pt;font-family:&quot;Courier New&quot;;color:black">:</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#09865=
8">0</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&qu=
ot;;color:black">]
 rfnoc_core_config,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Courier New&quot;;color:#098658">511</span><span style=3D"font=
-size:10.5pt;font-family:&quot;Courier New&quot;;color:black">:</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#09865=
8">0</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&qu=
ot;;color:black">]
 rfnoc_core_status,<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:black"><o:p>&nbsp;</o:p=
></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// AXIS-CHDR Inp=
ut Ports (from framework)</span><span style=3D"font-size:10.5pt;font-family=
:&quot;Courier New&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [(</span><span style=3D"font-size:10.5pt;font=
-family:&quot;Courier New&quot;;color:#098658">1</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">)*CHDR_W-</spa=
n><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color=
:#098658">1</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier=
 New&quot;;color:black">:</span><span style=3D"font-size:10.5pt;font-family=
:&quot;Courier New&quot;;color:#098658">0</span><span style=3D"font-size:10=
.5pt;font-family:&quot;Courier New&quot;;color:black">]
 s_rfnoc_chdr_tdata,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [(</span><span style=3D"font-size:10.5pt;font=
-family:&quot;Courier New&quot;;color:#098658">1</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">)-</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#09865=
8">1</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&qu=
ot;;color:black">:</span><span style=3D"font-size:10.5pt;font-family:&quot;=
Courier New&quot;;color:#098658">0</span><span style=3D"font-size:10.5pt;fo=
nt-family:&quot;Courier New&quot;;color:black">]
 s_rfnoc_chdr_tlast,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [(</span><span style=3D"font-size:10.5pt;font=
-family:&quot;Courier New&quot;;color:#098658">1</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">)-</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#09865=
8">1</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&qu=
ot;;color:black">:</span><span style=3D"font-size:10.5pt;font-family:&quot;=
Courier New&quot;;color:#098658">0</span><span style=3D"font-size:10.5pt;fo=
nt-family:&quot;Courier New&quot;;color:black">]
 s_rfnoc_chdr_tvalid,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [(</span><span style=3D"font-size:10.5pt;font=
-family:&quot;Courier New&quot;;color:#098658">1</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">)-</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#09865=
8">1</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&qu=
ot;;color:black">:</span><span style=3D"font-size:10.5pt;font-family:&quot;=
Courier New&quot;;color:#098658">0</span><span style=3D"font-size:10.5pt;fo=
nt-family:&quot;Courier New&quot;;color:black">]
 s_rfnoc_chdr_tready,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// AXIS-CHDR Out=
put Ports (to framework)</span><span style=3D"font-size:10.5pt;font-family:=
&quot;Courier New&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [(</span><span style=3D"font-size:10.5pt;font=
-family:&quot;Courier New&quot;;color:#098658">1</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">)*CHDR_W-</spa=
n><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color=
:#098658">1</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier=
 New&quot;;color:black">:</span><span style=3D"font-size:10.5pt;font-family=
:&quot;Courier New&quot;;color:#098658">0</span><span style=3D"font-size:10=
.5pt;font-family:&quot;Courier New&quot;;color:black">]
 m_rfnoc_chdr_tdata,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [(</span><span style=3D"font-size:10.5pt;font=
-family:&quot;Courier New&quot;;color:#098658">1</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">)-</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#09865=
8">1</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&qu=
ot;;color:black">:</span><span style=3D"font-size:10.5pt;font-family:&quot;=
Courier New&quot;;color:#098658">0</span><span style=3D"font-size:10.5pt;fo=
nt-family:&quot;Courier New&quot;;color:black">]
 m_rfnoc_chdr_tlast,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [(</span><span style=3D"font-size:10.5pt;font=
-family:&quot;Courier New&quot;;color:#098658">1</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">)-</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#09865=
8">1</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&qu=
ot;;color:black">:</span><span style=3D"font-size:10.5pt;font-family:&quot;=
Courier New&quot;;color:#098658">0</span><span style=3D"font-size:10.5pt;fo=
nt-family:&quot;Courier New&quot;;color:black">]
 m_rfnoc_chdr_tvalid,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [(</span><span style=3D"font-size:10.5pt;font=
-family:&quot;Courier New&quot;;color:#098658">1</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">)-</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#09865=
8">1</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&qu=
ot;;color:black">:</span><span style=3D"font-size:10.5pt;font-family:&quot;=
Courier New&quot;;color:#098658">0</span><span style=3D"font-size:10.5pt;fo=
nt-family:&quot;Courier New&quot;;color:black">]
 m_rfnoc_chdr_tready,<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:black"><o:p>&nbsp;</o:p=
></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// AXIS-Ctrl Con=
trol Input Port (from framework)</span><span style=3D"font-size:10.5pt;font=
-family:&quot;Courier New&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Courier New&quot;;color:#098658">31</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">:</span><span =
style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#098658=
">0</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quo=
t;;color:black">]
 s_rfnoc_ctrl_tdata,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> s_rfnoc_ctrl_tlast,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> s_rfnoc_ctrl_tvalid,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> s_rfnoc_ctrl_tready,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// AXIS-Ctrl Con=
trol Output Port (to framework)</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Courier New&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Courier New&quot;;color:#098658">31</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">:</span><span =
style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#098658=
">0</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quo=
t;;color:black">]
 m_rfnoc_ctrl_tdata,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> m_rfnoc_ctrl_tlast,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> m_rfnoc_ctrl_tvalid,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> m_rfnoc_ctrl_tready,<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:black"><o:p>&nbsp;</o:p=
></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">//--------------=
-------</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New=
&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// Client Interf=
ace</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quo=
t;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">//--------------=
-------</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New=
&quot;;color:black"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:black"><o:p>&nbsp;</o:p=
></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// CtrlPort Cloc=
k and Reset</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier=
 New&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> ctrlport_clk,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> ctrlport_rst,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// CtrlPort Mast=
er</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot=
;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> m_ctrlport_req_wr,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> m_ctrlport_req_rd,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Courier New&quot;;color:#098658">19</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">:</span><span =
style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#098658=
">0</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quo=
t;;color:black">]
 m_ctrlport_req_addr,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Courier New&quot;;color:#098658">31</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">:</span><span =
style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#098658=
">0</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quo=
t;;color:black">]
 m_ctrlport_req_data,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> m_ctrlport_resp_ack,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Courier New&quot;;color:#098658">31</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">:</span><span =
style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#098658=
">0</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quo=
t;;color:black">]
 m_ctrlport_resp_data,<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:black"><o:p>&nbsp;</o:p=
></span></p>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// AXI-Stream Pa=
yload Context Clock and Reset</span><span style=3D"font-size:10.5pt;font-fa=
mily:&quot;Courier New&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> axis_data_clk,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> axis_data_rst,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// Payload Strea=
m to User Logic: in</span><span style=3D"font-size:10.5pt;font-family:&quot=
;Courier New&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Courier New&quot;;color:#098658">32</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">*</span><span =
style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#098658=
">1</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quo=
t;;color:black">-</span><span style=3D"font-size:10.5pt;font-family:&quot;C=
ourier New&quot;;color:#098658">1</span><span style=3D"font-size:10.5pt;fon=
t-family:&quot;Courier New&quot;;color:black">:</span><span style=3D"font-s=
ize:10.5pt;font-family:&quot;Courier New&quot;;color:#098658">0</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>]
 m_in_payload_tdata,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Courier New&quot;;color:#098658">1</span><span style=3D"font-s=
ize:10.5pt;font-family:&quot;Courier New&quot;;color:black">-</span><span s=
tyle=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#098658"=
>1</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot=
;;color:black">:</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:#098658">0</span><span style=3D"font-size:10.5pt;font=
-family:&quot;Courier New&quot;;color:black">]
 m_in_payload_tkeep,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> m_in_payload_tlast,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> m_in_payload_tvalid,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> m_in_payload_tready,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// Context Strea=
m to User Logic: in</span><span style=3D"font-size:10.5pt;font-family:&quot=
;Courier New&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [CHDR_W-</span><span style=3D"font-size:10.5p=
t;font-family:&quot;Courier New&quot;;color:#098658">1</span><span style=3D=
"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black">:</span>=
<span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#=
098658">0</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier N=
ew&quot;;color:black">]
 m_in_context_tdata,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Courier New&quot;;color:#098658">3</span><span style=3D"font-s=
ize:10.5pt;font-family:&quot;Courier New&quot;;color:black">:</span><span s=
tyle=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#098658"=
>0</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot=
;;color:black">]
 m_in_context_tuser,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> m_in_context_tlast,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> m_in_context_tvalid,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> m_in_context_tready,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// Payload Strea=
m from User Logic: out</span><span style=3D"font-size:10.5pt;font-family:&q=
uot;Courier New&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Courier New&quot;;color:#098658">32</span><span style=3D"font-=
size:10.5pt;font-family:&quot;Courier New&quot;;color:black">*</span><span =
style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#098658=
">1</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quo=
t;;color:black">-</span><span style=3D"font-size:10.5pt;font-family:&quot;C=
ourier New&quot;;color:#098658">1</span><span style=3D"font-size:10.5pt;fon=
t-family:&quot;Courier New&quot;;color:black">:</span><span style=3D"font-s=
ize:10.5pt;font-family:&quot;Courier New&quot;;color:#098658">0</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>]
 s_out_payload_tdata,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Courier New&quot;;color:#098658">0</span><span style=3D"font-s=
ize:10.5pt;font-family:&quot;Courier New&quot;;color:black">:</span><span s=
tyle=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#098658"=
>0</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot=
;;color:black">]
 s_out_payload_tkeep,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> s_out_payload_tlast,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> s_out_payload_tvalid,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> s_out_payload_tready,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:green">// Context Strea=
m from User Logic: out</span><span style=3D"font-size:10.5pt;font-family:&q=
uot;Courier New&quot;;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [CHDR_W-</span><span style=3D"font-size:10.5p=
t;font-family:&quot;Courier New&quot;;color:#098658">1</span><span style=3D=
"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black">:</span>=
<span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#=
098658">0</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier N=
ew&quot;;color:black">]
 s_out_context_tdata,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> [</span><span style=3D"font-size:10.5pt;font-=
family:&quot;Courier New&quot;;color:#098658">3</span><span style=3D"font-s=
ize:10.5pt;font-family:&quot;Courier New&quot;;color:black">:</span><span s=
tyle=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:#098658"=
>0</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot=
;;color:black">]
 s_out_context_tuser,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> s_out_context_tlast,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">input</span><span=
 style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black"=
>
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> s_out_context_tvalid,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:blue">output</span><spa=
n style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;color:black=
">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Courier New&quot;;=
color:blue">wire</span><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;;color:black"> s_out_context_tready<o:p></o:p></span></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span style=3D"font-si=
ze:10.5pt;font-family:&quot;Courier New&quot;;color:black"><o:p>&nbsp;</o:p=
></span></p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_SN6PR03MB416071E56A30ED011BAB98FCB1499SN6PR03MB4160namp_--

--===============3139994392782288112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3139994392782288112==--
