Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4263235007F
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 14:39:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31762383533
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 08:39:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ou.edu header.i=@ou.edu header.b="I6YHcycw";
	dkim-atps=neutral
Received: from mx0b-00272701.pphosted.com (mx0b-00272701.pphosted.com [208.86.201.61])
	by mm2.emwd.com (Postfix) with ESMTPS id 0B1C8383895
	for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 08:38:59 -0400 (EDT)
Received: from pps.filterd (m0107987.ppops.net [127.0.0.1])
	by mx0b-00272701.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12VCUjDR030746;
	Wed, 31 Mar 2021 07:38:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ou.edu; h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 mime-version; s=domainkey;
 bh=hG73E69X/3cEeSjL1GzMNe2ZXpZTKOQaf36KiZ7917A=;
 b=I6YHcycwX3uiwTEM799MHof2pQtUkUf9mnBt0R6dix0WbXHk4xjrneB1n9DzsB096pHt
 wFoZrCMLR8os1Lv6L2PVXHM2iz89+IBwzm/36zw1SYTc2B7DnEvvLJNY9vKOXpYQIgNO
 tP+iFA04U5GyFK04ofPuXAOUZpo8CZzpYf7jZdLJ+oDH43RiCFwkKKLxm6um3gYQBj+C
 Ghf1QQ2PND2AxvnskFLyKc5DgfM15fgs4IY53yzjOnsWKYFXoMoOsvpFWfFCGMOzWVm5
 J/l7ob6z3DTErGCl/Mz4G7fMx0NTIP8IAz4OM1JeekTyy3O7FHLPxOfDQ3kvIiZBG7on +Q==
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2102.outbound.protection.outlook.com [104.47.58.102])
	by mx0b-00272701.pphosted.com with ESMTP id 37mav2ajfd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 31 Mar 2021 07:38:59 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k6wSkKH8DjnZmnU+QsQY95jbtpvluIZFKd4mLDJxyO0AyyqwvZnw/Qra6cwWZr+uxgw7wGNVBaGyB/gsnGDWgZY9aj861alTs83DcCH19v5Hq8IkvsUhxcibIWjG4HEDtw/YfWAVTO1jnt6ryqIDSW17DUUFShS7ZYYOxx43ojazUfH0cFvh5BgzTWWcO9xQBEaVt2qviKEfVrsixMgiTOzv0L1+Ij5JR5qh7hc6OWvTC0NyDEQ8YzgByHvKUrTabnyKkY7wVdCZNVWwTJcAAdwR1KVUQWaaLnOrJNzwwufM1RJsTHWvt+MCdebVPlOeqU4L0DXT25nM+JUt/STmQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hG73E69X/3cEeSjL1GzMNe2ZXpZTKOQaf36KiZ7917A=;
 b=c1/Nk8zDwyS2nN6H9+G8fH3aXmj+2WqKWFk7Rxl1TGlxMPA4XgCq85ie8TuLCj27AArWW26WebMX/RoROXgUE0SFTMvRy42A4JRUegygtSnT/jo3INj34vxLgQW6SFO9sATFzQSUR3zY4AEPM/yeYDrZhK8e6cWJV/LRbzw1bnZpS4v38frVo1rka2lkjFE3uGLvi3J2cSOlamy9GI7BUqnB9a4f7m5MdF/ygHvE9a3sSND8yuV9cqM7Kxh2TLcYzMhPv4weazKa5gAlDC0P68HcbhOM6mYTYcM0OSHrG87X4kACAIAHu4hwmb9AzXKEGEWm0BG9iF8T9lBee6xbMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ou.edu; dmarc=pass action=none header.from=ou.edu; dkim=pass
 header.d=ou.edu; arc=none
Received: from SN6PR03MB4160.namprd03.prod.outlook.com (2603:10b6:805:bd::20)
 by SN2PR03MB2269.namprd03.prod.outlook.com (2603:10b6:804:d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.29; Wed, 31 Mar
 2021 12:38:57 +0000
Received: from SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::39eb:ded4:5890:9e71]) by SN6PR03MB4160.namprd03.prod.outlook.com
 ([fe80::39eb:ded4:5890:9e71%6]) with mapi id 15.20.3999.027; Wed, 31 Mar 2021
 12:38:57 +0000
From: "Mattingly, Rylee" <rmattingly@ou.edu>
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] Generating Packets in a 2-Port Block
Thread-Index: AQHXJOzpZtYdLchw00yFfObLXs/E76qbnLQigAFpUICAAQVy0g==
Date: Wed, 31 Mar 2021 12:38:57 +0000
Message-ID: 
 <SN6PR03MB4160E56638B48649EB467054B17C9@SN6PR03MB4160.namprd03.prod.outlook.com>
References: 
 <SN6PR03MB41609C51432203513A57A1EDB17E9@SN6PR03MB4160.namprd03.prod.outlook.com>
 <SN6PR03MB4160534B2F9F6E3B8647CDA3B17E9@SN6PR03MB4160.namprd03.prod.outlook.com>,<CAB__hTTF5weM3_LtNRwTwgyuoy9TDe5OFdxOqgqenYChE-QfAw@mail.gmail.com>
In-Reply-To: 
 <CAB__hTTF5weM3_LtNRwTwgyuoy9TDe5OFdxOqgqenYChE-QfAw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nd.edu; dkim=none (message not signed)
 header.d=none;nd.edu; dmarc=none action=none header.from=ou.edu;
x-originating-ip: [216.106.138.88]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b47f0ad4-9ca6-4eba-336f-08d8f441f3cf
x-ms-traffictypediagnostic: SN2PR03MB2269:
x-microsoft-antispam-prvs: 
 <SN2PR03MB2269BEBE48773A6ADFE8A829B17C9@SN2PR03MB2269.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 SSL9m5RFM7dKcQ+biuXUW6MAWL0EbaLeeT+1AeoJrRAGsoOyMbjjFh+8guEDujYtJujB2MxX+vWcH+3/OQf+x/f2hngQ97moi1gRKFYWRovM0c343ao+JLeTeNVaifiDmpwt2KIumY4I6plVwK4hLhaILcFuIu6mOVdZHcQLxIvuzknPQYXK0jTiSl1StE7UNPoer9UIoqNO29IwBe8IV1uVCn9Vj7SEcpdGmIo8IDwTpilDxtERacl35+RYfGEMMbJb2E0R20k3qm46FP1V7FyUGYYwaCNz2UHdwGURfzB8zEVB33zJprfx68QpKUk6hXvOrHPM/6gpvRNfh+Ebsq0Kqg3f5LPmszam/clpY7FXFQWeN5F0s+EmZ/TWvlTBJ7RAzn/otNVSNJmlpa4+OaaFNnTNyBylHhJnS+oajO9Kr91UsxV3LbWZ70xiRL6jCpcfG1MjJf3JpTW8fgMb1F0XT0t2Ja5VReyn01/p6C/L9TI/osoNHeh9CI5AFa/C7UPyDYj3Seh4hz9IwTRIETvbS+8pBGiEJy8K7RXDJi9fEi0AEzMD3zkUgzD+nluT0GstZnkZl/aNI9dzZjbMeJWuqh31QzaVjbwOG3C8EZ4wzr3MxqJ4myTaQN4g2WO6QZIuPm0v/+P6oDY5PZY89w==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR03MB4160.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(396003)(136003)(346002)(376002)(366004)(66446008)(316002)(7696005)(9686003)(66946007)(76116006)(86362001)(75432002)(83380400001)(66556008)(5660300002)(786003)(71200400001)(6916009)(478600001)(52536014)(4326008)(8676002)(2906002)(53546011)(6506007)(38100700001)(26005)(186003)(64756008)(33656002)(66476007)(55016002)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?Windows-1252?Q?5hRlusIhrl/Aft3AGI3g+buRKmK+OOq/jrhfDzr63QjZmLg0pXeS1MZt?=
 =?Windows-1252?Q?NZCkxIcYem1b+Kusd8JiI8kpmiN7YR/D4sFA1w9Q5NjKIqYjkuNV5Z4a?=
 =?Windows-1252?Q?+C2l6QHXU991zil42d3ydl3gem7uR4jtq+ZhRo0MYBAk+Y7Tp9rwN+qH?=
 =?Windows-1252?Q?TkRYhwAVUsvUgP7nCcEhgcXzRnsJ9l+JBHsAGae/vwX+uIANK0yb4r89?=
 =?Windows-1252?Q?K/ij7VGLW6RmslAW+f47Tfei6GCMuY2gBgg6Raa7yy9FbqYBAVpymzzp?=
 =?Windows-1252?Q?Y9MxyFdnRthCwC/xooIwSLSnEiawWDb8oU8DJUK4rt3dEKpx86tjAizg?=
 =?Windows-1252?Q?rlSVKyGgHLyb0lCyyzsBNeGdxPuB9akfI/g8YB2L9Wvy67rhNmd9WbeW?=
 =?Windows-1252?Q?vEtOIeBByWbrH9GOJwujuWRJTrxTn8VVwXEJ5GGntSQWj0l1Q++YydYa?=
 =?Windows-1252?Q?3nt9rUwL1Mbi79hKveOjuXllkTdS59OtS3aG9RetP8b+A3A5UHj8ePW7?=
 =?Windows-1252?Q?MANF7EO9uSbWCsofTvdRmABqJotNZ3b0PZB7EAEIqwI+Ul/COLXdLqkz?=
 =?Windows-1252?Q?rokdsj+/XVVWbVr+pyyZiOkvjz/1ib2Tx7XKOgok9Aos2pPDV8qki17J?=
 =?Windows-1252?Q?WAT1QrDe4g6un0VzMcTucxoRyaYNO/ts/FebYdpyYJF+EJHfwmJqw2Oz?=
 =?Windows-1252?Q?yedaXZy0LkgV2TtOOm1BnzBpLqqEDgvA7XEP3BEb2610xrY1ORgrmAfU?=
 =?Windows-1252?Q?VDqyHOG/7lcvJjn5JQIh8/ZaH/8xdgK5ya7BcuYyeONrkF2CAD5g34Lo?=
 =?Windows-1252?Q?69p2DUdJY2DrlKR1G1XVI2FVmZE+Wi8A9gZS64eFHaWMdVQZYm0CAKUd?=
 =?Windows-1252?Q?6C32e5uTH4SkyA68jD2HV65VHWlQgsYlMA1Wl/dbs4TYB16/qlLP1TZz?=
 =?Windows-1252?Q?xShKS9GKrfiGTo+hfIyyOmwt+xHe11dkRi5Dj3ZiN7C9u74TXpwtrmxk?=
 =?Windows-1252?Q?svqCR+wom1Y0Tnrth62lY+PseaWIgJYpdSKRvxkBU2t7s6anLLwchnVb?=
 =?Windows-1252?Q?FVZjeramPo9B27BMwrH5QVhtthVle9v0ggiUSNbKFg6exq0Op6uoqut4?=
 =?Windows-1252?Q?bEgz1brTVhh68D/XCocRTnCC5DSDHwrbKvgdCJpV91eQe+38wxFBQdyE?=
 =?Windows-1252?Q?xdvccWA9CAICfm3YBw9n1JhUxZwn+KTSHQs7Hwc4+uY/QwiyhOLjUi12?=
 =?Windows-1252?Q?uoG9pTrToLocCXd6uN7cD0SgtW57/TJnXtgaDddB1TYFH8Wre657011R?=
 =?Windows-1252?Q?CaRxOmZ/PSP0expkqvXYSoDH9Vh7f22xqppAiFZvCeb3GcAs26sRHEll?=
 =?Windows-1252?Q?/T1n1U1DTxHTC2LIuFVOxPPX8EI0671u93gDU1J+4V5bvofp1aKH9UZ+?=
 =?Windows-1252?Q?KZtL51jhtUvI00zjZsDfXw=3D=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ou.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR03MB4160.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b47f0ad4-9ca6-4eba-336f-08d8f441f3cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2021 12:38:57.2210
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9c7de09d-9034-44c1-b462-c464fece204a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lBg3F8+OXiL3lvGDHA72HMRNx4K+VK6DPmMUhnDVn1FcAaF5Xcj2lnhs2BVqVhArHuOF4S4OjOHv8ATlqgEnXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN2PR03MB2269
X-Proofpoint-ORIG-GUID: RQt6DhIbPrkdG83tAHopcupz4H7QUbDt
X-Proofpoint-GUID: RQt6DhIbPrkdG83tAHopcupz4H7QUbDt
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-31_03:2021-03-30,2021-03-31 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=999
 suspectscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 mlxscore=0 phishscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2103300000 definitions=main-2103310092
Message-ID-Hash: 3BZ3E3N3XFFOZAKION7FM6ICVBP5OAZD
X-Message-ID-Hash: 3BZ3E3N3XFFOZAKION7FM6ICVBP5OAZD
X-MailFrom: prvs=17245fa69f=rmattingly@ou.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Generating Packets in a 2-Port Block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZZQB7TVSK2FHEP2C2572HIV4Y6TGZ5U7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5146194374310373007=="

--===============5146194374310373007==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR03MB4160E56638B48649EB467054B17C9SN6PR03MB4160namp_"

--_000_SN6PR03MB4160E56638B48649EB467054B17C9SN6PR03MB4160namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Rob,

This did fix my problem and I can now generate deterministic packets!

Thank you,

Rylee Mattingly
University of Oklahoma
Graduate Research Assistant

From: Rob Kossler <rkossler@nd.edu>
Date: Tuesday, March 30, 2021 at 4:02 PM
To: Mattingly, Rylee <rmattingly@ou.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Generating Packets in a 2-Port Block
Hi Rylee,
I think the problem is that the "length" in the context header should be in=
 bytes (not in samples).
Rob

On Mon, Mar 29, 2021 at 7:31 PM Mattingly, Rylee <rmattingly@ou.edu<mailto:=
rmattingly@ou.edu>> wrote:
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
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_SN6PR03MB4160E56638B48649EB467054B17C9SN6PR03MB4160namp_
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
span.EmailStyle19
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
<p class=3D"MsoNormal">Rob, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This did fix my problem and I can now generate deter=
ministic packets!
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">Rylee Mattingly<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">University of Oklahoma</=
span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal">Graduate Research Assistant<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Rob Kossler &lt;rko=
ssler@nd.edu&gt;<br>
<b>Date: </b>Tuesday, March 30, 2021 at 4:02 PM<br>
<b>To: </b>Mattingly, Rylee &lt;rmattingly@ou.edu&gt;<br>
<b>Cc: </b>usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject: </b>Re: [USRP-users] Generating Packets in a 2-Port Block<o:p><=
/o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal">Hi Rylee,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">I think the problem is that the &quot;length&quot; i=
n the context header should be in bytes (not in samples).<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Rob<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Mar 29, 2021 at 7:31 PM Mattingly, Rylee &lt=
;<a href=3D"mailto:rmattingly@ou.edu">rmattingly@ou.edu</a>&gt; wrote:<o:p>=
</o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
<div>
<div>
<div>
<p style=3D"margin:0in">&nbsp;<span style=3D"font-size:12.0pt"><o:p></o:p><=
/span></p>
<p style=3D"margin:0in">I am currently working on a RFNoC block that has a =
=91passthrough=92 port and =91results=92 port that outputs data based on th=
e samples seen in the passthrough stream.<span style=3D"font-size:12.0pt"><=
o:p></o:p></span></p>
<p style=3D"margin:0in">&nbsp;<span style=3D"font-size:12.0pt"><o:p></o:p><=
/span></p>
<p style=3D"margin:0in">I am currently using the AXI-stream payload context=
 interface and I am having trouble deterministically generating packets. My=
 current test block outputs the value of the counter as the payload, but th=
e count seems to &nbsp;be about a quarter
 of the length of the desired length.&nbsp; For instance, my current test b=
lock is supposed to output 1024 samples from 0-1022 with a zero as the last=
 payload element. But I am only getting 0-251.&nbsp;
<span style=3D"font-size:12.0pt"><o:p></o:p></span></p>
<p style=3D"margin:0in">&nbsp;<span style=3D"font-size:12.0pt"><o:p></o:p><=
/span></p>
<p style=3D"margin:0in">This is not an issue that I am having in my functio=
nal simulations of the state machine and so I believe that I may be misunde=
rstanding something critical about the interface. Any suggestions are great=
ly appreciated.<span style=3D"font-size:12.0pt"><o:p></o:p></span></p>
<p style=3D"margin:0in"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p><=
/span></p>
<p style=3D"margin:0in">I am using UHD 4.0 with an x310 using Dual 10Gig et=
hernet. A test version of the block with only the transmit packet logic is =
attached.
<span style=3D"font-size:12.0pt"><o:p></o:p></span></p>
<p style=3D"margin:0in"><span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p><=
/span></p>
<p style=3D"margin:0in">Thank you,<span style=3D"font-size:12.0pt"><o:p></o=
:p></span></p>
<p style=3D"margin:0in">&nbsp;<span style=3D"font-size:12.0pt"><o:p></o:p><=
/span></p>
<p style=3D"margin:0in"><a name=3D"m_-4117190837905098919_x__MailAutoSig"><=
span style=3D"font-size:12.0pt">Rylee Mattingly</span></a><span style=3D"fo=
nt-size:12.0pt"><o:p></o:p></span></p>
<p style=3D"margin:0in"><span style=3D"font-size:12.0pt">University of Okla=
homa<o:p></o:p></span></p>
<p style=3D"margin:0in"><span style=3D"font-size:12.0pt">Graduate Research =
Assistant<o:p></o:p></span></p>
<p style=3D"margin:0in"><span style=3D"font-size:12.0pt">Email: <a href=3D"=
mailto:rmattingly@ou.edu" target=3D"_blank">
<span style=3D"color:#0563C1">rmattingly@ou.edu</span></a><o:p></o:p></span=
></p>
<p style=3D"margin:0in"><span style=3D"font-size:12.0pt">&nbsp;<o:p></o:p><=
/span></p>
<p style=3D"margin:0in"><span style=3D"font-size:12.0pt">Attachment<o:p></o=
:p></span></p>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><o:p></o:p></p>
</blockquote>
</div>
</div>
</body>
</html>

--_000_SN6PR03MB4160E56638B48649EB467054B17C9SN6PR03MB4160namp_--

--===============5146194374310373007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5146194374310373007==--
