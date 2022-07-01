Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAC056373C
	for <lists+usrp-users@lfdr.de>; Fri,  1 Jul 2022 17:51:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3B683848D9
	for <lists+usrp-users@lfdr.de>; Fri,  1 Jul 2022 11:51:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656690714; bh=03o2uhJP3TdwC4RWvIGcVcDmMZ4FxfS1hfzcwS4/iVk=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CZUHoJ0BNWZepcWhwLYo5s7PnZuFPeCKc2ynEzubOhx6Bz7+wzAezi43CsD9IrxDR
	 NzSY9AZX1lnyj21HxMEhlI0G0JLfWa2rqCwvvOkz+eW8tyr0tIvT6GKXfInFwG6hFT
	 iF+MEeRS2CVRJvXinyyRbBnY6EKmCjcnWKcC8kCq6k9tbwNJcVCeGIZw5NN/8EbXWt
	 +6JPOsALP8PWPCTGU5JIN5KTq6dNdBKQan6mT4XobXz/DX+9DJranxZTX+Q519Ze05
	 rocZ/8OJP0m7g3tlAcVsoU3m1oVcsmIreSJL0CoWJqRhRw7OyiDvUOJw0jiANNRkb2
	 Xz2G9eOptsQxQ==
Received: from mx0b-00272701.pphosted.com (mx0b-00272701.pphosted.com [208.86.201.61])
	by mm2.emwd.com (Postfix) with ESMTPS id 8B0A6384819
	for <usrp-users@lists.ettus.com>; Fri,  1 Jul 2022 11:48:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ou.edu header.i=@ou.edu header.b="hXXTr4AK";
	dkim-atps=neutral
Received: from pps.filterd (m0107987.ppops.net [127.0.0.1])
	by mx0b-00272701.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 2616iPbq025684;
	Fri, 1 Jul 2022 10:48:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ou.edu; h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 mime-version; s=domainkey;
 bh=yGeXlDMzaepSZ75Rgy4HhYpPKhwqfmIIkTt8R/uVjMg=;
 b=hXXTr4AKo3HHvt8QKZ/k2hOlp0Dt8R7kIq3DhlpWcNmxiU+HAiTh8+t9e+vLfYGBiTdt
 TCmqz8eYibs3wy+zZagDgOe9QC1yyLJ48sbqOrfhCWQZAFt9h5wzFYS4x+Mo0w9qgLp7
 MaBC2SY9h21L8zdWWfxcdV10onWdSgBH094TMznbfcN11xEZmJ3iKkJ/PNRCEaK3CRcI
 7MNsn5rkwPRxVWM41fzjn3LRxe8U7JjyUyOI6t3+AhgPEtEla0aR4c0c0qRpU5QKkSYy
 5kpgIlVud/y87/enMfyQqytWDy4Nql2CLbNYr2tszXL7wvVH9O3tzQjDlmseKCVsTeIt GQ==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2177.outbound.protection.outlook.com [104.47.57.177])
	by mx0b-00272701.pphosted.com (PPS) with ESMTPS id 3h1eq0tr11-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 01 Jul 2022 10:48:08 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XfLt3IMufKVp0l87Ta99xyVXLkZ2PnQhnKwETyg4DMaZ23gJ95aoZP7jut7xszwHG9p2KMZorOGmRhkBWCxqRUxam0eu/BfPQXJLUIJphxx06125Gk5j1dYCg6pcpaNfckrl16+Yr88/chyk50xpmddZmkU6SJwCVyBcdWVmQypAjOo7s6DKQfd83O8fVq5R1+WCUK5tK/6pFzBpF60wQwh8jZk0FvUKCnA6KabjchQxAOr+YF93q4c7hn1k+v8E59F0wudyiRDL3qqIFhwH2TGJWA20gXtYy0qxk6EgudrRdj26uAwmDphPo/TqFV/O0t27OSh+7BAKGWFG/2xcIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yGeXlDMzaepSZ75Rgy4HhYpPKhwqfmIIkTt8R/uVjMg=;
 b=PhXQMQL0db7yQF1QNmFX4LWORjq0s7ncPp1hSeEFnY3ptH0jYLYXJJkmDbnQT5W+hQ3A2drlwEJ/nqcdU8ll3LchbWk1F8DcgKrRKXMvGLZvXcpcd9BHx6DkW2QHSU6Zam4eVkbn8spKVLl+RkDAOJx+fzmoiJik8ik3VJ4VfPmC3tSOYHQDSwUe3ZOm+iGH2VTacqC7jB+NriSY4jeA5pXg3TzJ0tFi4TKKLPw+VGOe7sSMkH0CydwTpE419A0YOYdbbrR+73sBS8FiLlG7Qrz4SsBrsIs5vqS4DG3b66M++YZ2MpcvzL0Og7AKTeS2AOl6ovzHeeJEnYdKAvqNQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ou.edu; dmarc=pass action=none header.from=ou.edu; dkim=pass
 header.d=ou.edu; arc=none
Received: from SJ0PR03MB6795.namprd03.prod.outlook.com (2603:10b6:a03:40e::10)
 by BN8PR03MB5057.namprd03.prod.outlook.com (2603:10b6:408:da::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Fri, 1 Jul
 2022 15:48:06 +0000
Received: from SJ0PR03MB6795.namprd03.prod.outlook.com
 ([fe80::d80d:ada5:525c:c8bd]) by SJ0PR03MB6795.namprd03.prod.outlook.com
 ([fe80::d80d:ada5:525c:c8bd%9]) with mapi id 15.20.5395.015; Fri, 1 Jul 2022
 15:48:06 +0000
From: "Mattingly, Rylee" <rmattingly@ou.edu>
To: Wade Fife <wade.fife@ettus.com>
Thread-Topic: [USRP-users] rfnoc_chdr Clock on X3xx Radios
Thread-Index: AQHYjVCCElMhlYKUPUqMiAQQholupq1pkI+AgAAEGSY=
Date: Fri, 1 Jul 2022 15:48:06 +0000
Message-ID: 
 <SJ0PR03MB6795D9F85244E5188F1DE0ABB1BD9@SJ0PR03MB6795.namprd03.prod.outlook.com>
References: 
 <SJ0PR03MB67952B33C9B89FB9014E9348B1BD9@SJ0PR03MB6795.namprd03.prod.outlook.com>
 <CAFche=ig=a8wNr2Mptnszf3OPkgbzWwEV4Sxa0yzjJNjo59Uqg@mail.gmail.com>
In-Reply-To: 
 <CAFche=ig=a8wNr2Mptnszf3OPkgbzWwEV4Sxa0yzjJNjo59Uqg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 19d20c74-4a26-4e46-c6de-08da5b791714
x-ms-traffictypediagnostic: BN8PR03MB5057:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 w1SATABjRnlPJ/3WOspC76ObEOzBI/1M/c0i1RVMVpkywdGTY6xAqn3o99aLbSfwA2k526ZyMRsCZJNhf1zHrOuFIOtvGbb7UKjiS6oDig9zj11XH+i0x83hN4c37cXWKJbt2kLe7T0VdMdpsaxocg+JOdyUvhbca99+zrttv2Zm+HP0CnVj/3XFMTTs3i4THLRH0MhspyTm4pqwmlexC8yr7NkP9aK1F9BSDziLtP+6pLoebsqQmwpUZzYWutLWQUtzmETE/+dk6Xzo30si7BjVGgxW7DauoAeAVH/eFhFetpUxOY1/FP0fKmyB+eZnd8W00WS8x5u2LzERXeKUWTEE6Za86R9Gd9VqOMOmmblnq+4FPEYfuZ67H3Q6ztpvIRq1OALbJ31E7cdpTtkExB3THw7h/m/UYthwd5oKjaVTY5i5neEZYy94a8KNT4HHw0Qf7Jf5HZzvieF5x/XdONDkqC6/gyfCi/LhoMi4ccE270zL+0ITUpd24Wc8ZqAbe6U/zofNPybfRxPXMY6BlprZdk2b8bxPAQX8EuOHoJzKszjPcJlhc+emrFZqMuT1usg0I0wujQbspcx6+oeaxfQc0b1mxjmhXeuY/2BR/ripwiI0uvwDOoLytnmFoCSPXkUbgp0F8sxhxSLtgaHW+0JGIYTK1ynGhsyKUon6Hd7MLC01Ct+v66XRy+VRReGA+lklsy7ZfFK2LBkQYiSDvy6OSB/JWju422IHDciWSp+XvB6Mvdo4hV/lHZgHj3IFh/vqHzCYUUWcF9PEKK65k1G4kDSFqLiEyxx0ATM5oJkKv7MzIrMb7sr1X4x2Srr6GfVQtxOapVlGqsAvjL5FTYANysIqSw19BAfINmZVlRMYwSUpx7sPud/SeCWrrCg/
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB6795.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(136003)(376002)(396003)(366004)(346002)(55016003)(122000001)(75432002)(186003)(38100700002)(2906002)(33656002)(83380400001)(786003)(6916009)(53546011)(9686003)(316002)(26005)(8676002)(86362001)(5660300002)(478600001)(71200400001)(6506007)(76116006)(7696005)(166002)(91956017)(66556008)(66446008)(9326002)(66946007)(38070700005)(66476007)(64756008)(52536014)(8936002)(4326008)(41320700001)(41300700001)(32563001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?dxh6ldOde2F2sFqbQPXZ40Iwyfvmi4QxaAteWG0iom02cJV00/nK+7HL?=
 =?Windows-1252?Q?cFalouPiUXEniEmII2pGDQwnnVIQkhwP1B69huL++kzEB+9TOqWODhFb?=
 =?Windows-1252?Q?tIVUqJFxW1sdEWMvHZHmu3uDp1verfjWIP4wg+sTJZk3Cgfs4/4AOjin?=
 =?Windows-1252?Q?gD3gM8whYuNCiLnt85RzQTEmUpVttQtNoccEE5AdA6lCUUmke1teshsx?=
 =?Windows-1252?Q?/PouBl3KjwLwubmA/wcVO1wWNYvkJZZyxq7NKSoACdBnO5O30AKZtOO4?=
 =?Windows-1252?Q?J5Sj0ZxCvSSztJLCitbLC+mjVZdYYy3q/JQ7s1IsLTsN7jKvyBRXr+WK?=
 =?Windows-1252?Q?QHPsbkrJgzzVA446ThpA6cIko9nZ+SfphygFDT53dRtLl0RC5dqcHZss?=
 =?Windows-1252?Q?VFZsvUTcQKUaN/nHKmZPy/vLb5Fed+WUlfiKXX4v6oYNjS22b+3iMEho?=
 =?Windows-1252?Q?p4GA4NESPsklC+l3+YgmNrPWI+FkcSZIUQMrb3pcA7dfa0/bRlvbqZN9?=
 =?Windows-1252?Q?947ySNiZBd2swy5AGySKyTtFE4dyyT7Kit6K6EPIrIAE//Ju/Lv2PfZc?=
 =?Windows-1252?Q?32oigAM1e9MiUA5AxBW++CJfyfMlQuMa0OAHKMHKXO5BUbXdrkpjaiJt?=
 =?Windows-1252?Q?q4GIlvcr0hqarAyW3z2wp4GAA0VJTIwC7PvgD0oIDqKsWbfWyH9vdH2U?=
 =?Windows-1252?Q?vVB3MqQzJYjcJRtWSXEl+DBrSg43fAZxPgZuSaeFlTtqIF3dgKbY3fqw?=
 =?Windows-1252?Q?1UcJRZOp+zo5ZBaKfD3GgsiDc+o6N0UowGU7j42qWIiNKQ0SKd0LX3+H?=
 =?Windows-1252?Q?gH5U767yQaRmAn69uVEAE1kOlZ3aV4IOAfePLFxBE5kfogYdpalcYocA?=
 =?Windows-1252?Q?P5O5JPGW1FDMcQvq/1fuyU71Ft9fzvd/b9aHYR10MNJQy+bvsKtTy0Fg?=
 =?Windows-1252?Q?Gdiv5kggDJuXR2/moXKVmmtVy414x/2uzFWG695lJAEWP5o3GQ3CDl3K?=
 =?Windows-1252?Q?JLn8M3zTxMoN/c8z3u+IscBfCF9SW2aVW0ITtdiGPbPbi4gUCDTBk8jj?=
 =?Windows-1252?Q?9svZMvWMZdTGQ2VVUVnLjnjMAI679ZHxVXqU6449dKTI//itT7TlFBj6?=
 =?Windows-1252?Q?TI7sDsZB4g5xF8UFK/b/260iBPv+TSGOkQTp8Bq9+vmL0RK7avSra+Yj?=
 =?Windows-1252?Q?YL4EOcJ3S80Y42rmu9T16kOUHo4piqAdm4EjxMBbwJ+IVh5cJ/UCGEaj?=
 =?Windows-1252?Q?RI/HWTOS+2HNU0ksDxDUKbgZHYSPZuftZIKrBtrR4xRC5l3iF2tOYdPB?=
 =?Windows-1252?Q?prFDfi+hJOMXUEoSv9/PDxRvkkeuo+jFFl2sHUR+DLNu/G9AvAl3KbIU?=
 =?Windows-1252?Q?QXi8LeyZzaD8EBnQ4CrhAOiXW+WvSJRYpujSFN4ruTzQOKiDWqZ9oSRe?=
 =?Windows-1252?Q?YE1UXGLQnP3FgTcmQj7zY40DwBr7Crs3/ExIObuZ7VuZF6Abh8lUjZUR?=
 =?Windows-1252?Q?YjNBku7BqQeQvK5JbkbaDZlrziOFg2Ztq5nFw31FGgm7QbcyP8GFAUj+?=
 =?Windows-1252?Q?ZZnzkMT+6PNKjXq44FEHtcVxEjgHXrUhaZnEK223OkGfwFiGs4sUw9GK?=
 =?Windows-1252?Q?z3jILGvK/XDjswwr7EHkhOkkQjCZGGV1cypajwGkoELwIf/wfwwRNvyl?=
 =?Windows-1252?Q?T/Hy4BoXQB8jN5mFG5u/qQiYCsYMrOdQGFjXcC0s9bJFIvmvcMxhcg?=
 =?Windows-1252?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ou.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB6795.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19d20c74-4a26-4e46-c6de-08da5b791714
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2022 15:48:06.2285
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c7de09d-9034-44c1-b462-c464fece204a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ODsP7sYZLp/0lZeOkwRmX1sJljrN/UrCd+yDF2hdrqhUx6LVxcOEFW45lgbpc39ahGb0ak9rrjmgz7dWRe1GuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR03MB5057
X-Proofpoint-GUID: jnhz712ZqCaSvgWi3ICBsNiuaGs0KL6V
X-Proofpoint-ORIG-GUID: jnhz712ZqCaSvgWi3ICBsNiuaGs0KL6V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-07-01_08,2022-06-28_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1011
 mlxlogscore=999 priorityscore=1501 spamscore=0 phishscore=0 malwarescore=0
 mlxscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2204290000
 definitions=main-2207010062
Message-ID-Hash: VHA3LXFZVCR4WJDAPEPDPLWPQZ6KKTPQ
X-Message-ID-Hash: VHA3LXFZVCR4WJDAPEPDPLWPQZ6KKTPQ
X-MailFrom: prvs=6181687c77=rmattingly@ou.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_chdr Clock on X3xx Radios
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NJAXVSNGWKNNMUQBPU5KNBGGLWOQVFLY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5857816683507713977=="

--===============5857816683507713977==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR03MB6795D9F85244E5188F1DE0ABB1BD9SJ0PR03MB6795namp_"

--_000_SJ0PR03MB6795D9F85244E5188F1DE0ABB1BD9SJ0PR03MB6795namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Wade,

This makes sense to me intuitively, especially with the processing clock. I=
 am mostly concerned about the ability of the data bus to actually pipe tha=
t much data, which would be alleviated by a NIPC =3D 2.

In the DDC, the data seems to come in from the NOC shell using the rfnoc_ch=
dr_clk, but uses local parameters to define item_w =3D 32 and NIPC =3D 1.  =
Being localparams, it is my understanding that they can=92t be modified ext=
ernally. Although the raw input signal s_rfnoc_chdr_tdata is 64 bits, the s=
_axis_data_tdata is only defined with num_ports*item_w.

So does the DDC use the num_ports parameter in place of NIPC?

Similarly the FFT block uses local parameters for NIPC but explicitly uses =
the CHDR_W to set the axis_tdata width. Again it doesn=92t seem to use NIPC=
 but perhaps that is just implied.

So I guess my question boils down to:
Should custom RFNoC blocks that expect to operate at 200 MS/s expect a NIPC=
 of 2 from the upstream blocks.
Does the streamers understand if it is expecting 2 samples per clock or 1 s=
ample per clock?

Rylee

From: Wade Fife <wade.fife@ettus.com>
Date: Friday, July 1, 2022 at 9:19 AM
To: Mattingly, Rylee <rmattingly@ou.edu>
Cc: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] rfnoc_chdr Clock on X3xx Radios
Hi Rylee,

Some blocks do use NIPC =3D 1, but those blocks need to use a faster clock =
for the internal processing. For example, on X310, the DDC and DUC use a se=
parate CE clock that is connected to 214.286 MHz. The radio block uses radi=
o_clk for this purpose. For the parts of the logic that use the 187.5 MHz c=
lock, we use a 64-bit bus that holds 2 samples per cycle (NIPC =3D 2). The =
numbers vary somewhat between products and blocks, but that's the general i=
dea.

Wade

On Fri, Jul 1, 2022 at 8:55 AM Mattingly, Rylee <rmattingly@ou.edu<mailto:r=
mattingly@ou.edu>> wrote:
Hello all,

I am looking at the RFNoC FAQ page<https://urldefense.com/v3/__https:/kb.et=
tus.com/RFNoC_Frequently_Asked_Questions__;!!GNU8KkXDZlD12Q!9vhvYI4lgCniKu9=
k5boH12kRtHf4dVelsbI2c47vAy3m0Nn4CwRMG8YOcTzk46v8Y2IThfEbqgsGjITcig$> and i=
t lists the rfnoc_chdr clock as 187.5 MHz. Now this is plenty fast to pipe =
around packets and sequential headers for the 184.32 MS/s sample rate but h=
ow does this support the 200 MHz master clock/200MS/s sample rate?

This seems like a NIPC > 1 would be needed, but my understanding is that al=
l blocks use NIPC =3D 1 by default.

Thank you,

Rylee Mattingly
The University of Oklahoma
Graduate Research Assistant
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_SJ0PR03MB6795D9F85244E5188F1DE0ABB1BD9SJ0PR03MB6795namp_
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
	font-size:10.0pt;
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi Wade,<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">This makes sense to=
 me intuitively, especially with the processing clock. I am mostly concerne=
d about the ability of the data bus to actually pipe that much data, which =
would be alleviated by a NIPC =3D 2.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">In the DDC, the dat=
a seems to come in from the NOC shell using the rfnoc_chdr_clk, but uses lo=
cal parameters to define item_w =3D 32 and NIPC =3D 1. &nbsp;Being localpar=
ams, it is my understanding that they can=92t be
 modified externally. Although the raw input signal s_rfnoc_chdr_tdata is 6=
4 bits, the s_axis_data_tdata is only defined with num_ports*item_w.&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">So does the DDC use=
 the num_ports parameter in place of NIPC?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Similarly the FFT b=
lock uses local parameters for NIPC but explicitly uses the CHDR_W to set t=
he axis_tdata width. Again it doesn=92t seem to use NIPC but perhaps that i=
s just implied.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">So I guess my quest=
ion boils down to:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Should custom RFNoC=
 blocks that expect to operate at 200 MS/s expect a NIPC of 2 from the upst=
ream blocks.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Does the streamers =
understand if it is expecting 2 samples per clock or 1 sample per clock?<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Rylee<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Wade Fife &lt;wade.=
fife@ettus.com&gt;<br>
<b>Date: </b>Friday, July 1, 2022 at 9:19 AM<br>
<b>To: </b>Mattingly, Rylee &lt;rmattingly@ou.edu&gt;<br>
<b>Cc: </b>USRP-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject: </b>Re: [USRP-users] rfnoc_chdr Clock on X3xx Radios<o:p></o:p>=
</span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi Rylee,<o:p></o:p=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Some blocks do use =
NIPC =3D 1, but those blocks need to use a faster clock for the internal pr=
ocessing. For example, on X310, the DDC and DUC use a separate CE clock tha=
t is connected to 214.286 MHz. The radio
 block uses radio_clk for this purpose. For the parts of the logic that use=
 the 187.5 MHz clock, we use a 64-bit bus that holds 2 samples per cycle (N=
IPC =3D 2). The numbers vary somewhat between products and blocks, but that=
's the general idea.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Wade<o:p></o:p></sp=
an></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">On Fri, Jul 1, 2022=
 at 8:55 AM Mattingly, Rylee &lt;<a href=3D"mailto:rmattingly@ou.edu">rmatt=
ingly@ou.edu</a>&gt; wrote:<o:p></o:p></span></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white">
<span style=3D"font-size:12.0pt;color:black">Hello all,</span><span style=
=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white;background-attachment:scroll;background-position-x=
:0%;background-position-y:0%">
<span style=3D"font-size:12.0pt;color:black">&nbsp;</span><span style=3D"fo=
nt-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white;background-attachment:scroll;background-position-x=
:0%;background-position-y:0%">
<span style=3D"font-size:12.0pt;color:black">I am looking at the <a href=3D=
"https://urldefense.com/v3/__https:/kb.ettus.com/RFNoC_Frequently_Asked_Que=
stions__;!!GNU8KkXDZlD12Q!9vhvYI4lgCniKu9k5boH12kRtHf4dVelsbI2c47vAy3m0Nn4C=
wRMG8YOcTzk46v8Y2IThfEbqgsGjITcig$" target=3D"_blank" title=3D"https://kb.e=
ttus.com/RFNoC_Frequently_Asked_Questions">
RFNoC FAQ page</a> and it lists the rfnoc_chdr clock as 187.5 MHz. Now this=
 is plenty fast to pipe around packets and sequential headers for the 184.3=
2 MS/s sample rate but how does this support the 200 MHz master clock/200MS=
/s sample rate?&nbsp;
</span><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white;background-attachment:scroll;background-position-x=
:0%;background-position-y:0%">
<span style=3D"font-size:12.0pt;color:black">&nbsp;</span><span style=3D"fo=
nt-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white;background-attachment:scroll;background-position-x=
:0%;background-position-y:0%">
<span style=3D"font-size:12.0pt;color:black">This seems like a NIPC &gt; 1 =
would be needed, but my understanding is that all blocks use NIPC =3D 1 by =
default.</span><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white;background-attachment:scroll;background-position-x=
:0%;background-position-y:0%">
<span style=3D"font-size:12.0pt;color:black">&nbsp;</span><span style=3D"fo=
nt-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white;background-attachment:scroll;background-position-x=
:0%;background-position-y:0%">
<span style=3D"font-size:12.0pt;color:black">Thank you,</span><span style=
=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white;background-attachment:scroll;background-position-x=
:0%;background-position-y:0%">
<span style=3D"font-size:12.0pt;color:black">&nbsp;</span><span style=3D"fo=
nt-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white;background-attachment:scroll;background-position-x=
:0%;background-position-y:0%">
<span style=3D"font-size:12.0pt;color:black">Rylee Mattingly</span><span st=
yle=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white;background-attachment:scroll;background-position-x=
:0%;background-position-y:0%">
<span style=3D"font-size:12.0pt;color:black">The University of Oklahoma</sp=
an><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto;background:white;background-attachment:scroll;background-position-x=
:0%;background-position-y:0%">
<span style=3D"font-size:12.0pt;color:black">Graduate Research Assistant</s=
pan><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">___________________=
____________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><o:p></o:p></span></p>
</blockquote>
</div>
</div>
</body>
</html>

--_000_SJ0PR03MB6795D9F85244E5188F1DE0ABB1BD9SJ0PR03MB6795namp_--

--===============5857816683507713977==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5857816683507713977==--
