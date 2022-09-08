Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F8C5B17D3
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 10:56:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C170E383E3D
	for <lists+usrp-users@lfdr.de>; Thu,  8 Sep 2022 04:56:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662627377; bh=PMYKeNeUa4P/tg2/qiIxe/yBlXQqDmey1V3/iil4uVM=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=iQTlFmTG/8o/l77cC+zZvW5+cA/vaKtxuiFKMbs4RbouHkXEhdCMZZt3wclbd0qR9
	 0e5DE/kwWXcNqBGbVO9Cu0ctVGsKie0OrfxETiUNyhc7RoQxzGoyZTOJl8plV0kD6T
	 Vj+0qqVwlHk63EaWt0EEMhNrreCBghOzNXfjhGQHKdYK6+DZUGItwX0G+eR2hbiH7R
	 BHi7l2Wnwt1lISJXxC0hv0fXkg2atKgJLu8NKNXOB/qUoITGaSSCjL17JCeSYP3lCA
	 mJbOgs9ezDRSYUymzht7aXnZy5xtQSaE53/NmJZxc+TXet5BuzU+Co+pKuauH+BoTO
	 Z4JMQ60yHrZWQ==
Received: from NOR01-SV0-obe.outbound.protection.outlook.com (mail-sv0nor01on2054.outbound.protection.outlook.com [40.107.225.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 10F3D383D52
	for <usrp-users@lists.ettus.com>; Thu,  8 Sep 2022 04:54:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=sintef.no header.i=@sintef.no header.b="T0Nt58f8";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oZAG5WG6YjWTUdN/dZhaMrb2Io0e7laFhw3aASDvZxzzi7Mb7F694Ch2OlpoW7z7PQLfB0sXaAxFA8/oJ8tKG3KzPIviDZT9bQmDx/XwXVBtNQBcjLSTbF5TT3SJOWdSbrIuODjX87F9G14z6l28QD5NZ+hE8wu7nCsb5243hnJzjlh/5giHWjgkjHmDnPdFo+VMw8QjuIRXLPZ6FPsSg+ApWQL7awC3yiX3cQ0MLXMcYMCD3eIi+i7rwZYIU81q7I9Q1xB+xiRfay2DkTHWHkPqzQbD+dnzjcBdCZU33/7mqqFx7olkRx5zxng+Vh34i17N0D89sRFoZ5DfSdPGyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uXT0I8GTpsx+tAGhjTMi6r7D505jK67w2c5J2iQByaY=;
 b=KYu7xU1p7v3bKMDxxwfdXMrtkVy+gJFH+Z1JiUUDBLySbQN52kWLdt4hmSGnbPaZaHRNnsgTH5IUSioE3lBSXnKyj+MVyPV6734lpyTRwPkAWabV3wOi9lmq1dz1mZJ4eY3onxObl+K4HZfxxl4VfEC0o4IPiTsjVubyPH2mz0iWeOwwikmGQZifaVyRa/3RT75f8CnC5i4Yh2WdrOnUDdi7ESA6cQAezQ+COWkyQx3+rz7eKX+dv15FG04wFPCmPrHo7LkBvSetkF8KcksyVtYoqWfhcif4jRWyCtncEcUNoDRs7o3i/PVsyQNp889lg64kSwdm5RUpZqllG9fJRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sintef.no; dmarc=pass action=none header.from=sintef.no;
 dkim=pass header.d=sintef.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sintef.no;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uXT0I8GTpsx+tAGhjTMi6r7D505jK67w2c5J2iQByaY=;
 b=T0Nt58f8dCXECGO0yLsbxf2gEZna+FAdWfYjrXMXFXravMIoP2SRFjyOySfos/QxJXjtAWuifp47WXuYyNmPSI0wr7P3yznpsDff2gYtNsGh1g/f2fcoWigdlF/5iyrG4AAxhYUo6WAy9JGzZF0kDNMc5JjfUwC0vllsX1jZTdc=
Received: from OL1P279MB0084.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:10::14)
 by OS6P279MB0572.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:2c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Thu, 8 Sep
 2022 08:54:14 +0000
Received: from OL1P279MB0084.NORP279.PROD.OUTLOOK.COM
 ([fe80::fe8e:3ff9:9394:ed84]) by OL1P279MB0084.NORP279.PROD.OUTLOOK.COM
 ([fe80::fe8e:3ff9:9394:ed84%6]) with mapi id 15.20.5612.014; Thu, 8 Sep 2022
 08:54:14 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N210 USRP synchronization performance 4x worse than expected -
 suspect configuration problem
Thread-Index: AdjDXmcBt9R0T29bQnqJjfTB/2MhuA==
Date: Thu, 8 Sep 2022 08:54:14 +0000
Message-ID: 
 <OL1P279MB008439AD371C6A7E87C1D4F786409@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-processedbytemplafy: true
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sintef.no;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OL1P279MB0084:EE_|OS6P279MB0572:EE_
x-ms-office365-filtering-correlation-id: b645225b-05a2-4e3b-d6be-08da9177b4bc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 atAQG8oHyY6FlKHlcKTLBGg+EdillyKhoz/o8xgOFREePM7n8zDrMcidPTG5ehXFulAfTnU6avGQlapXe8QbjjlD1Q/+xyhoK5uaPMM9YZBYcWr1hWWvcW4aTGMpb9gHSFhln5JbzzISrG6zITpn2JRb2Ywl+jek3ZwI0QHmz/xaCSHQ/hkSUptDIlkoniEnS93qwuJUFdn1dABDDg54r8hH8hJgOGdPjGNpxZRRv4cyPIJRqhfmL2a89kFjW3Anrrp3gjNRqjahaif9oE2nKCuCTAVbIDQtfObWitqBf91vvKTWsORAbnkFdNBoKh5YCtUdu+/Pis4HfwzwHap3NO+07vKxZULIkbGooXSGAXtBt4JyN27BOrXFTafHA+SOCic99G6IwkfhJYpjms6irhkgnyBhFZ8/TdIfEwO2PovgHg70O0J3EdHC4vtBHavYNzYAFbPmWRTO2BcUP7LAmtfyZ56YYyAXHKn7kUSveIMURFFNl7xX/A3ARWvpfYdZPAkyJOeACjhR/rR8Q5sxc8XIfk3f0R7aD7L52zhIXsvB7F4BW3qLTQblJ4HyT2XXXCGiBFuSyRXNC6iDf4cNxliifnG9JAsHCaYICxtVj2Z+B65diA/9HHEOix6/O66Kq7/GDceh/sJI2oUE0+ehwp5QFW7Dl4o4CkMdWoJ+7Dp1MNLI22ReRy36gvcMIiYky6ffsNYeoFJbqUSXWcQFQVkqtaHlPyA1m1tXcYjBUmH8+VSZmIsOr4GvrkmqpFJkEJaw5zgtJxGrKBMr8b+9UYXyPrNOwAD/9XJoaUVuk/0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OL1P279MB0084.NORP279.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(39860400002)(136003)(366004)(346002)(38070700005)(76116006)(21615005)(52536014)(2906002)(83380400001)(786003)(8676002)(33656002)(64756008)(66946007)(66476007)(66556008)(66446008)(5660300002)(6916009)(316002)(8936002)(41300700001)(6506007)(86362001)(26005)(71200400001)(966005)(7696005)(41320700001)(186003)(478600001)(9686003)(38100700002)(55016003)(166002)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?3MUkRS3a2Lo8OMevwFr6OyqBdgwBWtqY3I7zeLT8HHq6Cm8hTW3gePKStKyj?=
 =?us-ascii?Q?/tEmy2MJNvAT7ZvwdIiq5QEX7hfslk/JhQDz7bc+NADdYKILeoEaIONkgqf0?=
 =?us-ascii?Q?5l0iL+91QZbYzCr3DkjedADRQaRToLogpkkA107nsHrBb2V0TUQAJ+sNihN2?=
 =?us-ascii?Q?xNqgn3AJO2F1lXXOcazhUoJ7NgvUIoyRzxPOoKQ7p+n1X0oHGNA396aU+6eC?=
 =?us-ascii?Q?YulSXy3GcA8lE92JuAkIBCzcNUR1JnZ/I4v3yjojsNH8mgYxjWfNd0a7cadc?=
 =?us-ascii?Q?pgrhFf1GWVwjJrLvDWtV2zwq7qaieifEE5wByIcMYwXWiDxvhtOoHlxjFag9?=
 =?us-ascii?Q?vd5a4mZteZErmcL8ratpS7ytsNI2s0ZIzDuP9h5XWTT0/aPbMBPOEtKlVBck?=
 =?us-ascii?Q?y8KX8tyOVlNdiX5opWpO9OcXJ3JhiY/Y1BRLsq+jDMOX0kWA9CKmwYIl4jr0?=
 =?us-ascii?Q?qvCWGy4K7jAYZ83csbORKV9qM36ESvuEnelT5i8+YH9Hddh95+XYCYjd5r3g?=
 =?us-ascii?Q?TRtkrmasc7rcRL7TQIYOQh6WMEja2JGKV7aC4r3r3dFfPxiTIBeJjaEwxAGt?=
 =?us-ascii?Q?V5TjPDRdYu9mWQAYv10qQFGwN99xh31VKXIPAoTwwBwiOtuECuusxWyVCTSZ?=
 =?us-ascii?Q?XT0ZdFATVnngF8Z77hKKYfbAUmBfNd/haFEqGpYIrW77gOSigII6uEtdT8a2?=
 =?us-ascii?Q?fNjlX5pJ+VAy6Ef88Cm1eK1qymUPfYmRE1CyYoCv7d/JJURzkPgwUJw3DLHE?=
 =?us-ascii?Q?wQ0xmkYA5H3+OdRPVoRIScIOzvxl5jcg3Z67aljk/WLGELS8U5Mg4NL6vsXd?=
 =?us-ascii?Q?aAN3DWofrewulZFw8WfKQ8lwK3RWfGv+pMF+fheHMsr6yuiIY7eHJd+fc1/x?=
 =?us-ascii?Q?sUg28nT635CxtmLTYTLtayaoXhNoqS7in8TUrVP3gjFsnfV+1hchPWGOFzs8?=
 =?us-ascii?Q?FdAaNS0WUZED1j0dLm83Hi9jrtzVbNRbfh4ctMDy7E1LbE/k4MUodMs1pO8J?=
 =?us-ascii?Q?w1xFLFMR/FLTOSHHcdp+ZnoZTONrX0lihJTMDbLkeFflyf077jRlSUTGq96B?=
 =?us-ascii?Q?myta1TyUD04sWS8e7y62zHyBgti/V66JwvgnG7bRwyblAMuNIp1O0nATa9wU?=
 =?us-ascii?Q?kFW/S1Gu7i1TWZyede3vH9Tn/26Is5HBHFPxqNSjl51HnNqRYRx+uD6y0iKb?=
 =?us-ascii?Q?zCcXi3cib5765YPHRX2Ccq3LtL2WfmByI1T53zpU0Qce0VEQf/vBKtyCml4C?=
 =?us-ascii?Q?ZlSqz1SuPEDMKv58vwO1BCXchDV612X/Qp//eR0jNOnVIqFy78xHpeP5zEFH?=
 =?us-ascii?Q?fej2cyXUug3Ul7cKifjCKGF8xFEa9bgwCFHTD85TowhYwZL14sSUe8zwr+2c?=
 =?us-ascii?Q?tZj49DJNJr9dP+XFigqfOM6tt4QXxJXfgn53sld3IY67aDt7PpyUkz1v8W++?=
 =?us-ascii?Q?//fB5KXn76jow5YUGMEVna5f3LlLfnZC34cNXvrEqWUknw9vsTLws4qUiReO?=
 =?us-ascii?Q?gQumtD9tVyrNvseO+pkib0iVvQGOXPYBAAhD/pFmeq+tm25QDdiaoyS8BHO8?=
 =?us-ascii?Q?oiG+aF5kaJ2JCKJ1eAlXAGOPnOVi6Q88xQbEj5ke?=
MIME-Version: 1.0
X-OriginatorOrg: sintef.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OL1P279MB0084.NORP279.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b645225b-05a2-4e3b-d6be-08da9177b4bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2022 08:54:14.5600
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e1f00f39-6041-45b0-b309-e0210d8b32af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g5s/PdEF4qdHOtSgOmotZbqLtNRyNFFLYfD1UhVR2vV8TINx1eyVP3MGDJ0WU2wq9dxtxLljEejB1jJgERFseK3yoKZ3sh1L+n5G6Gw8SM0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS6P279MB0572
Message-ID-Hash: 3ZX3ICAX3OGSZJE2E6U2MFJKDVP275DA
X-Message-ID-Hash: 3ZX3ICAX3OGSZJE2E6U2MFJKDVP275DA
X-MailFrom: Aiden.Morrison@sintef.no
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N210 USRP synchronization performance 4x worse than expected - suspect configuration problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QX2DNH34IUX72UH4YVFF4AGYAIYRWBWS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Aiden Morrison via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aiden Morrison <Aiden.Morrison@sintef.no>
Content-Type: multipart/mixed; boundary="===============4228133041135151282=="

--===============4228133041135151282==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_OL1P279MB008439AD371C6A7E87C1D4F786409OL1P279MB0084NORP_"

--_000_OL1P279MB008439AD371C6A7E87C1D4F786409OL1P279MB0084NORP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am attempting to do synchronized multi-site reception using USRP N210 rad=
ios. Our first attempt was to make use of 2x radios with ettus GPSDO module=
s installed, feeding the radios with a common PRN sequence and correlating =
the outputs to evaluate timing offset. The Ettus GPSDO radios say they prov=
ide +/-60ns timing accuracy, so even in the worst case where one of the rad=
ios goes to each side of the limit, at 10 MHz we would have slightly more t=
han 1 sample of offset between them, but in testing we observed +0 to +3 sa=
mples of offset.

To isolate the problem we repeated the test with two different N210 radios =
fed by a common external 10 MHz and PPS signal from a GNSS disciplined Rubi=
dium source, and observed exactly the same +0 to +3 samples of shift betwee=
n the captured sequences. Seeing the same error when using a common clock i=
ndicates the problem is very likely to be in our test software.

In our software we follow https://files.ettus.com/manual/page_sync.html for=
 synchronization:

  1.  We create two USRP objects, one for each radio.
  2.  We command the USRPs to use the external synchronization (radios repo=
rt back that they are synchronized to the GPSDO in the former configuration=
)
  3.  We use a common time in the time spec commands for each configuration=
 change (e.g. setting LO frequencies)
  4.  For each burst capture of 50,000 samples we set a time_spec for each =
USRP a long time in the future (1.0 seconds since the last capture)
  5.  Step 4 is repeated 1000 times giving us 1000 bursts for evaluating th=
e synchronization

The only factor I can see is that we are using WBX radio modules, and we ar=
e uncertain if this is somehow a factor in what we are seeing.

Thanks in advance for feedback.

-Aiden

--_000_OL1P279MB008439AD371C6A7E87C1D4F786409OL1P279MB0084NORP_
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
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
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:472530324;
	mso-list-type:hybrid;
	mso-list-template-ids:-221117198 1901873040 68419609 68419611 68419599 684=
19609 68419611 68419599 68419609 68419611;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NO-BOK" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap=
:break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">I am attempting to do synchroni=
zed multi-site reception using USRP N210 radios. Our first attempt was to m=
ake use of 2x radios with ettus GPSDO modules installed, feeding the radios=
 with a common PRN sequence and correlating
 the outputs to evaluate timing offset. The Ettus GPSDO radios say they pro=
vide +/-60ns timing accuracy, so even in the worst case where one of the ra=
dios goes to each side of the limit, at 10 MHz we would have slightly more =
than 1 sample of offset between
 them, but in testing we observed +0 to +3 samples of offset.<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">To isolate the problem we repea=
ted the test with two different N210 radios fed by a common external 10 MHz=
 and PPS signal from a GNSS disciplined Rubidium source, and observed exact=
ly the same +0 to +3 samples of shift
 between the captured sequences. Seeing the same error when using a common =
clock indicates the problem is very likely to be in our test software.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">In our software we follow <a hr=
ef=3D"https://files.ettus.com/manual/page_sync.html">
https://files.ettus.com/manual/page_sync.html</a> for synchronization:<o:p>=
</o:p></span></p>
<ol style=3D"margin-top:0cm" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1"><span lang=3D"EN-GB">We create two USRP objects, one for each radio.<=
o:p></o:p></span></li><li class=3D"MsoListParagraph" style=3D"margin-left:0=
cm;mso-list:l0 level1 lfo1"><span lang=3D"EN-GB">We command the USRPs to us=
e the external synchronization (radios report back that they are synchroniz=
ed to the GPSDO in the former configuration)<o:p></o:p></span></li><li clas=
s=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><s=
pan lang=3D"EN-GB">We use a common time in the time spec commands for each =
configuration change (e.g. setting LO frequencies)<o:p></o:p></span></li><l=
i class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 lf=
o1"><span lang=3D"EN-GB">For each burst capture of 50,000 samples we set a =
time_spec for each USRP a long time in the future (1.0 seconds since the la=
st capture)<o:p></o:p></span></li><li class=3D"MsoListParagraph" style=3D"m=
argin-left:0cm;mso-list:l0 level1 lfo1"><span lang=3D"EN-GB">Step 4 is repe=
ated 1000 times giving us 1000 bursts for evaluating the synchronization<o:=
p></o:p></span></li></ol>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">The only factor I can see is th=
at we are using WBX radio modules, and we are uncertain if this is somehow =
a factor in what we are seeing.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Thanks in advance for feedback.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">-Aiden<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_OL1P279MB008439AD371C6A7E87C1D4F786409OL1P279MB0084NORP_--

--===============4228133041135151282==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4228133041135151282==--
