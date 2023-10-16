Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDD97CA639
	for <lists+usrp-users@lfdr.de>; Mon, 16 Oct 2023 13:04:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFA76386146
	for <lists+usrp-users@lfdr.de>; Mon, 16 Oct 2023 07:04:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697454281; bh=obgaaXtm7e7xpj8XDU/68MTfPmIeRhMXQp16rBJsdow=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=QtRIO/5dTUQS3VcWzB1qqLr+E6xzizVV9MoFe4QNUb73CDsaK4hOaiHDx6yHNDidg
	 9t2qs6y4ZPO0Bjxp3TC8MnwyPMSfj0mNjAEUpiNPzjZGKexCf+GKrPNnQBfHnKHCNw
	 ddsVdWMrEI/rJZPj5D+z4kGSvcJ76eiiVpwFyj2wWfrQMJAASHcHnFgUrbPYc1pEOs
	 8U5puST5vnR9i4NouSvmCDnOd9RaqVZ7WaoVt7vAW3PA7L9BOzFj2p3UqqqWO0aUjD
	 6dr8y07AS2ZjxBimrTuh031lCl0fWma4Nqj3jFZr/eKWbJNkScQVoWyPCqbvWAduEh
	 aZ+8wFxpDhelg==
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2137.outbound.protection.outlook.com [40.107.220.137])
	by mm2.emwd.com (Postfix) with ESMTPS id 41ACD385E37
	for <usrp-users@lists.ettus.com>; Mon, 16 Oct 2023 07:04:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="PrrDD8Du";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BU89yZbWdeGzIPuKDcEYCG5WlrJdMNxUw/uT2vuA2KWChzjdTz6bPmXNtgwpHJZ5UUpJN+C2D7vzxL6NrnTuG3MFqGL3vYGD9u1BGOaSbvJuJbMufstLFbq2oqKHXgmYX3u9FWleluWO3HSri8Dc9k4cEakaLwnT+ClyI3Xvq8vrEz/90xU0w9z7nOMas0PyEurKMo5I0diTqrIW8sxvzxBk/c6QJmkp+kvOU1WpkeGH/LRzmnDVccZS0n0CTnEZglE6wMNOIwE/3p+I39THPNiQW0PqR85Pth6erOtsxwvG3AXIU7OKzZ+BPaiYum/KQjYCnFfhKV5JLe4qcKQxUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I3D4JBgTMeRhjscS0J+HayBqsJt22Z47uDrlxBVTMQM=;
 b=LyYsVCh4N4s2HUJKxmkIlzBxnZfWpW/j5g0aLwvyB8PNsGlwhICrN7OGBlDAmt6dyfP+/pxC4FKvVlA6MJghWxCFAVX3bYj5a0L10ETvD56b6zXLEctWGxWm+sCm9njYAsYuMRi0xyzGyX4csai/KqzFaimmMoaKEfzknr0kbfuOBnjTMlXXO710TEsmfsPTxpHOqK99QpQpXCzhEy8eQFj6kbQVeg9RpBZaJwb4AJXkSoP+SRT0mXwabSGiDIZQx1dPkni/VsbxP6xrS6i44Iwj7w/XXArKADRBEQpVGSVNoe7Vqx+rjdtVgagevDmB8NWvgwzfNo1ztahZICSshw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I3D4JBgTMeRhjscS0J+HayBqsJt22Z47uDrlxBVTMQM=;
 b=PrrDD8Dui8PMS4EFBWszVmCM/mcNcgWuJJh+UlJpv+dGi1NNLs/bl8jfU3U+40UaqEAdGYlYd0QvYtL20H47mRqZ5e+/4lsIrSIcIDuA81m549ZBJRwqPtDCI4LDdUjI/xa3kk6UPhi7M4levDE6N9rbJWioIcDq09aiAYr76+I=
Received: from PH0PR04MB8311.namprd04.prod.outlook.com (2603:10b6:510:10b::8)
 by MW4PR04MB7428.namprd04.prod.outlook.com (2603:10b6:303:67::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.16; Mon, 16 Oct
 2023 11:04:25 +0000
Received: from PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::b1bf:d8ed:3b38:8887]) by PH0PR04MB8311.namprd04.prod.outlook.com
 ([fe80::b1bf:d8ed:3b38:8887%6]) with mapi id 15.20.6907.018; Mon, 16 Oct 2023
 11:04:25 +0000
From: Martin Anderseck <Martin.Anderseck@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Not all UHD logs showing after adjusting log
 level
Thread-Index: AQHZ/hn2nnvgSNNF0kyP/3O+ImpwWbBMRHkA
Date: Mon, 16 Oct 2023 11:04:24 +0000
Message-ID: 
 <PH0PR04MB8311F5ED68A99964581C06A9F3D7A@PH0PR04MB8311.namprd04.prod.outlook.com>
References: 
 PH0PR04MB8311754FD474E8848B6F10F2F3D3A@PH0PR04MB8311.namprd04.prod.outlook.com
 <IrvAIoZzjquRB8RvqUNvCntvHQNeQyODoBOhhAApg@lists.ettus.com>
In-Reply-To: <IrvAIoZzjquRB8RvqUNvCntvHQNeQyODoBOhhAApg@lists.ettus.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ActionId=edf39a35-018e-4705-95c8-8a70292aaa89;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_ContentBits=0;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Enabled=true;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Method=Privileged;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_Name=Public;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SetDate=2023-10-16T11:03:12Z;MSIP_Label_99647686-916c-42a1-98d6-743a581ebab3_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR04MB8311:EE_|MW4PR04MB7428:EE_
x-ms-office365-filtering-correlation-id: 9c1e4827-8d7b-4179-44df-08dbce37a890
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 aXQsWC+WnJt/Kyg85J3j7htsOHCNmTg0CTyGUYDfH9g5BvuCcEVjkiMxjOS/HaeH8MpEr83/k5BXaDqDbJRIxj32UM4A2RPwtrzo6PDEk5s845hbGh5IiHFu3hm+/5TRJKN3zsYgc+tLiaNNJDKsNQ0kB6mSiWS+3ZSIX6G/WdxAbnb3DXe7e+UAo0rmE0pgpqEzNfpai9o5dTfwC6xRW92+SXGm061EIwkM0wrR5dKFUbf9n1VANgqa3BY81ZPJ5T+SuYSVE8CLIY+PVoEaO0bIHTVRZc6ESyPEWJqXLyAwZ/H0wLdb8WgK54VyzB5f8v70yStEzJyk3Axel385GeJ+kKeiXH81QEKle5b8fzNMEJdnWPHyGkqKPrR0NkblsmpC/ClFxhf+OCoQ92owApG4d0QV4ZfuC64iUGL8eQJwS5GN0JXV7NQCscE48jYJv41hUy8iNd7Ow9I7V6iGhG/TJQhuRie9/lMglzWSrEUCMPKLcut/RMiJXRDoVdMSSx9io/kuMBGQxKStEWdZ0vrs4SSNxYSbD+3FvjfZ2eAiySrfXbvXcrg+bx96XkET6YCGQ0WHNnVidN65mxxsuVVGDgAC4fOS6cW41Ol2iaMC70XNOfIYlIYxhL6gmIfC
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR04MB8311.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(136003)(376002)(346002)(366004)(396003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(38070700005)(7696005)(6506007)(122000001)(38100700002)(66446008)(64756008)(76116006)(6916009)(316002)(53546011)(66946007)(66476007)(66556008)(66574015)(71200400001)(83380400001)(478600001)(9686003)(8936002)(8676002)(5660300002)(55016003)(2906002)(41300700001)(52536014)(33656002)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?OCeWSrtE0PsDoi2p6nzHpeFRfLPeBRDV6QXnIgiryGRPWjgVf4jJbvZftGqb?=
 =?us-ascii?Q?x6jMfK0DUdgQo6BqKniLFl0siDtUNXqXWkqfqOU3o3lMBVsNdRuCIY92LKPq?=
 =?us-ascii?Q?c7D0ExYzAurJyNi8Ae505+V7N3nBhD9ggg/+2WmWvtfWkA8IBbJVNrwYmGFc?=
 =?us-ascii?Q?/+bAz8ADqrfPbRhSipHJQp2qF6ItmHmyOxNCG6Fai4rL6uNRKzLRSJ5vPhSD?=
 =?us-ascii?Q?RyVUkXB3VzkF4XJzb9L/sov1I0+yehg2ir3FWO1KSlRPUjMQxj+zI/qMi7uo?=
 =?us-ascii?Q?UGiWDFu5iNzFv95LJq/ajqBjvjCJdcmoiMQuBqQgKwEL90xPz81t9Eyc9neU?=
 =?us-ascii?Q?QOiU4l6jYbmPE9bnSsxzrn+V8o1W4mdCzHoebXMUGInGCs8vyM7N3L+qk6ld?=
 =?us-ascii?Q?LHi5gofbgscy44OJXj9YjWBYSvBelwsPT1EfT8+YC2fwcwvmSzwEjt7x5veM?=
 =?us-ascii?Q?ATR6Kbpf1vUABkvTWPVM7zBBvygbMJQUkW9EzSBG47ZQKuw8gWI7y1Z7wjnY?=
 =?us-ascii?Q?q5aPGooLdjmnF+uSieFU5cCiLsXFpm/jsOThtu6dbVODsU5If6At5guN+T6Z?=
 =?us-ascii?Q?2K5WaaI8XHM6BZNF7ckOfOl1sUHL/NpB1ohpGb4ifedWanlkVbJQ8NOhZmE1?=
 =?us-ascii?Q?q5qsLcM/N2Bqgb3Nl4Xvpq3W4AfslqqjDv+LdOPhSt+qDjdxPKgzD/NbBe67?=
 =?us-ascii?Q?qvDOw9gO2Q4sUrKmOt16syBvcwdskL71pwIRAPZfDePJgDmjzHWHbQMwytEU?=
 =?us-ascii?Q?lDCFu0FwbQZsJSYJ9GMfqKR6zeYcdIQHhcn903Gbzq8+pSxmBL0d0AzFnnhB?=
 =?us-ascii?Q?0QkfhOsliLOEofk9G9exUUW6I8LxfkRAzTUs7jBw4l4byOIRtFaBcKofIfZ5?=
 =?us-ascii?Q?hHxq0JhifakJRXWQgvqzf105Rr5NhE5bwc6Ej5zUOKg9UIBEwwfD9jxa7dmb?=
 =?us-ascii?Q?Q4rpWFKHuwCQSrexQByw08vdpZRY0Gktyfn5tggWo0bqZPnk3lS0pTYDM1wv?=
 =?us-ascii?Q?RadWLfnKRUgdZJwGNAmDMz0vMWLXfRY90nxlJs3nBd9+FqeapgXzZVGn1xdp?=
 =?us-ascii?Q?OHMOM9tjWmHCQBCYgB+jy5OwiN0XWHftgJTsLcWe70rfHsCSNVIXSzAPoE4g?=
 =?us-ascii?Q?Qynp8rlGRMtJaG/gocb0tJsLmj5kW6sGx5Gpqn3AjTFjE0Qw5N0fR2+sBeNM?=
 =?us-ascii?Q?9vxSlTAqJ8zbOGSNL9Y2x4TVXsQ/QJJTR2fxxkkfu3QlmwPWSQfL34uJkHUp?=
 =?us-ascii?Q?wOKfhh/smhiWLTB8Lf5fyVbS1NY8n3G6MfkJsCAG+DdjfD0pvJ8++v4om2vZ?=
 =?us-ascii?Q?TAGI0x4JVeh8UiaVuVPdb9CtkL3ppPui8yUgTsnvkpmy7Kq6yEwMhMVQvHPt?=
 =?us-ascii?Q?rCGuOuFA6S+fAVjy1HUpJHCFmyW8VrnZN7hGuQnoo3KXWPZqJB3+MCCistPN?=
 =?us-ascii?Q?R09k1N4zKe7+85lb5fJhcs7W40G7yg36r6ju5misXaM6jalR5hM9l/pn/NTn?=
 =?us-ascii?Q?WfoOITXfILqs4SgfYzt4myvkEU9hi/PmrzaOP3qdT5E3TzeZyEr5gZFwULEf?=
 =?us-ascii?Q?mIeeZQRZ4o8+d3bjp3znHqufCEtYvsZBLRoQX/vJ1M99XQOI/lfb+d85Jes9?=
 =?us-ascii?Q?aAhgde3iBoCw57UkkWZF0GCEULYdq3n1gtw7S9Zv2WVG?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR04MB8311.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c1e4827-8d7b-4179-44df-08dbce37a890
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2023 11:04:24.9196
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FGceR+NZEG/0cMVQDWaPzVXMa0Uy7bLH1rvwhi/xBdsQsr18NfEWNxLUFtd6jbeyh+YEi1KrhILSZ7r9AEWqsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR04MB7428
Message-ID-Hash: KW7T7O2EQ7D5NSXCYQTGEHFVOW6DRZSJ
X-Message-ID-Hash: KW7T7O2EQ7D5NSXCYQTGEHFVOW6DRZSJ
X-MailFrom: Martin.Anderseck@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Not all UHD logs showing after adjusting log level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JZV5UNCSOKYE2XJ2DSEBEKFDTIJVXKLE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7380070726663954315=="

--===============7380070726663954315==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR04MB8311F5ED68A99964581C06A9F3D7APH0PR04MB8311namp_"

--_000_PH0PR04MB8311F5ED68A99964581C06A9F3D7APH0PR04MB8311namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

If the mpm.conf file isn't there yet, just create it and fill it with the c=
onfigs you want.

/Martin

From: jmaloyan@umass.edu <jmaloyan@umass.edu>
Sent: Friday, October 13, 2023 11:12 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: Not all UHD logs showing after adjusting log leve=
l


Using the following steps you mentioned helped display logs.
systemctl stop usrp-hwd
usrp_hwd.py -vv

However, I am a bit confused about the configuration files. I was not able =
to find an mpm.conf file for the x410. The closest thing I found seems to b=
e the usrp-hwd.conf file, but adding the log_level line to this doesnt seem=
 to effect things(even after rebooting).

National Instruments Dresden GmbH; Gesch?ftsf?hrer (Managing Director): Jer=
ome Meyer; Sitz (Registered Office): Dresden; HRB (Commercial Register No.)=
: 22081; Registergericht (Registration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_PH0PR04MB8311F5ED68A99964581C06A9F3D7APH0PR04MB8311namp_
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
code
	{mso-style-priority:99;
	font-family:"Courier New";}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">If the mpm.conf file isn&#8217;t there yet, just create it and fill i=
t with the configs you want.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">/Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> jmaloyan@umass.edu &lt;jmaloyan@umass.edu&gt;
<br>
<b>Sent:</b> Friday, October 13, 2023 11:12 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: Not all UHD logs showing after adjusting l=
og level<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>Using the following steps you mentioned helped display logs.<br>
<code><span style=3D"font-size:10.0pt">systemctl stop usrp-hwd</span></code=
><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"><br>
<code>usrp_hwd.py -vv</code></span><o:p></o:p></p>
<p>However, I am a bit confused about the configuration files. I was not ab=
le to find an mpm.conf file for the x410. The closest thing I found seems t=
o be the usrp-hwd.conf file, but adding the log_level line to this doesnt s=
eem to effect things(even after
 rebooting).<o:p></o:p></p>
</div>
National Instruments Dresden GmbH; Gesch&auml;ftsf&uuml;hrer (Managing Dire=
ctor): Jerome Meyer; Sitz (Registered Office): Dresden; HRB (Commercial Reg=
ister No.): 22081; Registergericht (Registration Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.
</body>
</html>

--_000_PH0PR04MB8311F5ED68A99964581C06A9F3D7APH0PR04MB8311namp_--

--===============7380070726663954315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7380070726663954315==--
