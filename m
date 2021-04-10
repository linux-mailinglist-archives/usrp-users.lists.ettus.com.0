Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A9F35B095
	for <lists+usrp-users@lfdr.de>; Sat, 10 Apr 2021 23:16:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8BCE383CBD
	for <lists+usrp-users@lfdr.de>; Sat, 10 Apr 2021 17:16:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ou.edu header.i=@ou.edu header.b="KYguD141";
	dkim-atps=neutral
Received: from mx0a-00272701.pphosted.com (mx0a-00272701.pphosted.com [67.231.145.144])
	by mm2.emwd.com (Postfix) with ESMTPS id 64B33383C57
	for <usrp-users@lists.ettus.com>; Sat, 10 Apr 2021 17:15:24 -0400 (EDT)
Received: from pps.filterd (m0107983.ppops.net [127.0.0.1])
	by mx0a-00272701.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13ALBTle026884
	for <usrp-users@lists.ettus.com>; Sat, 10 Apr 2021 16:15:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ou.edu; h=from : to : subject :
 date : message-id : content-type : mime-version; s=domainkey;
 bh=XgBztqh09RrSHqqBWiep2I+ZXsNP1H8xtcIpNVjGASg=;
 b=KYguD141hGSZ1iAg1fDDslk8ZugSvpTNT3ZpUPpZ+WRseAvtONEGTDPuHq8JS27KAEUm
 lAO/qjW2PHBNKYqWr1gICFH8VdYCqFfGnr+n6n7ObHemUB9qu/MQPAF0OsTLBSgXIBhf
 uoBGqlrgghjBP9W/9qKMpN+EUAB4/hJYncBlZVK3fMeQ9Fhc/RpszP5YvgflLkadQA3d
 DQVlBsNnWWXK7nOz3W6mCCihOXkly3deVQ+C7JYoFFsdf0b8kcUOYPsR3Y/NkP1W7wj2
 T1A1FTta6O7Xcf/t3qTnWEMxRRaeH8mwcxf8sdQbzhr1QRfXy2knfWj8bwTfMzmJEHUq bA==
Received: from nam04-dm6-obe.outbound.protection.outlook.com (mail-dm6nam08lp2040.outbound.protection.outlook.com [104.47.73.40])
	by mx0a-00272701.pphosted.com with ESMTP id 37u9hc99q8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Sat, 10 Apr 2021 16:15:22 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J11gU29cDm9wBpJgtCx/EwNhkHKpcXpuYtx0Yu/MaiM82drphtujrFFY9djBIOXsnw7gNlOf2+ND2YsOP5SGnrwfj78ARHondDSIAo7o9kta5jjga9smwxJYQf94GBDLcHFBVf8jH1FRLDdnKwnfqhLuO3CKKPehiyBYM8SXrJMfN67sJmnboOY+z34K34ClyZs+qZ4WoBcRrrJSH+Ky+yfNZGMghWMqvjomtuEmfWAjGvFfAB7OM98WCBrF247O1MjSAqH18MZ7OyFh6V+uEEOlvBIK+mEupYxhk6CXoFa8iEpyvFRcEHYi6ll1lm0VzTqmf0ce1qLEBRCOSv9TwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XgBztqh09RrSHqqBWiep2I+ZXsNP1H8xtcIpNVjGASg=;
 b=W2wwfIlDF5AKFjusoGwfvVyynRlzMQPVgZRmy/VEW0sPsa3pamfBGyMRHwtNuLqS7jmc4asYD9TEEyD0U0W+X0/KopJzKw/a6JCV1m697LG1kSMlcKZP0uVIzZGAFPhcyIfA1Dux5BPXDzm/Ymxas1bgnGqwN3tzw7IWYa00hs3z06OVA5vtd8kCvHEfgy1UwKki7K96UDXac16aOXmP8mXGrrSsvZQeEly6CRIh1X9BNIi3YCNuZulnuY7UbzmyOj0Dlqeg/HuhgMIfddjlCQfEVG3cnXsW1jhmauIlGUHgU/b3pilER2wL7m3GZ1422pDp67IrYbudcsovKbBHRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ou.edu; dmarc=pass action=none header.from=ou.edu; dkim=pass
 header.d=ou.edu; arc=none
Received: from SN6PR03MB4160.namprd03.prod.outlook.com (2603:10b6:805:bd::20)
 by SN6PR03MB3759.namprd03.prod.outlook.com (2603:10b6:805:6a::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.18; Sat, 10 Apr
 2021 21:15:19 +0000
Received: from SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::39eb:ded4:5890:9e71]) by SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::39eb:ded4:5890:9e71%6]) with mapi id 15.20.4020.021; Sat, 10 Apr 2021
 21:15:19 +0000
From: "Mattingly, Rylee" <rmattingly@ou.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Verilog Module Directory
Thread-Index: AQHXLk4JLb02S14w5E+2fVQou6sZag==
Date: Sat, 10 Apr 2021 21:15:19 +0000
Message-ID: 
 <SN6PR03MB416058F4E10D32E71F77AFC6B1729@SN6PR03MB4160.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ou.edu;
x-originating-ip: [2600:387:a:9::b4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa39091c-7ef4-4e3e-a90b-08d8fc65bee1
x-ms-traffictypediagnostic: SN6PR03MB3759:
x-microsoft-antispam-prvs: 
 <SN6PR03MB37593033ECA436FDAFFB6247B1729@SN6PR03MB3759.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Y5ibYcx4iSQZzTFZaPD6TvW3XqNB64goR9akBk2k4DPa18U6EDRmTQPwjerujBOyX1evNR3+ObSClcVGkXxpBYYZ4JVgDadcP6c73vmgdi28r9/qOigPAsyqOmtamnqCzjVBsEgHeN92G032R8FM5bd/2prYa3NCp0CmEQkLkw+r0MKXoa/T/wEs737S2n9ha/e4scKUDpgPgctgmikdEqNpeup1/IK9slOC3U1fx43rrxWlaRe2q58l1OVUAaVdcwTTVnAIblpTwPXaPG/ImPmA5rM4uJPqeyH/+0r/e+JBrXsBZYlmxqjgXOt9mA15IHvygYA3GEn/lLSyRHj5fDFl7xZFGaAksz69NO+Lgf0gi+YSilKT45BfPvj/f72w1oiOJDjV/Rx5OsJwrKlrCUFrtwY9h2ZOEoNpngJxe2YmUQsTYNxtAI9ZEEGpYBuJACq5eTT0r1fkKlRWPK9KJdCpcIrOI19n22a1ehITrKZYAK/TuwbscV1rsu4NHuFDnVejm6tB6GyOaGj7qVti0GjRoJHUkdXnMWT34i6JEaP9DcBBEWQZX/Pgqv+hT1Ib6kwxWHDSdi5nel6pR4TUdavElRn0nGw+OUjsN4krwdQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR03MB4160.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(346002)(39850400004)(396003)(376002)(66946007)(76116006)(66446008)(64756008)(66476007)(75432002)(66556008)(7116003)(8676002)(8936002)(186003)(83380400001)(38100700002)(9686003)(316002)(786003)(55016002)(478600001)(52536014)(7696005)(4744005)(71200400001)(3480700007)(33656002)(6916009)(6506007)(86362001)(5660300002)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?Windows-1252?Q?B/Yeq8jyU7fmfj4mtq9azm01ZH1uY1R7sHmY/2mqqT7k1fBcJP3dlECg?=
 =?Windows-1252?Q?WD5/mKxvJPCitClAheVZrIibW9exAmEK7FRsMkFTLU466Frl1JJ1wAaX?=
 =?Windows-1252?Q?n6knVEqTmnjuXEz1Jd4q6gBGTl023WC+q70gjIC8IcGtkp1hh7ptMQ3D?=
 =?Windows-1252?Q?hcn4ulwjXN4ablwyMZdNgyxNpL3lxtQDnFuvxNLtXOLbK/WhVJFnECNH?=
 =?Windows-1252?Q?uw17oQADNHs0VvVCuS1sNieiA0JDmOUTLGdSJHP8C2I0DqBGwtwJKLsE?=
 =?Windows-1252?Q?x58VTH2GLYrYGAk2J9Vg784RRbIejKb0XOCn7fAphDNS46m9I/c/qi2G?=
 =?Windows-1252?Q?6Y/+c5Egh7waNKWP3NB+ZBMONern0DsmY1cL1SJ0HItdhJzH3Awivxkw?=
 =?Windows-1252?Q?P/kbIMtoW4KHNzt+5HSyscWBgHOr7I7pVqhHvlhD0MiEnfFdZGxAkj+P?=
 =?Windows-1252?Q?vGXlCGT2QLuS98uyzVKG8W1pXTL7IHAeVHZdcvEFsylG+Rifqdmc4Feh?=
 =?Windows-1252?Q?rO1ow+FZL6eeykazUqSLc7S6OROfysA/nSwB/KIY8LBzhUSlakI1hmU8?=
 =?Windows-1252?Q?tD59cexLMGBFwtgS1C16mwkEqyQcneTxV7XETOhsWVpPtmBEumTX9k6M?=
 =?Windows-1252?Q?UcxuB+tqSS6t+DcTwm9Uqo9wFaEZq8IT/yui4/dAU41N8qIGrMUJRr3x?=
 =?Windows-1252?Q?xjszrpuHDJ2IGc01luP4DT28WywN2fluQW0AAvMNNlxQOKrJ5vOod/2S?=
 =?Windows-1252?Q?x5s2sbZ0dDGQSQv/0eSIqJtmegTnHposNjQ3S12gwn0dOnXBunut9zxH?=
 =?Windows-1252?Q?IMxsrLRDgslqkM+eZT9KmL6Cm6SaT03L8i6fjJ2yNp7iEyUlKiELe28P?=
 =?Windows-1252?Q?pmZJV3FRF4n9wSVFC+jr+f1lcQxJAQ9KRhs24O9GPOv76raDm2IEoJ53?=
 =?Windows-1252?Q?K5b8sTS9PKFq1Y/SS2Z1qzDUJBYw0B2PessYTUTIfRuiqzzMjiSxhTUM?=
 =?Windows-1252?Q?NABerK4kaV8qgj2u5ntNdIrVgcHrI8qfBv3JPraDGsHuy+AruBhPlFxi?=
 =?Windows-1252?Q?DTHbkxYNJx1Dn4iv8IlYNM8LrnYupNeAPGKhOg0isn76QGyd5BEqWESg?=
 =?Windows-1252?Q?b56+a5z2k8LOBM72M8fyhgmTfv3RBD9p4VqZZ9tuF8ClZVgYPSKUwVJg?=
 =?Windows-1252?Q?1jo7GZFfXVY9sl3NywB2vl2Do4Uf+C7CP9HcNc1fkixMXUhIAXEfSkCi?=
 =?Windows-1252?Q?bZ5dFnUCXZPCMeXqSfUf35qIkIKf4jH5JiPRkEPp+jq77VQnxylzuLXd?=
 =?Windows-1252?Q?o3kSJ4oMmxNGqDZdK+ofnmhy5Uf5wLLFZ120rVxYCUIbEmH/avDyfWcv?=
 =?Windows-1252?Q?rOsGSsVhd/BjohL3AeLwXaMgRGl/Iepvmjac/F8br4YrNXpMo+My8ppR?=
 =?Windows-1252?Q?YBtODuS1TdRSVIiNdsxgeA=3D=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ou.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR03MB4160.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa39091c-7ef4-4e3e-a90b-08d8fc65bee1
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2021 21:15:19.3963
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c7de09d-9034-44c1-b462-c464fece204a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zK/1A57l4Tt/B/v2MIiyOZKCh5O68JBszrORdTgRopMbFDQXCe/aIVhzkuoWCyUz3Bjn5askvFchG1bqI9i8vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR03MB3759
X-Proofpoint-GUID: yj_36AD0rmNDQvPy6iRbPI5atmOocRsm
X-Proofpoint-ORIG-GUID: yj_36AD0rmNDQvPy6iRbPI5atmOocRsm
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-10_07:2021-04-09,2021-04-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 mlxscore=0 suspectscore=0 spamscore=0 clxscore=1015
 malwarescore=0 mlxlogscore=792 phishscore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104100161
Message-ID-Hash: PSBVY6EGMSHMEAZUAEZ7POQ7LEXEQ2QS
X-Message-ID-Hash: PSBVY6EGMSHMEAZUAEZ7POQ7LEXEQ2QS
X-MailFrom: prvs=1734a2f539=rmattingly@ou.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Verilog Module Directory
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4Z2NTPX3ULA4I2GGB7EN3Q4IZATLRWB2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5719909968255241613=="

--===============5719909968255241613==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR03MB416058F4E10D32E71F77AFC6B1729SN6PR03MB4160namp_"

--_000_SN6PR03MB416058F4E10D32E71F77AFC6B1729SN6PR03MB4160namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi all,

I have broken the code for my RFNoC block into a couple of different Verilo=
g modules to help with single file complexity. Unfortunately, when I try to=
 build the image it doesn=92t find the module files when I put them in fpga=
/ directory of the OOT tree module. I have also tried one of the UHD lib di=
rectories where other .v modules are located but that doesn=92t seem to wor=
k either.

Where should these files go?

Thank you,

Rylee Mattingly
University of Oklahoma
Graduate Research Assistant
Email: rmattingly@ou.edu<mailto:rmattingly@ou.edu>


--_000_SN6PR03MB416058F4E10D32E71F77AFC6B1729SN6PR03MB4160namp_
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
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi all,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I have broken the c=
ode for my RFNoC block into a couple of different Verilog modules to help w=
ith single file complexity. Unfortunately, when I try to build the image it=
 doesn=92t find the module files when
 I put them in fpga/ directory of the OOT tree module. I have also tried on=
e of the UHD lib directories where other .v modules are located but that do=
esn=92t seem to work either.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Where should these =
files go?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you,<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal">Rylee Mattingly<o:p></o:p></p>
<p class=3D"MsoNormal">University of Oklahoma<o:p></o:p></p>
<p class=3D"MsoNormal">Graduate Research Assistant<o:p></o:p></p>
<p class=3D"MsoNormal">Email: <a href=3D"mailto:rmattingly@ou.edu"><span st=
yle=3D"color:#0563C1">rmattingly@ou.edu</span></a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SN6PR03MB416058F4E10D32E71F77AFC6B1729SN6PR03MB4160namp_--

--===============5719909968255241613==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5719909968255241613==--
