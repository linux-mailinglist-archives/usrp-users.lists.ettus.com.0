Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E011E30EE5C
	for <lists+usrp-users@lfdr.de>; Thu,  4 Feb 2021 09:31:28 +0100 (CET)
Received: from [::1] (port=37470 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7a2r-0000ni-VC; Thu, 04 Feb 2021 03:31:21 -0500
Received: from mail-db8eur05on2128.outbound.protection.outlook.com
 ([40.107.20.128]:41312 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <rpblanco@indra.es>) id 1l7a2n-0000ip-Ii
 for usrp-users@lists.ettus.com; Thu, 04 Feb 2021 03:31:17 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JUXFzA8DHKLfhBgt10c/3Xa1gRv2MSqWlaDhL2DpGSr8bIdVxvp6CtnApIuJ2wt0dLQch518CxIZJGYg+vLhU9gvNZ4nwOPlaYF5xPC3JHkAw1BRKjt6MPzEPTDlWRYW3yFMXxAfcIzOGLYaDi53s/riPDzQh4X8T4FIMY0oV4aWInEvXqX0WaE5w4J4wmqxlHz0ZyVXVD+uZPhkt6+3o4Q7jWBSBrzskCgDldWEdrwiIq+/blwiBL58QLrx8WUYIfW/yFbTVdOq4U2SWMbZoh+L2L77GubfJXIld/JT3mSZlV69b2uVtVQR0ufKhHd74cAvdeoOtE0Ei5NF/fD1JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8gzi1Lj+oiIGzLStC8jjRkBzQA+xH2h2nNjkHSbfEFo=;
 b=jdkGIRkbkLAqIvKVvfM75n9cw0PUTssJMOaLzkTQW+BOt4Dgk9DLE9LO/g2wr3WrGTu7r0Yg8pf/8mxnwFL8nS0uui5yJK6J5lkW3cBIBmxnOUDX5VY7dNVFzSYX7fd7bfrJjeLpThAfcYdt6GZa/tUCPMOY/RyE9S9xTF1J3st3w2MLZBdN15jCVtIFsrx1tc2108R25pH0ysDp26Pk/fOK68x4lAz4U2tZnkeUG0/8p+6p/WtA3Bn40ncyKHvJUSENSAms0ZvTH2BwRdfqxnMNj6GBJxGJUpYiMCQKUlYjC56/DWrLmYpSQoKxIn5/D5oU+4B7n7QoP6geFLqQmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=indra.es; dmarc=pass action=none header.from=indra.es;
 dkim=pass header.d=indra.es; arc=none
Received: from AM0P193MB0308.EURP193.PROD.OUTLOOK.COM (2603:10a6:208:60::13)
 by AM0P193MB0481.EURP193.PROD.OUTLOOK.COM (2603:10a6:20b:16d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.19; Thu, 4 Feb
 2021 08:30:35 +0000
Received: from AM0P193MB0308.EURP193.PROD.OUTLOOK.COM
 ([fe80::2947:4292:a75d:c9fd]) by AM0P193MB0308.EURP193.PROD.OUTLOOK.COM
 ([fe80::2947:4292:a75d:c9fd%6]) with mapi id 15.20.3805.026; Thu, 4 Feb 2021
 08:30:35 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] GPSDO and PPS on USRP N300
Thread-Index: Adb5/OCCgBeh4rELQU+D2WzeOk7pTAAShlQAACCOrbAAAa6DUA==
Date: Thu, 4 Feb 2021 08:30:35 +0000
Message-ID: <AM0P193MB03082904B54E9522CBC57115BDB39@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
References: <AM0P193MB030882ECBD91A33E06D06D28BDB49@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
 <601ACAC4.3050407@gmail.com>
 <AM0P193MB030854D432F79CEC7F687598BDB39@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
In-Reply-To: <AM0P193MB030854D432F79CEC7F687598BDB39@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
Accept-Language: es-ES, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=indra.es;
x-originating-ip: [94.126.240.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a4985ea-5f32-4aa4-88fd-08d8c8e72513
x-ms-traffictypediagnostic: AM0P193MB0481:
x-microsoft-antispam-prvs: <AM0P193MB0481A467F56A79EBE5465873BDB39@AM0P193MB0481.EURP193.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m337/pJtEMwDyFvrq9JlTMLI2+vEJYUhhSMfKcz32YaumVj0a4QeHsLAFANTr2N/9uYO2EByj01D3WUohnZrYH32NnQJf0M5lAh+5nx2cLDkhZKmMSxnD3zw4mCyG+h+0bCjxro3W8vHfmo+JEZWMD7nbLwSIb26yxVso2b93XV4qIxcqw3kO94lh0yDWtcfVoEQLbDioZBDZ+v+E8kQrp7vat9z6ifHeNSRD1l/MZNCYRXjDbk3kRlj67Vnk8wOtneOmtYUR7bjnnnT6JsRE+NcHKJt7FZkHp1I605zFR9JgdQRLWTPGSklN5zYt8/IC9gqSBfsp9UwaJHZwhyY0AW1pdhR790JigyA4f6zrzLyZnjnNNJ3OdfDJvzCYPgWhzCSYsrxPtkN+b9eG3BHe8khVU0zyNsMWTVOgManW9Tw5hoBzMkKUvK8aocwCnBl6H6sZ/WuQYCTw/q/LJmDrBYnQF5fGPwc07S4UWPvwysUSuGHDSzCNBo71BOdDkoQYPyQ9wxsiAY7rxT9SEKPJvT9246XZ7qqNAAzpX0F1lH8RS/DRGr6oreWwDPrApZuBHf62vylWQgqZJ3f4HKc+RFficdTdHZlDXuKwTbHai8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0P193MB0308.EURP193.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(9686003)(6916009)(19627235002)(2940100002)(8676002)(66946007)(66446008)(53546011)(2906002)(186003)(71200400001)(86362001)(66476007)(26005)(64756008)(76116006)(33656002)(6506007)(5660300002)(7696005)(66574015)(83380400001)(966005)(8936002)(55016002)(478600001)(52536014)(316002)(166002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?iWhOMpF13Mk94uXCx/zYCCeGkV5kypAqGsYsvfarnx4+1U1nRRt0quLSTi?=
 =?iso-8859-1?Q?Uq0vdssB/+m5wAlgSjfB8tlTIeItegNm/DOkMc01OaCfJKGZjwmIbgiz6r?=
 =?iso-8859-1?Q?+rPCVJJHZcH8wXHxVtLeG1ojz0yhVqisWr4fh4GnE167Sk0gefpVvXoNeg?=
 =?iso-8859-1?Q?Nx5QQRqTVQeOV1fjb/iuj5D6yC6qrlbCoPmEd8H8PuZ/g36Pec+PjKe+Mt?=
 =?iso-8859-1?Q?uTZsnUWpo+lZd+lyUUV3EDpiRh4IXgEimJW1ceN3vWrEH4s2inUuaKYkV5?=
 =?iso-8859-1?Q?7L2uVBx1/06fqtbhpnVs+R/uBe+Kjjry3fsnuKhShSKbt1u7qyEHDsArZm?=
 =?iso-8859-1?Q?FiprQC69MwJmi2K8vBuNqZrcUTyLHU5Lnk0HxtkT0+NX6i/oFYxd++SbJv?=
 =?iso-8859-1?Q?Px1Xb0AFWyZVo8Isa173HMrGZZHmsa63SKTU2BysVO/hoLwZoPbVDyjYub?=
 =?iso-8859-1?Q?RAl8xaYIJRiuxgMGmltqsFiG2nQquq/fIhaI1hT9OcO7H4xHNXHrKtegSH?=
 =?iso-8859-1?Q?fq476FMuHiUcSrbSysu8GHsk8nhk2hd8jEE+n4vAbhVxRLXfbxx9aL/PpF?=
 =?iso-8859-1?Q?UPMLorOy8Jvc6kFoB4Oo/pVS5a+fm0Y/maWXSkuNS+KzB9mDjh76g8nG4y?=
 =?iso-8859-1?Q?nvKxkwmCMzw82CHVHimbiUOnlPXRmo1It0/MJ+AvqsChUtI5Rs6qLHTnvK?=
 =?iso-8859-1?Q?TM5oypNjfMngg4YrQ0Riuwk7fSy6iqL+M07SZFBpRHLi6M1tEWVIwsMKWs?=
 =?iso-8859-1?Q?94bUWFP/6CJaWpBfTdjYtPlg/cEchqcAvT3AUJOcKfas7hnM+V5wnL6f8A?=
 =?iso-8859-1?Q?dvc/lrkmGW2mILHX3e3crqMP5MGGdh+eGztpE4NK8qzRIFiKlaPhCLqXxe?=
 =?iso-8859-1?Q?twUuMdtc6WM0AIcYHUF4o5m5qC6MYU6b0Xq1vTPq8doGLyDzLKfuCfPFYT?=
 =?iso-8859-1?Q?ySUeEPt99YpNdOC2z51naSeY2536wXzGYEVvGJ02It6koq46DviOklUp4t?=
 =?iso-8859-1?Q?7vyMY0avXLoGWdPaN8POMKLTZcnxL62Vdj3VsqJoUCHKmU1nznDZM/TuVb?=
 =?iso-8859-1?Q?/HiQhCbes9eZZGWTNRZ05Pl2K7P17x58x4typdQrbEuJGX0ykjjejY3DDc?=
 =?iso-8859-1?Q?cQhm8IpaOuIoBZDkTM5gWowhEjAZlvRTpsm0hpw0Iq+zXfnQ6CPCWyAKYo?=
 =?iso-8859-1?Q?yToqNuDHGvVBQiTzKbxL26H+g4AOEH1O269hNW3u3GqMs9Yn5K8WYY95rq?=
 =?iso-8859-1?Q?qT0ZPJwKuaNb0/HoGdPUzrYlkrcnEO0u0CmmADVnqOqzKtVkcm7SyVs4T6?=
 =?iso-8859-1?Q?akJWJZmpbTMhSPi2CaWOXF83YZTVsxJLj9v3IYi235SMX0I=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: indra.es
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0P193MB0308.EURP193.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a4985ea-5f32-4aa4-88fd-08d8c8e72513
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2021 08:30:35.7513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7808e005-1489-4374-954b-d3b08f193920
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hzgjxrsj56W9qG2BgoVmqqD/ZpLyZ4KvHou0u/GzDvGKbrehnTewAASD6ND7NbYEY4ZbgoHtwdH6R2CIS71wrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0P193MB0481
Subject: Re: [USRP-users] GPSDO and PPS on USRP N300
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Puertas Blanco, Roberto via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Puertas Blanco, Roberto" <rpblanco@indra.es>
Content-Type: multipart/mixed; boundary="===============2042159218280059841=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2042159218280059841==
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_AM0P193MB03082904B54E9522CBC57115BDB39AM0P193MB0308EURP_"

--_000_AM0P193MB03082904B54E9522CBC57115BDB39AM0P193MB0308EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

My goal is to get NTP daemon running on N300 synced with GPSDO and PPS. Cou=
ld it be that the GPSDO time is internally latched with the PPS line? If th=
is is the case then I guess that it would not be necessary to read the PPS.

I have seen the "Device Synchronization" section  and "sync_to_gps"  exampl=
e in the USRP HW Driver and USRP Manual but  I am not sure if I have to do =
this if I just want to synchronize the NTP and system time on just one USRP=
 N300.

Thanks,
Roberto

De: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-bounce=
s@lists.ettus.com>> En nombre de Marcus D. Leech via USRP-users
Enviado el: mi=E9rcoles, 3 de febrero de 2021 17:10
Para: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Asunto: Re: [USRP-users] GPSDO and PPS on USRP N300

On 02/03/2021 02:31 AM, Puertas Blanco, Roberto via USRP-users wrote:
Hello,

Is there any way to get the PPS pulse from PS side  (ARM) in the USRP N300?=
 I would like to know if the PPS is mapped through the /dev/pps or if it is=
 embedded into GPSDO module.

Thanks,
Roberto

The answer (based on the version of the system image that I have) is no.  T=
he PPS line does not "manifest" as /dev/pps on the ARM CPU.


________________________________

Este correo electr=F3nico y, en su caso, cualquier fichero anexo al mismo, =
contiene informaci=F3n de car=E1cter confidencial exclusivamente dirigida a=
 su destinatario o destinatarios. Si no es vd. el destinatario indicado, qu=
eda notificado que la lectura, utilizaci=F3n, divulgaci=F3n y/o copia sin a=
utorizaci=F3n est=E1 prohibida en virtud de la legislaci=F3n vigente. En el=
 caso de haber recibido este correo electr=F3nico por error, se ruega notif=
icar inmediatamente esta circunstancia mediante reenv=EDo a la direcci=F3n =
electr=F3nica del remitente.
Evite imprimir este mensaje si no es estrictamente necesario.

This email and any file attached to it (when applicable) contain(s) confide=
ntial information that is exclusively addressed to its recipient(s). If you=
 are not the indicated recipient, you are informed that reading, using, dis=
seminating and/or copying it without authorisation is forbidden in accordan=
ce with the legislation in effect. If you have received this email by mista=
ke, please immediately notify the sender of the situation by resending it t=
o their email address.
Avoid printing this message if it is not absolutely necessary.



_______________________________________________

USRP-users mailing list

USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>

http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


________________________________

Este correo electr=F3nico y, en su caso, cualquier fichero anexo al mismo, =
contiene informaci=F3n de car=E1cter confidencial exclusivamente dirigida a=
 su destinatario o destinatarios. Si no es vd. el destinatario indicado, qu=
eda notificado que la lectura, utilizaci=F3n, divulgaci=F3n y/o copia sin a=
utorizaci=F3n est=E1 prohibida en virtud de la legislaci=F3n vigente. En el=
 caso de haber recibido este correo electr=F3nico por error, se ruega notif=
icar inmediatamente esta circunstancia mediante reenv=EDo a la direcci=F3n =
electr=F3nica del remitente.
Evite imprimir este mensaje si no es estrictamente necesario.

This email and any file attached to it (when applicable) contain(s) confide=
ntial information that is exclusively addressed to its recipient(s). If you=
 are not the indicated recipient, you are informed that reading, using, dis=
seminating and/or copying it without authorisation is forbidden in accordan=
ce with the legislation in effect. If you have received this email by mista=
ke, please immediately notify the sender of the situation by resending it t=
o their email address.
Avoid printing this message if it is not absolutely necessary.

--_000_AM0P193MB03082904B54E9522CBC57115BDB39AM0P193MB0308EURP_
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML con formato previo Car";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
span.HTMLconformatoprevioCar
	{mso-style-name:"HTML con formato previo Car";
	mso-style-priority:99;
	mso-style-link:"HTML con formato previo";
	font-family:Consolas;
	color:black;
	mso-fareast-language:EN-US;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
span.EstiloCorreo21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EstiloCorreo22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EstiloCorreo23
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body bgcolor=3D"white" lang=3D"ES" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Hi Marc=
us, <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">My goal=
 is to get NTP daemon running on N300 synced with GPSDO and PPS. Could it b=
e that the GPSDO time is internally latched with the PPS line? If this is t=
he case then I guess that it would not
 be necessary to read the PPS.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">I have =
seen the &#8220;Device Synchronization&#8221; section&nbsp; and &#8220;sync=
_to_gps&#8221;&nbsp; example in the USRP HW Driver and USRP Manual but &nbs=
p;I am not sure if I have to do this if I just want to synchronize the NTP =
and
 system time on just one USRP N300.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Thanks,=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Roberto=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext;mso-fareast-langu=
age:ES">De:</span></b><span style=3D"color:windowtext;mso-fareast-language:=
ES"> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com">u=
srp-users-bounces@lists.ettus.com</a>&gt;
<b>En nombre de </b>Marcus D. Leech via USRP-users<br>
<b>Enviado el:</b> mi=E9rcoles, 3 de febrero de 2021 17:10<br>
<b>Para:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a><br>
<b>Asunto:</b> Re: [USRP-users] GPSDO and PPS on USRP N300<o:p></o:p></span=
></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 02/03/2021 02:31 AM, Puertas Blanco, Roberto via =
USRP-users wrote:<span style=3D"font-size:12.0pt;mso-fareast-language:ES"><=
o:p></o:p></span></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Hello, <o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there any way to get the PPS=
 pulse from PS side &nbsp;(ARM) in the USRP N300? I would like to know if t=
he PPS is mapped through the /dev/pps or if it is embedded into GPSDO modul=
e. &nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks,</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Roberto</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif;mso-fareast-language:ES"><o:p>&nbsp;</o:p></span>=
</p>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-langua=
ge:ES">The answer (based on the version of the system image that I have) is=
 no.&nbsp; The PPS line does not &quot;manifest&quot; as /dev/pps
 on the ARM CPU.<br>
<br>
<br>
<o:p></o:p></span></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;ms=
o-fareast-language:ES">
<hr size=3D"3" width=3D"100%" align=3D"center">
</span></div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:7.5pt;font-family:&quot;Arial&quot;,sans-serif;color:gray;mso-fareast-l=
anguage:ES"><br>
Este correo electr=F3nico y, en su caso, cualquier fichero anexo al mismo, =
contiene informaci=F3n de car=E1cter confidencial exclusivamente dirigida a=
 su destinatario o destinatarios. Si no es vd. el destinatario indicado, qu=
eda notificado que la lectura, utilizaci=F3n,
 divulgaci=F3n y/o copia sin autorizaci=F3n est=E1 prohibida en virtud de l=
a legislaci=F3n vigente. En el caso de haber recibido este correo electr=F3=
nico por error, se ruega notificar inmediatamente esta circunstancia median=
te reenv=EDo a la direcci=F3n electr=F3nica del
 remitente.<br>
Evite imprimir este mensaje si no es estrictamente necesario.<br>
<br>
This email and any file attached to it (when applicable) contain(s) confide=
ntial information that is exclusively addressed to its recipient(s). If you=
 are not the indicated recipient, you are informed that reading, using, dis=
seminating and/or copying it without
 authorisation is forbidden in accordance with the legislation in effect. I=
f you have received this email by mistake, please immediately notify the se=
nder of the situation by resending it to their email address.<br>
Avoid printing this message if it is not absolutely necessary.<br>
</span><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&qu=
ot;,serif;mso-fareast-language:ES"><br>
<br>
<o:p></o:p></span></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list<o:p></o:p></pre>
<pre><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.c=
om</a><o:p></o:p></pre>
<pre><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif;mso-fareast-language:ES"><o:p>&nbsp;</o:p></span>=
</p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
Este correo electr=F3nico y, en su caso, cualquier fichero anexo al mismo, =
contiene informaci=F3n de car=E1cter confidencial exclusivamente dirigida a=
 su destinatario o destinatarios. Si no es vd. el destinatario indicado, qu=
eda notificado que la lectura, utilizaci=F3n,
 divulgaci=F3n y/o copia sin autorizaci=F3n est=E1 prohibida en virtud de l=
a legislaci=F3n vigente. En el caso de haber recibido este correo electr=F3=
nico por error, se ruega notificar inmediatamente esta circunstancia median=
te reenv=EDo a la direcci=F3n electr=F3nica del
 remitente.<br>
Evite imprimir este mensaje si no es estrictamente necesario.<br>
<br>
This email and any file attached to it (when applicable) contain(s) confide=
ntial information that is exclusively addressed to its recipient(s). If you=
 are not the indicated recipient, you are informed that reading, using, dis=
seminating and/or copying it without
 authorisation is forbidden in accordance with the legislation in effect. I=
f you have received this email by mistake, please immediately notify the se=
nder of the situation by resending it to their email address.<br>
Avoid printing this message if it is not absolutely necessary.<br>
</font>
</body>
</html>

--_000_AM0P193MB03082904B54E9522CBC57115BDB39AM0P193MB0308EURP_--


--===============2042159218280059841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2042159218280059841==--

