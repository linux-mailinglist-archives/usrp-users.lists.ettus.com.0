Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7DE7EE823
	for <lists+usrp-users@lfdr.de>; Thu, 16 Nov 2023 21:12:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3CA5B384BC7
	for <lists+usrp-users@lfdr.de>; Thu, 16 Nov 2023 15:11:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700165519; bh=WPP7sM623ohAq6/QWRS/f7DSZNqvgqh+X5/c0yP0suc=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=FpEnH0BKC75g/dNwG6z2k24yBcV28ZlkMdkiWy8MCx6MoHViNNezP6X5LoSoAcPZe
	 aDAVOZOlX/zF6jND7pQpSffv+tZDTXz728OCekhJJ0UzobgT/vyXG/HASu4WP9oZdR
	 VrrQKQcNqxHR96JGdhABqAbet41cfuqULDgqMZWbnaQFVWGq4J9nulk1AzZMmito57
	 e8qDPmRhVog57qMhaXFkeYZI8oTZhGYexiMTXhvNVuxdt3xwDctMyvpymc310sQ0lP
	 E5GFuyhYRdWpI78zhajuoAUYA3xUhWZbu1wkm7DvSuze9X3fUxyi0ZTr6mlwSM7iJW
	 LB07NKmOESUwA==
Received: from az25dmzegs01.gd-ms.com (az25dmzegs01.gd-ms.com [137.100.136.43])
	by mm2.emwd.com (Postfix) with ESMTPS id C123138472E
	for <usrp-users@lists.ettus.com>; Thu, 16 Nov 2023 15:11:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gd-ms.com header.i=@gd-ms.com header.b="I61KNR6l";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=gd-ms.com; i=@gd-ms.com; q=dns/txt; s=esa;
  t=1700165480; x=1731701480;
  h=from:to:subject:date:message-id:mime-version;
  bh=loMiYE027v4M7/jMwp04EyxyAwsQuo40szMQNgp8U1c=;
  b=I61KNR6lH83WKXEVYUndQ/EDb5cB3ChXvcgYc0Fm8WoOvTZ6d41dc66x
   oN4PsyxY8M5TNFwLLN4P1c+TkNlZfE4Sn0Dpfz3JUUAujmO/OEn+Bx7vT
   +Sl8dcWoyVDLEUtu8ktusWS97TAj9S5+CsS4or884BI6mgEjnAaV/2zB+
   PBjrBnZ4slCtnWA2OEYNb7LziURXH62dCoLPr6UiWVkxth06KmR+/mdnf
   W8Z4u0BqYH9vdhkCOjacDSIvyAXKEcGD2T2PGv85USnJb0xTNyBPBZg0A
   ipPUWqWguO3rY50BIfNu6ivTEh4erfAe0V4PAwAJQTfbTb4vgrW7YsPv2
   w==;
X-CSE-ConnectionGUID: tCiHRzZ8QRaw/276YhL+lg==
X-CSE-MsgGUID: TB+9AzveS62b0ZA4tqxALQ==
X-IronPort-AV: E=Sophos;i="6.04,205,1695711600";
   d="scan'208,217";a="62647326"
Received: from unknown (HELO az25sec06.localdomain) ([10.240.16.97])
  by az25dmzegs01.gd-ms.com with ESMTP; 16 Nov 2023 13:11:19 -0700
Received: from azr-a-mbx01.GD-MS.US (azr-a-mbx01.gd-ms.us [10.145.20.52])
	by az25sec06.localdomain (Postfix) with ESMTP id 91BDC25898C
	for <usrp-users@lists.ettus.com>; Thu, 16 Nov 2023 20:11:19 +0000 (UTC)
Received: from azr-a-mbx02.GD-MS.US (10.145.20.53) by azr-a-mbx01.GD-MS.US
 (10.145.20.52) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.34; Thu, 16 Nov
 2023 13:11:18 -0700
Received: from USG02-BN3-obe.outbound.protection.office365.us (137.100.136.86)
 by smtp-relay.gd-ms.us (10.145.20.56) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 13:11:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=YwBuMaHlV6GiylTaI5urw4KiHuZE2n8RX37dasZT3hFyq9R/UFccCbgnHykrrZ80uRPpoqgTJc1awxKaDN9hx3ZY5PGZwTsQeOidNa3OQKOoTEO1ycSsCNANTklGHaTWIr6x4oojp2ITblq5V3YGlkkNxBKcuj2jxtbX5Hn+pr9Vxgog1Ge1cZGFnPcXzoKDv98G08rdN5zRSp8x3MRpYiU03JZ/aFdDNYTglPjBjNWpuH8xdwE0ayIk4m3/z74XauNNMNASx/uZyxIo7SFOv2u5FzHKb7gc/4BUlqcTn2zd76M8JSPRwn+b3pFig9pAFS05WOz5emo5Icexqjbxwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I/EzLq4pnGjOHmDjYJt07T6jGHl+jDACobTvNUBSnKU=;
 b=iquedqVLNcGNkHQbQ777iz4ZScRTgeafNb2Z9dTy0uBMm4LSibnQ0jrw0sE2rDD1O9XhhUmARy984vRAbgXkjX6WSk12XfDve9jnp4WYfuzSfF7pkJ2tr6ReolXvFa4egsp1c0Xmm5lhlwUMMFlc4y3cznd9oMmlJ438xjkm5fs8x8j8+BQpT/KybDPUs3V9cF4hmygxo66txjqc+sGE2067/HnAZClOaj/tonvl/i0KAyHv34zpSrx5yQCbh7sbDxpx/KOvReZsF886UBYTQHvwPqIsi+3epSPd2MGQb/Jc8IHbgvBRU3P/tUakQJpboKGZGdGBMtFHOMIXWmcEwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gd-ms.com; dmarc=pass action=none header.from=gd-ms.com;
 dkim=pass header.d=gd-ms.com; arc=none
Received: from BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:169::12)
 by BN2P110MB1511.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 20:11:16 +0000
Received: from BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
 ([fe80::8e9f:bec7:36f7:ba97]) by BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
 ([fe80::8e9f:bec7:36f7:ba97%7]) with mapi id 15.20.7002.021; Thu, 16 Nov 2023
 20:11:16 +0000
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: peek32/poke32 slow
Thread-Index: AdoYyJBiQK/RwKoBTWem67/g/lkfAQ==
Date: Thu, 16 Nov 2023 20:11:16 +0000
Message-ID: <BN2P110MB09483E08C99BAFC569FBD48FCAB0A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gd-ms.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB0948:EE_|BN2P110MB1511:EE_
x-ms-office365-filtering-correlation-id: bec4cd15-2089-4eaf-e54d-08dbe6e030c4
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4kkCfsuFho1w1Kv/sNAGpLYElkXnQ8U9k639Uebc4Baxbwm6+2YxEGEcfMTHcazH8NvLB+XGts2H92AJOd/e2X6jqQ7HPWSgTsRncrCxSG6Yx+R7+6wzK7edF1iRTAKD+LPB2lIOmsitSD/gwTL1DDkPHYRpD5Ud46HMzaFebM+Q4ADhxOXuBvmW7PfRsNHihb5Wtv0xlXq47laehat3myszPfuz/EJLm871K0s31rMrhb7fYrVfHARyhTveb2IPHM+tbryV8uUJmOYzJ6oSej1jamiVa9ZnIEvA+vwivLzOEGewPk/pzD05qbiMj1wTd4pdPWQ6+5hRpcyhCZjGn/QeGX0bD22kG6bfchvQjZz7mhJLszVQk2FF4lRn8BUWib+7VU299neDQwQnct04oA1rBrN7iPK2aCiUsjefR70iszJd7BHpQwGv+HLswymT0hTEOF9p+zCNdNdBZmo2Mcu1ldmjdjEPrE9Qe5it44go6ni+FzzS2EUvSLwmhnZ7f2+ZWjkmb1+nIL3noFeGDuMkZalIyKuehFc02PL0F9nxp1LdRrI+8HzUtGqN0YiKaTTAgcYXXfXtmxswx5uvATg4R61HBA5BcZiyc45SCgTRqVZhEZs3zVehX5nevL+e
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(230922051799003)(451199024)(186009)(1800799009)(55016003)(76116006)(66946007)(66476007)(66556008)(6916009)(64756008)(66446008)(38100700002)(122000001)(38070700009)(86362001)(82960400001)(33656002)(83380400001)(26005)(6506007)(7696005)(9686003)(71200400001)(2906002)(4744005)(498600001)(8676002)(5660300002)(8936002)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 0CFlZQrdoUU/KW0zCS0yYBBp/Y30++Hru4suH+q0UbjTbGxATm1jiPl4kvJIsyWrnVVy5Qiu3qc9/PjQhi/EuX9Dw5BbfIPb+X7PI8y/7GZpZmfh79u2xQhcpi3Lvb4Fgja0RvLi0KAjzY0F29Uvvi090h4kOsivcTekOYq2Cg0o76fkB7IuyP1kZ6n+Gh0F9hu/1y511VgHeAcZgUT4H5IUZEDJg/D6Bl4s9z4rdCLkwFuO7QAXNz/HXEBqbLvD5njzonYzvb9nFZjsFRc4Z6rMjZNxTajpc8+QGeTBd816JOBc+fNOI3mENd22p9viiwgdgs6WL29wYAXtjADcleajY2e0/vPQ9OfTGSKMcVCjDA4/1wpyQ98U5Vf/cfyfMd9ALrUdEaLxBrokx565OfKmlImzvEv7mVhQAYl785Q=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: bec4cd15-2089-4eaf-e54d-08dbe6e030c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2023 20:11:16.7981
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7c5a26cf-ddf0-400c-9703-4070b4e3a54d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1511
X-OriginatorOrg: gd-ms.com
X-Content-Scanned: Fidelis Mail
Message-ID-Hash: C6D2DE6XI36VCMA5NSFAURO7XPCKLREP
X-Message-ID-Hash: C6D2DE6XI36VCMA5NSFAURO7XPCKLREP
X-MailFrom: Alvin.Begaye@gd-ms.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] peek32/poke32 slow
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C6D2DE6XI36VCMA5NSFAURO7XPCKLREP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Alvin.Begaye--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Alvin.Begaye@gd-ms.com" <Alvin.Begaye@gd-ms.com>
Content-Type: multipart/mixed; boundary="===============1828467940704663161=="

--===============1828467940704663161==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB09483E08C99BAFC569FBD48FCAB0ABN2P110MB0948NAMP_"

--_000_BN2P110MB09483E08C99BAFC569FBD48FCAB0ABN2P110MB0948NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi I am using an x410, and running through the init_gain_block example,   u=
sing the high resolution timer I am getting these results, which seem reall=
y slow, is there a faster way to read/write registers?

Time 481.835 micro seconds.
Gain value read/write loopback successful!

Here is the code.

    t1 =3D high_resolution_clock::now();
    gain_block->set_gain_value(new_gain_value);
    const uint32_t gain_value_read =3D gain_block->get_gain_value();
    t2 =3D high_resolution_clock::now();

    delta_time =3D duration_cast<duration<double>>(t2-t1);
    std::cout << std::flush ;//<< std::endl;
    std::cout << "Time " << delta_time.count()*1000000.0 << " micro seconds=
." << std::endl;

--_000_BN2P110MB09483E08C99BAFC569FBD48FCAB0ABN2P110MB0948NAMP_
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi I am using an x410, and running through the init_=
gain_block example,&nbsp;&nbsp; using the high resolution timer I am gettin=
g these results, which seem really slow, is there a faster way to read/writ=
e registers?<br>
<br>
<span style=3D"font-family:&quot;Courier New&quot;">Time 481.835 micro seco=
nds.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Gain value read/write loopback successful!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Here is the code.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; t1 =3D high_resolution_clock::now();<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; gain_block-&gt;set_gain_value(new_gain_value);<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; const uint32_t gain_value_read =3D gain_block-&gt;get_ga=
in_value();<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; t2 =3D high_resolution_clock::now();<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; delta_time =3D duration_cast&lt;duration&lt;double&gt;&g=
t;(t2-t1);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; std::cout &lt;&lt; std::flush ;//&lt;&lt; std::endl;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; std::cout &lt;&lt; &quot;Time &quot; &lt;&lt; delta_time=
.count()*1000000.0 &lt;&lt; &quot; micro seconds.&quot; &lt;&lt; std::endl;=
<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BN2P110MB09483E08C99BAFC569FBD48FCAB0ABN2P110MB0948NAMP_--

--===============1828467940704663161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1828467940704663161==--
