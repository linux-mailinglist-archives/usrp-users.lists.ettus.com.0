Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B11229F1B
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 20:16:19 +0200 (CEST)
Received: from [::1] (port=53314 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyJHq-0003jf-Nr; Wed, 22 Jul 2020 14:16:14 -0400
Received: from mail-bn7nam10on2055.outbound.protection.outlook.com
 ([40.107.92.55]:27873 helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1jyJHn-0003cE-A9
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 14:16:11 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OZ6fuxna/pdhCDR0axy+JkQk7R6XsSISRlDDXcpl5q9KvtnMi/cqGeNsXOBMXKRObn33avVo5yoXXDwlHBgw0JXWrOpJMQmMcP32B4pgJzE9IVsba/v/vcu5yjqnO0Lgf9GrqH1UU3QRFVrp830MrZwNOF5u2omH+pX9IL+5pVf0RGjmMOvlIYveLP53lfIwFUfvvPgirWokAFygIj/lnq8aaHANo/8X7XIo/J94XTES6EDSRQY0/2WFxw5Q3AgG7CNCtXYGjNn6nRuoV9zRQ5OPBh3vVwd9RZyNJjK3zVCnmGDHQwHf6tza9Ktu05A4t+eWxXrTSUJnYQh0w4UycA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p0Hi/vI4U6QLMo/uw88ikzMTFk2XNunqyIcFTwpb5TI=;
 b=WiMgSfTOQIteYHyFk7Y199aSrRjYq9tGQ7mxaDZ3wHJjKNQ4mKpj6qYmwZD45so7YBEXiUg4lioULS05lsSdfG6NgjT5wFhyX6744jZetj/YNG7JJ5AMwWlF4Af5Nnzlmn4YD3j1SYKHdKuBE6r1+nqNEcJzDcIVPN1fA11XuEzbpwq8+M1/E5efc5aC9pPBc4GZdhz7NXIlO0MFRqnakx5BKyrSwU5za1GfXDBdM9KBo62DzF1guPjm9AlIwfP686VUV6mXfmuphQTKTXPB4BWTVDSgplJnYInsAl2stGNoOnRh673e3BtY0WjWJ9O1dIbee/pTOXWr03jpl4vJ7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p0Hi/vI4U6QLMo/uw88ikzMTFk2XNunqyIcFTwpb5TI=;
 b=AHwXiraNaA2AHhf8YlITHgUg1q8NBK89OOFzFiYwN7MVkLoXwk2QVIXKJ4yeT+vqjelN/vPcCdOpARfW8Z6QmWCXCtlGy3u/E76PR0Oy7ijI8ylxR98Y4VxztT4yRdjH/nE5+g3SzywPKNEfQpQ0P8lJZmfaSHP8m5LfYacOqcc=
Received: from BY5PR19MB3398.namprd19.prod.outlook.com (2603:10b6:a03:185::26)
 by BY5PR19MB3762.namprd19.prod.outlook.com (2603:10b6:a03:224::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.23; Wed, 22 Jul
 2020 18:15:29 +0000
Received: from BY5PR19MB3398.namprd19.prod.outlook.com
 ([fe80::e5ec:f22b:6b02:d161]) by BY5PR19MB3398.namprd19.prod.outlook.com
 ([fe80::e5ec:f22b:6b02:d161%7]) with mapi id 15.20.3195.028; Wed, 22 Jul 2020
 18:15:28 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Re: Signal transmission on a USRP X310 
Thread-Index: AdZgU/vaF/M4P6Q3QPikH6Xg/0Erzw==
Date: Wed, 22 Jul 2020 18:15:28 +0000
Message-ID: <BY5PR19MB3398D74D23AAA722CD1040FAC6790@BY5PR19MB3398.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=canyon-us.com;
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 28cc618a-ecb2-4ec1-29d1-08d82e6b36c7
x-ms-traffictypediagnostic: BY5PR19MB3762:
x-microsoft-antispam-prvs: <BY5PR19MB3762DE9F17FF7B2A72049180C6790@BY5PR19MB3762.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HasYpo7JRsnjaNQ6JqUxuzlNMMUsg58wemKPhZC15jkz6anm1rOk8R8NyYrBJ3QzGZH5BG+d9qS5ios/D3HTzzGbExkbHss6B48Di7qry3VV1GFh8AJjzKh9hxa0TMO7dzZIpy6UxSo3r62M1BA2UNUfqy2cEx0sBA+Ub37FZboiWxrCjYlVT/RwmvfeDjhSNij/lr4rBDkNg4sWS4QTee2PWloGrRHfsR501bM+01NFTdnvK14moGS7i7V6JAcMNZjl9s5phSmvKX24RILNfeJX4ZPcr98CJ5haFgNkcPL62WqtLKhrRdNepftADPIH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR19MB3398.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(39830400003)(396003)(346002)(376002)(316002)(44832011)(33656002)(2906002)(66446008)(508600001)(4744005)(4743002)(5660300002)(66476007)(66556008)(64756008)(9686003)(55016002)(186003)(52536014)(7696005)(66946007)(71200400001)(86362001)(6916009)(6506007)(8676002)(9326002)(8936002)(26005)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: riCxXgAd7+7d7jxWomwQZU9j2CDCnHWXj/LcUJ+qD62Ls/kmptTK4dVCN3YdppBqOgqPVE3JXqFl6KZp6H6J+3f7rHdluY+9iYH53goWm4fWBl1eMBW6VitOrl0VS7ivfQzjuTqJeJQigl9Iw8nJBaZu4n5RJ/kIm09gxNTdTQUuvSiuKkZAkNHBdFLJwcc+L5U7O3y+FkcPqLE/NsP00tgb9wVZ/TVVUkKGwTFFErnUZyaLyZyMhi+0Ojg2iRFZ4d6g22YfdsyFpwTs106IXu//V1gl09JfWDrBAHLeEPZ+qhX7rYkHBObU12aWh8+BKM+X3jUIi+KpZ7Vaa8LV53dUNdwBW7qM3ZhpLe3grA/M/v7i+ZxmV6GshsbBNfD2bOgMqcDkJjA2dvm3FVN/6TaqZISKPLFgqCKlf2njhtN6SPycsDNmS6IG+nyA54hb9h6KsWS2WsnLgmwwjVZN3dnzzdRoJdKdg5BHI1uIt+Wku13epr/lYZeSSadZjiXV
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR19MB3398.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28cc618a-ecb2-4ec1-29d1-08d82e6b36c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2020 18:15:28.4437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MyUQpj+Q7mUFpVZQsAWHy3eMLQvi9AMVzmSX1DIwlekVrBg4m21lux1dUWuGgWZ63+YyEXHZYAMR0eEM4+Rq3reXERixKg1RRv+Kd0kwlTg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR19MB3762
Subject: Re: [USRP-users] Signal transmission on a USRP X310
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
From: Jerrid Plymale via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Content-Type: multipart/mixed; boundary="===============5412037006942765906=="
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

--===============5412037006942765906==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY5PR19MB3398D74D23AAA722CD1040FAC6790BY5PR19MB3398namp_"

--_000_BY5PR19MB3398D74D23AAA722CD1040FAC6790BY5PR19MB3398namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Marcus,

The tool I have been using for initial signal quality checking has been the=
 QT Waterfall sink in GNU Radio Companion to see if the signals are looking=
 correct. Upon seeing that it looked like I was loosing data when I set the=
 USRP sink's center frequency above 1.3 GHz, I connected the output of the =
USRP to a spectrum analyzer to get some more accurate measurements of the s=
ignal. After running some tests, I found that at a center frequency less th=
an 1.3 GHz, the strength of the signal was somewhere around -70 dBm. When I=
 would increase the frequency to a value above 1.3 GHz, and no changes to a=
nything else (e.g., channel gain, sample rate), the strength dropped to som=
ewhere around -90 dBm. This was measured by tracking the peak power from an=
 FFT of the signal input to the spectrum analyzer. Would it help to see the=
 flowgraph?

Best Regards,

Jerrid Plymale

--_000_BY5PR19MB3398D74D23AAA722CD1040FAC6790BY5PR19MB3398namp_
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello Marcus,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The tool I have been using for initial signal qualit=
y checking has been the QT Waterfall sink in GNU Radio Companion to see if =
the signals are looking correct. Upon seeing that it looked like I was loos=
ing data when I set the USRP sink&#8217;s
 center frequency above 1.3 GHz, I connected the output of the USRP to a sp=
ectrum analyzer to get some more accurate measurements of the signal. After=
 running some tests, I found that at a center frequency less than 1.3 GHz, =
the strength of the signal was somewhere
 around -70 dBm. When I would increase the frequency to a value above 1.3 G=
Hz, and no changes to anything else (e.g., channel gain, sample rate), the =
strength dropped to somewhere around -90 dBm. This was measured by tracking=
 the peak power from an FFT of the
 signal input to the spectrum analyzer. Would it help to see the flowgraph?=
 &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid Plymale<o:p></o:p></p>
</div>
</body>
</html>

--_000_BY5PR19MB3398D74D23AAA722CD1040FAC6790BY5PR19MB3398namp_--


--===============5412037006942765906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5412037006942765906==--

