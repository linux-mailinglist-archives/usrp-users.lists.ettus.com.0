Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D5F6664E5
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jan 2023 21:36:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ABB803841AD
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jan 2023 15:36:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673469406; bh=5O3iWcRjxKODNJKHJBZNzBBIvZLjw2MpkhIwVSEDb0U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=NEcj0mr5nTVOzy43N3JYaa/ogX4VIBzqzfwQs4tEOm6Y49Yv7MDVnT4r2eJpCT8tr
	 gZFv7OK9qBeCu+oKZgIYpes/QvBZmA5vk4FznOxfIZW3NkRQGnJM7VXNAAfMzvdK29
	 degsXSBI7us8b19pZLy3rhmEjfgioQnUwv/hRvnrFUnYMGL/pZBYn/hnwwYhDBmZFb
	 WtAN3Td5nsGzXxgCqdjBCCEHwps4IdC6WZ6v5WGliLZVCafcOFwwXVOhMw6uMKfekR
	 8vP+Rk/OLZfySiUDuw+uyB7TloFg5uGE4+IH9SRamShMVmQO7SQt9oVpPNTGsq0Gns
	 fKPjdXGOh06tA==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0074.outbound.protection.office365.us [23.103.208.74])
	by mm2.emwd.com (Postfix) with ESMTPS id 82CA5383E56
	for <usrp-users@lists.ettus.com>; Wed, 11 Jan 2023 15:35:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="VSrl0I/r";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=mQMCk3vG0JIXW6nZHOofF9TPjQ2LQqRt+XmhB/GS7bU40VJyHa4LaQHDG4XEZflZun9w9XZ1jsaQcQL6Vnh/5VY21c4pakHAWPK4XLHE4fUNsBHA9H74dNpLNV5THemQhKcCIk6kutV/yjpr+xKdzX5WKeMe5FsEu13AoOJguJHoQRpzeFQOagbxmyY4MYu3pi2ZxtPpeoHlC67T/2GjC/uo/MMv9/rCp8REdmO7clf/P995N+sxV275I62hh6RbnBguZKRNhHNSDmVrY1zPbjL6yqXOmJX0B+72eSViORyfE8Ct0+ZGoCVbyMkpwv4MfjBfqqJ5XtM+aLoaVCh9SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tEOy8NG1NduN1nYFT4R1MI8YD6LXcU01+E+3ziv8qAk=;
 b=jIV/ESDVuvpxYR44WxxPxqngLHdu43J9VoZZK16+8Yql9rUBF0wKjkmz/kzIG/TfElEe2cY6xh1LAC1OnGbOk7SgK/vmDNBiwGdEzKHDYeOlDqI+i+OkU0BW2kcCl0mfofg0Q7DQmfEoiPAbttqUDxCukexf55qpBM3EhnYKEzIVZzIxFLxemUP9rKDUrKybe8lLNHSEpWjkQQmNH8qW7mOdY+Xzkvch3107cqwKQVYyn3xcBC4hAVhyuLF2oW0t+7joKrGFhj2Z+90knx16pXhrl+Tb5d+AiEh9o4KCsLQC3KO6BtApgfDxXwqM488o/pSHDvp0rVnzr+pre9Bg2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tEOy8NG1NduN1nYFT4R1MI8YD6LXcU01+E+3ziv8qAk=;
 b=VSrl0I/rYYAHTTQlzNAf3qRX3NjnBpLa+0N8llVcCm8P59k8j5s+5oYSOR3A3kHbctQWh1E0xipftrZke/XalrUvcgNtsztN3sGFSb2I8wkT0dFHHxBBf0otlc+d3rze/oPXw/BpukXfGGO/aM9s68Cbnh0IZNM1myD/ce73lLi+wIFlOIjD0xOvpI6CmRIoaWYUFLMqehoXWaSzUf+21lJPkFgcWtLlfsSnLxtwlWi4N7xm8U5hK4m/Gdqq8jt0Aoe4aBPuMqwsO3aTfebIhj3lDsj3bet0pesq/MJR77MFZK/mQ8WFsaCZdByRYCQ/QEWdHJh9Pega302e8xXGeA==
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::14)
 by BN2P110MB1383.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 11 Jan
 2023 20:35:51 +0000
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::5a3e:e6ed:558b:376b]) by BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::5a3e:e6ed:558b:376b%4]) with mapi id 15.20.5944.019; Wed, 11 Jan 2023
 20:35:51 +0000
From: David Raeman <david@SynopticEngineering.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Changing frequency drift across E320 radios with common clock
Thread-Index: Adkl5tAOvm3rCKmVT06ljLiNpxEKHAAFWMVg
Date: Wed, 11 Jan 2023 20:35:51 +0000
Message-ID: 
 <BN2P110MB1747F6100EF1ED201ABDE325B7FC9@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
References: 
 <BN2P110MB17473E2A918DB071F44DAFB3B7FC9@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: 
 <BN2P110MB17473E2A918DB071F44DAFB3B7FC9@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB1747:EE_|BN2P110MB1383:EE_
x-ms-office365-filtering-correlation-id: 65b94b48-b81a-48f0-123d-08daf4136e48
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 JPL/ZYckeGbviU7iMMVpuF9/tBbp39BHCDrAdL1A3+VHPZVbjOyn0aYLdmjx2NZxzC0oVYSl0ZkDKSJYVbTyKIdE5c0RmEqc/Ip0xMOBv0PYp7VmyG3CW88tyv+gmRYkpHdeLA4f4CfLu3918RZoN4ENbOyA6g9H/KO1wVrQsRESt6eaAfS6QPjaMSZL7hqOWk7VCDb/Wn7WF08W02ni0a/XfUvTNoJht3Lo3T+WEJHmeog6pE5vQ5TUS+J2ktviD2fi5gJuQMPUvblKJ4bvg0LlhEe5Ed3/ok3bDwO8QeAziu2bcI02XrQbLEG1DH2s8JJEbqqygUUtCcpCj3sFfqAOTgtsIokQzEAdkF5EgmeNgFp/RZ/A9J0tlo8FZnRqBzuW3A6cxSZW2IpvDT16eCwoOU2vC7Txn3nx9HpXT4V/TQhIxE2DhEi43Bw20aPUIr2biG42S8bAmKxFCa8bGx8dlmMno2WISBOv/QwXINq+nD6MXu5/bO1OksyWDEwphmYNm6kvT7ntCb5T/MgNDn9ngX/BKDXUSVDS2kftmWij2AyvKBUJgHtCtQiOSQkGRjenpFLy323daDUuO6NAg2NYQEk2s0iy9NIf+O70RczN2rEghnU6eOO7SI18YQqY/qPZkPdNk7ix1/eNtrfhmJx/Cl8ffz1YD5zdV9kcdks=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(39830400003)(396003)(136003)(451199015)(83380400001)(33656002)(55016003)(5660300002)(86362001)(6916009)(38070700005)(41320700001)(508600001)(966005)(52536014)(2906002)(66556008)(7696005)(8676002)(66946007)(76116006)(66446008)(64756008)(66476007)(6506007)(8936002)(26005)(38100700002)(2940100002)(122000001)(71200400001)(166002)(9686003)(53546011)(41300700001)(186003)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 AZAVlYVFzEEIfLfglxEmj0FvtB+l7ZG7NNgyfhEcD51eDr0Tx3fs7KSCnPks9ITUSlFOOERuGErekun0jqZmtjjG/FJtcSaYZABXW51z68bb+j8fb2kOn3evVDW9YmJTWt3FEfhOtsp0GtGg0abFuV5AO7430HxHHnomGl8Ihisqk6IpReYMoxPBT+gGNANq/TmF52M38CwsMbBhIGdqBbk1r3YhVD3Acw3U3iwwYb/2/G8/fL1BVJOsUrR+dvtNwAedz/H38Ib79TBT623+j6tbUmYx/Q30uAsT5cfzMvrmD1hjmD9WwzGoDouorAS3gviSA4VAGFF/uqclWbFAGuxjoa1iHBYeVe/zniIJVpKetcC5wVCU262Um97UuU+tJd+qFZjUPb4nRz7SyV+J/JcYcke1/pI/8QL35PjJuC0=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 65b94b48-b81a-48f0-123d-08daf4136e48
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2023 20:35:51.7805
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1383
Message-ID-Hash: 24ITYCGOB6CS5QLLJZRHV3PKT42XWK46
X-Message-ID-Hash: 24ITYCGOB6CS5QLLJZRHV3PKT42XWK46
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Changing frequency drift across E320 radios with common clock
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CK2FCP6SLSQAS3AS7QHTXCFUX6W3BK4N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3323581564142470804=="

--===============3323581564142470804==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB1747F6100EF1ED201ABDE325B7FC9BN2P110MB1747NAMP_"

--_000_BN2P110MB1747F6100EF1ED201ABDE325B7FC9BN2P110MB1747NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

.. Nevermind on the final point, and kudos to Ettus for providing a very ea=
sy approach for rebuilding the on-radio MPM libraries here: https://files.e=
ttus.com/manual/page_usrp_e3xx.html#e3xx_software_dev_mpm_native


From: David Raeman <david@SynopticEngineering.com>
Sent: Wednesday, January 11, 2023 1:45 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Changing frequency drift across E320 radios with comm=
on clock

Hello,

I'm working on a project that involves phase-coherent reception across mult=
iple E320 radios. I'm currently operating with a common clock (provided by =
an Octoclock) and cabled RF connections. I understand there will be some un=
known phase offset between radios which changes across power cycles and re-=
tunes, but I'm expecting that relationship to be otherwise stable (neglecti=
ng temperature and other environmental effects). I'm trying to track down w=
hat I think is a frequency difference between receive radios which changes =
between across RX captures, even though I do not disconnect or re-tune betw=
een (although I do use the same port for TX between these receptions).

I disable the I/Q balance tracking for the receive channels. Beyond that, I=
'm wondering whether the AD9361 has other active tracking loops or anything=
 that happens between RX/TX turnaround which would lead to this behavior. T=
his same experiment/codebase did not have this discrepancy when run on N200=
/SBX radios some time ago, which is why I suspect some mechanism in the RFI=
C.

On a related note, I'm also looking at how to peek/poke the AD9361 register=
 interface on an MPM radio. As far as I can trace, the data flow is somethi=
ng like:

  *   Application calls into the UHD API
  *   UHD sends an RPC requests to the radio
  *   A Python service on Zynq PS handles the RPC request and calls into na=
tive libusrp-periphs.so library
  *   libusrp-periphs.so library includes exported symbols from the 9361 C+=
+ driver

So in order to make any changes to the AD9361 driver on the E320, I'd need =
to cross-compile the UHD C++ libraries on the radio. Is there an easier pat=
h I'm overlooking, or barring that, any documentation on the appropriate en=
vironment/toolchain/procedure to rebuild the libraries on the radio?

Thanks,

--
David Raeman
Synoptic Engineering


--_000_BN2P110MB1747F6100EF1ED201ABDE325B7FC9BN2P110MB1747NAMP_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	color:#0563C1;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
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
/* List Definitions */
@list l0
	{mso-list-id:215170596;
	mso-list-template-ids:1627438132;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1
	{mso-list-id:1873954071;
	mso-list-type:hybrid;
	mso-list-template-ids:2100698054 67698689 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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
<p class=3D"MsoNormal">.. Nevermind on the final point, and kudos to Ettus =
for providing a very easy approach for rebuilding the on-radio MPM librarie=
s here:
<a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software=
_dev_mpm_native">
https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev_mpm_na=
tive</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> David Raeman &lt;david@SynopticEngineer=
ing.com&gt; <br>
<b>Sent:</b> Wednesday, January 11, 2023 1:45 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Changing frequency drift across E320 radios wi=
th common clock<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m working on a project that involves phase-c=
oherent reception across multiple E320 radios. I&#8217;m currently operatin=
g with a common clock (provided by an Octoclock) and cabled RF connections.=
 I understand there will be some unknown phase
 offset between radios which changes across power cycles and re-tunes, but =
I&#8217;m expecting that relationship to be otherwise stable (neglecting te=
mperature and other environmental effects). I&#8217;m trying to track down =
what I
<i>think</i> is a frequency difference between receive radios which changes=
 between across RX captures, even though I do not disconnect or re-tune bet=
ween (although I do use the same port for TX between these receptions).<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I disable the I/Q balance tracking for the receive c=
hannels. Beyond that, I&#8217;m wondering whether the AD9361 has other acti=
ve tracking loops or anything that happens between RX/TX turnaround which w=
ould lead to this behavior. This same experiment/codebase
 did not have this discrepancy when run on N200/SBX radios some time ago, w=
hich is why I suspect some mechanism in the RFIC.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">On a related note, I&#8217;m also looking at how to =
peek/poke the AD9361 register interface on an MPM radio. As far as I can tr=
ace, the data flow is something like:<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo3">Application calls into the UHD API<o:p></o:p></li><li class=3D"MsoLis=
tParagraph" style=3D"margin-left:0in;mso-list:l1 level1 lfo3">UHD sends an =
RPC requests to the radio<o:p></o:p></li><li class=3D"MsoListParagraph" sty=
le=3D"margin-left:0in;mso-list:l1 level1 lfo3">A Python service on Zynq PS =
handles the RPC request and calls into native libusrp-periphs.so library<o:=
p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-li=
st:l1 level1 lfo3">libusrp-periphs.so library includes exported symbols fro=
m the 9361 C++ driver<o:p></o:p></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So in order to make any changes to the AD9361 driver=
 on the E320, I&#8217;d need to cross-compile the UHD C++ libraries on the =
radio. Is there an easier path I&#8217;m overlooking, or barring that, any =
documentation on the appropriate environment/toolchain/procedure
 to rebuild the libraries on the radio?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-- <o:p></o:p></p>
<p class=3D"MsoNormal">David Raeman<o:p></o:p></p>
<p class=3D"MsoNormal">Synoptic Engineering<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_BN2P110MB1747F6100EF1ED201ABDE325B7FC9BN2P110MB1747NAMP_--

--===============3323581564142470804==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3323581564142470804==--
