Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5522F74E1
	for <lists+usrp-users@lfdr.de>; Fri, 15 Jan 2021 10:07:25 +0100 (CET)
Received: from [::1] (port=43012 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l0L4j-0004rM-Qg; Fri, 15 Jan 2021 04:07:21 -0500
Received: from mail-eopbgr110110.outbound.protection.outlook.com
 ([40.107.11.110]:12944 helo=GBR01-CWL-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <md964@hmgcc.gov.uk>) id 1l0L4f-0004mi-Vh
 for usrp-users@lists.ettus.com; Fri, 15 Jan 2021 04:07:18 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IRIWznD2Oi+90HOg+J+6uoWnUK+u6RF23uGEe9MQnaUmOijfI+XbnyHUdQdtJbu6GMjyF3nhTv/xOoooDzU76laX3PzdpYUlpd9zPhLZKlJmmdODoqE2DywzemnFOjvKX/zUTAOI6xuQ2wl0ksf7DAw1J+3oQjoI6jtG8CKYN5nASaoqNKVVLWY6/RIka38AqkK8xs8e25koH9XFxANzEna9+lpe7Zje059XDKp8yeGTJh3p67DnqTPaYG5FSVKkgy9qQmP3d3W+c8u6RJidHUZUZTaZOqEb2Nx97kWntC6ewGKwse90MPVURv17R5YfNiywJKZlXXeiuapSWp2NAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AB9EKwqltB8FZJ35o0Fu9PjNgQqBJzkDWd6HoTfVtgg=;
 b=mb8/IZSAP7CGmfTYqjO6F24HeIAFjRhSZG/c46NcpGMv48j/40HS170L/cErctuir5+HUeN7uTpmoM7p76y3+YCem9NZ0Ye4Pv8mKPy6NruSBkOBhs6S2rykWSVonJ3/qEE17dcdysCQORobXAMZqu85NI/OWvsm86jkggxOCY03BeGl5Uj5wnc6eGeMmzmCMjpHCDRABgkoOwbpQU+L1pqruSVfRBUY2L/7EtiUcHapAl0i0an2+acw+zf1NMA8Ny5+rlns7xqN3Nku6Xj/cN9k2rxdI54E0DNjUDfUH90UNtnttoqEw8f9hO3rfu3voTC6CZi9fDdP2QLekUSZdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AB9EKwqltB8FZJ35o0Fu9PjNgQqBJzkDWd6HoTfVtgg=;
 b=bFNHLtkWvIZYECNVMyPeuMFmLxSkET7NOWo0tJBz+xlgmg5nsTvyyvdWwHZTh+Rb5NH0B2mBLDtWk8IwMcsK4xMRHsX1kPXZ9uDuAcv4CqIGfUxUR+Ih84rzRGrCJihA8hA2rUsH9IS1Dirs7+m61VgVXEzUy37wBlgV3zh5Luw=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LO2P123MB4015.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:17e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Fri, 15 Jan
 2021 09:06:35 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::75b7:742f:26de:975f]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::75b7:742f:26de:975f%6]) with mapi id 15.20.3763.011; Fri, 15 Jan 2021
 09:06:35 +0000
To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: Setting E320 to use fixed IP Address on RJ45 eth0
Thread-Index: AdbrHZJNCfia6oeARmetIkq7Vg4jug==
Date: Fri, 15 Jan 2021 09:06:35 +0000
Message-ID: <LNXP123MB372474BC72EC550495B41F29CAA70@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=hmgcc.gov.uk;
x-originating-ip: [62.189.143.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6dd01d03-059d-4ceb-70be-08d8b934dc08
x-ms-traffictypediagnostic: LO2P123MB4015:
x-microsoft-antispam-prvs: <LO2P123MB40153E934D3F3ECD9B970133CAA70@LO2P123MB4015.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uzHTZ7Yk/hfMi7SnMyHBEPduustOorSs6WQCur0+uJgYPCzfs5PdsnVln3rxZxC3z+MLU+BapGC1US4R85nH8qASOyoHv+FtZdG2EDJH1BWrID29qrNwczBdenLrZ1cJuJPvKkG1oOYTOFa79lSeol5AQCzKkhZE6cXvqQR9DlMt+AKhHEH6wYOHPUI8cGbAxiwL/+wjxzPrXEeHGfGqq7bQ5V5yYnP+RxQqdyYh1DcHrJv7wM8SAVI/vjjaSoLSeMWRXuuxdaUOSW1PU/vVpy2b8oxJwVLvzZv6ulehzJ/ArU6QJTmmuaqGS3JN5U+eIgu+WPRVipIzRFbQHwhDs23XkuoS1kK1R5iZBYB46m6tfhRRnqhTpLDFfemcR65tsF1GCy7Am5UYl3TrNVtSY2b2oIl+wu3uMU6NLQpYu5DnRg8E5+BmzkZkyigh6cPOZIe5JkK1EbGAd4llJOOEcfYhRjZLpJpoGWaXwIs4QYfmcuTuY8LuGc1bJDMEiQ4IO7vRodOvmRmXTIZoeYmhAw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(136003)(376002)(39830400003)(396003)(66446008)(9686003)(33656002)(7696005)(8936002)(55016002)(66556008)(86362001)(966005)(76116006)(66946007)(66476007)(8676002)(186003)(2906002)(83380400001)(71200400001)(316002)(478600001)(6916009)(26005)(6506007)(5660300002)(9326002)(52536014)(64756008)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?/gS/lJG5yzqcV2GvUtClSEfehoYGVuqPcO3VWsLJ91YQIqOZ8TQbam8xVWI/?=
 =?us-ascii?Q?hqPrQKOuHadaZaOXd9uyG4t/r2Pu912qcMAeV2GWyGwAtEbqX/DZe0w1sEN1?=
 =?us-ascii?Q?lCO9aTsnHdxc7YNOxUrPkLwxuyReBNXVKx2ZV/EKuYY2xuL7EW4KKMa6OQDw?=
 =?us-ascii?Q?xOoyiK0sBBG5MuVv3JfyOI1yXjcR2Jn5kVfII3LXHtXhHuXIXbAyPEEjEPpm?=
 =?us-ascii?Q?dY1bBx1JygWHC1MB/OXoABtnt40HT68ylQqag2cWFSCco7iUjXq6MlRdqZiC?=
 =?us-ascii?Q?504t++t4G6Mdq5duu87dSmzRRd/1e+Xv6yJJUFPCZkjtBgsRwS7GyKFKWDrT?=
 =?us-ascii?Q?/QfkTFdTdJ4BIo5tbYeXvB1VWwe0mfjFmiUT42di6A9mYJT/wu7k9uca0MPO?=
 =?us-ascii?Q?NGZP+68pMW/Ru2XeBFcrodPabicsVouvX74h9KKj4Lg0PG/pIfWRtAQ9oOuv?=
 =?us-ascii?Q?g2KnufPyKb+DwVt33ZJeKyvx+CnmQ5ewm64pI9P2QNRxxV5u44KppXQt7oFa?=
 =?us-ascii?Q?VWmkfiAEjGahufZnO2CKQLZW47g06Y0NlDRPpT567NzUf/05XRK2MmSYL1pb?=
 =?us-ascii?Q?Upo8eJWJfhwzbyMxbsKEquam5Q477zAdOxPkjPdqbR6qzsbdwZQ6tCKW+OBd?=
 =?us-ascii?Q?3zeAZxihPXNMtpdDBMisMxiXBtSsF4Bi/MTfBkgWG69O5Bw7GF4Ad4QU9u5C?=
 =?us-ascii?Q?D09hBsS0PW6Qqnrr7l3qaA8Z5c/w6lKxHJ3D6Aobl3eIX+WOa9g0ugIHmJaE?=
 =?us-ascii?Q?laxo9QHd0AiX22dJb3Nd+x4PE1PrDw5ZwAran127ixsPa2sABf6603R4MpYO?=
 =?us-ascii?Q?12eh6GyGdVoW+J5AyQ8DsV8eziHPsppMzBnes+/JgNZCbllZxgX+2ruFFFaj?=
 =?us-ascii?Q?A4D56Buo3Fgq4mofc3KsrVNyMcal7LWIJKvN4L9Kq+24hCdS8/93k3IqujZm?=
 =?us-ascii?Q?Tt042Ht6qhjdUyR0w5X3y3Nei27k95fqFsxvaN6QuvE=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dd01d03-059d-4ceb-70be-08d8b934dc08
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2021 09:06:35.2828 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z1K/4RJmqZ9rVQ0AHh/IKpQu4oAOFLLtkDI5DVROdURTnT8qPaIiFIx5Vqs/5+zonBPzpBzTrCtZ4qM2Tb2YyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO2P123MB4015
Subject: [USRP-users] Setting E320 to use fixed IP Address on RJ45 eth0
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
From: Mark D via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark D <md964@hmgcc.gov.uk>
Content-Type: multipart/mixed; boundary="===============3504161676150496887=="
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

--===============3504161676150496887==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LNXP123MB372474BC72EC550495B41F29CAA70LNXP123MB3724GBRP_"

--_000_LNXP123MB372474BC72EC550495B41F29CAA70LNXP123MB3724GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to set an E320 USRP to use a fixed IP address on the RJ45 port.

I've tried following the instructions in the USRP Manual at https://files.e=
ttus.com/manual/page_usrp_e3xx.html

The manual says that settings for the SFP+ port is stored in  /etc/systemd/=
networkd/sfp0.network.

My E320 doesn't have that folder, there is one "/etc/systemd/network/" but =
no "/etc/systemd/networkd/" (i.e. no d after network). I think maybe  is a =
typing error in the manual and the folder name should be network.

The folder at this location is empty, so doesn't contain the SFP+ setting f=
ile.

I have created in this folder a file eth0.network with the following conten=
t:

---------------------------
[Match]
Name=3Deth0

[Network]
Address=3D192.168.1.60

--------------------------------

However this doesn't seem to have any effect. When I use ifconfig to show t=
he status of network connections eth0 is showing as "UP-BRAODACST RUNNING M=
ULTICAST" but no IP address is set.

Any ideas on how I can set a fixed address?

Mark

________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

--_000_LNXP123MB372474BC72EC550495B41F29CAA70LNXP123MB3724GBRP_
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
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m trying to set an E320 USRP to use a fixed =
IP address on the RJ45 port.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve tried following the instructions in the U=
SRP Manual at https://files.ettus.com/manual/page_usrp_e3xx.html<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The manual says that settings for the SFP+ port is s=
tored in &nbsp;/etc/systemd/networkd/sfp0.network.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My E320 doesn&#8217;t have that folder, there is one=
 &#8220;/etc/systemd/network/&#8221; but no &#8220;/etc/systemd/networkd/&#=
8221; (i.e. no d after network). I think maybe&nbsp; is a typing error in t=
he manual and the folder name should be network.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The folder at this location is empty, so doesn&#8217=
;t contain the SFP+ setting file.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have created in this folder a file eth0.network wi=
th the following content:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">---------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">[Match]<o:p></o:p></p>
<p class=3D"MsoNormal">Name=3Deth0<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">[Network]<o:p></o:p></p>
<p class=3D"MsoNormal">Address=3D192.168.1.60<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--------------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However this doesn&#8217;t seem to have any effect. =
When I use ifconfig to show the status of network connections eth0 is showi=
ng as &#8220;UP-BRAODACST RUNNING MULTICAST&#8221; but no IP address is set=
.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any ideas on how I can set a fixed address?<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</body>
</html>

--_000_LNXP123MB372474BC72EC550495B41F29CAA70LNXP123MB3724GBRP_--


--===============3504161676150496887==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3504161676150496887==--

