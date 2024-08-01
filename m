Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DFC9452B8
	for <lists+usrp-users@lfdr.de>; Thu,  1 Aug 2024 20:32:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1FAA7384DE1
	for <lists+usrp-users@lfdr.de>; Thu,  1 Aug 2024 14:32:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722537131; bh=Zpu9JSNYO5TvqnvppOn8XpZJqnr7kTphxcBvyAb/i7s=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=z1ohmzIxFvzY5g5r8+hvRo0yuVElGNWEOkRJsxSEnRDdHC78E0sa7jleywZglpm5H
	 fMXFsfrzbY5WbooAO0c3ijbet3MWKejq8fXhD4lAu6TsiaHR3fK0T5h5h1JvcD/c2y
	 TSmbfMrmKfo8QlP1yPIWY0/XVEwywgj1AOFeJB1P3dT2IWzhUL87n5tw5Kd7uMkn9B
	 VdYnvtsFLp7BCinVPnyK4im/Zo2SJkeEKCBM0k/At/OG2Fmozr61B1tXTNz3ADCyob
	 u7mdQLhuJWFhSjab9DaJImVrIvIyU1cjejQe5xVNifyiW+yeqcVfY8xAIgP3WqDCpK
	 nrTnEsZiIRwVw==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0042.outbound.protection.office365.us [23.103.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 56CA7384DE1
	for <usrp-users@lists.ettus.com>; Thu,  1 Aug 2024 14:31:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=str.us header.i=@str.us header.b="M37A4wRQ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=Iey7rMhOUIpULlmCIWHs3IGtZzJITsqUmkRXdjGO6GGQYemDzirHOr66nbKKaOO2TIxSIHxYbo68UHJRXHy6Pei+8T1uPdxBbKU63csanlGazBZqmYxYPEKPZg3xFdrivpzFHUa2n0RtWrcygRgmtTmngX2rC+w/rC9bol5Vma2psbqB2NxkPLAwh+/mBhVY66jHLnF0mpDXYOcroTIZP/jxdSJPGQG3XkXcACnAJj3FeJUE6b8AOGRkVL4W/F7hRKtiddWG83yew8g59XyWK3Wr+eBUsk8oV6RXfxceEdYWstdBiEVyyPhNXRi16HFD4K0T2OzXYI4cYqyM15694w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZWqjQ0GV2rHfhPyujH4YNGgYhZFiOPFbeNDStT4dG7g=;
 b=d+587MS5hf7PdKM2GnDm5gT6LPwY7wu8gLlJ7uzFtEb9evR3cMduI2nFTgkAel8bjt/2DyCKxyM5dC88qJ+jKrDzEp51b2APG8jabXrBm+BfPcQuI3UBJi6lTB+cp9WBGrS/IGMprriMHnilLmVQlOLfNutPsxDVue7WkAfQzpy+ZNA9pF8JXXyWuuOpgLSvHcJrCSPzfgeugp54RvB0AC137u8MHHIo0DnG7RTOFqJRj1je6qmd7c2MVPD1qyts4V+zBqsREo241paAtNsEv4hdJWqmMZQfsrk1dKPhntwsiEcbpD+wl2cCHouGxC8CNBSy04p8VYKnO5qmw228Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=str.us; dmarc=pass action=none header.from=str.us; dkim=pass
 header.d=str.us; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=str.us; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZWqjQ0GV2rHfhPyujH4YNGgYhZFiOPFbeNDStT4dG7g=;
 b=M37A4wRQCjS/prmCG3DSCUR0pSEoJGaaaQQqGeeH7S/HKx0UiNvsfGCLl5lUCyFR9SZFJVCTgF9+hCHBfam+WaoR+IZK3LoWGRNEQRSFiC9WUC4pEVammp44a1m08nm4aKbEXCmlV0NIAxC4MzX6P2YZS5i2fR4K99kr8UKBffg=
Received: from BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16e::7)
 by BN0P110MB2171.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:1a2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.37; Thu, 1 Aug
 2024 18:31:05 +0000
Received: from BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM
 ([fe80::23c7:8e15:bd:3325]) by BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM
 ([fe80::23c7:8e15:bd:3325%5]) with mapi id 15.20.7784.035; Thu, 1 Aug 2024
 18:31:05 +0000
To: "Kaya, Altug" <altug.kaya@hhi.fraunhofer.de>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: X440 Tx and Rx Power Constraints
Thread-Index: AdriiEO92bxfVU67TCOmm+FBO9U7+ABsodMQ
Date: Thu, 1 Aug 2024 18:31:05 +0000
Message-ID: 
 <BN0P110MB101423D7A04A6F86EC58045E84B2A@BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM>
References: <ec3aae17e9b346ec9ad87e62dc19f5ab@hhi.fraunhofer.de>
In-Reply-To: <ec3aae17e9b346ec9ad87e62dc19f5ab@hhi.fraunhofer.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=str.us;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB1014:EE_|BN0P110MB2171:EE_
x-ms-office365-filtering-correlation-id: 3db094d7-385b-410d-27e7-08dcb2581a7d
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|41320700013|80162021|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?xmFuTXkbemFnWgP8KHEETHwWXxrRcNZodQ+z5AbCCDSZZpebt3t977eg5WTD?=
 =?us-ascii?Q?7+tj5THdpdPnHoAz37A0KR1kxWBoUT5NMegJ7nDJHFdIcvpsTxvY90vd4I4T?=
 =?us-ascii?Q?lnJKuB6kFmpufYReWyLEIT95OHNF/PvupaexQJv1fTNQ8dwh3g7CJ0WWFdSc?=
 =?us-ascii?Q?vgWRTSyZ3Nqof6d8ycJxvssdDK23RwAwKJtYdtzwWpefyg1tjjPWKql9wccu?=
 =?us-ascii?Q?IQ7xmYxL91TtuHnRDrDBdbBuIG6BDdxpAFGekyaO5eJRS5pHpTOyZd+/HaPx?=
 =?us-ascii?Q?doMbShDLXe5NIXyaYlI2HM2EYnIo84b61EY8XDZmzPVH+b+5Fac1OYoGXxgo?=
 =?us-ascii?Q?rqH6onHmz7vxfC4VZzizXKHBVrJ4wQl9X6KDxUvufA6MHL2K6v5vuxdbcLk6?=
 =?us-ascii?Q?oH5IqutS9FLiCVctzEJW4KutvCnQsWzBp4bUMG9Xx1IyGq3F7tlSo4D8Vg8L?=
 =?us-ascii?Q?iGmCPxzodP2kMYu2Z2XQJGYVowRNANgHP/xyiQFWKkXxllGFDGpDZkVIjxw+?=
 =?us-ascii?Q?7LglxVF7ak1vjUYtoHVAnFFLz59VwWQU4eVYXaqWLt6f2XP4bRIeUIkwLs/9?=
 =?us-ascii?Q?9G2U7bbZpQztNYQPKm0PsEIdq+06gbc7ZDGPt2PPG5OeOFL4+VDH0wshiPU4?=
 =?us-ascii?Q?T5YPmGUnISJG3aDXx/KSLUG3NSJlk0EVGI3JxSF5lj6CSdvcgj//PGDLpd2o?=
 =?us-ascii?Q?tysfNeO5ryYFPGE6Vb5FxZzyMZe+BFSY6wOeVo4yQtS+nU4sSuZK71x3DxqS?=
 =?us-ascii?Q?XCsb+DeiAgvm9+lDqeiRi2Ho/qj9Y6kcS4nP2P7lGsdUUmejE2YAVpjVSQGe?=
 =?us-ascii?Q?jALyvUJE87FNBX6GLILN/x6hto1LYO1y2+i5c/MBqBnRUQvIdtL+YvYk5sOf?=
 =?us-ascii?Q?59PYJxcDpC6xis07P2GFMcXwDYf0o4o5VjUwGs2kFQHdP+kihzDFbOwbd6in?=
 =?us-ascii?Q?lvHVltvPNYfmEAkYGoJFeuoyrmRav+STuizbGPpMw1jQJC6mZBYv9izRI9Cr?=
 =?us-ascii?Q?9/mCIm7Sot7qcUgVrqEIDUy+UOqW4a6vC90h8YLvT5hOiO5xzGSLHUK6AIea?=
 =?us-ascii?Q?OGNsuSLeloMC8x5rokYDTQtrCP6f2GSE0/uZezGIaTd4o6/tqujJTO3G58x2?=
 =?us-ascii?Q?WXNgaNWBs4Blfv5kToEY+z3KUvN4d5wIFAhWf+YmZuted3tFcIYMEOVlmdNi?=
 =?us-ascii?Q?tkJeeqdKSNrZKZsjXpBmAcjpBolV4wTawceqZ6LkBXVwCbq8VESdMLRWZOKk?=
 =?us-ascii?Q?PD6IMs+qg14fBhJt78OeCaxuPhBvbbUX1ecs1dwfBq/NoTk+GEpzhcR0xPd/?=
 =?us-ascii?Q?DuI9Y6gumqP+vg4byDyvwdDsRl9+kbm36kHjhUAgDPpYY3dht2kWp7lqqYoW?=
 =?us-ascii?Q?VI782iaY3kXZwFFBafkUEje6egiq?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(41320700013)(80162021)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?SZQtASAJL826Ot869bjR9I8yLsxrexk2kqAfVux8a/Mk3uzNg2PjQnUnx//P?=
 =?us-ascii?Q?cykAyV+FSgQIu2MEZdMBVPVNfdNg6mF/RyWIggYm3DG0Zc8Y8cKggQ44RRa2?=
 =?us-ascii?Q?Sqa6zuYoIb0aO9A4lXZ/83X3gqA5sYNk4HMgaJsLSG7Fdo3krxQ18a8ALZ3Z?=
 =?us-ascii?Q?Lj53XoAtyFBA5/lqvnKgQaJ2YDv9aDkOIzyGLiUgYnxVnm+kTovTDkdVoGTD?=
 =?us-ascii?Q?UEPmE28FVsGlCG4GDZ7/oqFYvshpOr0hp/Ws8MUrkoXlYlZ/+4EiAPCioZw/?=
 =?us-ascii?Q?XxP7UC54dL4KDb/jGyFGkDxOMkiAddkjP4COywj+npV/iVA15fmlxWvzo0mP?=
 =?us-ascii?Q?R+g7P+6ReX6LRbnQERmJgykLJUqQt0HIAX/GGAV98b9wIVqf7jty9FjMk2rE?=
 =?us-ascii?Q?MQOUGu8hqW3qGCCGnDovlw13tYNqZaPcoz61de5JwaD67qVKKpxbQCjQDvdq?=
 =?us-ascii?Q?OlqZ2adcS8DNesPHOP/riaOD9m9KpbBAYD31U2qewivgde/fwKJ7jGqvdopw?=
 =?us-ascii?Q?PsOJ0FkZi+xo+zSG7eApVE8XeKKfuCSBB2PFRkUUhQcogFPDGvmqEZZPVEHM?=
 =?us-ascii?Q?K1J6bWPiTFifKoq2vKyDlPPQggDRFa1j0dFM+Xr2MmIWWmgP6qJrRI5eWuhg?=
 =?us-ascii?Q?HxAyR4F1XGZLYybMS02imWMfo++2cBdcKOY6qOJ5K9vtzhLEd5bG33kBBa8Q?=
 =?us-ascii?Q?LJqXhZpQGAus+sJfWVJralOZy51guUAabfTI6bwYZAAt+p+9riX9Vf32MMVe?=
 =?us-ascii?Q?zM2JZ2Vlq6LLH9st614+qSPxkrr4ufS1R3b9ID7KSU4I3APiFa+Urz1U5GQr?=
 =?us-ascii?Q?+glI6cy2DW3KI8qQLYHOMdio//y+qKcoMevSvt68idcTkkDwftN85sHfxdPN?=
 =?us-ascii?Q?eeiAeTl2oUab+zAgqHRWk0MZ4x5DAMC5G3JhCqPs9Zyl7TJQ7u8vy2OH5Vs8?=
 =?us-ascii?Q?sP5/juCRoOQGHzK/gpXQPkN31/UET2l4aErqPl7SvTdKEli542sOjXfAtZdH?=
 =?us-ascii?Q?PVRdEUDx7G99cX8SoQmug0lndrC3amRcnvendQwH9HQD9dCk2TbZ57CtQEl5?=
 =?us-ascii?Q?ba+Pp5SvvkfR4yvt89tX0n/4RVN3otoxnOjeV4ZPYDrpyCq94hH0tu6uiO23?=
 =?us-ascii?Q?FbT7rJMaI9dxFYTYs2LFhoCoSuJIa0SLrZQTwLyR4jklsa7OK8zDASo9ILHP?=
 =?us-ascii?Q?MpBapGNrk0vdD+3hXTa35zEPfsnOtqZo6WZfkKxNYOxgXyhLmdIs8lGBh7fC?=
 =?us-ascii?Q?UZRTzYIQVHNKa3ShcSr4fveBN/zV319XZLUWg/4f1WJhojiJlq7cntcwWJ8W?=
 =?us-ascii?Q?I+UIAmHCDeE43Pf1jT7U95oGv26XpyyGCjJoKX+xeuTuDbKYgra3GZjl5u8Q?=
 =?us-ascii?Q?yGS4/uz/OVbyTB01PdhnSzNJ2X9TqM2gd3eySHa383rE1URvyiKmBF95B7+3?=
 =?us-ascii?Q?MouPLvLRKpAc58RWcuAVNdF3GZwsNVkocSO9Yql3zSRJOwHqPgIS6bg9kq1l?=
 =?us-ascii?Q?krVhUsAm9ZxqZOY=3D?=
MIME-Version: 1.0
X-OriginatorOrg: str.us
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1014.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 3db094d7-385b-410d-27e7-08dcb2581a7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2024 18:31:05.0873
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e436f686-4fd8-4b6f-ac36-441e84fbfa24
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB2171
Message-ID-Hash: 4E5VS7CJIYU5LB7XFPWS3GCQ3UM2T54S
X-Message-ID-Hash: 4E5VS7CJIYU5LB7XFPWS3GCQ3UM2T54S
X-MailFrom: patrick.panuski@str.us
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Tx and Rx Power Constraints
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NG3MZLPEZBXU7QW3AJLPLPPQC2F25AZR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Panuski, Patrick via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Panuski, Patrick" <patrick.panuski@str.us>
Content-Type: multipart/mixed; boundary="===============5789146813677319824=="

--===============5789146813677319824==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN0P110MB101423D7A04A6F86EC58045E84B2ABN0P110MB1014NAMP_"

--_000_BN0P110MB101423D7A04A6F86EC58045E84B2ABN0P110MB1014NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Altug,


  1.  Have you tried setting your converter rate to 2.94912 GHz and compari=
ng to the Ettus graph to get an apples-to-apples comparison?  Also in my ex=
perience, a weak MMPX connection can cause at least a 3dB loss... You can s=
ometimes see the observed Tx power jump around when you wiggle or adjust th=
e connectors. My X440 currently has one transmit channel that transmits abo=
ut 3 dB less power than the others, and I think I've narrowed this down to =
the particular MMPX connector on that channel being weak/faulty. I'd sugges=
t trying a different cable and also testing transmission on other channels,=
 but overall I wouldn't be surprised if the different clock rate was having=
 an effect here.
  2.  On the X440, you're probably okay directly connecting Tx to Rx. I thi=
nk the 30 dB attenuator recommendation is left over from older USRP devices=
 and is less applicable to the X440 architecture. The older USRPs had separ=
ate RF front ends with amplifiers on the transmit side and LNAs on the rece=
ive side that could be individually controlled in software, so it was possi=
ble to set transmit/receive gains too high for a loopback configuration and=
 the device could damage itself. With a 30 dB attenuator, virtually no soft=
ware settings could make the device damage itself in a loopback configurati=
on. However on the X440, the entire front end is integrated into the RFSoC =
and the daughter card is now just a passthrough. This means that your UHD p=
rogram cannot change amplifiers and gains so the max transmit power will be=
 capped in hardware around 0 dBm which is significantly below the sustained=
 Rx damage threshold.
  3.  Disclaimer: I'm not an expert here, just a user

Thanks,
Patrick

From: Kaya, Altug <altug.kaya@hhi.fraunhofer.de>
Sent: Wednesday, July 31, 2024 5:57 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] X440 Tx and Rx Power Constraints

*** WARNING: This message originates from outside the STR organization. ***
*** Please take appropriate care in opening any links or attachments. ***

Dear USRP Mailing List Members,

I have two questions regarding power constraints of X440:


  1.  I set the master clock rate to 360 MHz and made sure that the convert=
er rate becomes 2.88 GSps instead of 1.44 GSps.  I used an UHD example call=
ed "tx_waveforms" to verify the maximum output power. To compare the result=
s with the specification sheet, a constant ('CONST') wave of 500 MHz freque=
ncy with an amplitude of 1 is used. While expecting a single tone whose pow=
er is around -2 dBm (according to this graph given for 2.94912 GSps https:/=
/www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#:~:text=
=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C%202.94=
912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Frequency), it is ar=
ound -5 dBm. Does the output power vary that much between the converter rat=
es of 2.94912 GSps and 2.88 GSps?



  1.  I will use another X440 to capture the single tone (and the aliases d=
ue to RF sampling) and analyze the ADC spurs. On the front panel, maximum r=
eceiver input power is stated as 10 dBm. This is further elaborated down to=
 the operational frequency in this webpage (https://www.ni.com/docs/de-DE/b=
undle/ettus-usrp-x440-specs/page/specs.html#:~:text=3DMaximum%20input%20pow=
er%2C%20damage%20level). On the other hand, in the loop back configuration,=
 >30dB attenuation between ports were recommended.


What is the difference between connecting the Tx port of one X440 to the Rx=
 port of another X440 and connecting Tx&Rx ports of different daughter boar=
ds of the same X440? Why does the maximum receiver power requirement change=
? The maximum one can transmit from a Tx port of X440 is 0 dBm. According t=
o my understanding, it should be safe to connect Tx and Rx ports (of either=
 same or different X440s) to each other as long as I am working with a cons=
tant waveform with a PAPR of 0 dB.

I am grateful for your time and effort. If anything is unclear and you are =
willing to help, I can provide further details.

Best regards,
Altug KAYA



--_000_BN0P110MB101423D7A04A6F86EC58045E84B2ABN0P110MB1014NAMP_
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
	color:#0563C1;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:365058821;
	mso-list-template-ids:1140242716;}
@list l1
	{mso-list-id:420183726;
	mso-list-type:hybrid;
	mso-list-template-ids:-1053519324 67698705 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2
	{mso-list-id:502282909;
	mso-list-template-ids:-954927616;}
@list l2:level1
	{mso-level-start-at:2;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3
	{mso-list-id:2070299612;
	mso-list-type:hybrid;
	mso-list-template-ids:853935170 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l3:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l3:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l3:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
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
<p class=3D"MsoNormal">Hi Altug,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l3 level1 =
lfo5">Have you tried setting your converter rate to 2.94912 GHz and compari=
ng to the Ettus graph to get an apples-to-apples comparison? &nbsp;Also in =
my experience, a weak MMPX connection can
 cause at least a 3dB loss&#8230; You can sometimes see the observed Tx pow=
er jump around when you wiggle or adjust the connectors. My X440 currently =
has one transmit channel that transmits about 3 dB less power than the othe=
rs, and I think I&#8217;ve narrowed this down
 to the particular MMPX connector on that channel being weak/faulty. I&#821=
7;d suggest trying a different cable and also testing transmission on other=
 channels, but overall I wouldn&#8217;t be surprised if the different clock=
 rate was having an effect here.<o:p></o:p></li><li class=3D"MsoListParagra=
ph" style=3D"margin-left:0in;mso-list:l3 level1 lfo5">On the X440, you&#821=
7;re probably okay directly connecting Tx to Rx. I think the 30 dB attenuat=
or recommendation is left over from older USRP devices and is less applicab=
le to the X440
 architecture. The older USRPs had separate RF front ends with amplifiers o=
n the transmit side and LNAs on the receive side that could be individually=
 controlled in software, so it was possible to set transmit/receive gains t=
oo high for a loopback configuration
 and the device could damage itself. With a 30 dB attenuator, virtually no =
software settings could make the device damage itself in a loopback configu=
ration. However on the X440, the entire front end is integrated into the RF=
SoC and the daughter card is now
 just a passthrough. This means that your UHD program cannot change amplifi=
ers and gains so the max transmit power will be capped in hardware around 0=
 dBm which is significantly below the sustained Rx damage threshold.<o:p></=
o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l=
3 level1 lfo5">Disclaimer: I&#8217;m not an expert here, just a user<o:p></=
o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<br>
Patrick <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Kaya, Altug &lt;altug.kaya@hhi.fraunhof=
er.de&gt; <br>
<b>Sent:</b> Wednesday, July 31, 2024 5:57 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] X440 Tx and Rx Power Constraints<o:p></o:p></p=
>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:dotted #003333 1.5pt;padding:2.0pt 2.0pt 2.0pt 2.0pt">
<p class=3D"MsoNormal" style=3D"background:pink"><b><span style=3D"font-siz=
e:12.0pt;font-family:&quot;Courier New&quot;;color:black">*** WARNING: This=
 message originates from outside the STR organization. ***
<br>
*** Please take appropriate care in opening any links or attachments. ***</=
span></b><span style=3D"color:black">
</span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Dear USRP Mailing List Members,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have two questions regarding power constraints of =
X440:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo3">I set the master clock rate to 360 MHz and made sure that the convert=
er rate becomes 2.88 GSps instead of 1.44 GSps. &nbsp;I used an UHD example=
 called &#8220;tx_waveforms&#8221; to verify the maximum
 output power. To compare the results with the specification sheet, a const=
ant (&#8216;CONST&#8217;) wave of 500 MHz frequency with an amplitude of 1 =
is used. While expecting a single tone whose power is around -2 dBm (accord=
ing to this graph given for 2.94912 GSps
<a href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/=
specs.html#:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20d=
BFS%20CW%2C%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Fr=
equency">
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#=
:~:text=3DFigure%202.%20TX%20Maximum%20Output%20Power%3A%200%20dBFS%20CW%2C=
%202.94912%20GSps%20Converter%20Rate%2C%200%20Hz%20Waveform%20Frequency</a>=
), it is around -5 dBm.
<b>Does the output power vary that much between the converter rates of 2.94=
912 GSps and 2.88 GSps?</b><o:p></o:p></li></ol>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"2" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo3">I will use another X440 to capture the single tone (and the aliases d=
ue to RF sampling) and analyze the ADC spurs. On the front panel, maximum r=
eceiver input power is stated as 10
 dBm. This is further elaborated down to the operational frequency in this =
webpage (<a href=3D"https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-sp=
ecs/page/specs.html#:~:text=3DMaximum%20input%20power%2C%20damage%20level">=
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.html#=
:~:text=3DMaximum%20input%20power%2C%20damage%20level</a>).
 On the other hand, in the loop back configuration, &gt;30dB attenuation be=
tween ports were recommended.
<o:p></o:p></li></ol>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>What is the difference=
 between connecting the Tx port of one X440 to the Rx port of another X440 =
and connecting Tx&amp;Rx ports of different daughter boards of the same X44=
0? Why does the maximum receiver power requirement
 change? </b>The maximum one can transmit from a Tx port of X440 is 0 dBm. =
According to my understanding, it should be safe to connect Tx and Rx ports=
 (of either same or different X440s) to each other as long as I am working =
with a constant waveform with a
 PAPR of 0 dB.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am grateful for your time and effort. If anything =
is unclear and you are willing to help, I can provide further details.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Altug KAYA<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_BN0P110MB101423D7A04A6F86EC58045E84B2ABN0P110MB1014NAMP_--

--===============5789146813677319824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5789146813677319824==--
