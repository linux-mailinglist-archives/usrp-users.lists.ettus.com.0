Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA60D4A70CF
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 13:31:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2FAE3853D8
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 07:31:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="KV5rDBdT";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.164])
	by mm2.emwd.com (Postfix) with ESMTPS id 67B55385206
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 07:30:10 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.171])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id C80DC120067;
	Wed,  2 Feb 2022 12:30:08 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2171.outbound.protection.outlook.com [104.47.57.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 962B89C007D;
	Wed,  2 Feb 2022 12:30:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b9pATs2zYlr3ggVP0mfpro1mutKR08xJoyWQ4cErm6g6rhxfGyCjxBR5kngxtzwBQnh77TcGYyQFr5wGUrN3dqikTE9DblqbRJOb6v81ks8sBX6RM1x8HXPe5YCdTiRWGzqkzCV++r4rcQ5tyu+1SHgjkGzTm62/a6XaJn3LjQAx+rHA0hcDjMiH6AgFR0g7tinJmgVzbC5QS3ssdwl9CFe3RfyOFl2Vi612fszk8upiUprAMHp5WPfZp5g7lg1W6dgD7ZkSyxsRaw+MMt/u6N1h6gZ8J5iYWmt31pxVbw+1kuKoVgLtoQeT1+rm3MOnvsdM6cIgmWDj9AFcZWLvrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=je34E0VwHv3znrO6usIiYYd40xmz8cKU10wbiAid938=;
 b=WiB7qmGdQzTltYPePzPWGBa9fVDj8WYxarCZ8feTUaUSrmjtqtzoy0mnMNQ1bYZixMr2lUch+PSqRTfKppY6UXgiEaBAU3CXpQgYLvRJfvynKtCCa7wmeEVoz7JkoI0nf+q1ABXyo1AD5nbtLhTyG8ub1yg/ShnYHcU87KEyS+vn4xyAtlZFQTX8ifVkWhTZ8kGw3pLuUFYoJ8hymQstND3Dlu5PLoZOmehvWnKbfx2br0icHqw+QcdLBs8uLDDs/q1Km3kgwX1yyXGwLYWyM8qR+bXD54QJh3p4Y+fE9bjSpP6wbk4mn8cq78+4v6f1bzVz9urVo8bhRa+yu1FZXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=je34E0VwHv3znrO6usIiYYd40xmz8cKU10wbiAid938=;
 b=KV5rDBdT1Zz1IyLcbc3PoWYeTd1orMlKgb2hj8UFy6dfZKkxkscOR93lic7N5TxF71Ms/g3SAC0+35IfScDG9yGNB0wv/REqZDb7I2VwHiphkfjVkt7KLCAi3EdW3geflXLRJplVs+i+/i7nAyRcn/fX1VKb6CpNE1Mn2E3uqrg=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by BL1PR12MB5285.namprd12.prod.outlook.com (2603:10b6:208:31f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Wed, 2 Feb
 2022 12:30:07 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::d47b:d01d:d9da:4ccf%6]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 12:30:07 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "USRP-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Timed Commands Not Working
Thread-Index: AQHYF5tb715UD5NcGUSH5wmFASi3eKx/DJOAgAABTguAAAKNgIABHYZZ
Date: Wed, 2 Feb 2022 12:30:07 +0000
Message-ID: 
 <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
In-Reply-To: <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27ad12bc-0edd-4e2e-981c-08d9e647bf00
x-ms-traffictypediagnostic: BL1PR12MB5285:EE_
x-microsoft-antispam-prvs: 
 <BL1PR12MB5285A1010C6B021A4E7198EAB8279@BL1PR12MB5285.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 K+AWJJLspcwrBZpkNoAxHmKygoM6n9rSEswTYiRk2OT6cxop2cDhc9XES5BjLW0QlhQ7ALhVyJCZoWEoIqgfFzdOq3bp57bpeZlhCBu+9vyKIlq/6xwMBaFvPthZCMZL8f56UCoOZcqMKIUxvDK6Hw2uA/bXEYmWM3n/hYDYkyDP09Gi2ZGxxkpZNfLnhbOAxjaPs+V3OXPNWr4Ut4wcovf0ZtgLgRbQOgHkZaNdT10nBvikgimiu+LTH2dufZcm6jnLbIbUB3AwBGcv6c9RGB8ytp+ChJ4eBQ+Xnd83u7Hci4pAHDAGDikAW3hEopDVejDLuFtUF5QnlbzRnWNZfcdQQ7drd7PoVKo2V6UZlseAFrQG0n5rhJQF7pSJg+YQWyLDgWk6t53rD68Duh+cIrpEkdOOkMyev7I7EejOjjkVsbUyPVLboqnEmZhxYXFPZaXKXZ5sYbIJhklQDywMDYFXKCw8h4+OSVKVtYalhZKeMpzRuDkusdBUg2Wh3irOoKhmqu1eh+p4ilncGTrKv+8geDWCmj4AR7LgQODtkS5dcXhXNyKUzU2JIf0ESsBk5DfpvOOmiuxC599M9j3K7pmaGejhrdW2V0+dFl9KkiHYQFxmhmTGzFbYr1cULkRZ5Q5dSCtg19wHy4nguD3QxJ9hUeDTs4C2v/yFZAqB5iy8oItkcQJqTfvQXlmj/WrTsXsG2xhjCdg2x4Knr5HkA+V8CG7SvclMSkNc4mEUQl9vvJrqg3Slo10xBIqHI4Tny0Vfkbbaqjbv0sQNkd6MKGjmYXNxvyYBstkvkMuzSGg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(136003)(346002)(39830400003)(396003)(376002)(122000001)(2906002)(5660300002)(166002)(38100700002)(508600001)(30864003)(52536014)(8936002)(55016003)(66476007)(66556008)(8676002)(7696005)(76116006)(66946007)(33656002)(83380400001)(64756008)(66446008)(966005)(38070700005)(6506007)(26005)(186003)(9686003)(53546011)(316002)(19627405001)(110136005)(71200400001)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?uo4AftiUJeSzqElUZRjkEXLxfbputKvpQc1llSVSPX3b5dc8mVhfxKWL/x7u?=
 =?us-ascii?Q?S50CgZ3LLm/G8wPOvIe+/Y6SLbfVsszcOkxmkSdle02NwOSGO6/J7wLRJWpP?=
 =?us-ascii?Q?OhPTNrkm7VnXpyrE3QOVrWCuop9CfgWxp+9rh6Hy1Eujdy9r9eeNPfl9sZJ6?=
 =?us-ascii?Q?AznXicBMIjhRdy/MBAFbBhPJ+tFmXH+b8gel24zc+P8ygJ+vHjeR+S6+mUwx?=
 =?us-ascii?Q?FI7zW16rpwjw1RsKBvaZndyNH14kfkctQS+pfc9ZTrs88RD4PtGTWBsTYLg7?=
 =?us-ascii?Q?gZictd5odegpRJBMAx/AQwWseeOrYqvz2VV3kN9EvNqHYPxSN2Ykvm81RBcQ?=
 =?us-ascii?Q?5tVD/9siJveSEXujd3a1Mz5wpKQY05ZkjfS6lr+maQ59s+fx28BygG1xbqzH?=
 =?us-ascii?Q?q/gH+oto0XK4WAvLcJKcjIXpbgJkf/m0eW2KNZ6PbJKt0KFDAV+TXSYBF2oU?=
 =?us-ascii?Q?pDPdM4ftOg1kdX/RNf2f/h9JUI+PRa90F0RlvyIFcmumTl9yUNeNMY5qhqtg?=
 =?us-ascii?Q?F+hUVxanNGNSNIgzRMGuco7lduumBpN+wrwUvMiAtBOSDAVcV60aB8yscmt4?=
 =?us-ascii?Q?oEisNnJZhFJcySsBS4CZ6TSTNlcjGNGF+MpdSzVXV22B+eKvH1xPOxwavUai?=
 =?us-ascii?Q?ba2+vLWSxjPZxzsFiMDV/ce3rldkhd8Ja3gQQKJBZuv3JA6Vsyny0oFFuSo6?=
 =?us-ascii?Q?YkzoD8bf/U2z4UyNk5ohJmkTbapajUcK8vj2dPHTTWuAlUoZPR6ij+Ces5Az?=
 =?us-ascii?Q?BoIJhKFuAuhcx6VbGTGZhw+3i6aMmrfrBFsUle3NQpV4fMQkGHwulBHkyTpp?=
 =?us-ascii?Q?LEIAJLr75x+kwpEKr3ZfV17TeW6emp7OOgua20Jc8YtVUcEPtzRgTqU2MdDm?=
 =?us-ascii?Q?20s32PA9mYHPB2aWeSGDK8nzJ7HOhYKLa7HJziCBml9MlWI1/MVW9bDIO7Ht?=
 =?us-ascii?Q?2EAV0d3kT9DJJp7/E5geF4JTg8NNE5GUXr1VWmc+6qQONn3TQSiv5SV8cYKK?=
 =?us-ascii?Q?rtnDHjiWrAhdP2TThUC4u3yImxGXAhLzsdF/FHXOTXDMbKEoIU6/3TzBkQ8T?=
 =?us-ascii?Q?IZp4Uz63P7+c5zE5GfMlksM6Lv3cKom++Xsja92R8Lh+ybXzz6KnCCqObg6r?=
 =?us-ascii?Q?UH21o+caCSfAKUk+mVMTQuTgAfES+XX7QuU8rHYXK4ZlaScRin+0Y6y0j6dV?=
 =?us-ascii?Q?kE8Ul6NV/XsyN1zT81AOUkRKm7+YA5+fIEAZzIeeiOEB62WukzOF0nREK+Aq?=
 =?us-ascii?Q?/HYqRC9Z3jhCg4zi1FbByNwhRqUFPOdYsRMlXSDcMv4szkhqLEhH/tjro/wh?=
 =?us-ascii?Q?eNLM/6c8frtqgdCWbX+Vd5WrEvdX0FoyNv1yoeQDRLp3NfddgCa7NngZq1W/?=
 =?us-ascii?Q?fw4Dt3q14dpNLyFssfwXsWY530nFxmLWLY/xz4w5RwWn8Gs+XfHBhmxgJzwe?=
 =?us-ascii?Q?O8u2piGOGOG5FG+nZL+xBwgBhYOjNXpwGB1B6WfPSpprT7VKFm7YAqB2AozU?=
 =?us-ascii?Q?3hlQ4AuuG7T0dRBaqPHRDjNgHboBG1rB2jF4XF1mWQF8hKpNqn+Cv5ntBLDx?=
 =?us-ascii?Q?+BYfNLTd4a9Ey5RI/uPx0TEx6bN47l3Zyj9fhG59NKPQLaSaCsLgnP/ff1v/?=
 =?us-ascii?Q?JCidqZEUdJ0F1oqp8tvMIlvTByrX+DRN8xpj9E/Q7D8FQ4nwffHItcO3KqIK?=
 =?us-ascii?Q?eXUO/w=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27ad12bc-0edd-4e2e-981c-08d9e647bf00
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 12:30:07.0564
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fOolXXPCYTq+sYYD4V1J0s0ZES0R0AvH3SPyKsnMpwwy9M95jVyYyDWPEJ1trVTCTREN4dZpztvqrO3/vKSrD98N/l6TE8K/6PXex7dUFAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5285
X-MDID: 1643805009-h4kjAefijIwh
Message-ID-Hash: 7GJUWSZIVJICLNJATSQDW4PGFY7K557Q
X-Message-ID-Hash: 7GJUWSZIVJICLNJATSQDW4PGFY7K557Q
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZSGGAU7DCGCPVST7XVWP3B5V35UUBPXQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9068475575236606143=="

--===============9068475575236606143==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB331282717C011B8FA78D241EB8279MN2PR12MB3312namp_"

--_000_MN2PR12MB331282717C011B8FA78D241EB8279MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Marcus, thanks for the suggestions. I made sure to set the master clock rat=
e on both the E320 and N320. In the app I'm developing, I also tried set_ti=
me_unknown_pps() instead of set_time_now() as you suggested. Unfortunately,=
 neither one of those made a difference.

On the E320, I reflashed the FPGA to the standard E320_1G image and reboote=
d. This is the output of USRP probe:
------------------------------
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-g=
8ce6e64f
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
1.200.111.66,type=3De3xx,product=3De320,serial=3D31B05E5,fpga=3D1G,claimed=
=3DFalse,addr=3D11.200.111.66
[INFO] [MPM.main] Launching USRP/MPM, version: 4.1.0.2-g8ce6e64f
[INFO] [MPM.main] Spawning RPC process...
[INFO] [MPM.PeriphManager] Device serial number: 31B05E5
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
[INFO] [MPM.RPCServer] RPC server ready!
[INFO] [MPM.RPCServer] Spawning watchdog task...
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3D1G,mgmt_a=
ddr=3D11.200.111.66,product=3De320'.
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
  _____________________________________________________
 /
|       Device: E300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-e320-31B05E5
|   |   eeprom_version: 2
|   |   fs_version: 20210910211129
|   |   mender_artifact: v4.1.0.2_e320
|   |   mpm_sw_version: 4.1.0.2-g8ce6e64f
|   |   pid: 58144
|   |   product: e320
|   |   rev: 2
|   |   rpc_connection: remote
|   |   serial: 31B05E5
|   |   type: e3xx
|   |   MPM Version: 4.0
|   |   FPGA Version: 6.0
|   |   FPGA git hash: d5c2750.clean
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: external, internal, gpsdo
|   |   Sensors: ref_locked, gps_locked, fan, temp_fpga, temp_internal, tem=
p_rf_channelA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky, gps_t=
ime, gps_tpv
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DUC#0
|   |   * 0/DmaFIFO#0
|   |   * 0/Radio#0
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
|   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
|   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
|   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
|   |   * 0/SEP#1:0=3D=3D>0/DUC#0:1
|   |   * 0/DUC#0:1=3D=3D>0/Radio#0:1
|   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
|   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
|   |   * 0/SEP#2:0=3D=3D>0/DmaFIFO#0:0
|   |   * 0/DmaFIFO#0:0=3D=3D>0/SEP#2:0
|   |   * 0/SEP#3:0=3D=3D>0/DmaFIFO#0:1
|   |   * 0/DmaFIFO#0:1=3D=3D>0/SEP#3:0
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#0
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: E3xx
|   |   |   Antennas: TX/RX
|   |   |   Freq range: 47.000 to 6000.000 MHz
|   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
|   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 1
|   |   |   Name: E3xx
|   |   |   Antennas: TX/RX
|   |   |   Freq range: 47.000 to 6000.000 MHz
|   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
|   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#0
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: E3xx
|   |   |   Antennas: RX2, TX/RX
|   |   |   Freq range: 70.000 to 6000.000 MHz
|   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
|   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 1
|   |   |   Name: E3xx
|   |   |   Antennas: RX2, TX/RX
|   |   |   Freq range: 70.000 to 6000.000 MHz
|   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
|   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
------------------------------------------------------



If I then run the following from uhd/examples (and I have tried different m=
aster clock rates):
$ ./test_timed_commands --args "master_clock_rate=3D61.44e6"

I'm still seeing the following:


-------------------------------------------------------
$ ./test_timed_commands --args "master_clock_rate=3D61.44e6"

Creating the usrp device with: master_clock_rate=3D61.44e6...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-g=
8ce6e64f
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
1.200.111.66,type=3De3xx,product=3De320,serial=3D31B05E5,fpga=3D1G,claimed=
=3DFalse,addr=3D11.200.111.66,master_clock_rate=3D61.44e6
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3D1G,master=
_clock_rate=3D61.44e6,mgmt_addr=3D11.200.111.66,product=3De320'.
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s)
Using Device: Single USRP:
  Device: E300-Series Device
  Mboard 0: e320
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: E3xx
  RX Channel: 1
    RX DSP: 1
    RX Dboard: A
    RX Subdev: E3xx
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: E3xx
  TX Channel: 1
    TX DSP: 1
    TX Dboard: A
    TX Subdev: E3xx


Testing support for timed commands on this hardware... pass

Perform fast readback of registers:
 Difference between paired reads: 1982.600911 us

Testing control timed command:
 Span      : 100000.000000 us
 Now       : 421985.465495 us
 Response 1: 423872.639974 us
 Response 2: 425706.005859 us
 Difference of response time 1: -98112.825521 us
 Difference of response time 2: -196279.459635 us
 Difference between actual and expected time delta: -98166.634115 us

About to start streaming using timed command:
 Received packet: 100 samples, 0 full secs, 0.535028 frac secs
 Stream time was: 0 full secs, 0.535028 frac secs
 Difference between stream time and first packet: -0.000000 us

Done!
----------------------------------------------

So, you can see I still have the same issue where it looks like the "timed =
commands" are getting executed immediately -- not at their expected future =
times (100ms apart). Please let me know if you have any other ideas. Or may=
be someone can confirm that test_timed_commands() is producing expected res=
ults for them in UHD 4.1?

Thanks,
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Tuesday, February 1, 2022 2:13 PM
To: Jim Palladino <jim@gardettoengineering.com>; USRP-users@lists.ettus.com=
 <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

On 2022-02-01 14:10, Jim Palladino wrote:
Hi Marcus,

In the app I'm writing, for now I'm just setting the time to '0.0' after st=
artup, like:
   usrp->set_time_now(uhd::time_spec_t(0.0));
That may be part of your problem--that may produce two separate transaction=
s for the radio timestamp registers.

Use set_time_unknown_pps() instead, and see if this changes things.

Also, make sure you're setting master_clock_rate  in the device arguments.



For the "test_timed_commands.cpp" test app, I'm just executing what is here=
:
https://github.com/EttusResearch/uhd/blob/UHD-4.1/host/examples/test_timed_=
commands.cpp<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.=
com_EttusResearch_uhd_blob_UHD-2D4.1_host_examples_test-5Ftimed-5Fcommands.=
cpp&d=3DDwMDaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEf=
paAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D2RP1x-Dxx1TwoZef3IUmkTi4mB5REW9yUXn=
CAYtBmgM&s=3Dsocf8y0QRKBM-pQcT5qgsvrxQZkd2hcJuFJ5Ix0rImE&e=3D>

It doesn't appear to matter, but my E320 is setup to use an internal refere=
nce, the N320 is external.

Thanks,
Jim


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Tuesday, February 1, 2022 1:59 PM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Timed Commands Not Working

On 2022-02-01 13:55, Jim Palladino wrote:
Hello,

I've been trying to get an app working with timed commands for an E320 or N=
320 using UHD 4.1. It seems that all commands are processed immediately, no=
t at the time I tell them to. Setting the time to start RX streaming does s=
eem to work fine, but that is a time_spec passed to the streaming function =
-- not a "timed command".

If, on the other hand, I use timed commands to set a series of RX frequency=
 tunes in the future -- to retune says every 100ms -- that isn't working. A=
ll retunes get processed immediately, one after another, with no 100ms gap =
in between. I would post the code I'm using here, but I went ahead and ran =
the UHD-included "test_timed_commands" example on both the E320 and N320. T=
he example application does not seem to work right on either device and exh=
ibits the same behaviour I'm seeing with my code. You can see from the resu=
lts below, that instead of a 100ms gap between get_time_now() calls, as the=
 example app is setup to do, the calls to get_time_now() return immediately=
.

Here is the output of "test_timed_commands" on the N320. The code is unmodi=
fied from the provided example source:
--------------------------------
$ ./test_timed_commands

Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-0-g25d=
617ca
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=
=3DFalse,addr=3D192.168.40.2
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,mgmt_a=
ddr=3D192.168.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dext=
ernal'.
[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dexternal'
[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dexternal'
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: n320
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Rhodium
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: Rhodium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Rhodium
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: Rhodium


Testing support for timed commands on this hardware... pass

Perform fast readback of registers:
 Difference between paired reads: 2016.288086 us

Testing control timed command:
 Span      : 100000.000000 us
 Now       : 416299.532064 us
 Response 1: 418303.910319 us
 Response 2: 420352.290853 us
 Difference of response time 1: -97995.621745 us
 Difference of response time 2: -195947.241211 us
 Difference between actual and expected time delta: -97951.619466 us

About to start streaming using timed command:
 Received packet: 100 samples, 0 full secs, 0.524535 frac secs
 Stream time was: 0 full secs, 0.524535 frac secs
 Difference between stream time and first packet: 0.000000 us

Done!
---------------------------------------------------

Any thoughts on this would be appreciated, as timed commands are important =
to the application we are developing.

Thanks,
Jim



How are you setting device time at startup?




--_000_MN2PR12MB331282717C011B8FA78D241EB8279MN2PR12MB3312namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Marcus, thanks for the suggestions. I made sure to set the master clock rat=
e on both the E320 and N320. In the app I'm developing, I also tried set_ti=
me_unknown_pps() instead of set_time_now() as you suggested. Unfortunately,=
 neither one of those made a difference.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
On the E320, I reflashed the FPGA to the standard E320_1G image and reboote=
d. This is the output of USRP probe:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
------------------------------</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-g=
8ce6e64f
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D11.200.111.66,type=3De3xx,product=3De320,serial=3D31B05E5,fpga=3D1G,cla=
imed=3DFalse,addr=3D11.200.111.66</div>
<div>[INFO] [MPM.main] Launching USRP/MPM, version: 4.1.0.2-g8ce6e64f</div>
<div>[INFO] [MPM.main] Spawning RPC process...</div>
<div>[INFO] [MPM.PeriphManager] Device serial number: 31B05E5</div>
<div>[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).</div>
<div>[INFO] [MPM.RPCServer] RPC server ready!</div>
<div>[INFO] [MPM.RPCServer] Spawning watchdog task...</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3D1G,m=
gmt_addr=3D11.200.111.66,product=3De320'.</div>
<div>[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ... </d=
iv>
<div>[INFO] [0/Radio#0] CODEC loopback test passed</div>
<div>[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ... </d=
iv>
<div>[INFO] [0/Radio#0] CODEC loopback test passed</div>
<div>[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 M=
B/s)</div>
<div>[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 M=
B/s)</div>
<div>&nbsp; _____________________________________________________</div>
<div>&nbsp;/</div>
<div>| &nbsp; &nbsp; &nbsp; Device: E300-Series Device</div>
<div>| &nbsp; &nbsp; _____________________________________________________<=
/div>
<div>| &nbsp; &nbsp;/</div>
<div>| &nbsp; | &nbsp; &nbsp; &nbsp; Mboard: ni-e320-31B05E5</div>
<div>| &nbsp; | &nbsp; eeprom_version: 2</div>
<div>| &nbsp; | &nbsp; fs_version: 20210910211129</div>
<div>| &nbsp; | &nbsp; mender_artifact: v4.1.0.2_e320</div>
<div>| &nbsp; | &nbsp; mpm_sw_version: 4.1.0.2-g8ce6e64f</div>
<div>| &nbsp; | &nbsp; pid: 58144</div>
<div>| &nbsp; | &nbsp; product: e320</div>
<div>| &nbsp; | &nbsp; rev: 2</div>
<div>| &nbsp; | &nbsp; rpc_connection: remote</div>
<div>| &nbsp; | &nbsp; serial: 31B05E5</div>
<div>| &nbsp; | &nbsp; type: e3xx</div>
<div>| &nbsp; | &nbsp; MPM Version: 4.0</div>
<div>| &nbsp; | &nbsp; FPGA Version: 6.0</div>
<div>| &nbsp; | &nbsp; FPGA git hash: d5c2750.clean</div>
<div>| &nbsp; | &nbsp; </div>
<div>| &nbsp; | &nbsp; Time sources: &nbsp;internal, external, gpsdo</div>
<div>| &nbsp; | &nbsp; Clock sources: external, internal, gpsdo</div>
<div>| &nbsp; | &nbsp; Sensors: ref_locked, gps_locked, fan, temp_fpga, tem=
p_internal, temp_rf_channelA, temp_rf_channelB, temp_main_power, gps_gpgga,=
 gps_sky, gps_time, gps_tpv</div>
<div>| &nbsp; &nbsp; _____________________________________________________<=
/div>
<div>| &nbsp; &nbsp;/</div>
<div>| &nbsp; | &nbsp; &nbsp; &nbsp; RFNoC blocks on this device:</div>
<div>| &nbsp; | &nbsp; </div>
<div>| &nbsp; | &nbsp; * 0/DDC#0</div>
<div>| &nbsp; | &nbsp; * 0/DUC#0</div>
<div>| &nbsp; | &nbsp; * 0/DmaFIFO#0</div>
<div>| &nbsp; | &nbsp; * 0/Radio#0</div>
<div>| &nbsp; &nbsp; _____________________________________________________<=
/div>
<div>| &nbsp; &nbsp;/</div>
<div>| &nbsp; | &nbsp; &nbsp; &nbsp; Static connections on this device:</di=
v>
<div>| &nbsp; | &nbsp; </div>
<div>| &nbsp; | &nbsp; * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0</div>
<div>| &nbsp; | &nbsp; * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0</div>
<div>| &nbsp; | &nbsp; * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0</div>
<div>| &nbsp; | &nbsp; * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0</div>
<div>| &nbsp; | &nbsp; * 0/SEP#1:0=3D=3D&gt;0/DUC#0:1</div>
<div>| &nbsp; | &nbsp; * 0/DUC#0:1=3D=3D&gt;0/Radio#0:1</div>
<div>| &nbsp; | &nbsp; * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1</div>
<div>| &nbsp; | &nbsp; * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0</div>
<div>| &nbsp; | &nbsp; * 0/SEP#2:0=3D=3D&gt;0/DmaFIFO#0:0</div>
<div>| &nbsp; | &nbsp; * 0/DmaFIFO#0:0=3D=3D&gt;0/SEP#2:0</div>
<div>| &nbsp; | &nbsp; * 0/SEP#3:0=3D=3D&gt;0/DmaFIFO#0:1</div>
<div>| &nbsp; | &nbsp; * 0/DmaFIFO#0:1=3D=3D&gt;0/SEP#3:0</div>
<div>| &nbsp; &nbsp; _____________________________________________________<=
/div>
<div>| &nbsp; &nbsp;/</div>
<div>| &nbsp; | &nbsp; &nbsp; &nbsp; TX Dboard: 0/Radio#0</div>
<div>| &nbsp; | &nbsp; &nbsp; _____________________________________________=
________</div>
<div>| &nbsp; | &nbsp; &nbsp;/</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 0</div>
<div>| &nbsp; | &nbsp; | &nbsp; Name: E3xx</div>
<div>| &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX</div>
<div>| &nbsp; | &nbsp; | &nbsp; Freq range: 47.000 to 6000.000 MHz</div>
<div>| &nbsp; | &nbsp; | &nbsp; Gain range PGA: 0.0 to 89.8 step 0.2 dB</di=
v>
<div>| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 40000000.0 s=
tep 0.0 Hz</div>
<div>| &nbsp; | &nbsp; | &nbsp; Connection Type: IQ</div>
<div>| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No</div>
<div>| &nbsp; | &nbsp; &nbsp; _____________________________________________=
________</div>
<div>| &nbsp; | &nbsp; &nbsp;/</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 1</div>
<div>| &nbsp; | &nbsp; | &nbsp; Name: E3xx</div>
<div>| &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX</div>
<div>| &nbsp; | &nbsp; | &nbsp; Freq range: 47.000 to 6000.000 MHz</div>
<div>| &nbsp; | &nbsp; | &nbsp; Gain range PGA: 0.0 to 89.8 step 0.2 dB</di=
v>
<div>| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 40000000.0 s=
tep 0.0 Hz</div>
<div>| &nbsp; | &nbsp; | &nbsp; Connection Type: IQ</div>
<div>| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No</div>
<div>| &nbsp; &nbsp; _____________________________________________________<=
/div>
<div>| &nbsp; &nbsp;/</div>
<div>| &nbsp; | &nbsp; &nbsp; &nbsp; RX Dboard: 0/Radio#0</div>
<div>| &nbsp; | &nbsp; &nbsp; _____________________________________________=
________</div>
<div>| &nbsp; | &nbsp; &nbsp;/</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 0</div>
<div>| &nbsp; | &nbsp; | &nbsp; Name: E3xx</div>
<div>| &nbsp; | &nbsp; | &nbsp; Antennas: RX2, TX/RX</div>
<div>| &nbsp; | &nbsp; | &nbsp; Freq range: 70.000 to 6000.000 MHz</div>
<div>| &nbsp; | &nbsp; | &nbsp; Gain range PGA: 0.0 to 76.0 step 1.0 dB</di=
v>
<div>| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 40000000.0 s=
tep 0.0 Hz</div>
<div>| &nbsp; | &nbsp; | &nbsp; Connection Type: IQ</div>
<div>| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No</div>
<div>| &nbsp; | &nbsp; &nbsp; _____________________________________________=
________</div>
<div>| &nbsp; | &nbsp; &nbsp;/</div>
<div>| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 1</div>
<div>| &nbsp; | &nbsp; | &nbsp; Name: E3xx</div>
<div>| &nbsp; | &nbsp; | &nbsp; Antennas: RX2, TX/RX</div>
<div>| &nbsp; | &nbsp; | &nbsp; Freq range: 70.000 to 6000.000 MHz</div>
<div>| &nbsp; | &nbsp; | &nbsp; Gain range PGA: 0.0 to 76.0 step 1.0 dB</di=
v>
<div>| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 20000000.0 to 40000000.0 s=
tep 0.0 Hz</div>
<div>| &nbsp; | &nbsp; | &nbsp; Connection Type: IQ</div>
<span>| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>------------------------------------------------------</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>If I then run the following from uhd/examples (and I have tried diffe=
rent master clock rates):</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>$ ./test_timed_commands --args &quot;master_clock_rate=3D61.44e6&quot=
;<br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>I'm still seeing the following:<br>
<br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>-------------------------------------------------------</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>$ ./test_timed_commands --args &quot;master_clock_rate=3D61.44e6&quot=
;
<div><br>
</div>
<div>Creating the usrp device with: master_clock_rate=3D61.44e6...</div>
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEA=
D-0-g8ce6e64f</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D11.200.111.66,type=3De3xx,product=3De320,serial=3D31B05E5,fpga=3D1G,cla=
imed=3DFalse,addr=3D11.200.111.66,master_clock_rate=3D61.44e6</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3D1G,m=
aster_clock_rate=3D61.44e6,mgmt_addr=3D11.200.111.66,product=3De320'.</div>
<div>[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ... </d=
iv>
<div>[INFO] [0/Radio#0] CODEC loopback test passed</div>
<div>[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ... </d=
iv>
<div>[INFO] [0/Radio#0] CODEC loopback test passed</div>
<div>[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 M=
B/s)</div>
<div>[INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 M=
B/s)</div>
<div>Using Device: Single USRP:</div>
<div>&nbsp; Device: E300-Series Device</div>
<div>&nbsp; Mboard 0: e320</div>
<div>&nbsp; RX Channel: 0</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: E3xx</div>
<div>&nbsp; RX Channel: 1</div>
<div>&nbsp; &nbsp; RX DSP: 1</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: E3xx</div>
<div>&nbsp; TX Channel: 0</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: E3xx</div>
<div>&nbsp; TX Channel: 1</div>
<div>&nbsp; &nbsp; TX DSP: 1</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: E3xx</div>
<div><br>
</div>
<div><br>
</div>
<div>Testing support for timed commands on this hardware... pass</div>
<div><br>
</div>
<div>Perform fast readback of registers:</div>
<div>&nbsp;Difference between paired reads: 1982.600911 us</div>
<div><br>
</div>
<div>Testing control timed command:</div>
<div>&nbsp;Span &nbsp; &nbsp; &nbsp;: 100000.000000 us</div>
<div>&nbsp;Now &nbsp; &nbsp; &nbsp; : 421985.465495 us</div>
<div>&nbsp;Response 1: 423872.639974 us</div>
<div>&nbsp;Response 2: 425706.005859 us</div>
<div>&nbsp;Difference of response time 1: -98112.825521 us</div>
<div>&nbsp;Difference of response time 2: -196279.459635 us</div>
<div>&nbsp;Difference between actual and expected time delta: -98166.634115=
 us</div>
<div><br>
</div>
<div>About to start streaming using timed command:</div>
<div>&nbsp;Received packet: 100 samples, 0 full secs, 0.535028 frac secs</d=
iv>
<div>&nbsp;Stream time was: 0 full secs, 0.535028 frac secs</div>
<div>&nbsp;Difference between stream time and first packet: -0.000000 us</d=
iv>
<div><br>
</div>
<span>Done!</span><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><span>----------------------------------------------</span></span></d=
iv>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><span><br>
</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><span>So, you can see I still have the same issue where it looks like=
 the &quot;timed commands&quot; are getting executed immediately -- not at =
their expected future times (100ms apart). Please let me know if you have a=
ny other ideas. Or maybe someone can confirm
 that&nbsp;<span style=3D"background-color:rgb(255, 255, 255);display:inlin=
e !important">test_timed_commands() is producing expected results for them =
in UHD 4.1?</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><span><span style=3D"background-color:rgb(255, 255, 255);display:inli=
ne !important"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><span><span style=3D"background-color:rgb(255, 255, 255);display:inli=
ne !important">Thanks,</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><span><span style=3D"background-color:rgb(255, 255, 255);display:inli=
ne !important">Jim</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span><span><span style=3D"background-color:rgb(255, 255, 255);display:inli=
ne !important"><br>
</span></span></span></div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, February 1, 2022 2:13 PM<br>
<b>To:</b> Jim Palladino &lt;jim@gardettoengineering.com&gt;; USRP-users@li=
sts.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-02-01 14:10, Jim Palladino wrote:<=
br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi Marcus,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
In the app I'm writing, for now I'm just setting the time to '0.0' after st=
artup, like:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp; &nbsp;usrp-&gt;set_time_now(uhd::time_spec_t(0.0));<br>
</div>
</blockquote>
That may be part of your problem--that may produce two separate transaction=
s for the radio timestamp registers.<br>
<br>
Use set_time_unknown_pps() instead, and see if this changes things.<br>
<br>
Also, make sure you're setting master_clock_rate&nbsp; in the device argume=
nts.<br>
<br>
<br>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
For the &quot;test_timed_commands.cpp&quot; test app, I'm just executing wh=
at is here:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.co=
m_EttusResearch_uhd_blob_UHD-2D4.1_host_examples_test-5Ftimed-5Fcommands.cp=
p&amp;d=3DDwMDaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=
=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D2RP1x-Dxx1TwoZef3IUm=
kTi4mB5REW9yUXnCAYtBmgM&amp;s=3Dsocf8y0QRKBM-pQcT5qgsvrxQZkd2hcJuFJ5Ix0rImE=
&amp;e=3D" id=3D"LPNoLPOWALinkPreview" class=3D"x_moz-txt-link-freetext">ht=
tps://github.com/EttusResearch/uhd/blob/UHD-4.1/host/examples/test_timed_co=
mmands.cpp</a><br>
<br>
It doesn't appear to matter, but my E320 is setup to use an internal refere=
nce, the N320 is external.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com=
">&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Tuesday, February 1, 2022 1:59 PM<br>
<b>To:</b> <a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:usrp-user=
s@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_moz-txt-link-rfc2396E" href=3D=
"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_x_moz-cite-prefix">On 2022-02-01 13:55, Jim Palladino wrote=
:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I've been trying to get an app working with timed commands for an E320 or N=
320 using UHD 4.1. It seems that all commands are processed immediately, no=
t at the time I tell them to. Setting the time to start RX streaming does s=
eem to work fine, but that is a
 time_spec passed to the streaming function -- not a &quot;timed command&qu=
ot;.&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If, on the other hand, I use timed commands to set a series of RX frequency=
 tunes in the future -- to retune says every 100ms -- that isn't working. A=
ll retunes get processed immediately, one after another, with no 100ms gap =
in between. I would post the code
 I'm using here, but I went ahead and ran the UHD-included &quot;test_timed=
_commands&quot; example on both the E320 and N320. The example application =
does not seem to work right on either device and exhibits the same behaviou=
r I'm seeing with my code. You can see from
 the results below, that instead of a 100ms gap between get_time_now() call=
s, as the example app is setup to do, the calls to get_time_now() return im=
mediately.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Here is the output of &quot;test_timed_commands&quot; on the N320. The code=
 is unmodified from the provided example source:<br>
--------------------------------</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
$ ./test_timed_commands
<div><br>
</div>
<div>Creating the usrp device with: ...</div>
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-0=
-g25d617ca</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=3DXG,clai=
med=3DFalse,addr=3D192.168.40.2</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,m=
gmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dexternal,time_source=
=3Dexternal'.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dexternal'=
</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dexternal'=
</div>
<div>Using Device: Single USRP:</div>
<div>&nbsp; Device: N300-Series Device</div>
<div>&nbsp; Mboard 0: n320</div>
<div>&nbsp; RX Channel: 0</div>
<div>&nbsp; &nbsp; RX DSP: 0</div>
<div>&nbsp; &nbsp; RX Dboard: A</div>
<div>&nbsp; &nbsp; RX Subdev: Rhodium</div>
<div>&nbsp; RX Channel: 1</div>
<div>&nbsp; &nbsp; RX DSP: 1</div>
<div>&nbsp; &nbsp; RX Dboard: B</div>
<div>&nbsp; &nbsp; RX Subdev: Rhodium</div>
<div>&nbsp; TX Channel: 0</div>
<div>&nbsp; &nbsp; TX DSP: 0</div>
<div>&nbsp; &nbsp; TX Dboard: A</div>
<div>&nbsp; &nbsp; TX Subdev: Rhodium</div>
<div>&nbsp; TX Channel: 1</div>
<div>&nbsp; &nbsp; TX DSP: 1</div>
<div>&nbsp; &nbsp; TX Dboard: B</div>
<div>&nbsp; &nbsp; TX Subdev: Rhodium</div>
<div><br>
</div>
<div><br>
</div>
<div>Testing support for timed commands on this hardware... pass</div>
<div><br>
</div>
<div>Perform fast readback of registers:</div>
<div>&nbsp;Difference between paired reads: 2016.288086 us</div>
<div><br>
</div>
<div>Testing control timed command:</div>
<div>&nbsp;Span &nbsp; &nbsp; &nbsp;: 100000.000000 us</div>
<div>&nbsp;Now &nbsp; &nbsp; &nbsp; : 416299.532064 us</div>
<div>&nbsp;Response 1: 418303.910319 us</div>
<div>&nbsp;Response 2: 420352.290853 us</div>
<div>&nbsp;Difference of response time 1: -97995.621745 us</div>
<div>&nbsp;Difference of response time 2: -195947.241211 us</div>
<div>&nbsp;Difference between actual and expected time delta: -97951.619466=
 us</div>
<div><br>
</div>
<div>About to start streaming using timed command:</div>
<div>&nbsp;Received packet: 100 samples, 0 full secs, 0.524535 frac secs</d=
iv>
<div>&nbsp;Stream time was: 0 full secs, 0.524535 frac secs</div>
<div>&nbsp;Difference between stream time and first packet: 0.000000 us</di=
v>
<div><br>
</div>
<div><span>Done!</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>---------------------------------------------------</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Any thoughts on this would be appreciated, as timed commands are important =
to the application we are developing.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<br>
</blockquote>
How are you setting device time at startup?<br>
<br>
<br>
</div>
</blockquote>
<br>
</div>
</body>
</html>

--_000_MN2PR12MB331282717C011B8FA78D241EB8279MN2PR12MB3312namp_--

--===============9068475575236606143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9068475575236606143==--
