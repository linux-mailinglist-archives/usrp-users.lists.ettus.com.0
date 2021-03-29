Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2665134DC81
	for <lists+usrp-users@lfdr.de>; Tue, 30 Mar 2021 01:31:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 22FB43837DF
	for <lists+usrp-users@lfdr.de>; Mon, 29 Mar 2021 19:31:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ou.edu header.i=@ou.edu header.b="WXbo1bUi";
	dkim-atps=neutral
Received: from mx0a-00272701.pphosted.com (mx0a-00272701.pphosted.com [67.231.145.144])
	by mm2.emwd.com (Postfix) with ESMTPS id 187A53834AE
	for <usrp-users@lists.ettus.com>; Mon, 29 Mar 2021 19:31:29 -0400 (EDT)
Received: from pps.filterd (m0107985.ppops.net [127.0.0.1])
	by mx0a-00272701.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12TNQFP4019468
	for <usrp-users@lists.ettus.com>; Mon, 29 Mar 2021 18:31:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ou.edu; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=domainkey;
 bh=cGg0S0DYsWhk1sNQggVlRxgKHVuMF4qsEu5EPO8VpFI=;
 b=WXbo1bUiYJR8BFciU1/EO9cC8lMocm5mdxNUFy407edVhrHFGl9e4nqJWg9cNylWZDUK
 HTQtYNgH0phg28+ewmBi1VV2kutoXsq1M0ALmrN0YCy/VnbxcE72wTTYsUVk1JcV4DXX
 ZBj8HPFXfWZ/mhRYj6cf1Kh5yzICievI9Raq0ANZsGrgVg0QOg/etiSLhBHZG47Pe2xS
 jpWLFdhtMhbd344n3WwhgWydEy6fI7eZ7A524Es2xdtvWyrFpJQ0MUQUWSKoEqPkdWiG
 8GOr5ncKYt5AGMXA/2Jw7BUlr072SlLubYv0OHfYlIFYJ+aO2IuoADSm7OHl40hNyE3g lA==
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2047.outbound.protection.outlook.com [104.47.66.47])
	by mx0a-00272701.pphosted.com with ESMTP id 37kk9414h7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Mon, 29 Mar 2021 18:31:28 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TJ+IDyQVR8pUqEcJM+gLpOnBfZxTvVMdq2vk7CgKkjs/4sLpoy9ULOsBk7y7FXAbDhvpNUeIISfZ5sAF9R1fVcPfXE65lXhGB4jpZFuQBK/SbrY7394Lakz2LSQVTaxe7w1ZUmPxBbeUCWOMG8/jmjF9mdPuA7TA1tBGq1i/tLPsCqsxT+SitVDDaM39u+QSkFdlXxe+mAfXd4rZhui5JBrBHQ2HTeeBJOHqqyAGOwla9V3RX6/od6n3tMW6CNCuLvKfbyt1Uj6qdaqoC95kqKwcI0nSyBsG3UKLL2W9Z37QyceEOaLAK4L796HugulqENUh+vnZqQMuyCXcu8ZdCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cGg0S0DYsWhk1sNQggVlRxgKHVuMF4qsEu5EPO8VpFI=;
 b=daaxT8/ICmKCZo2IHglyL45UcnXcVpFUOeyO4U2BEg7C6PWB/kfGp7MLTYGETpPCEHpFWew9Qd9jZZucU4PQlGn6kHUiL3cQbxkAmwy9sKDyIkmHbKyCuwMKWFYZEcsOyQLOJMV0CX88sva+D/krmDwEj/yAmbYSzfm9Tfnay5G3gGWJiI0M//AANTPn35ZTaFZ1gUNuiVbbqDmNkK/UZgp0bzae7DUCXB+vNg5h2LbJ/0Cn2d4E4eMjfk9B6Nn/jsuW0Y7M6WDXjrQqbeGqIoboWLSUMYDzQgPToyz7SnqUnYuJEKzLIuEd6FKoARgoYfxD5WIs97gmjBT74mdF/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ou.edu; dmarc=pass action=none header.from=ou.edu; dkim=pass
 header.d=ou.edu; arc=none
Received: from SN6PR03MB4160.namprd03.prod.outlook.com (2603:10b6:805:bd::20)
 by SN6PR03MB3949.namprd03.prod.outlook.com (2603:10b6:805:72::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.24; Mon, 29 Mar
 2021 23:31:26 +0000
Received: from SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::39eb:ded4:5890:9e71]) by SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::39eb:ded4:5890:9e71%6]) with mapi id 15.20.3977.033; Mon, 29 Mar 2021
 23:31:26 +0000
From: "Mattingly, Rylee" <rmattingly@ou.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Generating Packets in a 2-Port Block
Thread-Index: AQHXJOzpZtYdLchw00yFfObLXs/E76qbnLQi
Date: Mon, 29 Mar 2021 23:31:26 +0000
Message-ID: 
 <SN6PR03MB4160534B2F9F6E3B8647CDA3B17E9@SN6PR03MB4160.namprd03.prod.outlook.com>
References: 
 <SN6PR03MB41609C51432203513A57A1EDB17E9@SN6PR03MB4160.namprd03.prod.outlook.com>
In-Reply-To: 
 <SN6PR03MB41609C51432203513A57A1EDB17E9@SN6PR03MB4160.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ou.edu;
x-originating-ip: [129.15.133.239]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0399809c-1313-4f34-e735-08d8f30ac5b0
x-ms-traffictypediagnostic: SN6PR03MB3949:
x-microsoft-antispam-prvs: 
 <SN6PR03MB394921A3A51C70035E5A9C41B17E9@SN6PR03MB3949.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 81VADFJRDaxuPvIpIGEc8tqmkxpiJu9XnKeSTzUSKEKb1zOpCX4T9koi12IC1kxhQOrQWgEO8IR+PZWq3Fg3fd3Ftrm4uQUD8HSIp7IzmeJSHnn8hKAlZq2zIAe8E5l5cQD4vapY5EcuiUNqOjd2lcmMR+pmW3Y0h42Kuzq80XrgU33E/vG1a+aRDei4mN4oe8yHz5TC9fH462csJttNt/C+aIEX9lEmPxoaDK7dmfIvH3+efiwUR+HIz3ETSilausS4xb8L2dHjbiZFZ6LcroHFND9c7AgaZUhaBUU1SHWje2ftEoRfokt3MRiXlhV39C49fAG0cnJCkBCnAX/Krp6U8E9nL6OgS0Pj65dPnKzaQmMdjXj47vNDit4wiT9O03c4Ftt1iYidCQmn+Zw2LTt+NlSSN190SMjySZ1pgC5BWjMg7Og9jEPGPXUqnQtER0aUqQn8KZgW5f7k5CoB/qekbSbxNjzDLsxZ/lAVAlCfMNoTQAjWkscbSPjdEn4uszoTWV8i5q9EZ3LcAfdQrNpuIcS52I9gYtQL0DQ8GmNkb9VHsKMxlHtrS5y2/6q1NZmqylde8R1/aR4AYqY9GwOvqnvcwE1Qzki7bicYU8wYJuiQf2NQPtsCxuQJR7B/2nleVcrISUM9ymXiYKXMGw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR03MB4160.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(376002)(366004)(136003)(39860400002)(2940100002)(786003)(99936003)(19627405001)(71200400001)(8676002)(66446008)(9686003)(2906002)(76116006)(66476007)(75432002)(55016002)(66616009)(64756008)(66556008)(66946007)(6916009)(83380400001)(52536014)(38100700001)(8936002)(86362001)(33656002)(6506007)(478600001)(26005)(186003)(316002)(7696005)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?Windows-1252?Q?ZYhtw7QcQ0qsP87m33N8YboVn40L0nWoBFGtPexfiK939kGi7FoRn1zS?=
 =?Windows-1252?Q?ppS6O3I50y7FPitWYNTrH53JgZIX1tCrzYgBsNhvSUeiL3QaYrm1zOPo?=
 =?Windows-1252?Q?K52ufScn5VUc7kq0PPQPu9B+8JFol4ZcFI/HCI16qxwPfoD/HfC5Goj9?=
 =?Windows-1252?Q?4C2T0cwGMbRSMvuOd4vhECTeBfzOdZtvibqgHYG9RN3gU6crh1o6BA8v?=
 =?Windows-1252?Q?kFMAiylBd6XwmNRpv4bRFmHzVCbQ2PGPXNx/EJ+EROqHOmj8hf1741Gu?=
 =?Windows-1252?Q?DEXrkR5lXUkuzZ++caUuG4yNgz8vmmjGvPD2UF0NIdI59SR4GoeGdSq7?=
 =?Windows-1252?Q?uJdFqrkCKVFMPdOmzT9xlRzLcW5vIouoAFCAZ6Ut3qzPJdRGqEdjwhrc?=
 =?Windows-1252?Q?6tsh7vr2gDnAELXmL0qnDnNu96ZleRHpk/nxqsBuoeCUROPHVmMoP/QQ?=
 =?Windows-1252?Q?efWYTAZwMVEVqyAbPSuO290RDfzKX/k2Vkvya/53H9blY40A64gubQlE?=
 =?Windows-1252?Q?jC/XjAW7TFTZpMJgfnbTTbgUonSfS5TCVbIy24KDpD84GpnPrigsCD5s?=
 =?Windows-1252?Q?w5L1LG4cueuxtrzJQnQWgpj7d3RXA5YOhd6thY4vb3fXVo3cvvQwNLv+?=
 =?Windows-1252?Q?crhT6LQHDgZSKh4C8dAKJE1VM+sTP1QpaFGqYbT0kbpipOz8B7OHQrKB?=
 =?Windows-1252?Q?pd3Zjb+dPpsanRdZFGIEpVkg5aWlP1n8q6mBccZMflf1nx2zdTS79MdC?=
 =?Windows-1252?Q?qk1syIkpXt2aduO5FTXnyQ75teDXMBxqXahtbZG+x/tK4QAr7BScadLU?=
 =?Windows-1252?Q?fofPh6/01K3k+p325g8l1Z1QlQpsQQglWRbjp4HiszhlRO/h0u3ryx/1?=
 =?Windows-1252?Q?ZHdT/CQHM/9otvhnnaWJoVmk9AVEmhZYEatz1R1TpRNB1NteVmd75Iv+?=
 =?Windows-1252?Q?3bikzDdTO8OOg1wJoqlXVTokjwepmgBjrxmF4GxFwjPCL5WC3riZjwdU?=
 =?Windows-1252?Q?kRuHZX1AmXpNnIINxRJEKdJCCuOFcCIWPEsOLN0rMHgKTIxeU+NuuRqU?=
 =?Windows-1252?Q?ojvH+7JfWWa26wJ1mitgFcnyVHLSPC27WTICWD13Nw/5eDeFHR9+i7Xk?=
 =?Windows-1252?Q?hi30zKKKGunrwfeWTgb9FR3i1rivDMIxk+0JNmvS5jEOG5zkjTNTxnGo?=
 =?Windows-1252?Q?f58XvkST1021RypbzghnBNlN03C3eumcuRb0GvMX4x2hWxG423rtvVcJ?=
 =?Windows-1252?Q?Wt6emjhWOH/UhK3Kogu0TID+Iq4KNMPoQ4HBifDh3nVFADaQpnrvNHb4?=
 =?Windows-1252?Q?RXtGD3ILD8FNY07b+Dt9vR1E4DHzUdNegFETi12on1Ac0RKwSUPpUKjD?=
 =?Windows-1252?Q?jA/bnvhdp/NeZjicVF5WrNKaIxrVRTVNUZlknBmsHrl4+eaKrvReWrYK?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
	boundary="_004_SN6PR03MB4160534B2F9F6E3B8647CDA3B17E9SN6PR03MB4160namp_"
MIME-Version: 1.0
X-OriginatorOrg: ou.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR03MB4160.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0399809c-1313-4f34-e735-08d8f30ac5b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2021 23:31:26.3113
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c7de09d-9034-44c1-b462-c464fece204a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fez2HIeQHLlJYlNC9cBgA5gCnhmN6J2q3F0F9ya5T70dK1qIBt6TyxmXW63hoDSjwNFXcFJWs/pLOY29Cz8cWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR03MB3949
X-Proofpoint-GUID: Jc3cyBBJJYAOYEhAWrYDqqSjj_FUXVQk
X-Proofpoint-ORIG-GUID: Jc3cyBBJJYAOYEhAWrYDqqSjj_FUXVQk
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-29_16:2021-03-26,2021-03-29 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0
 spamscore=0 clxscore=1015 suspectscore=0 mlxscore=0 phishscore=0
 bulkscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2103250000 definitions=main-2103290174
Message-ID-Hash: ZRC4XQ4JWGAWZGJC5GED5BLDJBGJZAFU
X-Message-ID-Hash: ZRC4XQ4JWGAWZGJC5GED5BLDJBGJZAFU
X-MailFrom: prvs=1722fad8c6=rmattingly@ou.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Generating Packets in a 2-Port Block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HASGFI7WJA3FS7RFW3ZXU2T5YASL626E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--_004_SN6PR03MB4160534B2F9F6E3B8647CDA3B17E9SN6PR03MB4160namp_
Content-Type: multipart/alternative;
	boundary="_000_SN6PR03MB4160534B2F9F6E3B8647CDA3B17E9SN6PR03MB4160namp_"

--_000_SN6PR03MB4160534B2F9F6E3B8647CDA3B17E9SN6PR03MB4160namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi all,



I am currently working on a RFNoC block that has a =91passthrough=92 port a=
nd =91results=92 port that outputs data based on the samples seen in the pa=
ssthrough stream.



I am currently using the AXI-stream payload context interface and I am havi=
ng trouble deterministically generating packets. My current test block outp=
uts the value of the counter as the payload, but the count seems to  be abo=
ut a quarter of the length of the desired length.  For instance, my current=
 test block is supposed to output 1024 samples from 0-1022 with a zero as t=
he last payload element. But I am only getting 0-251.



This is not an issue that I am having in my functional simulations of the s=
tate machine and so I believe that I may be misunderstanding something crit=
ical about the interface. Any suggestions are greatly appreciated.


I am using UHD 4.0 with an x310 using Dual 10Gig ethernet. A test version o=
f the block with only the transmit packet logic is attached.


Thank you,



Rylee Mattingly

University of Oklahoma

Graduate Research Assistant

Email: rmattingly@ou.edu<mailto:rmattingly@ou.edu>



Attachment

--_000_SN6PR03MB4160534B2F9F6E3B8647CDA3B17E9SN6PR03MB4160namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<span style=3D"font-size:11.0pt">Hi all,</span>
<div>
<div dir=3D"ltr">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<span style=3D"font-size:11.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<span style=3D"font-size:11.0pt">I am currently working on a <span class=3D=
"x_SpellE">
RFNoC</span> block that has a =91passthrough=92 port and =91results=92 port=
 that outputs data based on the samples seen in the passthrough stream.</sp=
an></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<span style=3D"font-size:11.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<span style=3D"font-size:11.0pt">I am currently using the AXI-stream payloa=
d context interface and I am having trouble deterministically generating pa=
ckets. My current test block outputs the value of the counter as the payloa=
d, but the count seems to
<span style=3D"">&nbsp;</span>be about a quarter of the length of the desir=
ed length.<span style=3D"">&nbsp;
</span>For instance, my current test block is supposed to output 1024 sampl=
es from 0-1022 with a zero as the last payload element. But I am only getti=
ng 0-251.<span style=3D"">&nbsp;
</span></span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<span style=3D"font-size:11.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<span style=3D"font-size:11.0pt">This is not an issue that I am having in m=
y functional simulations of the state machine and so I believe that I may b=
e misunderstanding something critical about the interface. Any suggestions =
are greatly appreciated.</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<span style=3D"font-size:11.0pt"><br>
</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<span style=3D"font-size:11.0pt">I am using UHD 4.0 with an x310 using Dual=
 10Gig ethernet. A test version of the block with only the transmit packet =
logic is attached.
<br>
</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<span style=3D"font-size:11.0pt"><br>
</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<span style=3D"font-size:11.0pt">Thank you,<br>
</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<span style=3D"font-size:11.0pt">&nbsp;</span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<a name=3D"x__MailAutoSig"><span style=3D"">Rylee Mattingly</span></a></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<span style=3D""><span style=3D"">University of Oklahoma</span></span></p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<span style=3D""><span style=3D"">Graduate Research Assistant</span></span>=
</p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
<span style=3D""><span style=3D"">Email: </span></span><a href=3D"mailto:rm=
attingly@ou.edu"><span style=3D""><span style=3D"color: rgb(5, 99, 193);">r=
mattingly@ou.edu</span></span><span style=3D""></span></a><span style=3D"">=
<span style=3D""></span></span></p>
<span style=3D""></span>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
&nbsp;</p>
<p class=3D"x_MsoNormal" style=3D"margin-top: 0px; margin-bottom: 0px;margi=
n:0in; font-size:12pt; font-family:&quot;Calibri&quot;,sans-serif">
Attachment<br>
</p>
</div>
</div>
</div>
</body>
</html>

--_000_SN6PR03MB4160534B2F9F6E3B8647CDA3B17E9SN6PR03MB4160namp_--

--_004_SN6PR03MB4160534B2F9F6E3B8647CDA3B17E9SN6PR03MB4160namp_
Content-Type: text/x-verilog; name="rfnoc_block_stream.v"
Content-Description: rfnoc_block_stream.v
Content-Disposition: attachment; filename="rfnoc_block_stream.v"; size=13514;
	creation-date="Mon, 29 Mar 2021 23:09:37 GMT";
	modification-date="Mon, 29 Mar 2021 23:09:45 GMT"
Content-Transfer-Encoding: base64

Ly8KLy8gQ29weXJpZ2h0IDIwMjEgRXR0dXMgUmVzZWFyY2gsIGEgTmF0aW9uYWwgSW5zdHJ1bWVu
dHMgQnJhbmQKLy8KLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IExHUEwtMy4wLW9yLWxhdGVy
Ci8vCi8vIE1vZHVsZTogcmZub2NfYmxvY2tfc3RyZWFtCi8vCi8vIERlc2NyaXB0aW9uOgovLwov
LyAgIDxBZGQgYmxvY2sgZGVzY3JpcHRpb24gaGVyZT4KLy8KLy8gUGFyYW1ldGVyczoKLy8KLy8g
ICBUSElTX1BPUlRJRCA6IENvbnRyb2wgY3Jvc3NiYXIgcG9ydCB0byB3aGljaCB0aGlzIGJsb2Nr
IGlzIGNvbm5lY3RlZAovLyAgIENIRFJfVyAgICAgIDogQVhJUy1DSERSIGRhdGEgYnVzIHdpZHRo
Ci8vICAgTVRVICAgICAgICAgOiBNYXhpbXVtIHRyYW5zbWlzc2lvbiB1bml0IChpLmUuLCBtYXhp
bXVtIHBhY2tldCBzaXplIGluCi8vICAgICAgICAgICAgICAgICBDSERSIHdvcmRzIGlzIDIqKk1U
VSkuCi8vCgpgZGVmYXVsdF9uZXR0eXBlIG5vbmUKCgptb2R1bGUgcmZub2NfYmxvY2tfc3RyZWFt
ICMoCiAgcGFyYW1ldGVyIFs5OjBdIFRISVNfUE9SVElEICAgICA9IDEwJ2QwLAogIHBhcmFtZXRl
ciAgICAgICBDSERSX1cgICAgICAgICAgPSA2NCwKICBwYXJhbWV0ZXIgWzU6MF0gTVRVICAgICAg
ICAgICAgID0gMTAKKSgKICAvLyBSRk5vQyBGcmFtZXdvcmsgQ2xvY2tzIGFuZCBSZXNldHMKICBp
bnB1dCAgd2lyZSAgICAgICAgICAgICAgICAgICByZm5vY19jaGRyX2NsaywKICBpbnB1dCAgd2ly
ZSAgICAgICAgICAgICAgICAgICByZm5vY19jdHJsX2NsaywKICBpbnB1dCAgd2lyZSAgICAgICAg
ICAgICAgICAgICBjZV9jbGssCiAgLy8gUkZOb0MgQmFja2VuZCBJbnRlcmZhY2UKICBpbnB1dCAg
d2lyZSBbNTExOjBdICAgICAgICAgICByZm5vY19jb3JlX2NvbmZpZywKICBvdXRwdXQgd2lyZSBb
NTExOjBdICAgICAgICAgICByZm5vY19jb3JlX3N0YXR1cywKICAvLyBBWElTLUNIRFIgSW5wdXQg
UG9ydHMgKGZyb20gZnJhbWV3b3JrKQogIGlucHV0ICB3aXJlIFsoMSkqQ0hEUl9XLTE6MF0gc19y
Zm5vY19jaGRyX3RkYXRhLAogIGlucHV0ICB3aXJlIFsoMSktMTowXSAgICAgICAgc19yZm5vY19j
aGRyX3RsYXN0LAogIGlucHV0ICB3aXJlIFsoMSktMTowXSAgICAgICAgc19yZm5vY19jaGRyX3R2
YWxpZCwKICBvdXRwdXQgd2lyZSBbKDEpLTE6MF0gICAgICAgIHNfcmZub2NfY2hkcl90cmVhZHks
CiAgLy8gQVhJUy1DSERSIE91dHB1dCBQb3J0cyAodG8gZnJhbWV3b3JrKQogIG91dHB1dCB3aXJl
IFsoMikqQ0hEUl9XLTE6MF0gbV9yZm5vY19jaGRyX3RkYXRhLAogIG91dHB1dCB3aXJlIFsoMikt
MTowXSAgICAgICAgbV9yZm5vY19jaGRyX3RsYXN0LAogIG91dHB1dCB3aXJlIFsoMiktMTowXSAg
ICAgICAgbV9yZm5vY19jaGRyX3R2YWxpZCwKICBpbnB1dCAgd2lyZSBbKDIpLTE6MF0gICAgICAg
IG1fcmZub2NfY2hkcl90cmVhZHksCiAgLy8gQVhJUy1DdHJsIElucHV0IFBvcnQgKGZyb20gZnJh
bWV3b3JrKQogIGlucHV0ICB3aXJlIFszMTowXSAgICAgICAgICAgIHNfcmZub2NfY3RybF90ZGF0
YSwKICBpbnB1dCAgd2lyZSAgICAgICAgICAgICAgICAgICBzX3Jmbm9jX2N0cmxfdGxhc3QsCiAg
aW5wdXQgIHdpcmUgICAgICAgICAgICAgICAgICAgc19yZm5vY19jdHJsX3R2YWxpZCwKICBvdXRw
dXQgd2lyZSAgICAgICAgICAgICAgICAgICBzX3Jmbm9jX2N0cmxfdHJlYWR5LAogIC8vIEFYSVMt
Q3RybCBPdXRwdXQgUG9ydCAodG8gZnJhbWV3b3JrKQogIG91dHB1dCB3aXJlIFszMTowXSAgICAg
ICAgICAgIG1fcmZub2NfY3RybF90ZGF0YSwKICBvdXRwdXQgd2lyZSAgICAgICAgICAgICAgICAg
ICBtX3Jmbm9jX2N0cmxfdGxhc3QsCiAgb3V0cHV0IHdpcmUgICAgICAgICAgICAgICAgICAgbV9y
Zm5vY19jdHJsX3R2YWxpZCwKICBpbnB1dCAgd2lyZSAgICAgICAgICAgICAgICAgICBtX3Jmbm9j
X2N0cmxfdHJlYWR5Cik7CgogIC8vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAgLy8gU2lnbmFsIERlY2xh
cmF0aW9ucwogIC8vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgogIC8vIENsb2NrcyBhbmQgUmVzZXRzCiAg
d2lyZSAgICAgICAgICAgICAgIGN0cmxwb3J0X2NsazsKICB3aXJlICAgICAgICAgICAgICAgY3Ry
bHBvcnRfcnN0OwogIHdpcmUgICAgICAgICAgICAgICBheGlzX2RhdGFfY2xrOwogIHdpcmUgICAg
ICAgICAgICAgICBheGlzX2RhdGFfcnN0OwogIC8vIEN0cmxQb3J0IE1hc3RlcgogIHdpcmUgICAg
ICAgICAgICAgICBtX2N0cmxwb3J0X3JlcV93cjsKICB3aXJlICAgICAgICAgICAgICAgbV9jdHJs
cG9ydF9yZXFfcmQ7CiAgd2lyZSBbMTk6MF0gICAgICAgIG1fY3RybHBvcnRfcmVxX2FkZHI7CiAg
d2lyZSBbMzE6MF0gICAgICAgIG1fY3RybHBvcnRfcmVxX2RhdGE7CiAgcmVnICAgICAgICAgICAg
ICAgIG1fY3RybHBvcnRfcmVzcF9hY2s7CiAgcmVnICBbMzE6MF0gICAgICAgIG1fY3RybHBvcnRf
cmVzcF9kYXRhOwogIC8vIFBheWxvYWQgU3RyZWFtIHRvIFVzZXIgTG9naWM6IGluCiAgd2lyZSBb
MzIqMS0xOjBdICAgIG1faW5fcGF5bG9hZF90ZGF0YTsKICB3aXJlIFsxLTE6MF0gICAgICAgbV9p
bl9wYXlsb2FkX3RrZWVwOwogIHdpcmUgICAgICAgICAgICAgICBtX2luX3BheWxvYWRfdGxhc3Q7
CiAgd2lyZSAgICAgICAgICAgICAgIG1faW5fcGF5bG9hZF90dmFsaWQ7CiAgd2lyZSAgICAgICAg
ICAgICAgIG1faW5fcGF5bG9hZF90cmVhZHk7CiAgLy8gQ29udGV4dCBTdHJlYW0gdG8gVXNlciBM
b2dpYzogaW4KICB3aXJlIFtDSERSX1ctMTowXSAgbV9pbl9jb250ZXh0X3RkYXRhOwogIHdpcmUg
WzM6MF0gICAgICAgICBtX2luX2NvbnRleHRfdHVzZXI7CiAgd2lyZSAgICAgICAgICAgICAgIG1f
aW5fY29udGV4dF90bGFzdDsKICB3aXJlICAgICAgICAgICAgICAgbV9pbl9jb250ZXh0X3R2YWxp
ZDsKICB3aXJlICAgICAgICAgICAgICAgbV9pbl9jb250ZXh0X3RyZWFkeTsKICAvLyBQYXlsb2Fk
IFN0cmVhbSBmcm9tIFVzZXIgTG9naWM6IG91dDEKICB3aXJlIFszMioxLTE6MF0gICAgc19vdXQx
X3BheWxvYWRfdGRhdGE7CiAgd2lyZSBbMDowXSAgICAgICAgIHNfb3V0MV9wYXlsb2FkX3RrZWVw
OwogIHdpcmUgICAgICAgICAgICAgICBzX291dDFfcGF5bG9hZF90bGFzdDsKICB3aXJlICAgICAg
ICAgICAgICAgc19vdXQxX3BheWxvYWRfdHZhbGlkOwogIHdpcmUgICAgICAgICAgICAgICBzX291
dDFfcGF5bG9hZF90cmVhZHk7CiAgLy8gQ29udGV4dCBTdHJlYW0gZnJvbSBVc2VyIExvZ2ljOiBv
dXQxCiAgd2lyZSBbQ0hEUl9XLTE6MF0gIHNfb3V0MV9jb250ZXh0X3RkYXRhOwogIHdpcmUgWzM6
MF0gICAgICAgICBzX291dDFfY29udGV4dF90dXNlcjsKICB3aXJlICAgICAgICAgICAgICAgc19v
dXQxX2NvbnRleHRfdGxhc3Q7CiAgd2lyZSAgICAgICAgICAgICAgIHNfb3V0MV9jb250ZXh0X3R2
YWxpZDsKICB3aXJlICAgICAgICAgICAgICAgc19vdXQxX2NvbnRleHRfdHJlYWR5OwogIC8vIFBh
eWxvYWQgU3RyZWFtIGZyb20gVXNlciBMb2dpYzogb3V0MgogIHJlZyAgWzMyKjEtMTowXSAgICBz
X291dDJfcGF5bG9hZF90ZGF0YTsKICByZWcgIFswOjBdICAgICAgICAgc19vdXQyX3BheWxvYWRf
dGtlZXA7CiAgcmVnICAgICAgICAgICAgICAgIHNfb3V0Ml9wYXlsb2FkX3RsYXN0OwogIHJlZyAg
ICAgICAgICAgICAgICBzX291dDJfcGF5bG9hZF90dmFsaWQ7CiAgd2lyZSAgICAgICAgICAgICAg
ICBzX291dDJfcGF5bG9hZF90cmVhZHk7CiAgLy8gQ29udGV4dCBTdHJlYW0gZnJvbSBVc2VyIExv
Z2ljOiBvdXQyCiAgcmVnICBbQ0hEUl9XLTE6MF0gIHNfb3V0Ml9jb250ZXh0X3RkYXRhOwogIHJl
ZyAgWzM6MF0gICAgICAgICBzX291dDJfY29udGV4dF90dXNlcjsKICByZWcgICAgICAgICAgICAg
ICAgc19vdXQyX2NvbnRleHRfdGxhc3Q7CiAgcmVnICAgICAgICAgICAgICAgIHNfb3V0Ml9jb250
ZXh0X3R2YWxpZDsKICB3aXJlICAgICAgICAgICAgICAgc19vdXQyX2NvbnRleHRfdHJlYWR5OwoK
ICAvLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogIC8vIE5vQyBTaGVsbAogIC8vLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCgogIG5vY19zaGVsbF9zdHJlYW0gIygKICAgIC5DSERSX1cgICAgICAgICAgICAgIChDSERS
X1cpLAogICAgLlRISVNfUE9SVElEICAgICAgICAgKFRISVNfUE9SVElEKSwKICAgIC5NVFUgICAg
ICAgICAgICAgICAgIChNVFUpCiAgKSBub2Nfc2hlbGxfc3RyZWFtX2kgKAogICAgLy8tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KICAgIC8vIEZyYW1ld29yayBJbnRlcmZhY2UKICAgIC8vLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCgogICAgLy8gQ2xvY2sgSW5wdXRzCiAgICAucmZub2NfY2hkcl9jbGsgICAg
ICAocmZub2NfY2hkcl9jbGspLAogICAgLnJmbm9jX2N0cmxfY2xrICAgICAgKHJmbm9jX2N0cmxf
Y2xrKSwKICAgIC5jZV9jbGsgICAgICAgICAgICAgIChjZV9jbGspLAogICAgLy8gUmVzZXQgT3V0
cHV0cwogICAgLnJmbm9jX2NoZHJfcnN0ICAgICAgKCksCiAgICAucmZub2NfY3RybF9yc3QgICAg
ICAoKSwKICAgIC5jZV9yc3QgICAgICAgICAgICAgICgpLAogICAgLy8gUkZOb0MgQmFja2VuZCBJ
bnRlcmZhY2UKICAgIC5yZm5vY19jb3JlX2NvbmZpZyAgIChyZm5vY19jb3JlX2NvbmZpZyksCiAg
ICAucmZub2NfY29yZV9zdGF0dXMgICAocmZub2NfY29yZV9zdGF0dXMpLAogICAgLy8gQ0hEUiBJ
bnB1dCBQb3J0cyAgKGZyb20gZnJhbWV3b3JrKQogICAgLnNfcmZub2NfY2hkcl90ZGF0YSAgKHNf
cmZub2NfY2hkcl90ZGF0YSksCiAgICAuc19yZm5vY19jaGRyX3RsYXN0ICAoc19yZm5vY19jaGRy
X3RsYXN0KSwKICAgIC5zX3Jmbm9jX2NoZHJfdHZhbGlkIChzX3Jmbm9jX2NoZHJfdHZhbGlkKSwK
ICAgIC5zX3Jmbm9jX2NoZHJfdHJlYWR5IChzX3Jmbm9jX2NoZHJfdHJlYWR5KSwKICAgIC8vIENI
RFIgT3V0cHV0IFBvcnRzICh0byBmcmFtZXdvcmspCiAgICAubV9yZm5vY19jaGRyX3RkYXRhICAo
bV9yZm5vY19jaGRyX3RkYXRhKSwKICAgIC5tX3Jmbm9jX2NoZHJfdGxhc3QgIChtX3Jmbm9jX2No
ZHJfdGxhc3QpLAogICAgLm1fcmZub2NfY2hkcl90dmFsaWQgKG1fcmZub2NfY2hkcl90dmFsaWQp
LAogICAgLm1fcmZub2NfY2hkcl90cmVhZHkgKG1fcmZub2NfY2hkcl90cmVhZHkpLAogICAgLy8g
QVhJUy1DdHJsIElucHV0IFBvcnQgKGZyb20gZnJhbWV3b3JrKQogICAgLnNfcmZub2NfY3RybF90
ZGF0YSAgKHNfcmZub2NfY3RybF90ZGF0YSksCiAgICAuc19yZm5vY19jdHJsX3RsYXN0ICAoc19y
Zm5vY19jdHJsX3RsYXN0KSwKICAgIC5zX3Jmbm9jX2N0cmxfdHZhbGlkIChzX3Jmbm9jX2N0cmxf
dHZhbGlkKSwKICAgIC5zX3Jmbm9jX2N0cmxfdHJlYWR5IChzX3Jmbm9jX2N0cmxfdHJlYWR5KSwK
ICAgIC8vIEFYSVMtQ3RybCBPdXRwdXQgUG9ydCAodG8gZnJhbWV3b3JrKQogICAgLm1fcmZub2Nf
Y3RybF90ZGF0YSAgKG1fcmZub2NfY3RybF90ZGF0YSksCiAgICAubV9yZm5vY19jdHJsX3RsYXN0
ICAobV9yZm5vY19jdHJsX3RsYXN0KSwKICAgIC5tX3Jmbm9jX2N0cmxfdHZhbGlkIChtX3Jmbm9j
X2N0cmxfdHZhbGlkKSwKICAgIC5tX3Jmbm9jX2N0cmxfdHJlYWR5IChtX3Jmbm9jX2N0cmxfdHJl
YWR5KSwKCiAgICAvLy0tLS0tLS0tLS0tLS0tLS0tLS0tLQogICAgLy8gQ2xpZW50IEludGVyZmFj
ZQogICAgLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgICAvLyBDdHJsUG9ydCBDbG9jayBhbmQg
UmVzZXQKICAgIC5jdHJscG9ydF9jbGsgICAgICAgICAgICAgIChjdHJscG9ydF9jbGspLAogICAg
LmN0cmxwb3J0X3JzdCAgICAgICAgICAgICAgKGN0cmxwb3J0X3JzdCksCiAgICAvLyBDdHJsUG9y
dCBNYXN0ZXIKICAgIC5tX2N0cmxwb3J0X3JlcV93ciAgICAgICAgIChtX2N0cmxwb3J0X3JlcV93
ciksCiAgICAubV9jdHJscG9ydF9yZXFfcmQgICAgICAgICAobV9jdHJscG9ydF9yZXFfcmQpLAog
ICAgLm1fY3RybHBvcnRfcmVxX2FkZHIgICAgICAgKG1fY3RybHBvcnRfcmVxX2FkZHIpLAogICAg
Lm1fY3RybHBvcnRfcmVxX2RhdGEgICAgICAgKG1fY3RybHBvcnRfcmVxX2RhdGEpLAogICAgLm1f
Y3RybHBvcnRfcmVzcF9hY2sgICAgICAgKG1fY3RybHBvcnRfcmVzcF9hY2spLAogICAgLm1fY3Ry
bHBvcnRfcmVzcF9kYXRhICAgICAgKG1fY3RybHBvcnRfcmVzcF9kYXRhKSwKCiAgICAvLyBBWEkt
U3RyZWFtIFBheWxvYWQgQ29udGV4dCBDbG9jayBhbmQgUmVzZXQKICAgIC5heGlzX2RhdGFfY2xr
IChheGlzX2RhdGFfY2xrKSwKICAgIC5heGlzX2RhdGFfcnN0IChheGlzX2RhdGFfcnN0KSwKICAg
IC8vIFBheWxvYWQgU3RyZWFtIHRvIFVzZXIgTG9naWM6IGluCiAgICAubV9pbl9wYXlsb2FkX3Rk
YXRhICAobV9pbl9wYXlsb2FkX3RkYXRhKSwKICAgIC5tX2luX3BheWxvYWRfdGtlZXAgIChtX2lu
X3BheWxvYWRfdGtlZXApLAogICAgLm1faW5fcGF5bG9hZF90bGFzdCAgKG1faW5fcGF5bG9hZF90
bGFzdCksCiAgICAubV9pbl9wYXlsb2FkX3R2YWxpZCAobV9pbl9wYXlsb2FkX3R2YWxpZCksCiAg
ICAubV9pbl9wYXlsb2FkX3RyZWFkeSAobV9pbl9wYXlsb2FkX3RyZWFkeSksCiAgICAvLyBDb250
ZXh0IFN0cmVhbSB0byBVc2VyIExvZ2ljOiBpbgogICAgLm1faW5fY29udGV4dF90ZGF0YSAgKG1f
aW5fY29udGV4dF90ZGF0YSksCiAgICAubV9pbl9jb250ZXh0X3R1c2VyICAobV9pbl9jb250ZXh0
X3R1c2VyKSwKICAgIC5tX2luX2NvbnRleHRfdGxhc3QgIChtX2luX2NvbnRleHRfdGxhc3QpLAog
ICAgLm1faW5fY29udGV4dF90dmFsaWQgKG1faW5fY29udGV4dF90dmFsaWQpLAogICAgLm1faW5f
Y29udGV4dF90cmVhZHkgKG1faW5fY29udGV4dF90cmVhZHkpLAogICAgLy8gUGF5bG9hZCBTdHJl
YW0gZnJvbSBVc2VyIExvZ2ljOiBvdXQxCiAgICAuc19vdXQxX3BheWxvYWRfdGRhdGEgIChzX291
dDFfcGF5bG9hZF90ZGF0YSksCiAgICAuc19vdXQxX3BheWxvYWRfdGtlZXAgIChzX291dDFfcGF5
bG9hZF90a2VlcCksCiAgICAuc19vdXQxX3BheWxvYWRfdGxhc3QgIChzX291dDFfcGF5bG9hZF90
bGFzdCksCiAgICAuc19vdXQxX3BheWxvYWRfdHZhbGlkIChzX291dDFfcGF5bG9hZF90dmFsaWQp
LAogICAgLnNfb3V0MV9wYXlsb2FkX3RyZWFkeSAoc19vdXQxX3BheWxvYWRfdHJlYWR5KSwKICAg
IC8vIENvbnRleHQgU3RyZWFtIGZyb20gVXNlciBMb2dpYzogb3V0MQogICAgLnNfb3V0MV9jb250
ZXh0X3RkYXRhICAoc19vdXQxX2NvbnRleHRfdGRhdGEpLAogICAgLnNfb3V0MV9jb250ZXh0X3R1
c2VyICAoc19vdXQxX2NvbnRleHRfdHVzZXIpLAogICAgLnNfb3V0MV9jb250ZXh0X3RsYXN0ICAo
c19vdXQxX2NvbnRleHRfdGxhc3QpLAogICAgLnNfb3V0MV9jb250ZXh0X3R2YWxpZCAoc19vdXQx
X2NvbnRleHRfdHZhbGlkKSwKICAgIC5zX291dDFfY29udGV4dF90cmVhZHkgKHNfb3V0MV9jb250
ZXh0X3RyZWFkeSksCiAgICAvLyBQYXlsb2FkIFN0cmVhbSBmcm9tIFVzZXIgTG9naWM6IG91dDIK
ICAgIC5zX291dDJfcGF5bG9hZF90ZGF0YSAgKHNfb3V0Ml9wYXlsb2FkX3RkYXRhKSwKICAgIC5z
X291dDJfcGF5bG9hZF90a2VlcCAgKHNfb3V0Ml9wYXlsb2FkX3RrZWVwKSwKICAgIC5zX291dDJf
cGF5bG9hZF90bGFzdCAgKHNfb3V0Ml9wYXlsb2FkX3RsYXN0KSwKICAgIC5zX291dDJfcGF5bG9h
ZF90dmFsaWQgKHNfb3V0Ml9wYXlsb2FkX3R2YWxpZCksCiAgICAuc19vdXQyX3BheWxvYWRfdHJl
YWR5IChzX291dDJfcGF5bG9hZF90cmVhZHkpLAogICAgLy8gQ29udGV4dCBTdHJlYW0gZnJvbSBV
c2VyIExvZ2ljOiBvdXQyCiAgICAuc19vdXQyX2NvbnRleHRfdGRhdGEgIChzX291dDJfY29udGV4
dF90ZGF0YSksCiAgICAuc19vdXQyX2NvbnRleHRfdHVzZXIgIChzX291dDJfY29udGV4dF90dXNl
ciksCiAgICAuc19vdXQyX2NvbnRleHRfdGxhc3QgIChzX291dDJfY29udGV4dF90bGFzdCksCiAg
ICAuc19vdXQyX2NvbnRleHRfdHZhbGlkIChzX291dDJfY29udGV4dF90dmFsaWQpLAogICAgLnNf
b3V0Ml9jb250ZXh0X3RyZWFkeSAoc19vdXQyX2NvbnRleHRfdHJlYWR5KQogICk7CgogIC8vLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCiAgLy8gUmVnaXN0ZXIgTG9naWMKICAvLy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQogIC8vIE5vdGU6IFJlZ2lzdGVyIGFkZHJlc3NlcyBpbmNyZW1lbnQgYnkgNAogIGxvY2FscGFy
YW0gUkVHX1VTRVJfQUREUiAgICA9IDA7IC8vIEFkZHJlc3MgZm9yIGV4YW1wbGUgdXNlciByZWdp
c3RlcgogIGxvY2FscGFyYW0gUkVHX1VTRVJfREVGQVVMVCA9IDA7IC8vIFRoaXMgc2hvdWxkIGJl
IHNldCB0byAtODAgZEIgZG93biBmcm9tIDEuCgogIHJlZyBbMzE6MF0gcmVnX3VzZXIgPSBSRUdf
VVNFUl9ERUZBVUxUOwoKICBhbHdheXMgQChwb3NlZGdlIGN0cmxwb3J0X2NsaykgYmVnaW4KICAg
IGlmIChjdHJscG9ydF9yc3QpIGJlZ2luCiAgICAgIHJlZ191c2VyID0gUkVHX1VTRVJfREVGQVVM
VDsKICAgIGVuZCBlbHNlIGJlZ2luCiAgICAgIC8vIERlZmF1bHQgYXNzaWdubWVudAogICAgICBt
X2N0cmxwb3J0X3Jlc3BfYWNrIDw9IDA7CgogICAgICAvLyBSZWFkIHVzZXIgcmVnaXN0ZXIKICAg
ICAgaWYgKG1fY3RybHBvcnRfcmVxX3JkKSBiZWdpbiAvLyBSZWFkIHJlcXVlc3QKICAgICAgICBj
YXNlIChtX2N0cmxwb3J0X3JlcV9hZGRyKQogICAgICAgICAgUkVHX1VTRVJfQUREUjogYmVnaW4K
ICAgICAgICAgICAgbV9jdHJscG9ydF9yZXNwX2FjayAgPD0gMTsKICAgICAgICAgICAgbV9jdHJs
cG9ydF9yZXNwX2RhdGEgPD0gcmVnX3VzZXI7CiAgICAgICAgICBlbmQKICAgICAgICBlbmRjYXNl
CiAgICAgIGVuZAoKICAgICAgLy8gV3JpdGUgdXNlciByZWdpc3RlcgogICAgICBpZiAobV9jdHJs
cG9ydF9yZXFfd3IpIGJlZ2luIC8vIFdyaXRlIHJlcXVzdAogICAgICAgIGNhc2UgKG1fY3RybHBv
cnRfcmVxX2FkZHIpCiAgICAgICAgICBSRUdfVVNFUl9BRERSOiBiZWdpbgogICAgICAgICAgICBt
X2N0cmxwb3J0X3Jlc3BfYWNrIDw9IDE7CiAgICAgICAgICAgIHJlZ191c2VyICAgICAgICAgICAg
PD0gbV9jdHJscG9ydF9yZXFfZGF0YVszMTowXTsKICAgICAgICAgIGVuZAogICAgICAgIGVuZGNh
c2UKICAgICAgZW5kCiAgICBlbmQKICBlbmQKCiAgLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KICAvLyBV
c2VyIExvZ2ljCiAgLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCiAgLy8gU2V0dXAgY29udGV4dCBwYXNz
dGhyb3VnaCBmb3Igb3V0MQogIGFzc2lnbiBzX291dDFfY29udGV4dF90ZGF0YSAgPSBtX2luX2Nv
bnRleHRfdGRhdGE7CiAgYXNzaWduIHNfb3V0MV9jb250ZXh0X3R1c2VyICA9IG1faW5fY29udGV4
dF90dXNlcjsKICBhc3NpZ24gc19vdXQxX2NvbnRleHRfdGxhc3QgID0gbV9pbl9jb250ZXh0X3Rs
YXN0OwogIGFzc2lnbiBzX291dDFfY29udGV4dF90dmFsaWQgPSBtX2luX2NvbnRleHRfdHZhbGlk
OwoKICAvLyBTZXR1cCBwYXlsb2FkIHBhc3N0aHJvdWdoIGZvciBvdXQxCiAgYXNzaWduIHNfb3V0
MV9wYXlsb2FkX3RkYXRhICA9IG1faW5fcGF5bG9hZF90ZGF0YTsKICBhc3NpZ24gc19vdXQxX3Bh
eWxvYWRfdGxhc3QgID0gbV9pbl9wYXlsb2FkX3RsYXN0OwogIGFzc2lnbiBzX291dDFfcGF5bG9h
ZF90dmFsaWQgPSBtX2luX3BheWxvYWRfdHZhbGlkOwoKCiAgcGFyYW1ldGVyIFNlbmRIZWFkZXIg
ICAgPSAzJ2IwMDA7CiAgcGFyYW1ldGVyIFNlbmRUaW1lc3RhbXAgPSAzJ2IwMDE7CiAgcGFyYW1l
dGVyIFNlbmRQYXlsb2FkICAgPSAzJ2IwMTA7CiAgcGFyYW1ldGVyIFNlbmRMYXN0ICAgICAgPSAz
J2IwMTE7CiAgcGFyYW1ldGVyIENsZWFuICAgICAgICAgPSAzJ2IxMDA7CgogIHJlZyBbMzE6MF0g
Y291bnRlciA9IDMyJ2QwOwogIHJlZyBbNjM6MF0gaW5wdXRIZWFkZXIgPSA2NCdkMDsKICByZWcg
WzI6MF0gc3RhdGUgPSBTZW5kSGVhZGVyOwogIHJlZyBbMTU6MF0gc2VxID0gMTYnZDA7IAoKICBh
bHdheXMgQCAocG9zZWRnZSBheGlzX2RhdGFfY2xrKSBiZWdpbgogIAogICAgaWYobV9pbl9jb250
ZXh0X3R1c2VyID09IDQnYjApIGJlZ2luCiAgICAgIGlucHV0SGVhZGVyIDw9IG1faW5fY29udGV4
dF90ZGF0YTsKICAgIGVuZAoKICAgIGlmKGF4aXNfZGF0YV9yc3QpIGJlZ2luCiAgICAgIHNlcSA8
PSAxNidkMDsKICAgICAgY291bnRlciA8PSAzMidkMDsKICAgICAgc3RhdGUgPD0gU2VuZEhlYWRl
cjsKICAgIGVuZAoKICAgIGNhc2UgKHN0YXRlKQoKICAgICAgU2VuZEhlYWRlcjogYmVnaW4KICAg
ICAgICBpZihzX291dDJfY29udGV4dF90cmVhZHkpIGJlZ2luCiAgICAgICAgICAvLyBDb250ZXh0
IFNpZ25hbHMKICAgICAgICAgIHNfb3V0Ml9jb250ZXh0X3R1c2VyICA8PSA0J2QwOwogICAgICAg
ICAgc19vdXQyX2NvbnRleHRfdHZhbGlkIDw9IDEnYjE7CiAgICAgICAgICBzX291dDJfY29udGV4
dF90bGFzdCAgPD0gMDsKICAgICAgICAgIHNfb3V0Ml9jb250ZXh0X3RkYXRhICA8PSB7aW5wdXRI
ZWFkZXJbNjM6NDhdLCBzZXEsIDE2J2QxMDI2LCBpbnB1dEhlYWRlclsxNTowXX07CiAgICAgICAg
ICAvLyBQYXlsb2FkIFNpZ25hbHMKICAgICAgICAgIHNfb3V0Ml9wYXlsb2FkX3RkYXRhICA8PSAz
MidkMDsKICAgICAgICAgIHNfb3V0Ml9wYXlsb2FkX3R2YWxpZCA8PSAwOwogICAgICAgICAgc19v
dXQyX3BheWxvYWRfdGxhc3QgIDw9IDA7IAogICAgICAgICAgLy8gSW5jcmVtZW50IFNlcXVlbmNl
IGFuZCBDaGFuZ2Ugc3RhdGUKICAgICAgICAgIHNlcSAgIDw9IHNlcSArIDE2J2QxOwogICAgICAg
ICAgc3RhdGUgPD0gU2VuZFRpbWVzdGFtcDsKICAgICAgICBlbmQKICAgICAgZW5kCgogICAgICBT
ZW5kVGltZXN0YW1wOiBiZWdpbgogICAgICAgIGlmKHNfb3V0Ml9jb250ZXh0X3RyZWFkeSkgYmVn
aW4KICAgICAgICAgIC8vIENvbnRleHQgU2lnbmFscwogICAgICAgICAgc19vdXQyX2NvbnRleHRf
dHVzZXIgIDw9IDQnZDI7CiAgICAgICAgICBzX291dDJfY29udGV4dF90dmFsaWQgPD0gMSdiMTsK
ICAgICAgICAgIHNfb3V0Ml9jb250ZXh0X3RsYXN0ICA8PSAxJ2IxOwogICAgICAgICAgc19vdXQy
X2NvbnRleHRfdGRhdGEgIDw9IDY0J2QwOwogICAgICAgICAgLy8gUGF5bG9hZCBTaWduYWxzCiAg
ICAgICAgICBzX291dDJfcGF5bG9hZF90ZGF0YSAgPD0gMzInZDA7CiAgICAgICAgICBzX291dDJf
cGF5bG9hZF90dmFsaWQgPD0gMSdiMDsKICAgICAgICAgIHNfb3V0Ml9wYXlsb2FkX3RsYXN0ICA8
PSAxJ2IwOyAKICAgICAgICAgIC8vIENoYW5nZSBzdGF0ZQogICAgICAgICAgc3RhdGUgPD0gU2Vu
ZFBheWxvYWQ7ICAgICAgICAgIAogICAgICAgIGVuZAogICAgICBlbmQKCiAgICAgIFNlbmRQYXls
b2FkOiBiZWdpbgogICAgICAgIGlmKHNfb3V0Ml9wYXlsb2FkX3RyZWFkeSkgYmVnaW4KICAgICAg
ICAgIC8vIENvbnRleHQgU2lnbmFscwogICAgICAgICAgc19vdXQyX2NvbnRleHRfdHVzZXIgIDw9
IDQnZDA7CiAgICAgICAgICBzX291dDJfY29udGV4dF90dmFsaWQgPD0gMSdiMDsKICAgICAgICAg
IHNfb3V0Ml9jb250ZXh0X3RsYXN0ICA8PSAxJ2IwOwogICAgICAgICAgc19vdXQyX2NvbnRleHRf
dGRhdGEgIDw9IDY0J2QwOwogICAgICAgICAgLy8gUGF5bG9hZCBTaWduYWxzCiAgICAgICAgICBz
X291dDJfcGF5bG9hZF90ZGF0YSAgPD0gezE2J2IwLCBjb3VudGVyfTsKICAgICAgICAgIHNfb3V0
Ml9wYXlsb2FkX3R2YWxpZCA8PSAxJ2IxOwogICAgICAgICAgc19vdXQyX3BheWxvYWRfdGxhc3Qg
IDw9IDEnYjA7IAogICAgICAgICAgY291bnRlciA8PSBjb3VudGVyICsgMzInZDE7CiAgICAgICAg
ICBpZiAoY291bnRlciA9PSAzMidkMTAyMikgYmVnaW4gICAgICAgCiAgICAgICAgICAgIC8vIENo
YW5nZSBTdGF0ZQogICAgICAgICAgICBzdGF0ZSA8PSBTZW5kTGFzdDsKICAgICAgICAgIGVuZAog
ICAgICAgIGVuZAogICAgICBlbmQKCiAgICAgIFNlbmRMYXN0OiBiZWdpbgogICAgICAgIGlmKHNf
b3V0Ml9wYXlsb2FkX3RyZWFkeSkgYmVnaW4KICAgICAgICAgIC8vIENvbnRleHQgU2lnbmFscwog
ICAgICAgICAgc19vdXQyX2NvbnRleHRfdHVzZXIgIDw9IDQnZDA7CiAgICAgICAgICBzX291dDJf
Y29udGV4dF90dmFsaWQgPD0gMSdiMDsKICAgICAgICAgIHNfb3V0Ml9jb250ZXh0X3RsYXN0ICA8
PSAxJ2IwOwogICAgICAgICAgc19vdXQyX2NvbnRleHRfdGRhdGEgIDw9IDY0J2QwOwogICAgICAg
ICAgLy8gUGF5bG9hZCBTaWduYWxzCiAgICAgICAgICBzX291dDJfcGF5bG9hZF90ZGF0YSAgPD0g
MzInZDA7CiAgICAgICAgICBzX291dDJfcGF5bG9hZF90dmFsaWQgPD0gMSdiMTsKICAgICAgICAg
IHNfb3V0Ml9wYXlsb2FkX3RsYXN0ICA8PSAxJ2IxOwogICAgICAgICAgLy8gQ2hhbmdlIHRoZSBz
dGF0ZQogICAgICAgICAgc3RhdGUgPD0gU2VuZEhlYWRlcjsKICAgICAgICAgIGNvdW50ZXIgPD0g
MzInZDA7CiAgICAgICAgZW5kCiAgICAgIGVuZAoKICAgICAgQ2xlYW46IGJlZ2luCiAgICAgICAg
Ly8gQ29udGV4dCBTaWduYWxzCiAgICAgICAgc19vdXQyX2NvbnRleHRfdHVzZXIgIDw9IDQnZDA7
CiAgICAgICAgc19vdXQyX2NvbnRleHRfdHZhbGlkIDw9IDEnYjA7CiAgICAgICAgc19vdXQyX2Nv
bnRleHRfdGxhc3QgIDw9IDEnYjA7CiAgICAgICAgc19vdXQyX2NvbnRleHRfdGRhdGEgIDw9IDY0
J2QwOwogICAgICAgIC8vIENvbnRleHQgU2lnbmFscwogICAgICAgIHNfb3V0Ml9wYXlsb2FkX3R2
YWxpZCA8PSAxJ2IwOwogICAgICAgIHNfb3V0Ml9wYXlsb2FkX3RsYXN0ICA8PSAxJ2IwOwogICAg
ICAgIHNfb3V0Ml9wYXlsb2FkX3RkYXRhICA8PSAzMidkMDsKICAgICAgICAvLyBDaGFuZ2UgU3Rh
dGUKICAgICAgICBzdGF0ZSA8PSBTZW5kSGVhZGVyOwogICAgICAgIGNvdW50ZXIgPD0gMzInZDA7
CiAgICAgIGVuZAogICAgZW5kY2FzZQogIGVuZAoKICAvLyBXaXJlIHRoZSB0cmVhZHkgc2lnbmFs
cyB0b2dldGhlcgogIGFzc2lnbiBtX2luX2NvbnRleHRfdHJlYWR5ID0gc19vdXQxX2NvbnRleHRf
dHJlYWR5OwogIGFzc2lnbiBtX2luX3BheWxvYWRfdHJlYWR5ID0gc19vdXQxX3BheWxvYWRfdHJl
YWR5OwoKZW5kbW9kdWxlIC8vIHJmbm9jX2Jsb2NrX3N0cmVhbQoKCmBkZWZhdWx0X25ldHR5cGUg
d2lyZQo=

--_004_SN6PR03MB4160534B2F9F6E3B8647CDA3B17E9SN6PR03MB4160namp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_004_SN6PR03MB4160534B2F9F6E3B8647CDA3B17E9SN6PR03MB4160namp_--
