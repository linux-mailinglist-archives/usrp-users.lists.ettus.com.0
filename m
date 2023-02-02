Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B1E68799A
	for <lists+usrp-users@lfdr.de>; Thu,  2 Feb 2023 10:57:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1007383C0F
	for <lists+usrp-users@lfdr.de>; Thu,  2 Feb 2023 04:57:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675331861; bh=ioJ2Pg0lgJ4SMiCDNoFl38xe5GqnmGzq7yvYbuXbtqg=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MB7mtWO9RfLQXxYxY1OVsD7G2qi3laWZu40KJGte4mU9qmn5yumvWSzmydLbuVNGO
	 9itzh4b6BgP/To8XnLqN0B+bn1jWbbImtopdSU81YgX0nOcbi7yLXIZRPqv/mz84/W
	 PmEq8CsjCq2+zjiO3AK+dbDPc2ePHpcIj2EF9C/7yJbVn3YR8dYiDVuMBXOlRxZFRr
	 rgtUtxpmZaF/AvP4NO1dCh7BUoQCQ4+W88nS8YX1+ikfP7U52RkkDnC41dCd0G9d1S
	 o8BUIr6/zEJnubLIwHXdxTii/DuREYZ+zyRbF4wBkbnHuLhaOxeBMBEJ/VPVyeEirs
	 PNulotv2hblUQ==
Received: from mx07-002baa02.pphosted.com (mx07-002baa02.pphosted.com [185.132.183.154])
	by mm2.emwd.com (Postfix) with ESMTPS id 8DCBF380C96
	for <usrp-users@lists.ettus.com>; Thu,  2 Feb 2023 04:56:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmv.com header.i=@gmv.com header.b="UOl9y6Eg";
	dkim=pass (1024-bit key; unprotected) header.d=gmv0.onmicrosoft.com header.i=@gmv0.onmicrosoft.com header.b="TTqNI+Y9";
	dkim-atps=neutral
Received: from pps.filterd (m0205085.ppops.net [127.0.0.1])
	by mx08-002baa02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3127dh2P030205
	for <usrp-users@lists.ettus.com>; Thu, 2 Feb 2023 10:56:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmv.com; h=from : to : subject :
 date : message-id : content-type : mime-version; s=gmvcom;
 bh=jy9MahXOSknYFlYLPTZHiVl38z8yVKa393qzUHMQN1g=;
 b=UOl9y6EggHR/lebY0YMyZvgiHAIfQUAhLASVPBEFjNGXUuVDU4zun0KELsg/87wfPCCT
 66oHZBcj4RUfHCmjXQOqMyfhp/5fRPZQnx+DcA2+i/M44Khi6DZ3HoIk9lAKxzdDzU8c
 n/W46qn2U95vax0wJA83dZsorZFXEiAtvzkgWskeIKGiTWzmQsxBXOXp9U34cqpCr1j6
 f6sAOoGwZYXUgIx9r/3ZFBPFzi8FADiHURzpEjYOqhCyBj5RrOgqCsfl4Ens2FpQrZsQ
 sx6cYiYhwkDzPTS2UmT9oxOwAgPSMzAl4a9AW7442q7CNgFHATtI31O6L1sY6k52V1nb Mw==
Received: from eur05-am6-obe.outbound.protection.outlook.com (mail-am6eur05lp2113.outbound.protection.outlook.com [104.47.18.113])
	by mx08-002baa02.pphosted.com (PPS) with ESMTPS id 3nfneqh9bh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Thu, 02 Feb 2023 10:56:14 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vhec5QtKovk8OfBZCOapXrQwcByAU56biPUlfoUx4Z79GoQYJ5v/D3zkb6Zs5ICK4Grjy4t09nvUx21gZwgbri3B4OGTpDIQXKo7uPeOhCV3spnSGQCo7U5vAladtnAORTn90HnvujrSE0HLN7q8KBmdos2RTCJlSvLSRwaTi0528aljPmn4DYPS2zZ/EH4WS08CeagQi1A+sjq49sfxBYvsjdWJM96BGGLbO0M7DeoJ1bN87TviX+dI7rApy0pHMoStlPZFw89N3imF6Kx9Tk0r6LkhHCf1gNna02zgnRpij1lu+aWeODZ/jU8EbXGBpoTF0tGfRsh0Byy+ivnIRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jy9MahXOSknYFlYLPTZHiVl38z8yVKa393qzUHMQN1g=;
 b=HvbeBImGJrv0hctikTYf15BczHbDiPosm0p1rW+duxqbFaSBQeCX2wJM2NOuAsoJ/A1aIQMUvl+/uTk5np/UTCjDM2/iiPhG3TzscFMf3JsyBb04r4Ppfa0h/bbZb/NxnZUwGwQXA0BT3LmZ0e90j7eewlQdveaggPC+rq8w91YQJCvMUCcASQR9jDAFNt/k6SRduEkZ6lem46de/VvCTsA+LPvMPRsAB73klbKQaXOarKr8HXuY5atLoifUZy6RqHNCizALM7L9ItbB81Fxxarfas0eRlaWUoJEaRs2XwET1nuQAzG3zIgrr6/OQXLtZTTy3UgAdKhC2Q93skc1EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gmv.com; dmarc=pass action=none header.from=gmv.com; dkim=pass
 header.d=gmv.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmv0.onmicrosoft.com;
 s=selector1-gmv0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jy9MahXOSknYFlYLPTZHiVl38z8yVKa393qzUHMQN1g=;
 b=TTqNI+Y9CJWy/COJHpMjMy+4kHR3RB6mHDBgbk9F+z4AbvJI4dXwMdAQZ6NJHWyn+iUDo05jJNWw0JpXyIvSwut7tq4KJkTN0+Gcpd/ZsCNzBmOxREfvs2YtM2WiB8ODL9GcbS7nyxPLQckemsC3TTRU6heCH7fciyihmvj48Yg=
Received: from PAXPR07MB8470.eurprd07.prod.outlook.com (2603:10a6:102:2b8::17)
 by AS8PR07MB9259.eurprd07.prod.outlook.com (2603:10a6:20b:61d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Thu, 2 Feb
 2023 09:56:13 +0000
Received: from PAXPR07MB8470.eurprd07.prod.outlook.com
 ([fe80::2cf2:d4fd:8613:1552]) by PAXPR07MB8470.eurprd07.prod.outlook.com
 ([fe80::2cf2:d4fd:8613:1552%3]) with mapi id 15.20.6043.038; Thu, 2 Feb 2023
 09:56:13 +0000
From: =?iso-8859-1?Q?Ra=FAl_Nieto_Freire?= <rnieto@gmv.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP x300 timing calibration
Thread-Index: Adk27BfbmKB9AINhQBS0hu33ODtlew==
Date: Thu, 2 Feb 2023 09:56:13 +0000
Message-ID: 
 <PAXPR07MB8470D032151F9E673A95DCB4C2D69@PAXPR07MB8470.eurprd07.prod.outlook.com>
Accept-Language: es-ES, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR07MB8470:EE_|AS8PR07MB9259:EE_
x-ms-office365-filtering-correlation-id: 55328c83-760d-4c9c-11d5-08db0503b7ee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 /bWl+sf4403HeSFuPk7OQ9nPJoKBBqVKy136/n86wpHNlOK2S3dz76HtXZU3MHyTmZFFtxhyHW4YwJGji430J0R84HJulN4J8peO/KMyKLFMJCIIaTGXne2kvgUjDDjRBnpWbPVKCzOIhYI4Cl26Ltgb5ZGYH3m7B0GDXsfk0G45E+/l41fnS2A3P7prKeOa9OVC9BuAHGiXXuk9NCfyO0U5lApuHHpdDkRkHuFIx4cJpkL5c+E9a+5TLmbswQ9tHIAbde0PZ9UTOhMDx1QSG9OHpmOgy9yd/0wkynNtY/N3teBsyin2p8Cg0CQtzhaTleZ50Gh1HbF+QeBA2M4Aufu4+U/c8nsWwNoyywbvh3s2A1wgbrmuTa48dwQ0kKcoM5dTwsbJHglOPfea0vCc2SfSVnXITwsSi4OHk64NSQwL1KBNSqrpjCfwruIZCgNQqJ7NM71hHvtX+PJ7UBlMLrpG1W+ryzrOcenqRWi4noLlQXArkO0PiTqwbaBGoYuvqhuCHK6GubMffvYcvI56we4ZdePW6RMUycm6u2sqQvSV2FsiPlj6hBvMfogQURyO45S7pmBxmBhKl/IGBn5rcUXt3YzOzBAeO5ITNhuQO35u4nxuGbkJyGRdXZ5CnLMfYfSy73+PX7LC7cXY7ffzTfNgPSBYJBm25U0U7/l1D1FJPl4gE5kh2qfEXUf6/Au2uQNWuv3GXYdJ4U/9//ePStB6zcJsb03oeQ9HC4u4f10vpPYGCKvp0F2EKPUJal0F
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR07MB8470.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(346002)(366004)(136003)(396003)(39850400004)(376002)(451199018)(33656002)(38100700002)(38070700005)(86362001)(122000001)(66946007)(8676002)(76116006)(6916009)(66476007)(64756008)(7696005)(66556008)(66446008)(71200400001)(41300700001)(8936002)(5660300002)(52536014)(2906002)(478600001)(55016003)(316002)(186003)(6506007)(55236004)(9686003)(26005)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?ZdshK1Pbl1F3TiO/DvxLquvoKsYTVaou57pN+bjp57pl6JMpGD82GvJTFL?=
 =?iso-8859-1?Q?IOaoz5JsZhK+H1tDYNhGlDt6JS31RIcXT6OcQ1GOsGXsSkJgj+V72umliR?=
 =?iso-8859-1?Q?MqLnvA3VKHp6jmcj48RUev6mIG/q5jSkuClOCkS7P6/UbM/h9oD1wfpNlJ?=
 =?iso-8859-1?Q?0pdUiBGp4PsRkz91Gbda0/0qGI0QCNNnoDDYVZxon6hVAvQW5Pf/RlJECO?=
 =?iso-8859-1?Q?3OyxDBDMBi8G0iNgsOgtiitf/ePE71vOuU/PHyMgKUIFjgXyWRt/86B48c?=
 =?iso-8859-1?Q?xlbIWxTOt52BWG7JNAeTQOYDvuvG3tur/CBEdih51P79B3I1T/GFAt1er3?=
 =?iso-8859-1?Q?72u6u3Je15YeekTiwViAEL/9thiXkirPnSZDWZWhqc584/8jwoo9joyOmR?=
 =?iso-8859-1?Q?lkU3j/uwH3EG++SqI2AMe2inx+pOx6aaDGIzQeczDnY0ZoX6qqiKL1XDxz?=
 =?iso-8859-1?Q?XVmy5KRjnqxKG8U8tqHKC3TECw0ccWjF6GuwXRtP2DwxvF6gtXHpOPnTaD?=
 =?iso-8859-1?Q?ZOpmeRALTlBuf3GBqALTRjJg3VcvbMpNLeDrp/s8jXe/UGu4vf3pCfR1pc?=
 =?iso-8859-1?Q?tGCy8ZyvCDyNVIUW7ZNVzqpEen4STzn8seORj+lN4ISaWJlBITgt+Rr0ds?=
 =?iso-8859-1?Q?wvCztb9/QtJQXZEi+FHwoSOjiGLlIYXr8jPyQ6yQ3K0nuT4MoRn6hZFj9w?=
 =?iso-8859-1?Q?t0y/v2tgPSHdiAlZNNr32zQFS6JY8+O44AjgohGmA/2oPTO0sfB2j7jcfV?=
 =?iso-8859-1?Q?aze25LID3oZ5ZRlIt7q5BaIjJtEqO8GNh6jdi/nIKTY2N9AcT0oJr/Pd1p?=
 =?iso-8859-1?Q?CfhZHoTzVn02/Uam+gQGoLXrTasOfv9I1TTGZMlebWbfn2txUMkBbSc9r3?=
 =?iso-8859-1?Q?MPBWaiT0nf06Do+IpKvDcjgqftX9imAGSKMzslIGPgkfjupqvALgZiDllr?=
 =?iso-8859-1?Q?lgTlFmbQ9Bi++Wms8lz57LtMstYKr/LrGXN6jySh9OTXZyajeiZDrpTkBy?=
 =?iso-8859-1?Q?V1TnQSA13yXJiHgzguKn9TpcOds8ZzbEshATrWtVJ1zEHTvZAkzttTu8gI?=
 =?iso-8859-1?Q?Ggo0iYE+b+WtIkc+jxfhPVccykKMTTTTzuwZjwehxoDQTQMcNg8/H3x9be?=
 =?iso-8859-1?Q?JsXrClN4Cfn3710uKgA272qUofIxmWij+ypcdl0xnZZ3LLZp2giqHttRpF?=
 =?iso-8859-1?Q?Au7s5fNmIIxyPlXOHVhMog7LmwGudiBWiT/4U/pV5+f+1728kHtf0hu6Gl?=
 =?iso-8859-1?Q?wGcKNnhen9FCKFjIW1M8koSmRkl0eUafbEr7x3ffpXFVE+77uPwTscgm6B?=
 =?iso-8859-1?Q?MnPeJTDg3mmCFF3xlnEtCLl85EWsf47msqfrmma4t0ccEGuDYJAj/LG/8p?=
 =?iso-8859-1?Q?TJe46kXl2SSkKeEPlhPfAc7XMMJYr9w5hLi94JMe4/gs3xjKT3oGRdJOgq?=
 =?iso-8859-1?Q?vQ8vRgNKEURCSfBo9VbjTkofCOEtDz69T5d1so0J3eTEbGag2b2ci62ubE?=
 =?iso-8859-1?Q?EWkvpqpgcqVhXFpswxWKtxX9xPv/+V025mNtW+Lft0dbt9XUbqo8oWfX7j?=
 =?iso-8859-1?Q?JFhyzJPmoZF5S/D4+43aAbu8UlGqKBbvdGunRifQfIDLpWcfC1ML/06wdX?=
 =?iso-8859-1?Q?yKfcMfRkxRoNU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gmv.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR07MB8470.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55328c83-760d-4c9c-11d5-08db0503b7ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2023 09:56:13.1618
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a91f586d-1511-4f1f-988d-fd1461dd5916
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1fheKqvlL+5GhoAxxg0hVTB3+5LTt2IRJ74NkVeIdxvLa3ru6c6b4nUXHFbDTSe6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR07MB9259
X-Proofpoint-GUID: 6V9CgnEGXsq8kcZt9ntER_PMHMBumiNa
X-Proofpoint-ORIG-GUID: 6V9CgnEGXsq8kcZt9ntER_PMHMBumiNa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-02-02_02,2023-01-31_01,2022-06-22_01
X-Proofpoint-Spam-Reason: safe
Message-ID-Hash: WSFT5I2WUTOZYNBYP3NXO3PSM6GBMTMT
X-Message-ID-Hash: WSFT5I2WUTOZYNBYP3NXO3PSM6GBMTMT
X-MailFrom: rnieto@gmv.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP x300 timing calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FVLHVLV2QDT2AYXMC4NMVRZSWB3SYVIO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1257339432958720469=="

--===============1257339432958720469==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PAXPR07MB8470D032151F9E673A95DCB4C2D69PAXPR07MB8470eurp_"

--_000_PAXPR07MB8470D032151F9E673A95DCB4C2D69PAXPR07MB8470eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear URSP community,

I'd like to launch some questions about the USRP x300 hardware (timing) cal=
ibration for a RF Record and Replay experiment using multifrequency GNSS, t=
herefore using the two available RF frontends. I appreciate any help or hin=
t you may provide.

The samples recording and replaying starts when a 1 PPS edge is detected.Al=
so a very stable 10 MHz source is used. Would it be possible to measure the=
 actual latency between the time a 1 PPS comes to the sma input port and th=
e actual moment of the samples recording/replaying? If I'm not wrong this w=
ould give us, after a GNSS software demodulation and the latency removing, =
the total propagation delay from the GNSS antenna phase center to the inter=
nal USRP DAC.


  *   Record setup:
USRP x300 is connected to a RF splitter + DC block + and to a GNSS antenna =
for the recording setup.

  *   Replay setup:
USRP x300 is connected to the splitter as a combiner to join the two RF cha=
nnels + DC block + 20dB atenuattor and its output to a GNSS receiver.

To perform our tests we have been using the UHD software and we are able to=
 aligned our 1 PPS to a GNSSt timescale.

Thank you very much.
Best regards,
Raul Nieto

--_000_PAXPR07MB8470D032151F9E673A95DCB4C2D69PAXPR07MB8470eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:559828439;
	mso-list-type:hybrid;
	mso-list-template-ids:205547006 -796512922 201981955 201981957 201981953 2=
01981955 201981957 201981953 201981955 201981957;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ES" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear URSP community,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I'd like to launch some questio=
ns about the USRP x300 hardware (timing) calibration for a RF Record and Re=
play experiment using multifrequency GNSS, therefore using the two availabl=
e RF frontends. I appreciate any help
 or hint you may provide.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The samples recording and repla=
ying starts when a 1 PPS edge is detected.Also a very stable 10 MHz source =
is used. Would it be possible to measure the actual latency between the tim=
e a 1 PPS comes to the sma input port
 and the actual moment of the samples recording/replaying? If I'm not wrong=
 this would give us, after a GNSS software demodulation and the latency rem=
oving, the total propagation delay from the GNSS antenna phase center to th=
e internal USRP DAC.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1"><span lang=3D"EN-US">Record setup:<o:p></o:p></span></li></ul>
<p class=3D"MsoNormal" style=3D"text-indent:18.0pt"><span lang=3D"EN-US">US=
RP x300 is connected to a RF splitter + DC block + and to a GNSS antenna fo=
r the recording setup.
<o:p></o:p></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1"><span lang=3D"EN-US">Replay setup:<o:p></o:p></span></li></ul>
<p class=3D"MsoNormal" style=3D"text-indent:18.0pt"><span lang=3D"EN-US">US=
RP x300 is connected to the splitter as a combiner to join the two RF chann=
els + DC block + 20dB atenuattor and its output to a GNSS receiver. &nbsp;<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">To perform our tests we have be=
en using the UHD software and we are able to aligned our 1 PPS to a GNSSt t=
imescale.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you very much.<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards,<br>
Raul Nieto<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_PAXPR07MB8470D032151F9E673A95DCB4C2D69PAXPR07MB8470eurp_--

--===============1257339432958720469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1257339432958720469==--
