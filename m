Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 237694D03E2
	for <lists+usrp-users@lfdr.de>; Mon,  7 Mar 2022 17:18:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D98D538489C
	for <lists+usrp-users@lfdr.de>; Mon,  7 Mar 2022 11:18:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=mitre.org header.i=@mitre.org header.b="hivkDDZj";
	dkim-atps=neutral
Received: from smtpvbsrv1.mitre.org (smtpvbsrv1.mitre.org [198.49.146.234])
	by mm2.emwd.com (Postfix) with ESMTPS id A78343847AD
	for <usrp-users@lists.ettus.com>; Mon,  7 Mar 2022 11:17:08 -0500 (EST)
Received: from smtpvbsrv1.mitre.org (localhost.localdomain [127.0.0.1])
	by localhost (Postfix) with SMTP id 48FE6B2E01B
	for <usrp-users@lists.ettus.com>; Mon,  7 Mar 2022 11:17:08 -0500 (EST)
Received: from smtpxrhbv1.mitre.org (unknown [198.49.146.55])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by smtpvbsrv1.mitre.org (Postfix) with ESMTPS id 4C7E9B2E020
	for <usrp-users@lists.ettus.com>; Mon,  7 Mar 2022 11:16:36 -0500 (EST)
Received: from GCC02-DM3-obe.outbound.protection.outlook.com (mail-dm3gcc02lp2108.outbound.protection.outlook.com [104.47.65.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtpxrhbv1.mitre.org (Postfix) with ESMTPS id 13D6E413DC7
	for <usrp-users@lists.ettus.com>; Mon,  7 Mar 2022 11:16:36 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=InkMst+pgVvpxGT6k48a5rGqZ9WtyEVhRAdMXGPm7GEwcIwAnSQ1F7wQy1Ias/0kZUJfYY/uFIke1fy/sQnH4JmvE2QTS6V0+a5uw8QWsfCi4vCNz/2RRTanHoZgit3vVDiM4S05rOlT51X9Mz8VGxq2SreXeVRE8rncrVro8LX0I2ZHOtXX9qub9qofpsPbJUwSnD32SslFkPc8L0TRFs4mJBe/23UjO1kpNvXYorGMjgZwBGHpVzSsyZrg5zf5xxpFKX1/xCWEp3BTHFFzBy6352eH1daqjUlO+SS0iyz9jaabstNvERF4WgTSbhrwWhiYINymbgLoSk9JnhzBrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9UUfTGxPGqo/wniq2jq00/G2/PW7I+EMYCKMldcG4T0=;
 b=PzuqYHkkf/uRawsGtq5Re17muhCE5WhJ+F/pBdjhRRk0SsSBW5E35aALIFjQU/sCP6DXCkvO3lnUdzlpl/P7mP2pwpaA9EFJflp82BTT9vOzXHZMLN76qlkJyWGpones+2Pjbp6AsdUMSbD4L9gHNK3ruANENeCfXmFq3Ea8/JJ7KeA5KdU2aDNqWG7oeZOS22gEn3zQ93SUqLcZCMMhqa+k+LyuCEqf1XScKYg4A5Wj1OwWYGiz8hoKQmH1VkCgFHuOj3TH0jv4D58OXKM/Em+QJeIaG2DNktPN2mZUIIoB83PDuOjASnRfVaPS9GpNoDj83umg1z6yKZDwVFgk7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mitre.org; dmarc=pass action=none header.from=mitre.org;
 dkim=pass header.d=mitre.org; arc=none
Received: from BY5PR09MB5491.namprd09.prod.outlook.com (2603:10b6:a03:241::24)
 by BY5PR09MB4993.namprd09.prod.outlook.com (2603:10b6:a03:24c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.13; Mon, 7 Mar
 2022 16:16:33 +0000
Received: from BY5PR09MB5491.namprd09.prod.outlook.com
 ([fe80::91a1:4246:8135:ea7]) by BY5PR09MB5491.namprd09.prod.outlook.com
 ([fe80::91a1:4246:8135:ea7%4]) with mapi id 15.20.5038.027; Mon, 7 Mar 2022
 16:16:33 +0000
From: Jeffrey P Long <jplong@mitre.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNOC dropping packets
Thread-Index: AdgyNkLzWzV4cEYuQgeXORStddhCGw==
Date: Mon, 7 Mar 2022 16:16:33 +0000
Message-ID: 
 <BY5PR09MB5491FC142DABDFF75F0B1DDDD9089@BY5PR09MB5491.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mitre.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4cc06962-d1a6-4592-d96b-08da0055d8ca
x-ms-traffictypediagnostic: BY5PR09MB4993:EE_
x-microsoft-antispam-prvs: 
 <BY5PR09MB49934989A1C18FFB9CA541E6D9089@BY5PR09MB4993.namprd09.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 LFgveVHf9J9Vva0OA+qEff2t9EMlQBV6ePDUE6jwAbDLd2Ctly9dHSlcmz+nfBJCCy7glcDe47t17dzvq0ksDb0+1nbINwB1gbVR30/L4z54DVI2kb8cIQd7EcuMSIWVQUpQvNAp7nm2CfnxULHgV46AEOdUi/YhpUzP36ui7KOM/GdegzluQcHKcyTNj4J76Hvm2Xpt+kniluPOoWCOfRguxv9t6FoyvSe09uSqq8UK+LNxs6S6C/svWpycu1jFrK1inBH7mUAht6pnJNBGiHEdnIPDUHs5s9TwpmAzP7PnMrl6vWhc8yrJLPlBD9vZRJAP99hadgaiUDolJlM8B34b5dnRiFEgQoSjOcq5v4cdERH4MPVI/GrqlhpTvRmXjqnwt/kgjgpkYW85vHiDmJZz/LWo159VFpi1doog+ryLDG3CEPlLmMB9G36RuVwrDsQi9PFOg2/m7ufAB2wLQ0QFrdV0Ys+ILp08Bls93ZYzYM9Ul6ijknHbJ1LIJcrozuMFDT7+Lpl5qmA84zF9mGGrDLFuign5Go1lKfMA2+Dbm8bgeOVGEWnCZnUdTdXvjW833fIUNzreiYKgwyQRAGXAUy5hTqRyaDHiGKD+690VUxS+NLnfxA3CpMgtvOPVPPrJaRjeTYL4LEC7eNF1JKQLAWlY7IJaO7vmOco+OLlV3cA13bU74jSOlkdFnWSug52fL/YIcmPIDX9pNNrdDA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR09MB5491.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(5660300002)(33656002)(55016003)(66946007)(9686003)(76116006)(71200400001)(66556008)(38100700002)(26005)(186003)(83380400001)(2906002)(38070700005)(3480700007)(66446008)(7116003)(64756008)(8676002)(86362001)(316002)(508600001)(6916009)(7696005)(6506007)(122000001)(8936002)(52536014)(66476007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?s4k0Hzj3MTHR5rzkOkGWB0fNzcNv9afr9z+pupWfQnjocH1GBapuhC7g/TpJ?=
 =?us-ascii?Q?4kR9UvsWFqkd5q7nujXP+pN2gvpckr6k8tB4ciRPktRWJkBA5zyeTDVX2QV/?=
 =?us-ascii?Q?GtQ0cx7NCUED3+ujmowemr44Tm6CRcwHPNRjbS3PPAebD6x7DJYhcJ0f97kK?=
 =?us-ascii?Q?pVVA/4I1so3vodLy7yh/G4P5nXIe/6XMrduJjRQufWTwL8FCf4bYEwBSJmlq?=
 =?us-ascii?Q?SJpSIHf/3haSVWhgbNMBlTkS20hDHF+fK0p4n0yFFunzeB11BCsIOXDmEkNI?=
 =?us-ascii?Q?hctf5mc4yJ5bXHmdvdNzo/hoVzOi7HK1rq0CJbWZwvDAs5QI/RiGLTMmOyNV?=
 =?us-ascii?Q?b+NT1XlmAqMVeVtjxb6E7qWwGrs6HYAOE36Z1zhk+zQ2Tb35QUASmEHZFLDA?=
 =?us-ascii?Q?9Zu9wDxxkAtSymWE0OmYOOT8wbmehHqSJVreguAJdj3YW3RvHa2fXiyEbIna?=
 =?us-ascii?Q?bunZIrH8XjpgP117Pn/MxSILFmcto/Sg7WAE8ftHwLqVDyHaI/IUexvuh6W6?=
 =?us-ascii?Q?75kzu4VYl0m5MJyeF9Mf9vzhrW5yQqRe0E82Vgjg9KM4SrzdhT2YevjbLs++?=
 =?us-ascii?Q?JKSBL7WNHErEK4yy1Be0AZBUl5DoP4fCkFtcQFZ5+LKOjaGW4qthuZXjEruY?=
 =?us-ascii?Q?fpU8psoGxi8+KcZZAzuNNmSzOybIZMAuvGVf5MB9gCZecMNcEpUZN8lhRlNS?=
 =?us-ascii?Q?RIctEtw7m4qHjF9LSDkeY3/ioL4WXvxNd0Eyh55OYWNbqfKO/HIppI+M5npB?=
 =?us-ascii?Q?0tu6JQDV1T1S/4FGtP2GVIGrtaL4sSEgFfhG1nEnWu/nBdTysvpume8xeKq7?=
 =?us-ascii?Q?YRWE+jPqIOffWKb+2kjG1+iuI9TNhG7CrYMzmaQ5XAU2UYe4y30raYz4WbkA?=
 =?us-ascii?Q?wDN9cswsYNvIdnhmR+CKt0viZxXVtIrbExuhB8XV8iwvBzjiO8NfCWj9BLqw?=
 =?us-ascii?Q?QYZEToAci8TNaJys9pi1KelGT9fRl0rnNHaEG6gwQAwEttJZfq0vBrtmjiFD?=
 =?us-ascii?Q?ohiQ21/PthALjez6PEhnkHBc4Rxx7O4GrDkdzc4JlMeEa4pPq8IvJcup8Ysn?=
 =?us-ascii?Q?reixmu85/xBzgMP+fB2qQ6O51s4khCTlnEblJ7Bt2aNX3g0Hif4upj65FkLm?=
 =?us-ascii?Q?L3io19fjfANbxz052yNzJBwP6RLkVfyIws1E8RX/lTKhjaO8+FSnC7tKIw0G?=
 =?us-ascii?Q?pfHp5YCMZ6OUHgL9aDLYDJG2STevYHYUizXbJ2XbUqfC/HxGoclnBaOk51wP?=
 =?us-ascii?Q?+pMTS7D1bV0h/QwdK9PqXD7gHFjueHLRIqoy3u65sD8bzxIgS58k8OC7UTW0?=
 =?us-ascii?Q?H8/yibva3fRbJemJpVzFtEGG?=
MIME-Version: 1.0
X-OriginatorOrg: mitre.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR09MB5491.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cc06962-d1a6-4592-d96b-08da0055d8ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2022 16:16:33.4020
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR09MB4993
X-MITRE: 8GQsMWxq66rxk57w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.org; h=from:to:subject:date:message-id:content-type:mime-version; s=BTxNELhf; bh=9UUfTGxPGqo/wniq2jq00/G2/PW7I+EMYCKMldcG4T0=; b=hivkDDZjegX/RfHcYXilkQLxSWlwjEvcxR4aW9n0vi1bZQ334vlXdNU3zJ4vpOZXlPZckGLvyJMIRodLlIyEzrkwaXPEK7TxqNRksRqEA+/CmcgcshCTzu+4J9epiyU/H2O146pi/9eGFleUzidn0IOQW6COZ+EoSr7X1HxRIqc=
Message-ID-Hash: 25B4PX6RC5OR52WVYDEPZ264VLZH4UKU
X-Message-ID-Hash: 25B4PX6RC5OR52WVYDEPZ264VLZH4UKU
X-MailFrom: jplong@mitre.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNOC dropping packets
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MPYFHX6Z54IXSXV5OLAXQOAIEYOYVLLH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8196605470846223778=="

--===============8196605470846223778==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY5PR09MB5491FC142DABDFF75F0B1DDDD9089BY5PR09MB5491namp_"

--_000_BY5PR09MB5491FC142DABDFF75F0B1DDDD9089BY5PR09MB5491namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi-

I have determined that somewhere upstream from my custom RFNOC component th=
e fabric is intermittently dropping a fixed number of packets.

I have a custom transmit waveform encapsulated in a single RFNOC component.=
 This waveform component effectively takes about 8 32-bit samples of user d=
ata and produces an entire transmit burst of close to 5 msec in length at a=
 sample rate of 50 MHz. Therefore, a fairly large "upsampling" operation fo=
r a RFNOC block. This is a timed transmission, so I have interface logic th=
at translates the CHDR info and single EOB to a series of packets with a ti=
mestamp on the first and the EOB set on the last packet along with the appr=
opriate tlast set along the way. I can verify this works well and will run =
without issues for about a few minutes on startup. I have a similar RX comp=
onent that receives this transmission in an analog loopback approach so I c=
an verify the transmission. I have also inserted a packet number in my tran=
smit data and have a checker(in the HDL) on the transmit side(upstream of m=
y component) to check when there is an out of sequence happening. In chipsc=
ope I have it triggering when it happens so I can observe this behavior ind=
ependent of the RX process.

Setup: Ubuntu 20 LTS, E320, UHD 4.0.0.0-122-g75f2ba94

Here are some things I have observed:


  1.  It will run without an issue for about 1-2 mins on startup. Clean sta=
rt or re-run does not matter.


  1.  It is always 34 source packets that are missing (each is 8 32 bit sam=
ples in length) each time it drops.


  1.  This never happens back to back so it looks like something is overflo=
wing upstream however it is not perfectly periodic.


  1.  If I replace my core tx waveform processing with a simple fifo and al=
low the 8 sample packets to flow through my processing(no upsampling) it ne=
ver drops anything. Obviously the large 1 to many and resultant stalling of=
 the upstream is not making things happy.


  1.  This continues to happen if I totally disable the RX processing.



  1.  There is no indication of underruns or lates or other errors coming f=
rom the tx_core downstream of my component. I verified also by chipscoping =
that component and looking for anything.


Some things I have tried:


  1.  I did increase the (info, pyld) fifo sizes on the input side of my co=
mponents noc_shell. Did not change the behavior. I did not touch the stream=
 endpoint buffers.
  2.  I am generally running this in host mode however I did try cross comp=
iling the app and running embedded mode on the E320. Interesting observatio=
n is that it then becomes exactly 33 packets that are lost each time (weird=
 or telling?).
  3.  If I insert usleeps in the while loop pushing down the data (txstream=
->send()) I can change the behavior so that it happens less frequently, tak=
es longer to happen the first time, and the size of the number lost can cha=
nge from the 34 normally. In my HDL I increment the timestamp by 50 msec so=
 the obvious perfect sleep would be something like 50 msec minus the time r=
est of the code can take. Clearly this is hard to tune. Just setting 50 mse=
c eventually causes a LLLLLLate condition. There is a sweet spot somewhere =
but without a RTOS this is a waste of time and would not be the right way t=
o fix this.

Any help or insight (things to try) would be greatly appreciated. I am out =
of ideas. My final idea would be to put my own FIFO just in front with a le=
vel indicator. Fill it up halfway and then monitor it with a register to ke=
ep it happy. Assuming I could keep up with this polling approach it should =
keep it happy unless there is a real bug upstream and someone is not obeyin=
g AXIS protocol. I would think this would be unnecessary however since RFNO=
C should not allow something like this to happen.

Thanks in advance,
Jeff Long


--_000_BY5PR09MB5491FC142DABDFF75F0B1DDDD9089BY5PR09MB5491namp_
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
	{mso-list-id:1672294426;
	mso-list-type:hybrid;
	mso-list-template-ids:-1579114272 67698705 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
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
@list l1
	{mso-list-id:1828395975;
	mso-list-type:hybrid;
	mso-list-template-ids:2015815058 67698705 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
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
<p class=3D"MsoNormal">Hi-<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have determined that somewhere upstream from my cu=
stom RFNOC component the fabric is intermittently dropping a fixed number o=
f packets.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a custom transmit waveform encapsulated in a =
single RFNOC component. This waveform component effectively takes about 8 3=
2-bit samples of user data and produces an entire transmit burst of close t=
o 5 msec in length at a sample rate
 of 50 MHz. Therefore, a fairly large &#8220;upsampling&#8221; operation fo=
r a RFNOC block. This is a timed transmission, so I have interface logic th=
at translates the CHDR info and single EOB to a series of packets with a ti=
mestamp on the first and the EOB set on the
 last packet along with the appropriate tlast set along the way. I can veri=
fy this works well and will run without issues for about a few minutes on s=
tartup. I have a similar RX component that receives this transmission in an=
 analog loopback approach so I can
 verify the transmission. I have also inserted a packet number in my transm=
it data and have a checker(in the HDL) on the transmit side(upstream of my =
component) to check when there is an out of sequence happening. In chipscop=
e I have it triggering when it happens
 so I can observe this behavior independent of the RX process.<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Setup: Ubuntu 20 LTS, E320, UHD 4.0.0.0-122-g75f2ba9=
4<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here are some things I have observed:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo1">It will run without an issue for about 1-2 mins on startup. Clean sta=
rt or re-run does not matter.<o:p></o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"2" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo1">It is always 34 source packets that are missing (each is 8 32 bit sam=
ples in length) each time it drops.<o:p></o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"3" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo1">This never happens back to back so it looks like something is overflo=
wing upstream however it is not perfectly periodic.<o:p></o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"4" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo1">If I replace my core tx waveform processing with a simple fifo and al=
low the 8 sample packets to flow through my processing(no upsampling) it ne=
ver drops anything. Obviously the large
 1 to many and resultant stalling of the upstream is not making things happ=
y.<o:p></o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"5" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo1">This continues to happen if I totally disable the RX processing.<o:p>=
</o:p></li></ol>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"6" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l1 level1 =
lfo1">There is no indication of underruns or lates or other errors coming f=
rom the tx_core downstream of my component. I verified also by chipscoping =
that component and looking for anything.<o:p></o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Some things I have tried:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo2">I did increase the (info, pyld) fifo sizes on the input side of my co=
mponents noc_shell. Did not change the behavior. I did not touch the stream=
 endpoint buffers.<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"m=
argin-left:0in;mso-list:l0 level1 lfo2">I am generally running this in host=
 mode however I did try cross compiling the app and running embedded mode o=
n the E320. Interesting observation is that it then becomes exactly 33
 packets that are lost each time (weird or telling?).<o:p></o:p></li><li cl=
ass=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 lfo2">=
If I insert usleeps in the while loop pushing down the data (txstream-&gt;s=
end()) I can change the behavior so that it happens less frequently, takes =
longer to happen the first time,
 and the size of the number lost can change from the 34 normally. In my HDL=
 I increment the timestamp by 50 msec so the obvious perfect sleep would be=
 something like 50 msec minus the time rest of the code can take. Clearly t=
his is hard to tune. Just setting
 50 msec eventually causes a LLLLLLate condition. There is a sweet spot som=
ewhere but without a RTOS this is a waste of time and would not be the righ=
t way to fix this.<o:p></o:p></li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help or insight (things to try) would be greatly=
 appreciated. I am out of ideas. My final idea would be to put my own FIFO =
just in front with a level indicator. Fill it up halfway and then monitor i=
t with a register to keep it happy.
 Assuming I could keep up with this polling approach it should keep it happ=
y unless there is a real bug upstream and someone is not obeying AXIS proto=
col. I would think this would be unnecessary however since RFNOC should not=
 allow something like this to happen.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance,<br>
Jeff Long<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BY5PR09MB5491FC142DABDFF75F0B1DDDD9089BY5PR09MB5491namp_--

--===============8196605470846223778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8196605470846223778==--
