Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE66426F80
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 19:21:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4601A385356
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 13:21:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=augustusaerospace.onmicrosoft.com header.i=@augustusaerospace.onmicrosoft.com header.b="goaDV5/p";
	dkim-atps=neutral
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2136.outbound.protection.outlook.com [40.107.94.136])
	by mm2.emwd.com (Postfix) with ESMTPS id 59999384E27
	for <usrp-users@lists.ettus.com>; Fri,  8 Oct 2021 13:20:50 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DS9OS5ZRcQvPGlhoJzR7dSE9wcVRcMa0pfooqO1G2F/XqGpbuxGDWlA1fQ350ApF4dkg2yNVHDvaJzoW/bmdEKcEhvVJxGKiGER8GcxaFeJ2iwTyqUAfodMk6bPUVtnfRaxgUIPjf9tqMoZqzBRsSNnhVqFpjPDz152ONYwpNnsRgLt3dnoCmobImD/pTEluX8MKB9GAhEVKYrmAMIbBkK5OedADOUpHtSQGud1OY4xYlDz5qg1vQBnnO65NdMCoNTRwuhH4+P72ltImgEyPFM9jtLOySQtFpfi05OpzHriKTKbIM6dN0IyOMJxEbA8afeNjTIqlHsIlSGsQTqrJYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1jNwwmwopGDLByLx86swVUY61Fumn3R8CVeJBUWxtwE=;
 b=dUhBajo9bv92HugxCozkrGtQy3Lo2xTI0ELkG8IYYLs1TkxWMl7AgUafBqC4sKa8o034lWimcvN7TThB3kpA5TSC+Cmu2NDBkHyr5tqXaJjO2Y008J5/hUq713sEdegBDXLUvko10Uz6gT7cIEvC+2Vn4nzmDixiJMvZTfrczPPIhI0BlMAI3vme+QHW841GuoJHegKZ3AJiNU33/GAcDUsSV+FzkrAKeBlrR2mRLYLIW2omOn1Oj6Ll2lLrxR8dfgelo63Smd3NLZiFSq1Dc1eADjdgZc2im+1SmNMsYrugxWdyZSyysiU4Xrw/IKEu7RfhER/tad1Uem82qFr9lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augustusaero.com; dmarc=pass action=none
 header.from=augustusaero.com; dkim=pass header.d=augustusaero.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=augustusaerospace.onmicrosoft.com;
 s=selector1-augustusaerospace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1jNwwmwopGDLByLx86swVUY61Fumn3R8CVeJBUWxtwE=;
 b=goaDV5/pkAod8W0n99dNgZevNLnticnvMgJnaGDxBwW7TUKTzKE6fBU4vFi6yOVXqSSk3hmixcmo2g4yVecrswf224qh8v6HJRVjQFG475pON8ntvUTP/xVY3a+qHybHGg+26iMdmWhQkyeZY2m3d3M/WQJ6eyivVryNy5vppgs=
Received: from BN7PR05MB4500.namprd05.prod.outlook.com (2603:10b6:406:fb::28)
 by BN6PR05MB3620.namprd05.prod.outlook.com (2603:10b6:405:42::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.4; Fri, 8 Oct
 2021 17:20:48 +0000
Received: from BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::6475:8813:2550:ba95]) by BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::6475:8813:2550:ba95%7]) with mapi id 15.20.4608.005; Fri, 8 Oct 2021
 17:20:47 +0000
From: Jonathan Tobin <Tobin@augustusaero.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: UHD 3.15 on Windows
Thread-Index: AQHXu7Ffas7XyjJm10iyTMRp/NLduKvH68NQgAFqzgCAAAFkJw==
Date: Fri, 8 Oct 2021 17:20:47 +0000
Message-ID: 
 <BN7PR05MB450021D3944E3B6E1F1CF1F3D5B29@BN7PR05MB4500.namprd05.prod.outlook.com>
References: 
 <BN7PR05MB4500C27C573EBDAB9A2FD998D5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAB__hTQbAiyie8RxsnpE1arSu6sR7Zqxozz4VOpugNK2qSLGMQ@mail.gmail.com>
 <CAB__hTR35saQd6PsoATaN93woLe_0g1Bnq2qoLzPATkZmMnz7A@mail.gmail.com>
 <BN7PR05MB45000A47C92750DDCFEC590CD5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
 <9449daef-bcc9-e996-f0eb-be6d8676f1c6@gmail.com>
 <BN7PR05MB450066DB9ABF262DE0F01C51D5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
 <f69f676c-429d-6bfc-3c8f-e9fe2d576dda@gmail.com>
In-Reply-To: <f69f676c-429d-6bfc-3c8f-e9fe2d576dda@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 070e88cd-d4f0-29ca-95d2-9d0786690f16
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=augustusaero.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3dfd835-37c7-4b0a-bd6e-08d98a7ff833
x-ms-traffictypediagnostic: BN6PR05MB3620:
x-microsoft-antispam-prvs: 
 <BN6PR05MB36209A5FEBAB040735DA7E52D5B29@BN6PR05MB3620.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 8fuUrB58hGQ0A3RF22DGdXDh9ePm/v4CK0mLQFY1qc+enthPREd6mcg4qADmBYtGOrTmubjtSrw5lXKVUmaCMdtU/IIdd30opVEaxj6rPnsOIaWgaR+4vVYfWgt1BmhJ1dL7EHfrW1pAF20bb+iy92stRP4Rgp5AFPqY9xAtc3cvSL1295CS/PFjztwN5R4WyxUknZmyoQafZEhqqqvP28I0+nWxR0ZxDhiuEvqNCHJbO8eaZtQZqbeDNiB/WNxFn7HaujSeu2SuToPfzSIj0Ln6Dnyp9vN9w9Tfsbv4bCfnGsdmWw9SAHFBApitWrxhe9OOmXb/xKnKPgoPpni4AqP2tV2IjgCtcYXBrLM9ez6Ozdwhmt88KEPMiO3EdJPCfwv27SXmFvTLvqj2zvNKGtVB11x8P1dNF9k3TP8QfNIbeWZQ42wf1CWQQ1RnU+ABLMCosmmM3FqDLJwJ/W5UzraEMRWZJm2DG53AhwODsMNoMDbmP2dLpyX9zZyS9mjlPjo5b4VQAylKkwi8GJkg5Ju1dQ/LVtcyZQ+gHB6cC6d89T5WnMCq4LkIEutYbtLHG1GBYWWGrIhEJqSP0jC/NjlbN32xo6qxPa53jzo0aHs8GCohAzK5dP1RlATqcYYtMIUlp4jbIrKFbqQilImA8Vc6u2+lvWOLpDiN+CMC0emLoi1gLn3opIx4lVCeQtH4kIx8iVAqogh7FWpXdQWJfiskWxqOgf6m88RxMJcF5H0iVtngp0e05di18NahRycyqWyELiEiLIddZ4JkAikdf5PSFhMVSebeWtbZujloCMc=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR05MB4500.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(39830400003)(42606007)(136003)(376002)(396003)(346002)(9686003)(186003)(33656002)(83380400001)(6506007)(122000001)(53546011)(26005)(38070700005)(38100700002)(99936003)(7696005)(71200400001)(55016002)(52536014)(8676002)(166002)(8936002)(508600001)(45080400002)(30864003)(66556008)(5660300002)(110136005)(2906002)(966005)(76116006)(66476007)(66946007)(64756008)(66446008)(316002)(86362001)(91956017)(579004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?rr7zjudXeuNUByzZ+tE6FLva3OLT1wpsGrI3C0WBw+GscI6dw/eqRFVu?=
 =?Windows-1252?Q?Xk7W4OrjG9nBR8COtjQkpuDNJW3E3MDFH0UzaltYaHcnfN7zlOoYNgr7?=
 =?Windows-1252?Q?RZiGUlICe1ykdC7Ds5wObVb2rDSZdd/15utHDJqXpUDjiXZtGHawfzdO?=
 =?Windows-1252?Q?TBUUSc6iL/IdTDjrRswgglgFCXWO3DdGEh0Rocgx7lEu2aY2T1+dkUOZ?=
 =?Windows-1252?Q?CzvuKDnIp/RRLUR1dVRJ8U9QvNLLKm25lRux5o8wzB7nvCUCVvJ6C351?=
 =?Windows-1252?Q?hsd2vrkXhgdil4qXVWvtDjhjnhNQLdcrRVKFT8AeszHCnVorKiNs+9c6?=
 =?Windows-1252?Q?sImOrs9E4Jq5NjuRPLQ48SEkfFAm/vCeOzW/XOgDfnuM8OCYiSleavQB?=
 =?Windows-1252?Q?epWEfXE9M4DS9KLebqx5QsFgfnxl+wbInHSQC4+KpBMWsbiJrxogmnK3?=
 =?Windows-1252?Q?Sf8439lWXYb8n4XekeMk0N/36sxNqxeD+/mwFWf+eqE9igakZQEQHoIs?=
 =?Windows-1252?Q?HXU79EfVOUqbyNYMBfv1VdIDSfPvXp1OyYHYjczs83TGdJ8lfTu3wQN1?=
 =?Windows-1252?Q?+W9pxIsAqsDyMgAx3CoXliNTfRCkc9v9JDfJDeXq/sb6Se0wKHe3RYqM?=
 =?Windows-1252?Q?W/ByRoFF2GJn3yYSoDbfDZ/HkR4+8tw37e/mQoWVOKEdukpfDDDShP9C?=
 =?Windows-1252?Q?e3xAsTQ3JxLd/UWcz8giDpNus5AGqLK/O9Yn6ZltQ92h1+MLLKe5xW5R?=
 =?Windows-1252?Q?ZNhrcPUckm3+fmrrhAgkTJrx1Q/eev3X2PGEa6PklQFPOtE/ur7N66/C?=
 =?Windows-1252?Q?7rNXQBrg2fGVvA4aU4PCQ4q0aWXnTPiSVtNU+vDBTRUqsrChTvCWjb1v?=
 =?Windows-1252?Q?noEl26blxNF1QuyoJelcS6xUn03YY51nLlaejGyo8O5t5KmZ5t1w8MMx?=
 =?Windows-1252?Q?J4fziy5rDF1/p39YjJStymxhXy7JCV7T+ALMgsboF46kKtD8FQQ/TNWn?=
 =?Windows-1252?Q?RAP3qpLzVg4aOQuSBeZ+z+66TF6Yf0G42387Mzb1zNJ3Ap+0cY3czCu8?=
 =?Windows-1252?Q?7Di1d6RlI4GCWqSwikOYdO3s6ocx6GBYheBQcWpz0Ss5YTlZohXEfIz9?=
 =?Windows-1252?Q?cf0RN9HNv1ZE09IHusVj3OQDIULF9vvHSylGbRshx3xnxuhagvMdDU/T?=
 =?Windows-1252?Q?08qAG9kv+Bipe5hLMUfEEjTCfFc4MtuJpMvHfR/+LqAEQ4pBnEy7Qws6?=
 =?Windows-1252?Q?aeG9z/LBH+LId7k7NdKCw5HL2bbXheDJJsRaWAyqhtLq+weoZ3ReKLRH?=
 =?Windows-1252?Q?1tKn4qWJgqw3f+yUrMqMgtK1i2vm8siL8akvaqfF/rJfQnN1uMKOjxMn?=
 =?Windows-1252?Q?q9tb1A2ZZKrbaMRxeTeYcEpYiYVxZ0l93EGCRjzrZs66aQkp9mM/wCvS?=
 =?Windows-1252?Q?4dXbeYftOxA/gHrzIUZkBw=3D=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: augustusaero.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR05MB4500.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3dfd835-37c7-4b0a-bd6e-08d98a7ff833
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2021 17:20:47.7526
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04d66077-4301-4950-bf2c-c3d5b922ae52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oP/YRnjnFNtHrj1SNTPEAY2NI+CuOP5Zgu0peQiT8I3x5tqs73Wpx3W491shwVMFdOKEAoCqbaLx3hkx6zXP0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR05MB3620
Message-ID-Hash: ETNN5DEI3V5DDNGGHKRXFGD6O5RJCBKK
X-Message-ID-Hash: ETNN5DEI3V5DDNGGHKRXFGD6O5RJCBKK
X-MailFrom: Tobin@augustusaero.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 3.15 on Windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WYNQYNCOT6JVL3K2A5BZR5KNZAQE2XGZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4394731973755805149=="

--===============4394731973755805149==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_BN7PR05MB450021D3944E3B6E1F1CF1F3D5B29BN7PR05MB4500namp_";
	type="multipart/alternative"

--_004_BN7PR05MB450021D3944E3B6E1F1CF1F3D5B29BN7PR05MB4500namp_
Content-Type: multipart/alternative;
	boundary="_000_BN7PR05MB450021D3944E3B6E1F1CF1F3D5B29BN7PR05MB4500namp_"

--_000_BN7PR05MB450021D3944E3B6E1F1CF1F3D5B29BN7PR05MB4500namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Sure. Find device still displays =96 reachable: no.

Here is the output from using a host running Windows:

C:\Program Files\UHD3\bin>uhd_find_devices
[INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200; UHD_3.=
15.0.HEAD-0-gaea0e2de
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 3218B5F
    claimed: False
    mgmt_addr: 192.168.10.2
    product: n310
    reachable: No
    type: n3xx

C:\Program Files\UHD3\bin>uhd_usrp_probe
[INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200; UHD_3.=
15.0.HEAD-0-gaea0e2de
[INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD sess=
ion. Specify find_all to find all devices.
Error: LookupError: KeyError: No devices found for ----->
Empty Device Address

C:\Program Files\UHD3\bin>uhd_usrp_probe --args "addr=3D192.168.10.2,type=
=3Dn3xx,product=3Dn310"
[INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200; UHD_3.=
15.0.HEAD-0-gaea0e2de
[ERROR] [UHD] Device discovery error: send_to: A socket operation was attem=
pted to an unreachable host
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    addr: 192.168.10.2
    type: n3xx
    product: n310


Here is the output from using a host running Linux:

jonathan@bob-XPS-8930:/home/bob/sdr_setup$ uhd_find_devices
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_106501; UHD_3.15.0.0-65-g1=
b60cf86
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 3218B5F
    addr: 192.168.10.2
    claimed: False
    mgmt_addr: 192.168.10.2
    product: n310
    type: n3xx


jonathan@bob-XPS-8930:/home/bob/sdr_setup$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_106501; UHD_3.15.0.0-65-g1=
b60cf86
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFalse,add=
r=3D192.168.10.2
[INFO] [MPM.main] Launching USRP/MPM, version: 3.15.0.0-gaea0e2de
[INFO] [MPM.main] Spawning RPC process...
[INFO] [MPM.PeriphManager] Device serial number: 3218B5F
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Di=
nternal,time_source=3Dinternal'.
[INFO] [MPM.RPCServer] RPC server ready!
[INFO] [MPM.RPCServer] Spawning watchdog task...
[INFO] [MPM.PeriphManager] init() called with device args `product=3Dn310,c=
lock_source=3Dinternal,mgmt_addr=3D192.168.10.2,time_source=3Dinternal'.
[INFO] [0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
  _____________________________________________________
 /
|       Device: N300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-n3xx-3218B5F
|   |   eeprom_version: 3
|   |   mpm_version: 3.15.0.0-gaea0e2de
|   |   pid: 16962
|   |   product: n310
|   |   rev: 10
|   |   rpc_connection: remote
|   |   serial: 3218B5F
|   |   type: n3xx
|   |   MPM Version: 1.2
|   |   FPGA Version: 5.3
|   |   FPGA git hash: fde2a94.clean
|   |   RFNoC capable: Yes
|   |
|   |   Time sources:  internal, external, gpsdo, sfp0
|   |   Clock sources: external, internal, gpsdo
|   |   Sensors: gps_sky, gps_locked, ref_locked, temp, gps_tpv, gps_time, =
fan, gps_gpgga
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 1
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: A
|   |   |   |   Name: AD9371 Dual ADC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: B
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 1
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX, RX2, CAL, LOCAL
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 75.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: B
|   |   |   |   Name: AD9371 Dual ADC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: A
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 1
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: A
|   |   |   |   Name: AD9371 Dual DAC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: B
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 1
|   |   |   |   Name: Magnesium
|   |   |   |   Antennas: TX/RX
|   |   |   |   Sensors: lo_locked, lowband_lo_locked, ad9371_lo_locked
|   |   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 65.0 step 0.5 dB
|   |   |   |   Gain range rfic: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range dsa: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Gain range amp: 0.0 to 0.0 step 0.0 dB
|   |   |   |   Bandwidth range: 20000000.0 to 100000000.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: B
|   |   |   |   Name: AD9371 Dual DAC
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       RFNoC blocks on this device:
|   |   |
|   |   |   * Replay_0
|   |   |   * Radio_0
|   |   |   * Radio_1
|   |   |   * DDC_0
|   |   |   * DDC_1
|   |   |   * DUC_0
|   |   |   * DUC_1
|   |   |   * FIFO_0
|   |   |   * FIFO_1
|   |   |   * FIFO_2
|   |   |   * FIFO_3


From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Friday, October 8, 2021 11:07 AM
To: Jonathan Tobin <Tobin@augustusaero.com>; usrp-users@lists.ettus.com <us=
rp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: UHD 3.15 on Windows

On 2021-10-08 1:02 p.m., Jonathan Tobin wrote:

It does indeed fail. I updated the image on the N310, but the issue remains=
 the same.



Thanks,

Jonathan
Could you share with us the output of the (newly) failing uhd_usrp_probe?

And you confirm that the SAME device works from Linux under the same physic=
al configuration?






From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Thursday, October 7, 2021 1:27 PM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: UHD 3.15 on Windows



On 2021-10-07 2:31 p.m., Jonathan Tobin wrote:

I am only connected to the USRP via ethernet to SFP+0 port.



I have no problems with a Linux Host running 3.15.



Yup, so try:

uhd_usrp_probe --args addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310

If that *still* fails, then you probably have a much-older image on the N31=
0, and should follow the directions for updating it:

https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card




From: Rob Kossler <rkossler@nd.edu><mailto:rkossler@nd.edu>
Sent: Thursday, October 7, 2021 11:56 AM
To: Jonathan Tobin <Tobin@augustusaero.com><mailto:Tobin@augustusaero.com>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD 3.15 on Windows



Also, does the N310 have the 3.15 file system / MPM installed?



On Thu, Oct 7, 2021 at 1:54 PM Rob Kossler <rkossler@nd.edu<mailto:rkossler=
@nd.edu>> wrote:

Perhaps you are just finding the address of the N310 RJ45 Ethernet port, bu=
t not the address of the SFP+ ports? These are needed for UHD (at least one=
 of them). Are you only connected via 1GB?  Do you have a direct link betwe=
en host PC and one of the SFP+ ports?

Rob



On Thu, Oct 7, 2021 at 1:37 PM Jonathan Tobin <Tobin@augustusaero.com<mailt=
o:Tobin@augustusaero.com>> wrote:

Hello =96 I am attempting to install UHD 3.15 on my Windows 10 PC. I am abl=
e to ping and find the device, but currently unable to probe. Not sure what=
 the issue is =96 any recommendations?



Command Prompt output:



C:\Program Files\UHD3\bin>uhd_find_devices

[INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200; UHD_3.=
15.0.HEAD-0-gaea0e2de

--------------------------------------------------

-- UHD Device 0

--------------------------------------------------

Device Address:

    serial: 3218B5F

    claimed: False

    mgmt_addr: 192.168.10.2

    product: n310

    reachable: No

    type: n3xx



C:\Program Files\UHD3\bin>uhd_usrp_probe

[INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200; UHD_3.=
15.0.HEAD-0-gaea0e2de

[INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD sess=
ion. Specify find_all to find all devices.

Error: LookupError: KeyError: No devices found for ----->

Empty Device Address





Thanks,

Jonathan





_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>



_______________________________________________

USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>

To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>




--_000_BN7PR05MB450021D3944E3B6E1F1CF1F3D5B29BN7PR05MB4500namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
p.xmsonormal, li.xmsonormal, div.xmsonormal
	{mso-style-name:x_msonormal;
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Sure. F=
ind device still displays =96 reachable: no.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:12.0pt;color:black">Here=
 is the output from using a host running Windows:</span></b><span style=3D"=
font-size:12.0pt;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal">C:\Program Files\UHD3\bin&gt;uhd_find_devices<o:p></=
o:p></p>
<p class=3D"MsoNormal">[INFO] [UHD] Win32; Microsoft Visual C++ version 14.=
2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------------------------------<o=
:p></o:p></p>
<p class=3D"MsoNormal">-- UHD Device 0<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------------------------------<o=
:p></o:p></p>
<p class=3D"MsoNormal">Device Address:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; serial: 3218B5F<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; claimed: False<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; &nbsp;&nbsp;mgmt_addr: 192.168.10.2<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; product: n310<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; reachable: No<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; type: n3xx<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">C:\Program Files\UHD3\bin&gt;uhd_usrp_probe<o:p></o:=
p></p>
<p class=3D"MsoNormal">[INFO] [UHD] Win32; Microsoft Visual C++ version 14.=
2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [MPMD FIND] Found MPM devices, but none are r=
eachable for a UHD session. Specify find_all to find all devices.<o:p></o:p=
></p>
<p class=3D"MsoNormal">Error: LookupError: KeyError: No devices found for -=
----&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">Empty Device Address<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal">C:\Program Files\UHD3\bin&gt;uhd_usrp_probe --args &=
quot;addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO] [UHD] Win32; Microsoft Visual C++ version 14.=
2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o:p></p>
<p class=3D"MsoNormal">[ERROR] [UHD] Device discovery error: send_to: A soc=
ket operation was attempted to an unreachable host<o:p></o:p></p>
<p class=3D"MsoNormal">Error: LookupError: KeyError: No devices found for -=
----&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">Device Address:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; addr: 192.168.10.2<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; type: n3xx<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; product: n310<span style=3D"font-=
size:12.0pt;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"font-size:12.0pt;color:black">Here=
 is the output from using a host running Linux:</span></b><span style=3D"fo=
nt-size:12.0pt;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">jonatha=
n@bob-XPS-8930:/home/bob/sdr_setup$ uhd_find_devices
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[UHD] linux; GNU C++ version 9.4.0; Boost_106501; UHD_3.15.0.0-65-g1b60cf86=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">-------=
-------------------------------------------<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">-- UHD =
Device 0<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">-------=
-------------------------------------------<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Device =
Address:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; serial: 3218B5F<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; addr: 192.168.10.2<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; claimed: False<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; mgmt_addr: 192.168.10.2<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; product: n310<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
&nbsp; type: n3xx<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">jonatha=
n@bob-XPS-8930:/home/bob/sdr_setup$ uhd_usrp_probe<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[UHD] linux; GNU C++ version 9.4.0; Boost_106501; UHD_3.15.0.0-65-g1b60cf86=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D192.168.=
10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,claimed=3DFalse,addr=3D192=
.168.10.2<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[MPM.main] Launching USRP/MPM, version: 3.15.0.0-gaea0e2de<o:p></o:p></span=
></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[MPM.main] Spawning RPC process...<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[MPM.PeriphManager] Device serial number: 3218B5F<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[MPM.PeriphManager] Initialized 2 daughterboard(s).<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[MPM.PeriphManager] init() called with device args `clock_source=3Dinternal=
,time_source=3Dinternal'.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[MPM.RPCServer] RPC server ready!<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[MPM.RPCServer] Spawning watchdog task...<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[MPM.PeriphManager] init() called with device args `product=3Dn310,clock_so=
urce=3Dinternal,mgmt_addr=3D192.168.10.2,time_source=3Dinternal'.<o:p></o:p=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/Replay_0] Initializing block control (NOC ID: 0x4E91A00000000004)<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/Radio_0] Initializing block control (NOC ID: 0x12AD100000011312)<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/Radio_1] Initializing block control (NOC ID: 0x12AD100000011312)<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<o:p></o:p=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)<o:p></o:p=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)<o:p></o:p=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000002)<o:p></o:p=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)<o:p></o:=
p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)<o:p></o:=
p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)<o:p></o:=
p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">[INFO] =
[0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)<o:p></o:=
p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp; =
_____________________________________________________<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">&nbsp;/=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; &nbsp; &nbsp; Device: N300-Series Device<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; &nbsp; _____________________________________________________<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; &nbsp; &nbsp; Mboard: ni-n3xx-3218B5F<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; eeprom_version: 3<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; mpm_version: 3.15.0.0-gaea0e2de<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; pid: 16962<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; product: n310<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; rev: 10<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; rpc_connection: remote<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; serial: 3218B5F<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; type: n3xx<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; MPM Version: 1.2<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; FPGA Version: 5.3<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; FPGA git hash: fde2a94.clean<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; RFNoC capable: Yes<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; <o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; Time sources: &nbsp;internal, external, gpsdo, sfp0<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; Clock sources: external, internal, gpsdo<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; Sensors: gps_sky, gps_locked, ref_locked, temp, gps_tpv, gps_tim=
e, fan, gps_gpgga<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; &nbsp; _____________________________________________________<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Dboard: A<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; ________________________________________________=
_____<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 0<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Name: Magnesium<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX, RX2, CAL, LOCAL<o:p></o:p></s=
pan></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked, lowband_lo_locked, ad9371_=
lo_locked<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Freq range: 1.000 to 6000.000 MHz<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range all: 0.0 to 75.0 step 0.5 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 100000000.0 ste=
p 0.0 Hz<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; ________________________________________________=
_____<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 1<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Name: Magnesium<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX, RX2, CAL, LOCAL<o:p></o:p></s=
pan></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked, lowband_lo_locked, ad9371_=
lo_locked<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Freq range: 1.000 to 6000.000 MHz<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range all: 0.0 to 75.0 step 0.5 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 100000000.0 ste=
p 0.0 Hz<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; ________________________________________________=
_____<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Codec: A<o:p></o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Name: AD9371 Dual ADC<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain Elements: None<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; &nbsp; _____________________________________________________<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Dboard: B<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; ________________________________________________=
_____<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 0<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Name: Magnesium<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX, RX2, CAL, LOCAL<o:p></o:p></s=
pan></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked, lowband_lo_locked, ad9371_=
lo_locked<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Freq range: 1.000 to 6000.000 MHz<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range all: 0.0 to 75.0 step 0.5 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 100000000.0 ste=
p 0.0 Hz<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; ________________________________________________=
_____<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 1<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Name: Magnesium<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX, RX2, CAL, LOCAL<o:p></o:p></s=
pan></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked, lowband_lo_locked, ad9371_=
lo_locked<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Freq range: 1.000 to 6000.000 MHz<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range all: 0.0 to 75.0 step 0.5 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 100000000.0 ste=
p 0.0 Hz<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; ________________________________________________=
_____<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Codec: B<o:p></o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Name: AD9371 Dual ADC<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain Elements: None<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; &nbsp; _____________________________________________________<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Dboard: A<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; ________________________________________________=
_____<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 0<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Name: Magnesium<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked, lowband_lo_locked, ad9371_=
lo_locked<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Freq range: 1.000 to 6000.000 MHz<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range all: 0.0 to 65.0 step 0.5 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 100000000.0 ste=
p 0.0 Hz<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; ________________________________________________=
_____<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 1<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Name: Magnesium<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked, lowband_lo_locked, ad9371_=
lo_locked<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Freq range: 1.000 to 6000.000 MHz<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range all: 0.0 to 65.0 step 0.5 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 100000000.0 ste=
p 0.0 Hz<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; ________________________________________________=
_____<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Codec: A<o:p></o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Name: AD9371 Dual DAC<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain Elements: None<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; &nbsp; _____________________________________________________<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Dboard: B<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; ________________________________________________=
_____<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 0<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Name: Magnesium<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked, lowband_lo_locked, ad9371_=
lo_locked<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Freq range: 1.000 to 6000.000 MHz<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range all: 0.0 to 65.0 step 0.5 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 100000000.0 ste=
p 0.0 Hz<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; ________________________________________________=
_____<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 1<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Name: Magnesium<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked, lowband_lo_locked, ad9371_=
lo_locked<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Freq range: 1.000 to 6000.000 MHz<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range all: 0.0 to 65.0 step 0.5 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range rfic: 0.0 to 0.0 step 0.0 dB<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range dsa: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain range amp: 0.0 to 0.0 step 0.0 dB<o:p></o=
:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 100000000.0 ste=
p 0.0 Hz<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Connection Type: IQ<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Uses LO offset: No<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; ________________________________________________=
_____<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Codec: B<o:p></o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Name: AD9371 Dual DAC<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; | &nbsp; Gain Elements: None<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; &nbsp; _____________________________________________________<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; &nbsp;/<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; &nbsp; &nbsp; RFNoC blocks on this device:<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; <o:p>
</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; * Replay_0<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; * Radio_0<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; * Radio_1<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; * DDC_0<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; * DDC_1<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; * DUC_0<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; * DUC_1<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; * FIFO_0<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; * FIFO_1<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; * FIFO_2<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">| &nbsp=
; | &nbsp; | &nbsp; * FIFO_3<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><img width=3D"278" height=3D"2" style=3D"width:2.891=
6in;height:.0208in" id=3D"Horizontal_x0020_Line_x0020_1" src=3D"cid:image00=
2.png@01D7BC36.89D82A20"><o:p></o:p></p>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"color:black">From:</span></b><span=
 style=3D"color:black"> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Friday, October 8, 2021 11:07 AM<br>
<b>To:</b> Jonathan Tobin &lt;Tobin@augustusaero.com&gt;; usrp-users@lists.=
ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: UHD 3.15 on Windows</span> <o:p></o:p>=
</p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal">On 2021-10-08 1:02 p.m., Jonathan Tobin wrote:<o:p><=
/o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"xmsonormal">It does indeed fail. I updated the image on the N31=
0, but the issue remains the same.</p>
<p class=3D"xmsonormal">&nbsp;</p>
<p class=3D"xmsonormal">Thanks,</p>
<p class=3D"xmsonormal">Jonathan</p>
</div>
</blockquote>
<p class=3D"MsoNormal">Could you share with us the output of the (newly) fa=
iling uhd_usrp_probe?<br>
<br>
And you confirm that the SAME device works from Linux under the same physic=
al configuration?<br>
<br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"xmsonormal"><a name=3D"x__MailEndCompose">&nbsp;</a></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"xmsonormal"><a name=3D"x__MailOriginal"><b>From:</b></a> Marcus=
 D. Leech <a href=3D"mailto:patchvonbraun@gmail.com">
&lt;patchvonbraun@gmail.com&gt;</a> <br>
<b>Sent:</b> Thursday, October 7, 2021 1:27 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Subject:</b> [USRP-users] Re: UHD 3.15 on Windows</p>
</div>
</div>
<p class=3D"xmsonormal">&nbsp;</p>
<div>
<p class=3D"xmsonormal">On 2021-10-07 2:31 p.m., Jonathan Tobin wrote:</p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"xmsonormal">I am only connected to the USRP via ethernet to SFP=
+0 port. &nbsp;</p>
<p class=3D"xmsonormal">&nbsp;</p>
<p class=3D"xmsonormal">I have no problems with a Linux Host running 3.15.<=
/p>
<p class=3D"xmsonormal">&nbsp;</p>
</blockquote>
<p class=3D"xmsonormal" style=3D"margin-bottom:12.0pt">Yup, so try:<br>
<br>
uhd_usrp_probe --args addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310<br>
<br>
If that *still* fails, then you probably have a much-older image on the N31=
0, and should follow the directions for updating it:<br>
<br>
<a href=3D"https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_=
a_SD_Card">https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_=
a_SD_Card</a><br>
<br>
<br>
<br>
</p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"xmsonormal"><b>From:</b> Rob Kossler <a href=3D"mailto:rkossler=
@nd.edu">&lt;rkossler@nd.edu&gt;</a>
<br>
<b>Sent:</b> Thursday, October 7, 2021 11:56 AM<br>
<b>To:</b> Jonathan Tobin <a href=3D"mailto:Tobin@augustusaero.com">&lt;Tob=
in@augustusaero.com&gt;</a><br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Subject:</b> Re: [USRP-users] UHD 3.15 on Windows</p>
</div>
<p class=3D"xmsonormal">&nbsp;</p>
<div>
<p class=3D"xmsonormal">Also, does the N310 have the 3.15 file system / MPM=
 installed?</p>
</div>
<p class=3D"xmsonormal">&nbsp;</p>
<div>
<div>
<p class=3D"xmsonormal">On Thu, Oct 7, 2021 at 1:54 PM Rob Kossler &lt;<a h=
ref=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:</p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"xmsonormal" style=3D"margin-left:40.8pt">Perhaps you are just f=
inding the address of the N310 RJ45 Ethernet port, but not the address of t=
he SFP+ ports? These are needed for UHD (at least one of them). Are you onl=
y connected via 1GB?&nbsp; Do you have a
 direct&nbsp;link between host PC and one of the SFP+ ports?</p>
<div>
<p class=3D"xmsonormal" style=3D"margin-left:40.8pt">Rob</p>
</div>
</div>
<p class=3D"xmsonormal" style=3D"margin-left:40.8pt">&nbsp;</p>
<div>
<div>
<p class=3D"xmsonormal" style=3D"margin-left:40.8pt">On Thu, Oct 7, 2021 at=
 1:37 PM Jonathan Tobin &lt;<a href=3D"mailto:Tobin@augustusaero.com" targe=
t=3D"_blank">Tobin@augustusaero.com</a>&gt; wrote:</p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-=
bottom:5.0pt">
<div>
<div>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">Hello =96 I am attempt=
ing to install UHD 3.15 on my Windows 10 PC. I am able to ping and find the=
 device, but currently unable to probe. Not sure what the issue is =96 any =
recommendations?</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">&nbsp;</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">Command Prompt output:=
</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">&nbsp;</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">C:\Program Files\UHD3\=
bin&gt;uhd_find_devices</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">[INFO] [UHD] Win32; Mi=
crosoft Visual C++ version 14.2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<=
/p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">----------------------=
----------------------------</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">-- UHD Device 0</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">----------------------=
----------------------------</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">Device Address:</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">&nbsp;&nbsp;&nbsp; ser=
ial: 3218B5F</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">&nbsp;&nbsp;&nbsp; cla=
imed: False</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">&nbsp; &nbsp;&nbsp;mgm=
t_addr: 192.168.10.2</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">&nbsp;&nbsp;&nbsp; pro=
duct: n310</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">&nbsp;&nbsp;&nbsp; rea=
chable: No</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">&nbsp;&nbsp;&nbsp; typ=
e: n3xx</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">&nbsp;</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">C:\Program Files\UHD3\=
bin&gt;uhd_usrp_probe</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">[INFO] [UHD] Win32; Mi=
crosoft Visual C++ version 14.2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<=
/p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">[INFO] [MPMD FIND] Fou=
nd MPM devices, but none are reachable for a UHD session. Specify find_all =
to find all devices.</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">Error: LookupError: Ke=
yError: No devices found for -----&gt;</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">Empty Device Address</=
p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">&nbsp;</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">&nbsp;</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">Thanks,</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">Jonathan</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">&nbsp;</p>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">&nbsp;</p>
</div>
</div>
<p class=3D"xmsonormal" style=3D"margin-left:45.6pt">______________________=
_________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a></p>
</blockquote>
</div>
</div>
</blockquote>
</div>
<p class=3D"xmsonormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p=
>
<pre>_______________________________________________</pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com">usrp-users-leave@lists.ettus.com</a></pre>
</blockquote>
<p class=3D"xmsonormal">&nbsp;</p>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN7PR05MB450021D3944E3B6E1F1CF1F3D5B29BN7PR05MB4500namp_--

--_004_BN7PR05MB450021D3944E3B6E1F1CF1F3D5B29BN7PR05MB4500namp_
Content-Type: image/png; name="70B998830A7E499EA2C7737370EE868B.png"
Content-Description: 70B998830A7E499EA2C7737370EE868B.png
Content-Disposition: inline; filename="70B998830A7E499EA2C7737370EE868B.png";
	size=190; creation-date="Fri, 08 Oct 2021 17:20:47 GMT";
	modification-date="Fri, 08 Oct 2021 17:20:47 GMT"
Content-ID: <image002.png@01D7BC36.89D82A20>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAArYAAAAFCAYAAACwwq8eAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAABTSURBVGhD7dhBDYBADEXBlY4xtgJIBbCIgWzP
GGgyL5lDHfx0nNd9AABAdyPyeQEAoLsatjNX/K1eAADoYO/ZGrb7GJIkSVLTas/62AIA0N3MFR+w
ca2F6etB6AAAAABJRU5ErkJggg==

--_004_BN7PR05MB450021D3944E3B6E1F1CF1F3D5B29BN7PR05MB4500namp_--

--===============4394731973755805149==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4394731973755805149==--
