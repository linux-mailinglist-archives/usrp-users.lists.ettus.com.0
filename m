Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3977424A1BF
	for <lists+usrp-users@lfdr.de>; Wed, 19 Aug 2020 16:29:32 +0200 (CEST)
Received: from [::1] (port=58876 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8P5j-0001Lj-BF; Wed, 19 Aug 2020 10:29:27 -0400
Received: from mail-dm6nam10on2066.outbound.protection.outlook.com
 ([40.107.93.66]:34337 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <jerrid.plymale@canyon-us.com>)
 id 1k8P5f-0001F5-9R
 for usrp-users@lists.ettus.com; Wed, 19 Aug 2020 10:29:23 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DE7UnerJOXyjzuvrOeDZLVtusjOiQT9IA7U10LUTKDg8ctgYAL9dSz9YqU8lJKmBZjYJNNNM3VucpPERrsmQ4Sv1Uf2Oyl4cLPlqHT/uo+NaSuJw7FZJQKbQkf2GT/Ef1iFS/4tGMCOrSwR/CciGz4gfFYyx/JsK3VLuGGP2zK2nvy+20R851KgOJc4LYlwnXyc5yJWhPxWXD9VinuP3jK3sW1dqwRLOb02VsQN49jRgjaljLKHaTvga16oYL9KDVo757E8tVy1tcMzw5bovyx3tVE0y1SbdHyOMVY26+XNOBt9GtFOhf/5jiOvfE2w/gXOM49H4LG3RVbx/PnE72Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fb+umSL2JESQyARIq7hCjW2mKdZvoMPmvwvuK9NxSmE=;
 b=b5mO05IxPUTdC5lScuQW6V87TA7We7kNfOYZTHrS9b8LyWDLV002lH2LzQ4Zjs+Ek0mRli7+vPD9aZY9KEFRDnMUF5G8lx7BpsxQem64P+IBRbe6bqF1gOITP64fD2uUwOQ4vOhsSRqIqZfn6IS2AbDyC/2S48WRTA6BXmRjPs89JPoGAWiVPfKxwPSWGGbtRVffWsCw2uI+OnV0XNCD202eftdaYz+HKDs7Y6BlYDvhYLEyWjKTHMxzxWG4RjYqwrdoDHS0YbtQltvETUGausQi+IYOaXBvDi7Fsf6f1GuLn2gueNaxIO6glF+MSoJqlqVPb41NWt5n9NOQmmtaZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=canyon-us.com; dmarc=pass action=none
 header.from=canyon-us.com; dkim=pass header.d=canyon-us.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canyonconsulting.onmicrosoft.com;
 s=selector2-canyonconsulting-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fb+umSL2JESQyARIq7hCjW2mKdZvoMPmvwvuK9NxSmE=;
 b=Go+LR1bV5oyX+QCS3YwM+bce5c3JzKjzGliNKIap3WbO6pWpdgAeNjnaL6+PH9Hx1w/6YT7yFcengqfB/PQ5tWbQl8xfsFmyD4a2syBtAkbc6f1+ekDrr2xnQK78so5x5FJ/HfSvQYsDia+2ca3+kBUsOjVLkoAuhBnvE3hE14s=
Received: from MW3PR19MB4268.namprd19.prod.outlook.com (2603:10b6:303:4f::17)
 by MW3PR19MB4250.namprd19.prod.outlook.com (2603:10b6:303:46::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24; Wed, 19 Aug
 2020 14:28:41 +0000
Received: from MW3PR19MB4268.namprd19.prod.outlook.com
 ([fe80::d91a:dc76:10a:e643]) by MW3PR19MB4268.namprd19.prod.outlook.com
 ([fe80::d91a:dc76:10a:e643%9]) with mapi id 15.20.3305.024; Wed, 19 Aug 2020
 14:28:41 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Running multiple USRP x310's on same PC causes network
 unreachable
Thread-Index: AdZ2Myl9b9/kWVfZRpq3xp1J3yUJFw==
Date: Wed, 19 Aug 2020 14:28:41 +0000
Message-ID: <MW3PR19MB426860A9432C6013CEDD969DC65D0@MW3PR19MB4268.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=canyon-us.com;
x-originating-ip: [98.153.200.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6dbc735-f18c-4fb4-7da8-08d8444c2bd1
x-ms-traffictypediagnostic: MW3PR19MB4250:
x-microsoft-antispam-prvs: <MW3PR19MB4250E8559885418C0F1CBFAEC65D0@MW3PR19MB4250.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t8oScXyRlRtMXsWmEOH+JXP0k5PHQFRcA7Vy8cLAFl12ovjPVkKb3ePBQ+Ww+ZCjo9RSGAbIhD0ked09LIiJLeP47xZ0jiLl0ruL7Oq7QyEpw81owd3+LSVVdfYfx8NnHxvQXAXtY2ySaKD1WNX/P1q49awd0Hd8B92ol6gWukfeqsoG8xPXXoIZmEyMlWP/JtUPV1XWwiHE4zWUqq8M+UGIsa/X/B1hKUaa3VMeK0gJ1IzfTd40Me4yvCycpVP0+cO30kjlmT/hsys6RmGQb9X7ysQEaO1bg4tm/C4HO5zydBVBpg6VDLkgRg6opR29qt6ArmUSXDAzt+xGupdbbQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR19MB4268.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(39830400003)(396003)(366004)(136003)(86362001)(478600001)(9686003)(44832011)(55016002)(26005)(186003)(316002)(6506007)(7696005)(66556008)(66476007)(64756008)(6916009)(8676002)(9326002)(66946007)(8936002)(5660300002)(52536014)(66446008)(71200400001)(83380400001)(2906002)(76116006)(33656002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 9jTQqCqE9vYGCL/+JOeFQCdltwe6ag+yFK4o8p12n1AXayOYRMs/qTZbXzjDF/ltDqewsHSNQ2hpcDlIMQ93krFQLUXbCCIqz/OGZIdqR36mzdnYVrLbbHmS2Tq/ByTByTgofdbwGitcP7k5oBs+FIr6zLpRUQB4qvWRXfvQEf5auzp66gQ8gr8q2HwHmHRvKwbUePJJYWAuzWsZDPXD4sznxzqM6fAdxf0g8myM6r58AV4icUytkwnByulUJKLWMfEDSiKEd0eYzxzRUa/JoiK+iLE7NyjlD13bZCdsXIdC6gVyFzKy2SLyFIPdv/Ity9quzGqBE7gOJVNK82u56aE8KqOaqaxu6RJ8VqAEBJ8XLel+JNMG38NBzwDvDunC70ooxtjxddp2IP5gB6Apzww5QLd0tmpZ/NLPI+5AIzxivZIUib6ncGEIqVEf2K8UqEzc4gEODnNHTgHmA+LyYv8UIW24XE96WZWnUAkfWEzdBJ+X8JF5+KACzxQY2rw2vlllrgiGe4VNLCzQ1/XQXlsYNcLQaz75y5QSG9GBE3mtQm23Ufvmnie5u4YHWeg7HldlpVNVTC70KUIsfOukWNmmn3Wq3vnhvM467GYp5uOx7fhW7Fee90iS5UGn+qXp0oYOA/Ngcm3Ly/pt2s6IvA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: canyon-us.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR19MB4268.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6dbc735-f18c-4fb4-7da8-08d8444c2bd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2020 14:28:41.2713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9678663c-cb50-402b-8020-093ca69329d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UgJSHjhri6vrVmanu5WwUJ3jiK9vprOF3qy69vdUsyAmzsk3hWLkvsuHurIZ9zbJ8JAYk3IuZwhjN4ULBkM3WvO8CEAy2VRk6TJKPkG1KzM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR19MB4250
Subject: [USRP-users] Running multiple USRP x310's on same PC causes network
 unreachable
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
Content-Type: multipart/mixed; boundary="===============4560105611126175382=="
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

--===============4560105611126175382==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW3PR19MB426860A9432C6013CEDD969DC65D0MW3PR19MB4268namp_"

--_000_MW3PR19MB426860A9432C6013CEDD969DC65D0MW3PR19MB4268namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

So I am having an issue with one of the USRP's I am using where it, after r=
unning for less than a couple minutes, will lose its network connection to =
the PC. To be specific, I am running two USRP x310's on the same PC, each i=
s connected to its own 10 Gig Ethernet port on the PC, and both are using d=
ifferent IP addresses. I am running a different GNU Radio Flowgraph on each=
, one of the USRP's is just transmitting, while the other is both transmitt=
ing and receiving. I get two specific errors that pop up when the USRP that=
 is transmitting and receiving loses its network connection to the PC. The =
following are the errors that are given:

[ERROR][UHD] An unexpected exception was caught in a task loop. The task lo=
op will now exit, things may not work. EnvironmentalError: IOError: "IP Add=
ress": x300 fw communication failure #1 (will show three of these errors, e=
ach one followed by the next error)
EnvironmentalError: IOError: x300 fw poke32- reply timed out

And sometimes the following is given at the end:

EnvironmentalError: IOError: Send error on socket: Network unreachable

Anyone know how to fix this issue? Any assistance would be greatly apprecia=
ted.

Best Regards,

Jerrid

--_000_MW3PR19MB426860A9432C6013CEDD969DC65D0MW3PR19MB4268namp_
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
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Times New Roman",serif;
	color:black;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Hi All,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">So I am having an issue with one of the USRP&#8217;s I =
am using where it, after running for less than a couple minutes, will lose =
its network connection to the PC. To be specific,
 I am running two USRP x310&#8217;s on the same PC, each is connected to it=
s own 10 Gig Ethernet port on the PC, and both are using different IP addre=
sses. I am running a different GNU Radio Flowgraph on each, one of the USRP=
&#8217;s is just transmitting, while the other
 is both transmitting and receiving. I get two specific errors that pop up =
when the USRP that is transmitting and receiving loses its network connecti=
on to the PC. The following are the errors that are given:<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">[ERROR][UHD] An unexpected exception was caught in a ta=
sk loop. The task loop will now exit, things may not work. EnvironmentalErr=
or: IOError: &#8220;IP Address&#8221;: x300 fw communication
 failure #1 (will show three of these errors, each one followed by the next=
 error)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">EnvironmentalError: IOError: x300 fw poke32- reply time=
d out<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">And sometimes the following is given at the end:<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">EnvironmentalError: IOError: Send error on socket: Netw=
ork unreachable
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Anyone know how to fix this issue? Any assistance would=
 be greatly appreciated.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Best Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
12.0pt;color:black">Jerrid<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_MW3PR19MB426860A9432C6013CEDD969DC65D0MW3PR19MB4268namp_--


--===============4560105611126175382==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4560105611126175382==--

