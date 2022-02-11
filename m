Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 743FD4B292D
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 16:39:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 91B773852BB
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 10:39:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=nist.gov header.i=@nist.gov header.b="JNoyh9+b";
	dkim-atps=neutral
Received: from GCC02-DM3-obe.outbound.protection.outlook.com (mail-dm3gcc02on2093.outbound.protection.outlook.com [40.107.91.93])
	by mm2.emwd.com (Postfix) with ESMTPS id 62E8C3852AD
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 10:38:24 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IzKp4scB8tJeG5B5+eFQ+pEBO98kkZFd2aKFj6YIpktbmDxFKQxm+LAjqpLPKulEampmYQKnbIgs3FdanWpxA3jyRBoFupWm7tns/ouEQVeUB0QLu+s9DBpAUZJhDXYyx+KoAglCSlkaD/9A3sabROc1AUT21QwBt1sgi2WdqwaSvFGdN3S85fhEGFLL7dTIKy2X7D25kM62fwaf25/dAEn/wpVGHisx268tNbvaFbEF4ikXGjlh12+oddhnlmbMAt/YDuKZNfF0O4xOup2VS/vaV75yhSaozygB3gy61jzvxgC2AhIrt2h6RZxYSRii3gX5yi+qfz8NlNa0a08tDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rv6xJ0KlA7nrwcPE1USUUqz8jLIHgPgSXGbEW4+wVYg=;
 b=izsBCHSohe4VUnA8Gx/qwzJWMtFoduyN+9FJ5KZAGml0yED55cLdD7EdcDEH4qxFxrRdufgTCDOan8foshVu3T6fGBQLffRd8IlzE5JeE/1txsaq7/tSXgvSyVfM0gstqfl6dRHsuAsm1voePdnu81qAMkkTX8zTokcNOZoH07VQMGC8fJ4MjynUMChpxb6Wn+zCv4kXI12flgOZg7F/PaPlMzPqxTxrHOp2FB6BUoR4CGq5hBkYH0DbqvhklAdHg/ueXXyDdVJpg5xrF2qd7ATvI0SPfPsEGUzrB4FKiTWR1t+D35NIjuNJVAHWLBBQ+tMdGM9nPBoG+4I0sPVqPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nist.gov; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rv6xJ0KlA7nrwcPE1USUUqz8jLIHgPgSXGbEW4+wVYg=;
 b=JNoyh9+bWjmBYegms6GoCl8INO0rxelQ5BJhu6+JZNmaQKHdfJ83B7YgiCFY/kj6jC03rQz/on94LY6gQ9q2i44eySTlF+eC74N2mprgNOeNFfsE8W5tr+oV2gIvB4hdzePvhIa1hwL2Uk6BMi5AGos9Vu/+1LoPzRoBnFjetjQ=
Received: from BY3PR09MB8770.namprd09.prod.outlook.com (2603:10b6:a03:351::23)
 by BY3PR09MB8228.namprd09.prod.outlook.com (2603:10b6:a03:343::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Fri, 11 Feb
 2022 15:38:22 +0000
Received: from BY3PR09MB8770.namprd09.prod.outlook.com
 ([fe80::c060:41db:52e3:37ec]) by BY3PR09MB8770.namprd09.prod.outlook.com
 ([fe80::c060:41db:52e3:37ec%6]) with mapi id 15.20.4975.014; Fri, 11 Feb 2022
 15:38:22 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC and time vs frequency averaging
Thread-Index: AdgfWFnpaA89at5URHiWAt9wsA5fFA==
Date: Fri, 11 Feb 2022 15:38:22 +0000
Message-ID: 
 <BY3PR09MB8770D54395EC44842C212446E4309@BY3PR09MB8770.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nist.gov;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 18d2eccd-6235-444c-0cc5-08d9ed748951
x-ms-traffictypediagnostic: BY3PR09MB8228:EE_
x-microsoft-antispam-prvs: 
 <BY3PR09MB8228003E92E3ACB8D95D5164E4309@BY3PR09MB8228.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 CJZfm9rHNJrJn/91trfExM6F9YdOEP5rWp+M/HLlskJQscSwSSgiV3kXEX6Dv5kiRN2TvwiBWdANstfzwQMdA8CjRIjQtnsndUTM7BAuG/R/mRj6O6a/aybKdzge9xNrJAUoWdEPGRgN/fOc0dVzuJKp3DjPtYkK57YvQsJxUM1rKrEOnEJ2sEyQXGAAlBnjymKp44FgVBBw8QS/apz4e4ZGhyllJw+KIoZC/loIQvvWTce3ocrk4h7LA2xXt4vj3FHxG+GqLF0Vyy9+6yVy60tTxVomxv4JHJ7QN7449+Awn98vm0taxDskXBQBrxfh3bwFIlPkYoVxkT81SOfGKX4D5RVKRWypKpprIgCDMCHeEDbMnLJWdnY5GvX2tKHFt8KqYkwJWnkdfvLrQh1o34rxSuoPwjdqSq3u12S5titui0fz9QPwlU96iMc12XaOiaQyHQvtcUN4FFCj7FRrI4UqsN6H4EAb2M+NXTcl2Q3Z+tcDY909tK13z2ZVYCSuQosCu9Z13X5oLNN6WHtyfEVYdU0Gd6czGcC2vgKEtYVcBYrxvnXCdr/97RszGCJ9Snc/2us+kRxN48moXpRJT6KTqCn2Tx3BbY9bpfVR6i/PH1+lI6tK/K6NZ88cR8G9seOFWz4NGNtdyZJjma9IPvGCfYhE03+o04zSdNJ8e02Te/vSTbdD0Igu9qtlTZoV3j9fotmXpa+JilpenxyfUQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR09MB8770.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(55016003)(86362001)(33656002)(38100700002)(82960400001)(38070700005)(122000001)(71200400001)(8936002)(5660300002)(52536014)(26005)(66946007)(508600001)(316002)(6916009)(66446008)(66476007)(66556008)(8676002)(64756008)(76116006)(83380400001)(9686003)(6506007)(7696005)(186003)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-2022-jp?B?eHJVOStpalpqUHdvbXcvajVmUkNOU29nM2lsdlJxRDM5NW14cmtPazdM?=
 =?iso-2022-jp?B?VzF5bjNOcENZL0c5VmYzdmgvYzZ1RzlNNXJtdFBGWldsOVFWOXdpT0FD?=
 =?iso-2022-jp?B?UGJpQkxyMy8vbFNwQ28yYjF2alo1dkxxZU9BYVZlcWdBZUpUbFU3ZVZ4?=
 =?iso-2022-jp?B?OHIrMmVzY0x5MVVEZk9WS3p5eHlrdFBVRE50MEhmZlBwN053K1hHYlZ0?=
 =?iso-2022-jp?B?Q0JzdGtJYVNDMlU5MmhFM2h5TVJuK0JwSFZSTFBFSmorVElRNjRQV3I0?=
 =?iso-2022-jp?B?ajhqcWZzT2JlcnBhOHBOYXV3UFhuMjYzRnM3STlQSEh0NEN1NHlGbk8w?=
 =?iso-2022-jp?B?czVuRkRXVU44eWJ5MTFZRkZFS3pZMXg3b2xMa3pjZ1Z0ajVacW9XZVFQ?=
 =?iso-2022-jp?B?bG9xUVppY3cwL1EzR1k2cVd5Z25zZUtRSCtuS05leis5andXZERyV0lm?=
 =?iso-2022-jp?B?SlVhbkNMdWNGVEtjaVV5WSs3TyszNVduT0xIa3VVY3FPcm1UQWxJVzUw?=
 =?iso-2022-jp?B?enc3ekZPZHM2V0ZKN3hsRzJ3ODA0bjBFMHlpWWNaUUwzeGpGTHhKNStP?=
 =?iso-2022-jp?B?UFRJbDZsQmxQOFgxdzQ4dmkrVHBMMXE2N0ZPTFMvVFdhaUV1bEtPdjNm?=
 =?iso-2022-jp?B?cUQxNFgxQTVWK2RWMTdmeVd0WDlBTUpFTlBmaTVQelFmUSszaVljcjI0?=
 =?iso-2022-jp?B?bFFDYkc1YjR6dTVxY1dBWHkyM2YyN3k1QTJUU2lCZFh2UzVTRmdRZ0pM?=
 =?iso-2022-jp?B?c2lJbmowWXZyUW9SdmFoSS9hQThFZmNjdmpPUThsZktwYjlyS05pV2NJ?=
 =?iso-2022-jp?B?bGxWSmc4SjdhMExNWlZSL2VQNmJ1ZlUwMjQwRHlLeEQzYlpRSmVHTk90?=
 =?iso-2022-jp?B?bkRtNTRFMFEvV0pNT0M1WXFzdTFXVm9mbDAycnhiRXU4b2Y3b2VuS0N4?=
 =?iso-2022-jp?B?MG0zS1FjUHoxWFF1cmZwVnoxelFvWlZ6Y3pHZFk4enlWalRMR1pYVmtM?=
 =?iso-2022-jp?B?MkEvbHZSbkJXR1hMOWJyTkEyTmpLRkdGdFFScnY0czB2eUd5UXExZHJS?=
 =?iso-2022-jp?B?TGxMS3BTUGFRcjlkSTV0Ukhib0JxdmRRRm1yN0pVYmVRQ25PVm1qUXg4?=
 =?iso-2022-jp?B?ZEl2cGZrcEpQOFg5a2wwQUlyYUFwNHBZUENvdjg1MDhhbUd3akJ1LzJU?=
 =?iso-2022-jp?B?WXJ0bFMyWEtxdzZZSEI5MXNVUVNFTjIzSmU5UzBHOVhLQ1RVVzZhbmlm?=
 =?iso-2022-jp?B?QjVEa3hhV0dLejgyN1BkcVpBVlQxOU9WZjNIR0c1WHJxNTJuNVk4THVP?=
 =?iso-2022-jp?B?N3JKMVY1cXpHTkJSY0JjZlBPNWhIL053SGFOZWdCcWVrTWVuOWRwVmtV?=
 =?iso-2022-jp?B?azc2YjExQ1VsdlhUSW15c3Rqc2lPVGJUWTRXMjRjNHhPQjhxNkMrNmUz?=
 =?iso-2022-jp?B?Q01COElqenJ5cUNyVnp4UzErRE9SZXRRcTBTQTVVVjNvK3RoME4rOStq?=
 =?iso-2022-jp?B?UTVmQTFYd09PeHRJUjZIeHA5TnlkOXROMW5PVWVGMU0wWmVhMFF1Y1dq?=
 =?iso-2022-jp?B?UDJkRGQ5VTc4dDZnUTRVZXhveWZ0RVBEV3hhbURKbmJ5dElqSER4VW5m?=
 =?iso-2022-jp?B?RHV5M2tjZmpQOGRKSVNkUXBrOTJtWWhBbHBKQnVYaEhXSHlvTFpqYWJP?=
 =?iso-2022-jp?B?M08wbVhMYVFxeFRnc3ZEL29xOHhINSs5Nkw5YzZ0Yy9KK0lhSFFrQXg3?=
 =?iso-2022-jp?B?QkduU0JjQWdPSGRCMjVLWmdJUEVUZHI1MHBvQlR2TXRPblRzMHcrTkQ4?=
 =?iso-2022-jp?B?WHQrd2JVdEZ1eEtZMjRrd1pZN1R0Z3c4cXlIWjV4K0hpYjl3MS9tNW45?=
 =?iso-2022-jp?B?NFVUT1RwYUl5ejJNdldFRXNMTmJyUUhPZ0lCSi85MmpWZ1VRSnpZazNF?=
MIME-Version: 1.0
X-OriginatorOrg: nist.gov
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR09MB8770.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18d2eccd-6235-444c-0cc5-08d9ed748951
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2022 15:38:22.4009
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2ab5d82f-d8fa-4797-a93e-054655c61dec
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY3PR09MB8228
Message-ID-Hash: XO6OK3KXEASWAJAO5SBPHQLQYRK6JR2A
X-Message-ID-Hash: XO6OK3KXEASWAJAO5SBPHQLQYRK6JR2A
X-MailFrom: daniel.kuester@nist.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC and time vs frequency averaging
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KHCOHAARA4AYFIO772MSPGRVHTPSKCGT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Kuester, Dan (Fed) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Kuester, Dan (Fed)" <daniel.kuester@nist.gov>
Content-Type: multipart/mixed; boundary="===============9185112035872556574=="

--===============9185112035872556574==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY3PR09MB8770D54395EC44842C212446E4309BY3PR09MB8770namp_"

--_000_BY3PR09MB8770D54395EC44842C212446E4309BY3PR09MB8770namp_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I=1B$B!G=1B(Bm hoping for some advice on using RFNoC for a spectrum analysi=
s application (I have another hardware clocking question that I=1B$B!G=1B(B=
m going to ask separately).

Context: we need to continuously stream channel power in a bank of 8 contig=
uous 10 MHz bands on short (a few microseconds) time scales. To manage the =
initial deluge of IQ, I=1B$B!G=1B(Bd like to use an FPGA to perform a 512-p=
oint FFT and then reduce the volume of data by summing up mag2 across frequ=
ency to give channel power. The resulting stream of 8 channel power reading=
s every few microseconds is then pretty manageable for transport and proces=
sing on the host.

After looking at the RFNoC block list, the (wishful thinking? :-)) implemen=
tation in my head looks like this:

(Radio) =1B$B"*=1B(B Window =1B$B"*=1B(B FFT (mag2 output) =1B$B"*=1B(B Vec=
tor IIR to sum across frequency bins =1B$B"*=1B(B Keep 1 in N =1B$B"*=1B(B =
(Stream to host)

Some questions have come up on this:

  1.  Does the Vector IIR at the output of an FFT operate across time or fr=
equency? For =1B$B!H=1B(BKeep 1 in N,=1B$B!I=1B(B there=1B$B!G=1B(Bs a clea=
r flag to determine whether the operation is applied by sample or by packet=
, but I don=1B$B!G=1B(Bt see anything about which of these =1B$B!H=1B(BMovi=
ng Average=1B$B!I=1B(B =1B$B!H=1B(BVector IIR=1B$B!I=1B(B operate on.
  2.  Are there any obvious fixed-point traps in doing this?
  3.  Are there any other pitfalls that I=1B$B!G=1B(Bm missing here?

Thanks in advance for any ideas!

Dan Kuester
(he/him)
Project Lead, Spectrum Sensing and Noise
Communications Technology Laboratory

National Institute of Standards and Technology
325 Broadway St., Boulder, CO 80305, USA


--_000_BY3PR09MB8770D54395EC44842C212446E4309BY3PR09MB8770namp_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
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
/* List Definitions */
@list l0
	{mso-list-id:1012534599;
	mso-list-type:hybrid;
	mso-list-template-ids:654892466 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
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
<p class=3D"MsoNormal">Hi everyone,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I=1B$B!G=1B(Bm hoping for some advice on using RFNoC=
 for a spectrum analysis application (I have another hardware clocking ques=
tion that I=1B$B!G=1B(Bm going to ask separately).
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Context: we need to continuously stream channel powe=
r in a bank of 8 contiguous 10 MHz bands on short (a few microseconds) time=
 scales. To manage the initial deluge of IQ, I=1B$B!G=1B(Bd like to use an =
FPGA to perform a 512-point FFT and then reduce
 the volume of data by summing up mag<sup>2</sup> across frequency to give =
channel power. The resulting stream of 8 channel power readings every few m=
icroseconds is then pretty manageable for transport and processing on the h=
ost.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After looking at the RFNoC block list, the (wishful =
thinking? :-)) implementation in my head looks like this:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">(Radio) =1B$B"*=1B(B Wind=
ow =1B$B"*=1B(B FFT (mag<sup>2</sup> output) =1B$B"*=1B(B Vector IIR to sum=
 across frequency bins =1B$B"*=1B(B Keep 1 in N =1B$B"*=1B(B (Stream to hos=
t)
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Some questions have come up on this:<o:p></o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">Does the Vector IIR at the output of an FFT operate across time or fr=
equency? For =1B$B!H=1B(BKeep 1 in N,=1B$B!I=1B(B there=1B$B!G=1B(Bs a clea=
r flag to determine whether the operation is applied by sample or by
 packet, but I don=1B$B!G=1B(Bt see anything about which of these =1B$B!H=
=1B(BMoving Average=1B$B!I=1B(B =1B$B!H=1B(BVector IIR=1B$B!I=1B(B operate =
on.<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;=
mso-list:l0 level1 lfo1">Are there any obvious fixed-point traps in doing t=
his?<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in=
;mso-list:l0 level1 lfo1">Are there any other pitfalls that I=1B$B!G=1B(Bm =
missing here?<o:p></o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance for any ideas!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Dan Kuester<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:gray">(he/him)</span><o:p></o:p=
></p>
<p class=3D"MsoNormal"><span style=3D"color:gray">Project Lead, Spectrum Se=
nsing and Noise<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:gray">Communications Technology=
 Laboratory<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:gray"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:gray">National Institute of Sta=
ndards and Technology<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:gray">325 Broadway St., Boulder=
, CO 80305, USA<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BY3PR09MB8770D54395EC44842C212446E4309BY3PR09MB8770namp_--

--===============9185112035872556574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9185112035872556574==--
