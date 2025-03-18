Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BD9A677D4
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 16:31:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5943838608D
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 11:31:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742311871; bh=VzWXvlDJuYFm46u3dpOUS8eJ/5sCqccg3kAtBhx2HIY=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GSUw9sAHInP1BuIPnzSnnK3YOATaiIzvMLg2iGsTZGnkOCm/+r6UWpMovIkdOvrtg
	 04PEliOtshw14ggmbfQIb2eJ27tnOT6EGKSS8HUeI3czebHs5k719auK9rl0tXUFhR
	 gmZwIyyNgfI0lYM2cNCHMFNW30gpo/nnQ/ep1oJ5sOkWSV09auHSEh2Y4xN7wexAyz
	 AmB2bC95Ebd/unqXzSTYFLy8QTr80IoYwnH9F3ZjtXYZsgh2demgr2E8JQEOrCqFfn
	 ZhixRnuh7O1enrNXNwJqhpzdK7nSyNIIUuki4wvm5m37RxZpvbim4cQF5krOXXXc4T
	 VItVwgs/fUoMg==
Received: from MX2.LL.MIT.EDU (mx2.ll.mit.edu [129.55.12.51])
	by mm2.emwd.com (Postfix) with ESMTPS id A9385385D6B
	for <usrp-users@lists.ettus.com>; Tue, 18 Mar 2025 11:30:26 -0400 (EDT)
Received: from LLEX2019-01.mitll.ad.local (llex2019-01.mitll.ad.local [172.25.4.97] (may be forged))
	by MX2.LL.MIT.EDU (8.18.1.2/8.18.1.2) with ESMTPS id 52IFReeb246149
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 18 Mar 2025 11:27:40 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=zeczpShbcxvx9OKGv9E9WqJ/do6KyhGMYv9ln0BPiv2lpLvejmNpskgWxvAN7qe5YCzz1BRgFVLgJwiQbSCe+VhnmB6L+QLeHLftxY4l5r9IlQZxpqiD8c/dH+ujiORJ8cTI4Yu950XrDH1LuIZWLMVZ7QGsEganattpniue9MK7TB4+puOV5LDeFTFIkkcTtYNpRuLTiQWPIZk/nTaW6MS62RsHs3YzIMCRSMAlZ/clFNK3Y9q0NGwzYDC3JUqdz30RXQr7wGNsgELD+5PghjbNHcPsEFpGi6Ziif4r3kd3niqWPaaO2IX2nd5dybKSsCIgJoPrPKaFyL32/cCHKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ckOYCtStuYC2I2kh3FYp4cjC4miDY17tbwKgBoM6By0=;
 b=VQjNHf6gxEtrnHNFzAaqG2o0bfskReHcKYK430RLmmWaMwpcTA1gZcLzx+fPLxBNzDOFbZGR9ReWnuJ0KXvGc/yWais2vFcwiAvvavOUaNCLe8JrCZtKpoYyBrn0kQEvAtLcN5EG6sgLTLFh0jzgfLEw4EjgSNXWZFipRg6IvWYyQ12BrLceP8OdeakWOWwKVNUDvTx5XwK7mVpV7k9zfF9/RaZbYIz3soaEkc+QWc8alSir+D+85SMJbPDTcVBGVjBZ7MS26Rl4gvv7OTnIKEd+++AXVlm4WdFBUhfAWaArMzNAbRbNsQayrd5QGs0afPIRR2xNt73FsiPtEkjYQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ll.mit.edu; dmarc=pass action=none header.from=ll.mit.edu;
 dkim=pass header.d=ll.mit.edu; arc=none
From: "Mann, John - 0662 - MITLL" <mannj@ll.mit.edu>
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [EXT] Re: [USRP-users] How to record all 4 channels from an X410
Thread-Index: AduYE/jjtef+6QeiRP+ZPYQGEvGJ9wABTsGAAABGM/A=
Date: Tue, 18 Mar 2025 15:30:22 +0000
Message-ID: <PH1P110MB12840A71C2828F114E7C46B398DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
References: <PH1P110MB1284A18AA8E3648865C3393B98DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
 <CAB__hTTSg4sSkG8e=qEdH=45PK6-YjjJ1OzaHrSoz4kP1YnJZQ@mail.gmail.com>
In-Reply-To: <CAB__hTTSg4sSkG8e=qEdH=45PK6-YjjJ1OzaHrSoz4kP1YnJZQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1284:EE_|BNAP110MB2254:EE_
x-ms-office365-filtering-correlation-id: 62d3a90f-dde8-4335-169e-08dd6631cc5a
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|4053099003|8096899003|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?R0hUQUhmellPNTNsN1BlZWVoT05XVDlROFRrZjhXdDlGUDVSUkFSODR4Sk9t?=
 =?utf-8?B?Sk5TSFZUNldWbmlmSDhFOXRRVGd4RjBPMTFyTk10V3llU05na2FkY2ZjNkVC?=
 =?utf-8?B?dUQ5QVJrU0RQcFBjT2Fpb2VqenZKYUNZTHBoSmNJZFRlb1V3cnUzOGVPQ2NR?=
 =?utf-8?B?WmozbFQ0THl2YW02emtUTnVaZUc2UjgxQ2RBclhQVHprb1Vla05SK1hHNU40?=
 =?utf-8?B?a0syTGRwNytacSt5V0F3dlFndjV1ek42UTc2NXFOWVdQZnhsQ1NqZU9Ublda?=
 =?utf-8?B?ZWYySnNZbXpWMFpJVmtOOG43ODBEMzl5U2xSRE9OdXRwY2tpNlVLWi8rZmdr?=
 =?utf-8?B?QmhlVUY3U01ZOGNOdTVaWm5Ma3plU2ZiVlFsbzg5Q2k3WE5ITW9PcUxUalFq?=
 =?utf-8?B?TC9SSUlTZEVMUzNxc0FQbDhlZm0wQXlPQm04d3pnVEdKdTBWaG5WUHZucXVx?=
 =?utf-8?B?TjY3ZzFkcUZ4TUpWaTN0eUN0WDlPaTV4ODd4VHpOcm9tUU1paXZkZlpTdEE4?=
 =?utf-8?B?cFAwVUlFK3BGTkFMY0lmU0lBK0JibCs2dzFMSVV4aDZ3b2U4QTVObWd4RHNM?=
 =?utf-8?B?Tncyc09velNIVi9VSVNHUmZJTWNnN1JnSUY4b2lIb2ZMYjZId0xaeVVvU3A3?=
 =?utf-8?B?NHp5dUd3VGNTLzBtR1RxbjcxTytOb29iSkxDQ05yTkU1Z0ZJaGNFYmRYTHls?=
 =?utf-8?B?S2hsQi9xTnBxUENCZTNjcnN6c3M0QUZIbktjSnhjdVRKRWZHemt6dXVkZHdN?=
 =?utf-8?B?VngrVVhZMEcxcXduU3RYckFVMFdGMjUvbG5XUWd3K1FyQVJpNks5TEtTalVy?=
 =?utf-8?B?c2tpeHZOQ3BOSXFMbnZNWSs1eWVqcHMzZ1NPSFZZSkFKOEhtUllCeU95QXJn?=
 =?utf-8?B?YUtMSmhiMm42MDFqZTh4dS8vdHk3Zi9uVTMvTS9LVmc4bVU2bU9yQWE0U0VK?=
 =?utf-8?B?NGFydG9EcnZaOC9RLzMxUlo5YUtXeE5QelE4M2xaSmtRbDBSNXhhZ2VKRkQw?=
 =?utf-8?B?Vktmd3RweFFYOEhHZlNvV0dSU2dMS0xocHl1VVFGb2Y4VFFyVVJnMm5aWVBK?=
 =?utf-8?B?RGxVVGNBZXQ2UDBFbm05MXh1dC9QTHo3WjhtQkJnTGduSzJIQUhZempLWDdh?=
 =?utf-8?B?dkZHNEZQMWEzM0FRZWQva0R5eU5idmtlaXIrTndQSEVCNjRKTXg4dWVwWkQw?=
 =?utf-8?B?WGtEbVhLUGdNZGN2dE1pVXRlcUpJcTRxWUxoS2VRTFpJSkpLcFRDQWdPYmxF?=
 =?utf-8?B?MkNDS0R0TEpMZUtsR3JnaUNNYzNsM0RqM2VxZGptQkh0MjJ0WDR0THEvdzBi?=
 =?utf-8?B?MkVwYjRVN3dUWmhsQUgvTDBiVHkzUzI4cHJ0aXdhRkoxNk1qQXJlU0hFenl2?=
 =?utf-8?B?RnVodHZqYXF2dUgvZTl2dndZblVpMkVRa3U1MVVKYnVYYktyVkNRTzdyMnRU?=
 =?utf-8?B?ZW02Y3UwcVlwRXp2UXJHKzV4L1FoSUd0MUVQcy9XZXd4Lyt1WGNGT0poL012?=
 =?utf-8?B?OEpDKzdjZ2orb25UTE5WVnJuWVkrc2FzSy9OUGduUnVORDFFbHlyS2xBZ2l1?=
 =?utf-8?B?cGt2d0o4TUlaOCs2aHpwYi9TT1dSS3d1WXhzeGhUMW1vcCt3Ty9NdjJIaDlx?=
 =?utf-8?B?a2N5OE5zMFZubGJQV2xVQnpKSzF2RGJnYVJrQy8vbVB1UFA4SUZWbTdKNXBl?=
 =?utf-8?B?dm1HdWdlcGh1RXNuWG1KZXFGR2cvMEdIcHdMM1hSMHhHSE0xQzBtT1Nkc3dz?=
 =?utf-8?B?TjZtRGVlSDd3TlBQMkNuR2hTZjlleXZrT0VsZFA2Zm9jTk9Kd3h3VFlwWHFt?=
 =?utf-8?B?K1NrWjdObHh0bDgwUWkvdjdrMzhKYUtmSXNHaVEvQ2JtVkluYUVlanNweEZy?=
 =?utf-8?Q?Uq69OjJachrTq?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(4053099003)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ckczd3RZaUQwNEhJc0NqN0JEUUxOblZtSWs1Mmc5YzJwSEw1UDJWTks4WHlV?=
 =?utf-8?B?eStpaEJlWE9kNG16R1JKVlFaaytteUJGeDNneWRBZzBrdjlWNTFnVmJKbUEx?=
 =?utf-8?B?cXdJV1FNV3N5LzdML0xIVGpPcGJlNHpHQTlDTmtsRGozdUU4cFhWd01ySjQ5?=
 =?utf-8?B?bDVFc05kQmgvczBuak9VS0xPeFN4Y2owSXFIcFhkVUxGWDF3ckdIcUYzdm9H?=
 =?utf-8?B?Rkt4bnBUT0hzMzY3eTMyNmcrVGdpWndicFpLUmVOT3FPaEt1MVhVc2FXbG1I?=
 =?utf-8?B?N002bE14cVc1RnpzdmxtZkNORFplcllxWWZGNUZyYnlBVjFxYUQ1dW5MVVR3?=
 =?utf-8?B?OC9RUjlURHZlenZMMVZ4ZkVKbFVLYnNCZEdIVlU0d1dSMXZ3U2IwQm4vQVVw?=
 =?utf-8?B?S3BmYWczRVozU0lsUmxRNkVkUTh1cVlQRkFncU0ybVVlb1hLQWtqYkhGdWJQ?=
 =?utf-8?B?M3R0eG01YjVEWnl2dUpBeDJnZmNBdzJGbzlsa0FHM0MwYUtTZnRONXo5MEJh?=
 =?utf-8?B?VmZpN2RZYjJrNW9ublpSeEMxK0FTb2pTemk4d3pXSG85RytDQzh2SVhqdlo2?=
 =?utf-8?B?MElTdExyUUUwdzhBZzlQdEhCMUk1WmI5L2NEblB3aGZPdDgwaCt2c3VSMUhB?=
 =?utf-8?B?KzZ6REhjcmNOTFZOZytkUHNscEdwQWtvNDNyVElLZjZOcVYxSi9HY0NuRHVa?=
 =?utf-8?B?T3NjM1hCVndsbmtRcjVZRmEvM0Q1Mk9rU0dCWFJ4TnZsekU5c2JWRXllczZH?=
 =?utf-8?B?cDBmditkenRwS1c0OU41SUhaSVl0Vk83Qno2UE1UQm9NY1kxc3Q3NjdXbTdq?=
 =?utf-8?B?cUlYVkZ3QXN4QitjcWJEVmEvcFlBTFdDY25OOWJBN1VoRmJwcXVtSmlvL1JL?=
 =?utf-8?B?ZjRiZEs5YW1rMTNZRXcwWU5wQ21EeldDL0VpcVd6U2IvUElGa2hhSzdqck9Q?=
 =?utf-8?B?MG9HMGFaU0o4bEhPV3NaV3B6L1Vpdzd5RlAyZXVMcXRJbU13eDk2L2dzWGc5?=
 =?utf-8?B?ZnBYZk1iQmNqeU5hVkZRR0dFTDRXbVJmVmVKOVNGM1FyRUpHbXhPMW5CQ1dH?=
 =?utf-8?B?RVJJR0VVb1UzUDRCRmNPS1luMEZCZU9GR2tiRG1yOGpEMHZBVkFyS0liK3Nl?=
 =?utf-8?B?REJwL2ZrYkJ3SHFpZ0xZbWxtUDdleFBrTTlQMVd3U0xqdjhKbTZuWkJYR2Ev?=
 =?utf-8?B?SThoZytjaFBhLzFNRE1vejAxQnJueUtORTArMTRCWFk3UFFVcjhVeUREWUx2?=
 =?utf-8?B?amJPc2pwS1QvVU4vYlhSUTNOejJTeUE0K2tsTTdud0NTRGVaSDlVZU5jRWcv?=
 =?utf-8?B?N3BGOEZicWpXSENWbTJIblFiRXB4Z2s2R2lIdUY1RHdLMHlwZHlkcCt3bFRN?=
 =?utf-8?B?MjFQQzJQbnNuS0d0NnMrdzFjREZ4SmVERW0vUnZxSGVQUGE2eHpZbGFRaEhO?=
 =?utf-8?B?eElBZDNtUzRiWUVMaU9JSVBUT2ZwbVBvTXd3WmFKc3JxM1pYRFJMcVllbU9a?=
 =?utf-8?B?bmtQN2NnSDVCcTVDNTF1NWY3dlhJS2VkYzE5azRyZEdvRXJ0QjZGNGczRWoz?=
 =?utf-8?B?TWRpb3pTSVhSUkV1cllvaUNrQjYyY1FCVmJRNVg0YlZMWFBpSGVTWVRuVEN1?=
 =?utf-8?B?SzJFRjVTdStBK1U2VXFIdWtPTGtYTkdBZGNmYTNtNi9zYUhSMHdZSTlZdkR6?=
 =?utf-8?B?Y0dHNmxFT1VGRml2MGljY2kzMFNjT2t0d2w2cWpVU1RDUFoyZEJWd2ZmbUkw?=
 =?utf-8?B?NDc4WXdzK1FQTWh4K2MrMmJ5cGZhT09oN1VCUmRPSUVDOTMvTi9ZSDFLM0ov?=
 =?utf-8?B?eXBvZTV1eTc4RGxnVlVITXdacmxyRDlvNGs5OWNmb0pVZjF2ZXRaSmQ2Ukpj?=
 =?utf-8?B?Z0o2SGdSVXZQV3ozelI4cTRad3kwblM2Y0lWeE5PbmFIT2tMSm9DdnNySWkr?=
 =?utf-8?B?UmJPbVpRRk96SjNvQ3NpdEo3MXFES3NqMU1BK1NVcmI0aFcwVGgrbnpCRFVH?=
 =?utf-8?Q?SD7yDLJvwI2ZLehWrarGx+wgSAwuc0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 62d3a90f-dde8-4335-169e-08dd6631cc5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2025 15:30:22.4005
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83d1efe3-698e-4819-911b-0a8fbe79d01c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BNAP110MB2254
X-Proofpoint-GUID: Ml2QSMwzwiKPkE1mDvP_U5Jkk-RJbP2o
X-Proofpoint-ORIG-GUID: Ml2QSMwzwiKPkE1mDvP_U5Jkk-RJbP2o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 mlxscore=0 spamscore=0 phishscore=0 mlxlogscore=999 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502280000 definitions=main-2503180112
Message-ID-Hash: CW2LH62VUKHCDVOC5E6WNPWOX2A3PU57
X-Message-ID-Hash: CW2LH62VUKHCDVOC5E6WNPWOX2A3PU57
X-MailFrom: prvs=7172611654=mannj@ll.mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: How to record all 4 channels from an X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CW2LH62VUKHCDVOC5E6WNPWOX2A3PU57/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4959452558945308728=="

--===============4959452558945308728==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_0137_01DB97F9.21CBD920"

------=_NextPart_000_0137_01DB97F9.21CBD920
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0138_01DB97F9.21CBD920"


------=_NextPart_001_0138_01DB97F9.21CBD920
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Yes =E2=80=93 I was aware of that.  But I still don=E2=80=99t know what =
to put into the subdev string, because nothing seems to work.

=20

I tried:

=20

A:01

A:0 A:1

A:0,A:1

A:0 B:0

=20

etc=E2=80=A6.

=20

I think my problem must be something more basic that I am missing, that =
is why I=E2=80=99d like to see a working example.

=20

John=20

=20

=20

ZjQcmQRYFpfptBannerEnd

Hi John,

Did you see this link =
<https://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#Subdev_Specifi=
cations> ?

Rob

=20


------=_NextPart_001_0138_01DB97F9.21CBD920
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
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
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Yes =E2=80=93 I was aware of =
that.=C2=A0 But I still don=E2=80=99t know what to put into the subdev =
string, because nothing seems to work.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I =
tried:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>A:01<o:p></o:p></p><p class=3DMsoNormal>A:0 =
A:1<o:p></o:p></p><p class=3DMsoNormal>A:0,A:1<o:p></o:p></p><p =
class=3DMsoNormal>A:0 B:0<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>etc=E2=80=A6.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I think my =
problem must be something more basic that I am missing, that is why =
I=E2=80=99d like to see a working example.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>John =
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal =
style=3D'mso-line-height-alt:.75pt'><span =
style=3D'font-size:1.0pt;color:white'>ZjQcmQRYFpfptBannerEnd<o:p></o:p></=
span></p></div><div><p class=3DMsoNormal>Hi John,<o:p></o:p></p><div><p =
class=3DMsoNormal>Did you see<a =
href=3D"https://kb.ettus.com/USRP_X410/X440_Getting_Started_Guide#Subdev_=
Specifications"> this link</a>?<o:p></o:p></p></div><div><p =
class=3DMsoNormal>Rob<o:p></o:p></p></div></div><div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in =
6.0pt;margin-left:4.8pt;margin-right:0in'><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></blockquote></div></div></b=
ody></html>
------=_NextPart_001_0138_01DB97F9.21CBD920--

------=_NextPart_000_0137_01DB97F9.21CBD920
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCEt0w
ggOKMIICcqADAgECAgEBMA0GCSqGSIb3DQEBCwUAMFYxCzAJBgNVBAYTAlVTMR8wHQYDVQQKExZN
SVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExMIFJvb3Qg
Q0EtMjAeFw0xNjA0MjAxMjAwMDBaFw0zNTA0MTkyMzU5NTlaMFYxCzAJBgNVBAYTAlVTMR8wHQYD
VQQKExZNSVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExM
IFJvb3QgQ0EtMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAL91qARBjjibZuLnL2n+
ryiBT7PMGrQnekpsKv13kTaOz94zyMTT8Bd/fERg1JjySFwO4ncw+o9KKRSFvpC6mMnvXu/PD1dH
amiZV/PNfHzQ20hPvAeoYnqik0e1XziO+FFUBFClURbkRcOrlWLr4HsNk4/wtnRHnt+3q7kJeZx5
G1djrFp2ezvsrfnrXeh0XGly5T/avFioANwe75DlSDAiqALmlo/gRauyvljZIsovynTh/SZjqW8k
SuI3AO8Wy5xfCRVEjYOXOGNQSaxWmbZAnhujZvaeduBpZZERcz4KY/FYnFfgCvva2NO3U8dNpGKL
U5yrstGMQQMLFF8QEBMCAwEAAaNjMGEwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU/8nJZUxT
gPGpDDwhroIqx+74MvswHwYDVR0jBBgwFoAU/8nJZUxTgPGpDDwhroIqx+74MvswDgYDVR0PAQH/
BAQDAgGGMA0GCSqGSIb3DQEBCwUAA4IBAQB6mHxH/9yeWjCoZWEND51AGzAfI2Uq/fx743zhdNHK
xVAn0q6hvCUMKPkv4quuoHKethRICdH0JA4FYOpvgthE6NS6FoksYWAn3EiEBApY5V8EfMBUmshf
NtkuvSKrx4XauHefI1OoGIurLI1OL8LL7FS0SSpP5vwoP8PIFumBzOWoQQ+v+QnHpdnyO6EprJDv
fdfqLawtdWHw8Ahb8+wJtK/ivYlYUlrWuIZiLldGAYmtO3mSkjtNiz4EPGDs95LtGLfpofFVkSrs
dgnGIzKZPlg1dATKe+bam+qagRZHCrxAV6sYPvPhv7po4ouB9HOZLyYWkMspG5jipsTvSHCSMIIE
wDCCA6igAwIBAgIBGjANBgkqhkiG9w0BAQsFADBWMQswCQYDVQQGEwJVUzEfMB0GA1UEChMWTUlU
IExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECxMDUEtJMRgwFgYDVQQDEw9NSVRMTCBSb290IENB
LTIwHhcNMjEwNDE0MTEwMDAwWhcNMzIwNDE0MTEwMDAwWjBRMQswCQYDVQQGEwJVUzEfMB0GA1UE
CgwWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBD
QS04MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAttKiUZi+ezd6XR3/UBsFtO/XphH8
qPCL1l7Qjq9d3pew3w9mRG5+16+VG4OkSdbg1/C/9G7Qf4E+b1UBcpRT7dMWQ4+czMj5hzJMX8RL
7tMvwgKyNGvIg6WcLm11NY0r10sesBaYVwerNQrkE66PBfTdFq4x62r7CO1GHrnpkzhIpn9GghsA
xeY5V2Z+NrkglNXTaSfUrsr1Did6A6FaOHqUfX02zXd5Rip5vvLK6y8eJlYcZpRZYDsP6wwPuSgv
8lDa/c/28y5egk1EEG3wIBXedgv+mnZ8ZIoAIkhreCZvWrAp8PLotMBY2YoyWVKmpoebfXuaUBB1
0bVHp491wwIDAQABo4IBnDCCAZgwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUB6lj96pk
z9L6G8h9ATWJ3kgVtGswHwYDVR0jBBgwFoAU/8nJZUxTgPGpDDwhroIqx+74MvswDgYDVR0PAQH/
BAQDAgGGMGcGCCsGAQUFBwEBBFswWTAuBggrBgEFBQcwAoYiaHR0cDovL2NybC5sbC5taXQuZWR1
L2dldHRvL0xMUkNBMjAnBggrBgEFBQcwAYYbaHR0cDovL29jc3AubGwubWl0LmVkdS9vY3NwMDQG
A1UdHwQtMCswKaAnoCWGI2h0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXRjcmwvTExSQ0EyMIGSBgNV
HSAEgYowgYcwDQYLKoZIhvcSAgEDAQYwDQYLKoZIhvcSAgEDAQgwDQYLKoZIhvcSAgEDAQcwDQYL
KoZIhvcSAgEDAQkwDQYLKoZIhvcSAgEDAQowDQYLKoZIhvcSAgEDAQswDQYLKoZIhvcSAgEDAQ4w
DQYLKoZIhvcSAgEDAQ8wDQYLKoZIhvcSAgEDARAwDQYJKoZIhvcNAQELBQADggEBAJOSfJ2oJKi5
AR/DhGv15Y4etfy0fcTVlciAhmBemrvOA7UVTyn/hSTFR+C1aZLM5A9Y8173YIT/JE06cb+dszxW
OLu3eg1TIU/bhkkE6Z1WvDK1fh/T1qcv80BXTG53bGoGVy3n+Djp2w/UJRS5/ror02xW9pcwySwV
4YcgmlTtVyEmfCwfxi+BBOnELZGUWE3O01a44zd81XGS/dMgL504c1lLV1Vs25YmLvZhAe4pFjF+
FSBBdwz8zhIdaqa4BMuE3JJaUFtRdNs8nLR8phUlxhstUac70Shv6FE8PrIFxwkokA5zyxVW0LD3
dpWFLtx18GWfpXatqRreMspTGe4wggVAMIIEKKADAgECAhMmAAB0FHJQAiNxhwPuAAAAAHQUMA0G
CSqGSIb3DQEBCwUAMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZNSVQgTGluY29sbiBMYWJvcmF0
b3J5MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTgwHhcNMjQwODI4MTcxNzUwWhcN
MjkwODI3MTcxNzUwWjBeMQswCQYDVQQGEwJVUzEfMB0GA1UEChMWTUlUIExpbmNvbG4gTGFib3Jh
dG9yeTEPMA0GA1UECxMGUGVvcGxlMR0wGwYDVQQDExRNYW5uLkpvaG4uUC41MDAwNTczOTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALrC1gG2GRgmq3F4jYI2jDiDa3ovinQzeFVrIjG6
Sx3dm4nD6Kug5esO0aen+GgXj2gxFmfERh7FiTulHxnU1OvUU10KRRljWVeux137+hvRel8DzsUd
0+/tAT9VSWXM9u04LhuqIZvdP9s1K3gJJWXljVSWMWPtbOnJf3N9dfPP+j9BS5DPJa9yxVQy3aXw
nbVuMXMvKJU6KRMb2xZfL0PVR450g7FZTGky3vCYhVTQwit5DjUtdiRDJwkcVPCFD3vjDuOvvEfA
wPxhPMpALil0ZPpx7opMDXw/Oi1N4HjwGyjpNPm6iYfbme89SvP6lyyY7LcOAq0dj05h9BomtUUC
AwEAAaOCAgIwggH+MB0GA1UdDgQWBBQ92yslVCtoz/v7KCCv9U1uOiFQ+TAOBgNVHQ8BAf8EBAMC
BsAwHwYDVR0jBBgwFoAUB6lj96pkz9L6G8h9ATWJ3kgVtGswMwYDVR0fBCwwKjAooCagJIYiaHR0
cDovL2NybC5sbC5taXQuZWR1L2dldGNybC9sbGNhODBmBggrBgEFBQcBAQRaMFgwLQYIKwYBBQUH
MAKGIWh0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXR0by9sbGNhODAnBggrBgEFBQcwAYYbaHR0cDov
L29jc3AubGwubWl0LmVkdS9vY3NwMD0GCSsGAQQBgjcVBwQwMC4GJisGAQQBgjcVCIOD5R2H7Kdm
hq2HFYPq8EWFtqEfHYXL3jKH/4pzAgFkAgEKMCIGA1UdJQEB/wQYMBYGCCsGAQUFBwMEBgorBgEE
AYI3CgMMMBsGA1UdEQQUMBKBEG1hbm5qQGxsLm1pdC5lZHUwTAYJKwYBBAGCNxkCBD8wPaA7Bgor
BgEEAYI3GQIBoC0EK1MtMS01LTIxLTc5MzUwNTg3LTg5NjQxNDU1OS0yNjYyMDIwODY3LTU3ODcw
GAYDVR0gBBEwDzANBgsqhkiG9xICAQMBCDAnBgkrBgEEAYI3FAIEGh4YAEwATABVAHMAZQByAFMA
aQBnAC0AUwBXMA0GCSqGSIb3DQEBCwUAA4IBAQCIrJL/8d+l5D4LQY4U+4mDK+unMLeR1LWmXe4I
5uzcO3SPnQAD09noV67LAidJX/ctA+1dJ9JtZJr2gm1J59IGXVj2GgsvXHuPQnkwQ3mkA2abZeIM
xkCbtpobkXwLqYNblFnK2LXqKWJtFZB0XhsqEe82LUOZD3BIwMw9O/erwrmg5LQCdIVm12wK9M56
mVcCpr2M89FD5e3tQbN6eVQs5NOUjVVMp81Nktw0Qiv6royWJEGjgjUnS2mtDAeoo7lM4D7WmYBh
7yc3lv03mM3DpfbKTJN88pDEM8vzSkrx55qHq5a6MmW1lZe+WRKVyRr9j1SQOisYiO23+uEWUvVx
MIIFQzCCBCugAwIBAgITJgAAECJOdYPN2Sc27QAAAAAQIjANBgkqhkiG9w0BAQsFADBRMQswCQYD
VQQGEwJVUzEfMB0GA1UECgwWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMw
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

------=_NextPart_000_0137_01DB97F9.21CBD920--

--===============4959452558945308728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4959452558945308728==--
