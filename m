Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7796662F6
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jan 2023 19:46:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E1E7F3840C9
	for <lists+usrp-users@lfdr.de>; Wed, 11 Jan 2023 13:46:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673462769; bh=1N8bZsN4x7iBGEPdM++Q0QsKZChMkM2TnkQNOurZ5vk=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=I7BJYLnHFsP51K5osc9lLOkGFG36Z/Xkcxcmof2cCZT9PegeTvn0b+qvftQZGPN3g
	 G71JNs5h73fRVXh6jnHAA3hwzaDB7YKiapAb+1sG0/K+EJLOQO6wB2zk1UntxG24c0
	 UNOkJTadRLRXKNQ4Q6+IBB2j6C+TGrFyTxGa/Y9jXG8qy+sEQJ4ZTI4bYAWzuRNYGT
	 nb+WuYfKx4gV6WTONwEuykQ7Zxd89FvBzpH1rZpuTb1M5Wo2RdAx8LQPa8ii+dFSi0
	 zrdu/k0XhZp499HGAHLyQPu2SWIXOOyujZumc3rEqXE64q3lKCnYRG8X8l8I/8iMPV
	 fcPkSSoE0M10w==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0074.outbound.protection.office365.us [23.103.208.74])
	by mm2.emwd.com (Postfix) with ESMTPS id 5041338370D
	for <usrp-users@lists.ettus.com>; Wed, 11 Jan 2023 13:45:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="Rl0SRmb2";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=QredphMkojcvAew8e28qS7BKSacY8N5s0Ql0Yo5G0EcqSlbxZXTtk47RZS5pSHYLzDgSWSTfKROSvOG5SlGxpjHp91Jlz9E6Sj86n+myxGwycUzQubGjZuCeb8GSGIWlyfiTyNzO9ghFNh/PWjcQoUPE3XOxIK3WPlygPUKJ1CyreagpJKgzvRiQ1blPR0dn3Cqq1hiDynJFTCBkXq4TBBaKlY+f0b/A4ijnhQI8QuS4RRhRAo1B0eTzVrJue5Z17pV4uUURPaEcX0Oqqd/l+CHBPlzx/vrmHcc9QGeAgfLpC4nVsCfhdaJrUrkQsGb8ioRPkckK9lsc4vS8bVm/tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+WOWVqO0yjNQcqA5O/e8aIs7QC3AI25Mi47PTWUMWyY=;
 b=lxzGvSBLRNut51cRApg5gKaYSdSq5pm2DG+q0Y4qyYtRYNbiMR1U4OUkRamA1Lx5XBUYTntVTkCOxeeCbqEEXJwxVYAemQNv5Zi9ySPjwyMuvAHyAr+YWdg4aI0g/wDRpcFxHYnUomu7O//gfRsfJfin21OdMHhDqtacWdxK8o5LfJuKw+OcCR6lghaXplN4uhhchOmrMaBJNnAX6/0p1QuvU1xbxaqooPPfGNb8Yyo0K/Ty0MPidkyF9k1yJEPaNVpMdYSCyjUrU8defqV+hB0Ig5jO6ifpz4SMvJU1j1+KUE0rkRMPYoOmXn/jJFl+ucarSqJuSag9SbRAsV9Z4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+WOWVqO0yjNQcqA5O/e8aIs7QC3AI25Mi47PTWUMWyY=;
 b=Rl0SRmb2b5c9PtjgKL27Sv6vbG4+pXUS8oR65cM28o9QWhimJ1ru5NkoWLioh+xskg2s7Fs2FbtB6OBC5bJtiYzI1Qyy//qW3J6JSV79M/vjuCekPrtP2qBHtvzxFFphI8YJ8ClibpYg/nfpcID/TrS5fBbQKLEDdUbmSE8Gp72kJr0/v9EQwW4EpmUyCo+J2MfZ0sLEerpVfRj5qNvBepG0OA5H+PMMXHCbRdOqp/YAh7sGQ+Rk10yGmw9pElS69yz32sXqrl93b/knEaKgv0cSSVceIH/kZCCVN1iUh1+MFUU4NsKapetFPcEWkMv94BijIntHsf4jAm02sLCWZQ==
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::14)
 by BN2P110MB1159.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 11 Jan
 2023 18:45:16 +0000
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::5a3e:e6ed:558b:376b]) by BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::5a3e:e6ed:558b:376b%4]) with mapi id 15.20.5944.019; Wed, 11 Jan 2023
 18:45:16 +0000
From: David Raeman <david@SynopticEngineering.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Changing frequency drift across E320 radios with common clock
Thread-Index: Adkl5tAOvm3rCKmVT06ljLiNpxEKHA==
Date: Wed, 11 Jan 2023 18:45:16 +0000
Message-ID: 
 <BN2P110MB17473E2A918DB071F44DAFB3B7FC9@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB1747:EE_|BN2P110MB1159:EE_
x-ms-office365-filtering-correlation-id: 6b120a30-d47c-4c1a-1b7e-08daf403fb2e
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 vzPIyhN8rxHcUh2ejn0+WCarJzRglWiSdcYdRqpxpmLODzpfZZTfxZWyZwPBo0AP41QM/2KZwMc99U2hN2HmXiRFNQ/sChWYGIs8y+pFPFUFXTlcLengXeYC/XKVROL5i5ugMhyNU8tJHy+fUz1sAPDTXUNDS9RHzR9HA79mqqJlHytfOZvcHCgQ5IB8YkdtFD9mmevEO1ediZlmVZ6fwm+0EJ8XBm+mNcgAyHZKi98P1VmH7Ac2Nyb1SXzwGGHqFCpcZgSyZdIgWm9SssJ/kcHEYgPIjZyBrrRwFrR4kqLfEWaMNYl8l2n9ThEvt0WWbxuGe/63+lI3tQdEWRmZ6cM3dJqJHAuEMIPKyLPN/YhWU+0BuNOLEKqzDRK2H96ka5309OpdkKYTUjF/sjYyoPhUWWd6anzrImnppoZDzRVa6fU/EgSYRbNk208wgDkP5t92dp3TCUeAqzYpnwav/g1eyu3d8To94uz7cVfWG9PevEy4WrkuwcL+xUYmtU9qrNdSEgLcjSh6PlFpI3k6nNlxaiDPRVEBlgiPHLZuTHHbVHw+DVLDAjDmEdVdCpxLYwzxEYUKMPAlF1+sMzbUawJEploQekwaKSd7+v4UdI3aidE3mfx37FZD3mWXwrm8mrvo0HdFsENSkvGivUDRSg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(39830400003)(366004)(136003)(451199015)(66556008)(64756008)(7696005)(2906002)(66946007)(8936002)(76116006)(6506007)(66446008)(66476007)(5660300002)(8676002)(9686003)(508600001)(71200400001)(6916009)(26005)(41300700001)(186003)(86362001)(55016003)(83380400001)(38100700002)(9326002)(52536014)(41320700001)(38070700005)(33656002)(122000001)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 DCSOYvGpIe6+3UHexYZ1fVMGME9IYt6uIoc6Y+iar89+4cGTV91xfvl+WB2zAKmqcusrAmTuWyUsgAGt8UxOxG26LL8AqXYo2uy9BlWduTGQPF/M4LKzDl0z8XiMHVmdIGWensNb0dYduWVuPAQB+/cB85SykJDlZf4K8X/Af7iZvnqPmKf2msWQA1HWXEVamNKGyJuEdDgONjqJYPswPNXJOBuQkaNavSeGdEeCMxepfEV5mvo7UyC5iQofnRbX7HIr46Ne4YxV+3Mg3IowNkaizgMaSpJjCt8RJlXsCoxBOSvl+huHP4pnBDBxJRjaTJtlfIp/lStE3FlKSX/+unBLf/foKJhX3/0Upeb8GEvrCdCOqfbOvqDyy8ObtI6oo+HIkqEjSfTHm1cGAkk4Klv6NuAnQAIaNSPwcALh6b4=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b120a30-d47c-4c1a-1b7e-08daf403fb2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2023 18:45:16.2344
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1159
Message-ID-Hash: COFQ5VAYFKAESIANP246JRZH2SZAL2EM
X-Message-ID-Hash: COFQ5VAYFKAESIANP246JRZH2SZAL2EM
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Changing frequency drift across E320 radios with common clock
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OQCA27RFOOGB6CJWICPFOATV4NCXKHB2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0135937562006515594=="

--===============0135937562006515594==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB17473E2A918DB071F44DAFB3B7FC9BN2P110MB1747NAMP_"

--_000_BN2P110MB17473E2A918DB071F44DAFB3B7FC9BN2P110MB1747NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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


--_000_BN2P110MB17473E2A918DB071F44DAFB3B7FC9BN2P110MB1747NAMP_
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1424718684;
	mso-list-template-ids:1910120804;}
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
</body>
</html>

--_000_BN2P110MB17473E2A918DB071F44DAFB3B7FC9BN2P110MB1747NAMP_--

--===============0135937562006515594==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0135937562006515594==--
