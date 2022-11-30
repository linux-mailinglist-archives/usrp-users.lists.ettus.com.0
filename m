Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BC663DF1D
	for <lists+usrp-users@lfdr.de>; Wed, 30 Nov 2022 19:44:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6C7438449F
	for <lists+usrp-users@lfdr.de>; Wed, 30 Nov 2022 13:44:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669833844; bh=XE/33qcR8y77lCJKR63rUyKFpZzLH50up6MVlq7v8PE=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ImawlNfuunp7eJs4xCGwFcINWmkH7/w1qvD/fWlitwOxPky2YrbGVtkh4qE58ky08
	 XhvFdPWiuHI5X3POGl5+/QprVCtOgjsFHclDqW/HKCizHxlSZgqdc8xsJLQsILha+x
	 ssVqlMp6oMunT5mdR3Q0N3Rg2xeARhKv9jkOHOk9/j8DBw6MAe54n8gbVXsHm2Jxyq
	 u1h2l9oVHvAeI+f/r7cHx+BtM59VTZUPUz0xqONZBLpLD74nVtC/NHmAi8NVf6mxtD
	 lfzuIrLd0icrj3vJkRf+5o86xi8KsBRswlhK+CauHgPMzllNclbY1CxHemSISOHpb9
	 O77b6CrStPbZQ==
Received: from na01-obe.outbound.protection.outlook.com (mail-eastusazon11022021.outbound.protection.outlook.com [52.101.53.21])
	by mm2.emwd.com (Postfix) with ESMTPS id CC4A0384441
	for <usrp-users@lists.ettus.com>; Wed, 30 Nov 2022 13:43:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=augustusaerospace.onmicrosoft.com header.i=@augustusaerospace.onmicrosoft.com header.b="gYES6KbX";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kzubwf+2ErJRLuiB3XMFnbhYUdC7V/jQJfkhA8rd3VvykhrmwpG8na1vPaSRNRIqfwNa2ZQIqcTrX51GItwF6+beTZi6a6MMX09P+oCQivIF67iPSUlSQ94CtTfOcNgUH0qaeEt255c+KdTrnX/TdSrVA02jmJ7sgfjo3U1UGOerWef0KafI+QVg+gx2KlcMmeIWXLRhQCrAF0Z2EuLsl4C9rOPfzagwzIxo7+YsPrmdrYU/LdtJeehJ4vAmFonC1VjL56HogiWDhmOZrciAajNX9u3KeKhxXDlHvYr7XRSHMEAqJZTGuYnQflk3nhnLMv3efaWtTAjoIa1Yll5XHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pMB2j1NIBhKcg2I8Skw1qjs35BR+INUzNUn70+okB3k=;
 b=YP6Beo62xNe3aKHQfyYQQR42QTmNm5favcu1sI1pwyWzj9EEEBJIoLYT8W73DWrv0CbdYSlJDAWfKfnb77DYhIlzJTx+ZnzuFP3+B1onHlsa2EVTSm9xSfJ+uaMJrzZ0nkRSoj1EUorBDfiqcQuz7FN/I0+aY/Kjyc/7OWUAfOrAzS2c/0rHFk54OBA0MqlmwKv2ysCs8vGQcVr/BdMa5dbRYqVgx815WQIR1NnELFVz6NE4ffGNFUb6j9GEJElGM5dJvkRs2r0EMNQG47g6q5ZQ6XtNMjMC30r1oJQj7F76wqp/MiW+BJhr+GLyOl85cHdb4P+bHG4YXzSE+CkCwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augustusaero.com; dmarc=pass action=none
 header.from=augustusaero.com; dkim=pass header.d=augustusaero.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=augustusaerospace.onmicrosoft.com;
 s=selector1-augustusaerospace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pMB2j1NIBhKcg2I8Skw1qjs35BR+INUzNUn70+okB3k=;
 b=gYES6KbXU3VTUGUegPC9fQky/nkaU5EOlw51FzRWX/vieDj1jiLlTmNV5VKHCe9pcnFB/eozeurXJtzGFseZoU8aXMb7gqkODaymUH0onbNGo0AiI/MNuBbrqH932aMQA0jnF3t1SEejm7oe1EILTxds9gvdukgpBfdpcVrWnac=
Received: from BN7PR05MB4500.namprd05.prod.outlook.com (2603:10b6:406:fb::28)
 by DM6PR05MB4140.namprd05.prod.outlook.com (2603:10b6:5:90::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 18:43:10 +0000
Received: from BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::e97a:3180:c373:59df]) by BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::e97a:3180:c373:59df%6]) with mapi id 15.20.5857.021; Wed, 30 Nov 2022
 18:43:09 +0000
From: Jonathan Tobin <Tobin@augustusaero.com>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: TX from N310 External LO Error
Thread-Index: AQHZBOrqSeM+WdgRD0udHemP7uN86g==
Date: Wed, 30 Nov 2022 18:43:09 +0000
Message-ID: 
 <BN7PR05MB450083ED49C51CD1D1808E36D5159@BN7PR05MB4500.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=augustusaero.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN7PR05MB4500:EE_|DM6PR05MB4140:EE_
x-ms-office365-filtering-correlation-id: 39df9765-97ba-4e06-7199-08dad302ba5b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 4BIZheL/OtV9nI1mBaFFmTLeYP5F4wYoKcBZ6naT+AiCHRQcALexqbOvQz6HZ3xGClUe4yp4aJxJi+Hb3+yOSHLDP/GjQATuAASKFYzd69QxBSulay7kUGqV47klKowbNGeBEPo2EA94/cqq1gY/0OhiEzaQ2f+c/D+DPXU+xFFwVrfx9ECLnH/4LjNgY+bP1w8cdZj/D+hXTPeE0SyByFPE9m+bAdmTPrumjhf7eNbyhATCT23lI1U14DjW6fdaJKyNoceAQ6xdT3ncxs5Kmc0tVYq+uLZ4lN9DE6eZH7anhurgliTmqzfflcxZvLWO1qCH3LEqngB4VaEiBkF1vrr0390ZWu+dtZ7oX3BcQ9CUp01oLCr7StcL2iGF9J3B4XDrk0+r1XXAS040VCycNXvoHTQKM28f3zv3/kdhu6B7aahPjCc2VS7Rh2PPG9fWQv7lqH7nE1G2djC/NAnD4u/pMXYNjLotYwbBV4uWbXGwQ6aY/Hssxkq/5oUHGQ8wRiJbEKj6MC9rDEaodk77WcLZyrAiE8BJkk3ulHYx8+Blg2FAbemho/YrFAG8VuzJjh6dJ/VRM4nEvR+XyBjnbTlEBMoNP8y6l94dyvrg7Zah+As4NsBuU8MABHo3Mj3vqyD4pvSoneTcDT9NvKSKo3Ma3ULXcpF/p9MPTy+R/JMHqdEPHlnSWF8nr3BMlNM/NW7v8Kkd1fTeNs2flxP+hg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR05MB4500.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(366004)(346002)(136003)(376002)(39830400003)(451199015)(55016003)(38070700005)(33656002)(86362001)(478600001)(122000001)(71200400001)(6916009)(316002)(91956017)(2906002)(66556008)(8676002)(66476007)(66446008)(66946007)(5660300002)(64756008)(41300700001)(8936002)(52536014)(76116006)(83380400001)(38100700002)(7696005)(26005)(6506007)(9686003)(19627405001)(186003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?9551XX6RipqM9iUlPLX+E07Fm8ZHs4G90RpKbpT8PjItgwNx8Fbt7i8Dii?=
 =?iso-8859-1?Q?H4GOF8oGNE/4540NbMqjac/VRKBmEaSH8DjGDqdJElRW0a+TDwoUDr0duQ?=
 =?iso-8859-1?Q?Y2selKdcRdmAGefSu+KIfBhyEV0OqAPk7WcKzwxDP24R02CqrvmD43w03i?=
 =?iso-8859-1?Q?WX0rgzabXiYuADWaQ/LfjaiaBxTC1KFsyrf0LUTYSmcZjjWybn+i9VC2dc?=
 =?iso-8859-1?Q?AxsUJStLhr+VmlDwL3jal9YiWJmbjNWMDXhDUY2xfzdqUzRX85RaQvQIt3?=
 =?iso-8859-1?Q?ZXIfrcHPjqMDeSlgXgPK+CDF4BBBS74kO3dJRZVC4u1vKbVoFVKminhvi5?=
 =?iso-8859-1?Q?0SFyn0xRLE3VMxXgBGf+vfFPY7bXYiryLGvWUP9R4CZn3zPvNsyZbtdkqm?=
 =?iso-8859-1?Q?yZ4EFVwUcZoBrEUIP5yagl4J/BpUEH7omQos8z8qDMhFWCxsEZ+qhhAJMe?=
 =?iso-8859-1?Q?aaHXuj/e3XXvzDWj7x4SGruJcOCpu4d0GX7emiwoUzTe/bDBY0YJKQihNo?=
 =?iso-8859-1?Q?bNBwCeQOJpxXyO6TOiEks6Jl8siPT/T7IrPW4XxTNUCRWEDspgdZzzzc2T?=
 =?iso-8859-1?Q?DbRG2SpKXWpE8uTFSVgq9bRkNAdEDUjIFZy22mV5CmUy0jQEQjhMJg3nEt?=
 =?iso-8859-1?Q?efBTJSOp9AP5rg5hzrcRn8rDbfeZPDmhIeu8B6GEJO4qLlpRKC5TCdJ3u/?=
 =?iso-8859-1?Q?guxA++GxRJnEnyhOhkApZiaRI1/2oNiUsjw/Cq/KVDlk63Gs/epbcfuCE0?=
 =?iso-8859-1?Q?eJQwdcgAo2NnZZ2/v9p1us2Q32nvlWpJwNuG2Xz/5e+S1WefQ786DxD4Bg?=
 =?iso-8859-1?Q?4xLs+qIp9m9IHEtzELNpF0tZq8l63mtIHMgC+bCmiLtQZfApcinrCcvXLF?=
 =?iso-8859-1?Q?TIRUMYqjsradW5K6fpUpP/nbIQwTxGBuZaae7pi6YO/B9WBbyEfe8jJUQU?=
 =?iso-8859-1?Q?Yv9oVDeftY0YsHORBqz898jSb5X9dMDcV88CYyUOMZ64fPauso868v2qO7?=
 =?iso-8859-1?Q?cxnb3EigAPJWDAi+lhPuUB0cPHOQXlF2pHqf7cF35CuSTygDBvtC4fR/Li?=
 =?iso-8859-1?Q?Lc5CFhEFCQ7JKcPMdXcHOXcWtbhYSdWnWdnCL8JWGM1jETSQB6Tk0V2vku?=
 =?iso-8859-1?Q?ObDfJr5a0qaiWjI+g75tXMKP6eLKoMhw3CkEjxn0K7dn6LqK4wDTnZWtfT?=
 =?iso-8859-1?Q?+gvC5iGT4F69Ct3Eos0sB8lw6TrgV33GAy1nce30YWlsnAjAoERKYlY6Hd?=
 =?iso-8859-1?Q?yfXtOCsXeuVmNZzxERj5wXm1uEbodKUG/BsODOlGfLE6vNCpR7dy7HIrHO?=
 =?iso-8859-1?Q?A8ExroJTZHpSqokMoH0ImmsBLR6sEJEH7LQQbTqMAo9BWHSH9UkhojZhOQ?=
 =?iso-8859-1?Q?5y14V4KLstMuAikM//NKBPXNOgiMI71dfZf81ziQ2lxXKDBN24o9ZAuE6n?=
 =?iso-8859-1?Q?cU4CyhfN+pyL3/tefeF3TdAxnujKuDzrlwK/0/Rds0QxrEl8Y3UvbmzDRm?=
 =?iso-8859-1?Q?vIu+FimV7kzsWaGqHt6JSuvSo5LPJczWseoMKbIwn80dqTDAFq9CbrUax4?=
 =?iso-8859-1?Q?BjhoNBJzPThX7duT9w+qtEHnjhds3i+MifJkWW7mR3rCwfWqRq8/Zio3xc?=
 =?iso-8859-1?Q?SA0CO0RBIBijTD/zp+t2RkTftdSllHpFgM?=
MIME-Version: 1.0
X-OriginatorOrg: augustusaero.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR05MB4500.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39df9765-97ba-4e06-7199-08dad302ba5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2022 18:43:09.5828
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04d66077-4301-4950-bf2c-c3d5b922ae52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FR4bDPILw5lrQOzLooezeed+ArJwaRaIRVLBr8/HyMkeoSbxARK+nFlPa9RH6kHqcTLnUONTw7dzk6wyRJNLjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR05MB4140
Message-ID-Hash: O27GCF7OVAHK37HDVWQHEE6AGHV2XLD7
X-Message-ID-Hash: O27GCF7OVAHK37HDVWQHEE6AGHV2XLD7
X-MailFrom: Tobin@augustusaero.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] TX from N310 External LO Error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ELALK5QML5OBQXT6637KIJ6DHSW2QL6A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4918083747342478148=="

--===============4918083747342478148==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR05MB450083ED49C51CD1D1808E36D5159BN7PR05MB4500namp_"

--_000_BN7PR05MB450083ED49C51CD1D1808E36D5159BN7PR05MB4500namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello all - I am trying to transmit a test waveform from an N310 using the =
sample program tx_waveforms. When I set "tx_lo_source=3Dexternal" I get the=
 error below. When I set it to internal, the program runs smoothly, but the=
re is no output. I am supplying an external LO at twice the desired output =
frequency. I am using uhd 4.3.0.0.


./tx_waveforms --args "addr=3D192.168.10.2,master_clock_rate=3D153.6e6,tx_l=
o_source=3Dexternal" --freq 1e9 --gain 10 --bw 1e6 --rate 9.6e6 --subdev "A=
:1" --channels "0" --wave-freq 100e3

Creating the usrp device with: addr=3D192.168.10.2,master_clock_rate=3D153.=
6e6,tx_lo_source=3Dexternal...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.3.0.HEAD-0-g=
1f8fd345
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,name=3Dni-n3xx-3218=
B5F,fpga=3DHG,claimed=3DFalse,addr=3D192.168.10.2,master_clock_rate=3D153.6=
e6,tx_lo_source=3Dexternal
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DHG,master=
_clock_rate=3D153.6e6,mgmt_addr=3D192.168.10.2,name=3Dni-n3xx-3218B5F,produ=
ct=3Dn310,tx_lo_source=3Dexternal,clock_source=3Dinternal,time_source=3Dint=
ernal'.
[ERROR] [RPC] RuntimeError: MYKONOS_waitInitCals() returned an ARM error

[ERROR] [MPM.RPCServer] init() failed with error: RuntimeError: MYKONOS_wai=
tInitCals() returned an ARM error

Error: RuntimeError: Error during RPC call to `init'. Error message: Runtim=
eError: MYKONOS_waitInitCals() returned an ARM error



Thanks,
Jonathan

--_000_BN7PR05MB450083ED49C51CD1D1808E36D5159BN7PR05MB4500namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Hello all - I am trying to transmit a test waveform from an N310 using the =
sample program tx_waveforms. When I set &quot;tx_lo_source=3Dexternal&quot;=
 I get the error below. When I set it to internal, the program runs smoothl=
y, but there is no output. I am supplying an
 external LO at twice the desired output frequency. I am using uhd 4.3.0.0.=
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
./tx_waveforms --args &quot;addr=3D192.168.10.2,master_clock_rate=3D153.6e6=
,tx_lo_source=3Dexternal&quot; --freq 1e9 --gain 10 --bw 1e6 --rate 9.6e6 -=
-subdev &quot;A:1&quot; --channels &quot;0&quot; --wave-freq 100e3
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">Creating the usrp device with: addr=3D192.168=
.10.2,master_clock_rate=3D153.6e6,tx_lo_source=3Dexternal...</div>
<div class=3D"ContentPasted0">[INFO] [UHD] linux; GNU C++ version 7.5.0; Bo=
ost_106501; UHD_4.3.0.HEAD-0-g1f8fd345</div>
<div class=3D"ContentPasted0">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=
=3D3218B5F,name=3Dni-n3xx-3218B5F,fpga=3DHG,claimed=3DFalse,addr=3D192.168.=
10.2,master_clock_rate=3D153.6e6,tx_lo_source=3Dexternal</div>
<div class=3D"ContentPasted0">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DHG,master_clock_rate=3D153.6e6,mgmt_addr=3D192.168.10.=
2,name=3Dni-n3xx-3218B5F,product=3Dn310,tx_lo_source=3Dexternal,clock_sourc=
e=3Dinternal,time_source=3Dinternal'.</div>
<div class=3D"ContentPasted0">[ERROR] [RPC] RuntimeError: MYKONOS_waitInitC=
als() returned an ARM error</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">[ERROR] [MPM.RPCServer] init() failed with er=
ror: RuntimeError: MYKONOS_waitInitCals() returned an ARM error</div>
<div><br class=3D"ContentPasted0">
</div>
Error: RuntimeError: Error during RPC call to `init'. Error message: Runtim=
eError: MYKONOS_waitInitCals() returned an ARM error<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Thanks,
<div>Jonathan</div>
</div>
</body>
</html>

--_000_BN7PR05MB450083ED49C51CD1D1808E36D5159BN7PR05MB4500namp_--

--===============4918083747342478148==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4918083747342478148==--
