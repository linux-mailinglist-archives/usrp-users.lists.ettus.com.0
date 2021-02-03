Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A40B30D40C
	for <lists+usrp-users@lfdr.de>; Wed,  3 Feb 2021 08:32:41 +0100 (CET)
Received: from [::1] (port=54774 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7CeT-00027L-C2; Wed, 03 Feb 2021 02:32:37 -0500
Received: from mail-eopbgr60124.outbound.protection.outlook.com
 ([40.107.6.124]:57506 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <rpblanco@indra.es>) id 1l7CeO-00023v-Nb
 for usrp-users@lists.ettus.com; Wed, 03 Feb 2021 02:32:32 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hrpdu8pu9XS6o71g8EWuSDi42DqRd7fq+AhjKUKKuRs6NNRj4gUXDFVgYrVuA/uYYOGodLyst+eCuilVsd7oM7Em69bzrgDd27YR6g1dvbSKCbjWtWLd0WnQdCnXfEiTSogytcJZkAiyuZSeLFaigo35YJneRzUwUsy/y3mjzeAAGW7oJIK2SEURnpwJU4yXXYxsmBBk0at+TKI6rHMK07TO1174RR7dtg18aLBp08DMGm8Jrr8U98riYw210K7YgaeOWpdys71ZImiU8BVSC/AJv0+n4YKaM5Lf+DgQqnFaSd2SrP9SKcHm0gEUexKWgB8MMgI129hVpJx/r342iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=szwRKnzjd7+xPwbCCqaus5+7NMPj/bWGZqlaUzfnQns=;
 b=M6AsAofHAzl8annhl8hkbWoS2v4vKLQ/bffI/JwFfFVvO+AiYSsMrFmOAVuG17PNxzL5s9b7yl2bf5w9eqHxlr8hJXsnrBIaAX1IOdTZ2bnGqGoZ+zIjWlp1hUkghrQ761LqihTYTX4KYC4NNjfSEJhMRhRBF2p/5RANJnbbteHLPhF3PofG3H5iH1dqnjEby2lcchhW5AfjBegyDKuhBSmnxTQjj3hQfyza/px5xzhlnYCLclRn/Jot31lrgDmNr62ox3zZax0EUABPhBHS9g6PKjsKgcVUBVm0UAAF31RKkMSEDMStq1mECg92lI/yPnA93PpwWCSgJUPpYMC/rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=indra.es; dmarc=pass action=none header.from=indra.es;
 dkim=pass header.d=indra.es; arc=none
Received: from AM0P193MB0308.EURP193.PROD.OUTLOOK.COM (2603:10a6:208:60::13)
 by AM0P193MB0404.EURP193.PROD.OUTLOOK.COM (2603:10a6:208:66::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.17; Wed, 3 Feb
 2021 07:31:50 +0000
Received: from AM0P193MB0308.EURP193.PROD.OUTLOOK.COM
 ([fe80::2947:4292:a75d:c9fd]) by AM0P193MB0308.EURP193.PROD.OUTLOOK.COM
 ([fe80::2947:4292:a75d:c9fd%6]) with mapi id 15.20.3805.026; Wed, 3 Feb 2021
 07:31:50 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: GPSDO and PPS on USRP N300
Thread-Index: Adb5/OCCgBeh4rELQU+D2WzeOk7pTA==
Date: Wed, 3 Feb 2021 07:31:50 +0000
Message-ID: <AM0P193MB030882ECBD91A33E06D06D28BDB49@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>
Accept-Language: es-ES, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=indra.es;
x-originating-ip: [94.126.240.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 094e72cf-c5d4-4dc1-f79a-08d8c815c56e
x-ms-traffictypediagnostic: AM0P193MB0404:
x-microsoft-antispam-prvs: <AM0P193MB040427DC5233E9B5C949E592BDB49@AM0P193MB0404.EURP193.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l1CyrNAMnHpxCNb+w5y3H6MkXkqwxqr3T4gA/VuU+jt87N+V9HgxGvbP97o6fmfiUt37hXK8K7xShhWHrwEWFL7CRvPTVNs6nz+hv9IsnWabZJpBuL9ss1KDttTiBA3xlAbhIgrH9uzJbyvmReNQepcCKgS6lUgr4XDc2PwURDNqAzdNwUA20J3KuHUCrRjbyCA+J7oTNFaEAgz75TAypU8oquhPtL36LlFOciWWbP9h6T2XXhUOIligESRIm8rrE9TF/cnHx6sxTzSXwdme3IG5CpNRCm0rIoeGKcnVXwFfh0pu0y3AjhikErReEkB3YpeCsqMSgXiDz4Yfcw8xVdlNpMN1s9MintU4XuZkK/+7TnFyMb5Q0X4RvsnwA2G9PV51L8XkmRGfRmAnvyeDArwmUQKh6hLCZqtHkn2ZUW0QWSwWWlFQpxgD9asZhVtP781d9xGKWzkDhLEQX7UhxoD4JBoPlKKXhIprdoYeL+YSHYix7FGXyaA47JJfRMwwR1xOqq9JORF3K1vqzd4WDw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0P193MB0308.EURP193.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(376002)(396003)(39860400002)(346002)(71200400001)(316002)(9686003)(19627235002)(5660300002)(55016002)(66556008)(76116006)(7696005)(33656002)(83380400001)(26005)(186003)(6916009)(86362001)(6506007)(478600001)(66476007)(2906002)(66946007)(52536014)(8936002)(8676002)(64756008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?T+NsOJrPpg9L6fSCFKCfrvcJxPx9ba3VyMpVFWi1saVeqJZbHuD8XBM16WjP?=
 =?us-ascii?Q?B0IEwtuWMQW37DAE9G5UzJaKzvbVMj4AtDmGZqCFQWJwZwKd3i2ZXdxjJUkh?=
 =?us-ascii?Q?k06W9qGpjMv/lgLGJ3zOLAzbdHepEh6pepA83UzuMOy2+16+qO7nigBhqeTE?=
 =?us-ascii?Q?X2R1/rj6WlZvgA/TKW73pnj58R34ibH7X/Z9I5rznTNlz4VF1FpXx4rv34E6?=
 =?us-ascii?Q?sTgH5PEfuW2cKZcvwIWzmrKJJRWh1V+YAeuSR2OO1nvOZlOz3C9sqfYEWbIe?=
 =?us-ascii?Q?w2OZ64aYmqVHfaEijij0eNbkNrVJskZVFEXmhojrgBOj7y8UfLhihL9cQoRk?=
 =?us-ascii?Q?Hv9VTCGIFbSUAcCjQ1olhNCtNcEo7zMLVQdtIaZr1EUKMKr7W7HJ2zfFzwMY?=
 =?us-ascii?Q?BY6NTlhV8TPsRPxkN8VSWRF74syCrJNThlqlMiTWYqc5zr9qzewqELmpmTGP?=
 =?us-ascii?Q?Mv/vMbKNqKmyHSrzv1qzXxnJibeIGWXE3Y+nSqhesW8Zb0Cn6+bjhLz+gWIK?=
 =?us-ascii?Q?2E/ulUx1697T94rofOTRnhVpxStioELwaXZR9H6SjNwDs/oFnW02PQEMuO3k?=
 =?us-ascii?Q?QFpCVMxCAJXFAPJwFEECt1yGu8N6/+eTWb/RXpyNOuYZIwYOK4KRTzoKipDO?=
 =?us-ascii?Q?Sc/h7axlcgLe625rjna96Hwqy/Q4lrXn91vtg6E28hrkVLMJVsEgl6WWDSa7?=
 =?us-ascii?Q?UKF9rL+lq4g9JGovhJ4ChE8xaBFahCOPWCVbt9gq0ko/LqYHkCu/Jgl+IN9Y?=
 =?us-ascii?Q?eFwV0yUIxzU0v42Jtvs59kdELb2/UARcvCwedHOWVWDMebDbuqRTzeGvxdpd?=
 =?us-ascii?Q?Tc8mIIFFPLI7xyLILRTL7X6HtkN/2wsounps7FwJv47bBmMc0wVWskKrSC8n?=
 =?us-ascii?Q?BHKDukSOXGlR8vAgOccp6WvzQ10yjTHqYCjpvlwWxoknRlNkROBQABidJtN+?=
 =?us-ascii?Q?RpyL523UvExzp/8DF90pByN50WzpkKwqWFRS/4/vuqswIpgAUJP86d4KEAw7?=
 =?us-ascii?Q?efhWOBA6M95coUm+A1u/xidOMtY+tLDoAFSaXW6Anst7FwA=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: indra.es
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0P193MB0308.EURP193.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 094e72cf-c5d4-4dc1-f79a-08d8c815c56e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2021 07:31:50.4357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7808e005-1489-4374-954b-d3b08f193920
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IqWs4nebtA2jk67Koajmc/PDuVCpBa+kXz83hzyLKVz9bgssXAjxNYhTH9ZofZ+PxaQ7+SfE2H9K9x7Ze8JiLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0P193MB0404
Subject: [USRP-users] GPSDO and PPS on USRP N300
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
Content-Type: multipart/mixed; boundary="===============9043854254724247036=="
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

--===============9043854254724247036==
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_AM0P193MB030882ECBD91A33E06D06D28BDB49AM0P193MB0308EURP_"

--_000_AM0P193MB030882ECBD91A33E06D06D28BDB49AM0P193MB0308EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Is there any way to get the PPS pulse from PS side  (ARM) in the USRP N300?=
 I would like to know if the PPS is mapped through the /dev/pps or if it is=
 embedded into GPSDO module.

Thanks,
Roberto

________________________________

Este correo electr?nico y, en su caso, cualquier fichero anexo al mismo, co=
ntiene informaci?n de car?cter confidencial exclusivamente dirigida a su de=
stinatario o destinatarios. Si no es vd. el destinatario indicado, queda no=
tificado que la lectura, utilizaci?n, divulgaci?n y/o copia sin autorizaci?=
n est? prohibida en virtud de la legislaci?n vigente. En el caso de haber r=
ecibido este correo electr?nico por error, se ruega notificar inmediatament=
e esta circunstancia mediante reenv?o a la direcci?n electr?nica del remite=
nte.
Evite imprimir este mensaje si no es estrictamente necesario.

This email and any file attached to it (when applicable) contain(s) confide=
ntial information that is exclusively addressed to its recipient(s). If you=
 are not the indicated recipient, you are informed that reading, using, dis=
seminating and/or copying it without authorisation is forbidden in accordan=
ce with the legislation in effect. If you have received this email by mista=
ke, please immediately notify the sender of the situation by resending it t=
o their email address.
Avoid printing this message if it is not absolutely necessary.

--_000_AM0P193MB030882ECBD91A33E06D06D28BDB49AM0P193MB0308EURP_
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EstiloCorreo17
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ES" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there any way to get the PPS=
 pulse from PS side &nbsp;(ARM) in the USRP N300? I would like to know if t=
he PPS is mapped through the /dev/pps or if it is embedded into GPSDO modul=
e. &nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Roberto<o:p></o:p></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
Este correo electr&oacute;nico y, en su caso, cualquier fichero anexo al mi=
smo, contiene informaci&oacute;n de car&aacute;cter confidencial exclusivam=
ente dirigida a su destinatario o destinatarios. Si no es vd. el destinatar=
io indicado, queda notificado que la lectura, utilizaci&oacute;n,
 divulgaci&oacute;n y/o copia sin autorizaci&oacute;n est&aacute; prohibida=
 en virtud de la legislaci&oacute;n vigente. En el caso de haber recibido e=
ste correo electr&oacute;nico por error, se ruega notificar inmediatamente =
esta circunstancia mediante reenv&iacute;o a la direcci&oacute;n electr&oac=
ute;nica del
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

--_000_AM0P193MB030882ECBD91A33E06D06D28BDB49AM0P193MB0308EURP_--


--===============9043854254724247036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9043854254724247036==--

