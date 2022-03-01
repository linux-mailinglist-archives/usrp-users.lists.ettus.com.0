Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC344C8885
	for <lists+usrp-users@lfdr.de>; Tue,  1 Mar 2022 10:50:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CDD88384730
	for <lists+usrp-users@lfdr.de>; Tue,  1 Mar 2022 04:50:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="F8/PNtP7";
	dkim-atps=neutral
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2113.outbound.protection.outlook.com [40.107.20.113])
	by mm2.emwd.com (Postfix) with ESMTPS id ABC0F384666
	for <usrp-users@lists.ettus.com>; Tue,  1 Mar 2022 04:48:37 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bdif0TYD/G6utJtU6RlgPl4PzPKIZqcResbUg/bsVOJKPsqPebemFdzxJRBW7N6cJV05xLcdaPMc67k9PLf2766JGElbM0ZRrKg2J+oss2AA2kn+EhW0bxcw/Bf0YA71fh2tO2jTODH5OKxWRIYsofESM27+8i86XV8C8nk7lmttzGg6tIByWhVohJH9JWDG2f1C19VaxcrqRDM+emrKY4JqK+oZskP4fKkZ+ICtMv5XzY2QQDUak3m2ZAOuaY+O8YS+8RIl4sawpKrlCuTbzGN6jj6ZKA0L4SmpgocAjT3kvfXRNbgGIv2tTrCQ4o86HRQWWtDE3Z8EM1LX1cP+tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AxKTuj08hXEna5lV6n8fVZkpLV3OqUB/cvB0UipbyL8=;
 b=amCqBiLsUXttTmvp9sisiG6NGJ5ESkctreLOA9YkcRM3Gn6qCgifpykZqXXNik790/JWZp36CUsrI8k9lh55prRs/VS+9IG8omqNZ/P91BirKJFTSZiFq87wS7gfKZTm6sq/gPLk6349gLqR4d5Pf2wfUnOxP00Gz3q6EAU3UsdBHxBhuvyL4dowRMw92UZwm4c8nPC4+IgHga1tsaCyTBH3RXNaaWwTa60t6YnE1oWjQqfBy1QpuKDNZRCHidGm6Xq0I840IDy7lS0aqGKfw8wyxm1OqFaqhvjpZtxxIdZJy8rqFTC6tCkf8Hu8VUysXTUgtLdLTbuELciHlmZt6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AxKTuj08hXEna5lV6n8fVZkpLV3OqUB/cvB0UipbyL8=;
 b=F8/PNtP7ZAnaN+VrVaJetFFvRIcWalnDnlF6ECdUtoPVBRUpILJYffNGVlxp9wmicSzbiEaaBli2bjLHa7EYMOPN9wBnUrCMtLS8Uz7/eJjrVv/qOsMq8nLM0mfAhDvPLY8mS/hVUfUCfgbpEBZ7KgcoytAEmbJObYdllId8gGg=
Received: from AM8P250MB0107.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:36e::5)
 by PR3P250MB0151.EURP250.PROD.OUTLOOK.COM (2603:10a6:102:176::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.25; Tue, 1 Mar
 2022 09:48:35 +0000
Received: from AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
 ([fe80::e951:ee1a:ae1d:187a]) by AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
 ([fe80::e951:ee1a:ae1d:187a%5]) with mapi id 15.20.5017.027; Tue, 1 Mar 2022
 09:48:35 +0000
From: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Overflow - when to take it seriously?
Thread-Index: AQHYLVDT2kEQzL1wZkqRlj1AfoJYQg==
Date: Tue, 1 Mar 2022 09:48:35 +0000
Message-ID: 
 <AM8P250MB0107ABD44FFADBD14869085A9B029@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-150, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: d5c32f4d-e7a9-ed12-3c4f-a1015c406ff3
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 05cebb56-7cf6-4dc5-b11e-08d9fb68a7b3
x-ms-traffictypediagnostic: PR3P250MB0151:EE_
x-microsoft-antispam-prvs: 
 <PR3P250MB0151B6784E18466B2520DAB39B029@PR3P250MB0151.EURP250.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 GCDxBCSopRXpPz5A9VMZhDv35sG0v1l3+vwBVGsJnA67l8UZqOZgDdDQfyHkiWF/xrhbTdZ/AxgvNS4WH0G8lBv/hT9XIGcgjIaGm34JxPrYTBpksSIRNE7hakrhHcDLXparkRa0AgS5gDxW4ks6sjYidTdi6QwNmM2B64hTd3CTgx5g3nN/xe45TecJI+xg158jL0U3j32XnCrsa/Dp2XBerS5UbiqTex272xUz96utkOvBoD3YaEKe5Xgg3pgQUs2eZd5Kl74cKbY8YL5P8tG1mecKwZ+l4/Ib/MxYbB1AnnspN33Ipk2lOWwniUC56+aNC6qe9S/Ss7stlWz/Ugh67MrjqUQjuo5ZJc9U6ngMuDuRKDyJG0wVwC6EPUjo7T8b2Lw52b5zIVulcKJ/GTyXTYlvqTWGFNB25Bc5RtwMjg6hR965FSvjEPX41fKC8CyPi5LfGIBGZ2S5tGzzp4kE8QvS3H716SxwW6ftAqxQ4HJtwDBUdMXEHKyu/xNa9anC6ZGTfuNcxER/BLIWsFkxm/LdH3vsdypOQd4KcCVEevKF5RBeMyMt9GPaptJpc6p07L7eliC9ZDVZfNLRb46yNz8di6K4A+DCtdFKQf7M6jJw85RC5QeUqJ1HAxfJhnA/lJA75l81BlOy12auKjNtCLLf8NGw6mEw8rvZ2xK8xHngz7li76ZawxYIGaTa6h5UY97ogvuNDn0VCs87Kw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8P250MB0107.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(346002)(39840400004)(376002)(136003)(366004)(396003)(55016003)(8676002)(6916009)(15974865002)(316002)(19627405001)(122000001)(38070700005)(71200400001)(8936002)(44832011)(86362001)(52536014)(5660300002)(2906002)(66556008)(64756008)(38100700002)(66946007)(66446008)(66476007)(91956017)(83380400001)(508600001)(966005)(76116006)(186003)(26005)(66574015)(9686003)(6506007)(7696005)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?t6ZD6CQ3/cQF/dHij/UafdOoLRkSc8wslFbLLlir8UiS8J1szcQZAA9TMR?=
 =?iso-8859-1?Q?vq6g2Au2s66JcnWDzVvRUpMdDQlNPJ/jr5w9EvvwnH6Yzy+4BQDV1SwGap?=
 =?iso-8859-1?Q?CaQO1GWv7TtziYCZwdru+Wc791GWKIZHJLKeYMB7nNQ4FP/668YKCnT3u+?=
 =?iso-8859-1?Q?8GshFCb+QgJtamqKV6DfxGSyRu/FFKj5TCscQbPw25Z+qS2uBK1Nvebd6d?=
 =?iso-8859-1?Q?Ljnao5FKwdMg/WzebFdlTNz96HC13fVMQyYSdp7IyRheVX5KbdUaij4GbD?=
 =?iso-8859-1?Q?hNtr2hqOw7IEmrwStsa7V2Ebl+eilIs4t9UPzli9V1IdNviMZcaKgANQpv?=
 =?iso-8859-1?Q?8+Sqa3wiYomsM0gzY85V5QpZir2dtJIhm81oecchT57Dj425OQ4X33myJu?=
 =?iso-8859-1?Q?w5a+ibfjOwiLp7andyTlcdlTqb/UnFldGMtN59ZxLhNNjSxM19gLsxNHkS?=
 =?iso-8859-1?Q?EbdcSYuEF5Pj1Ai2IIq9LA+BtM7XX2s3L8FZ1j4Nye9p01I66DKbQ4t2sB?=
 =?iso-8859-1?Q?+3rO0FNnA2v3qeBggZ+jZE3SpqJXcP+q9eNlsL36GPDSY1o9lgvGa/EKB1?=
 =?iso-8859-1?Q?vDWaBhgfMQFfc2EWQZGH3YJHVGBGHmEs6//aqM9k51nVtZcWSnpYRSDIEL?=
 =?iso-8859-1?Q?vgrGr1GL0uqtqAvzb8GUDGMaTp/YOj5cjG0RXwVJxNW6lWb2sLtOkloqbw?=
 =?iso-8859-1?Q?hB0aDdgEQtc9XzE0w1y3pm/BFFYRuiPH1GRbcMaFWHuTjoGgRZ1aoD7Gqx?=
 =?iso-8859-1?Q?YcwX/j/qAGLtUZ0cDdZs17b/la/Ixyhf9peDGvzHQNHzrhoYYjEoZbL7Wb?=
 =?iso-8859-1?Q?6fzKz8SKngAvmcC78g0Pix3+nj/wIZAtMpMz66hvwWQ1YWk15/18HP4IfQ?=
 =?iso-8859-1?Q?ecEONqRBRAZsuP6KFUc0dP+5C4t2PxGtrJ8K6D/zL2yR7uAgg+RDMtnSk1?=
 =?iso-8859-1?Q?P28ka+CtK9m1WGAVuYE7UNBpv1R5s3nT6IvwN9xqqA0zhrAxv7m45Yi9R6?=
 =?iso-8859-1?Q?wdjt5Nq5W94bBV8Gaq7/vt4TC6Roi5FoNtO6Y9v0/5mQ7obg7NlLqmmpra?=
 =?iso-8859-1?Q?J2cIYLjxowfwTXRuHBclYr4KgD50eoQrDOEbGj6sXg19H8p1f3zB97csq7?=
 =?iso-8859-1?Q?Thuu0EBE/2q2XI6ASpg83MZt+EPYcOUiQNulK57CuxrkzTezvGbt9Ydn3M?=
 =?iso-8859-1?Q?PpciHbi6eOxrkqQY4B0TXs+8wdP25mo/naOm1NZ+fj3LxKw4kZgG6FcvPr?=
 =?iso-8859-1?Q?9HJ0+R9sb/+RMSdx0FccebffoL8bviuYWdy1NEiHF5uXbIN+TQkXoYlZe3?=
 =?iso-8859-1?Q?ehL9UFyha21mvdB5uS0jw7EomrtGaUWptKR72LOYL/ZJUYd1Rcey7XIPA2?=
 =?iso-8859-1?Q?ZEDsq8qh9Q/Kcbt+1BuzOwaYWbdkSL0ROvf+9tNvKKHLg0PwybN6p5YUS8?=
 =?iso-8859-1?Q?Rvv/muxUPSWBCyFQnHFqgseipvHOV8vXxMmQKzV6wgFQ4ORW5tl1zAJtAO?=
 =?iso-8859-1?Q?09EHLh9ekNsur9vzLGJQsExrfH/obyKcUn5YnNBl3BIc9mSXpxv+9EUoTL?=
 =?iso-8859-1?Q?YsaAFdaIC6t7meOGsXiEVFqfSDjRagQMvg3fnwgSYciGYddd3lEylpz5lz?=
 =?iso-8859-1?Q?CRRL27za0YkZ4pfpLF9/sfGWko8BtaT1Q2ESyqw2Dxd0pgGvUqABpTwGxV?=
 =?iso-8859-1?Q?Bj3IsJlTPIaYYv6xd6khbW2q2JbTbzgY9Xbg+c4hPUouiVIuhpQx3fstgS?=
 =?iso-8859-1?Q?Q7xrqaGGrjH+8rn3+++99Zegvzd/j88UWloHGr0CYJoZlE?=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 05cebb56-7cf6-4dc5-b11e-08d9fb68a7b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2022 09:48:35.8065
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QccMJuY0weCRlEXbJl4SY/SEOoKNxquYKCCl4x/T+I4m9CkXbiTJY2Q747QksBJ6mKRJ9ZwpFjEVT1ohVUk+t1INhmA3w3+UJz/5kiuvNNn6C1sPiB6C1GaNXeIUC7m0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3P250MB0151
Message-ID-Hash: YRVP7K36PHU3ZET5BD2BKSV6SGGTF4TC
X-Message-ID-Hash: YRVP7K36PHU3ZET5BD2BKSV6SGGTF4TC
X-MailFrom: tobias.kronauer@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Overflow - when to take it seriously?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F2HXB4EK5RRYPAXWPCIZJAKKF26RAC4R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5489826497924322467=="

--===============5489826497924322467==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM8P250MB0107ABD44FFADBD14869085A9B029AM8P250MB0107EURP_"

--_000_AM8P250MB0107ABD44FFADBD14869085A9B029AM8P250MB0107EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear USRP-Users,

recently, we purchased a USRP X410. I am using the UHD version shipped with=
, namely UHD 4.1.0.5-0-g18f5f9a4. Running the default examples, I receive c=
onstantly Overflow-"Errors". Namely, there are two different notifications,=
 generally speaking, I receive. I wonder what the difference is.

Notification Type 1: A print to stdout, i.e. a `O`, without receiving an er=
ror message from the metadata of the received package.
Notification Type 2: An error message in the metadata of the received packa=
ge.

Can you tell me the difference? Scanning the documentation, it is hard for =
me to find the actual difference. I wonder when to take it seriously, i.e. =
knowing that some samples are actually dropped.

Kind regards,
Tobias


Barkhausen Institut
www.barkhauseninstitut.org


Barkhausen Institut gGmbH | Sitz: W=FCrzburger Stra=DFe 46, 01187 Dresden, =
Germany | Registergericht: Amtsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FC=
hrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzender der Gese=
llschafterdelegation: Dr. Andreas Handschuh

Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system. Information on data protection and =
processing of your personal information: https://barkhauseninstitut.org/dat=
a-privacy


--_000_AM8P250MB0107ABD44FFADBD14869085A9B029AM8P250MB0107EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Dear USRP-Users,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
recently, we purchased a USRP X410. I am using the UHD version shipped with=
, namely UHD 4.1.0.5-0-g18f5f9a4. Running the default examples, I receive c=
onstantly Overflow-&quot;Errors&quot;. Namely, there are two different noti=
fications, generally speaking, I receive.
<b>I wonder what the difference is.</b></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Notification Type 1: A print to stdout, i.e. a `O`, without receiving an er=
ror message from the metadata of the received package.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Notification Type 2: An error message in the metadata of the received packa=
ge.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Can you tell me the difference? Scanning the documentation, it is hard for =
me to find the actual difference. I wonder when to take it seriously, i.e. =
knowing that some samples are actually dropped.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Kind regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Tobias<br>
</div>
<div>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<br>
<br>
<b>Barkhausen Institut</b> <br>
www.barkhauseninstitut.org <br>
<br>
</p>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<span style=3D"font-size:9pt;" lang=3D"de-DE">Barkhausen Institut gGmbH | S=
itz: W=FCrzburger Stra=DFe 46, 01187 Dresden, Germany | Registergericht: Am=
tsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: Prof. Dr. Gerhard Fettw=
eis, Dr. Tim Hentschel | Vorsitzender der Gesellschafterdelegation:
 Dr. Andreas Handschuh <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy
<br>
<br>
</span><span style=3D"font-size:9pt;" lang=3D"en-US">This email and any att=
achments are intended only for the person to whom this email is addressed a=
nd may contain confidential and/or privileged information. If you received =
this email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information: https://barkhauseninstit=
ut.org/data-privacy
<br>
<br>
</span></p>
</div>
</body>
</html>

--_000_AM8P250MB0107ABD44FFADBD14869085A9B029AM8P250MB0107EURP_--

--===============5489826497924322467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5489826497924322467==--
