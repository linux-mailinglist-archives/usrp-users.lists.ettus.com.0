Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB1B772551
	for <lists+usrp-users@lfdr.de>; Mon,  7 Aug 2023 15:19:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81631380A52
	for <lists+usrp-users@lfdr.de>; Mon,  7 Aug 2023 09:18:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691414339; bh=mmve6zNeai4gMAdTCibJdO8V6m9N46FZzhGzQBvfGEU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=wLXIaKtx+Y7OqrUWoIW01gavljwKcCAiV/UcuLvnH8GqdieAiJkqlhJPOf+IQyOM7
	 dGnfxnezE4W8tw/GkUnPdApEsA16o/JNpCaR8rV9LIoxA969/MoJX+jvFJOJ4xUORd
	 Jdmr7nCMP79rSfTqAdKV5QDh015R2RXGm7j6F4YN5SFNvc4i9BFlMG+olrjFtN+ogv
	 wAOg1EIAzL5Ukvr2OK+G4nkdLLqFicQuyl5/G0OT+TnbPSthcY3ltkfGtZ0xLDJsMj
	 V79Z6VD5bWVusKoscmnzGL6E0oB+OI7z8c1g1BaNqvTGzGt+83IQ+vBSAyBq5t0J5o
	 VasRtLYSUQM9w==
Received: from resqmta-c1p-024060.sys.comcast.net (resqmta-c1p-024060.sys.comcast.net [96.102.19.35])
	by mm2.emwd.com (Postfix) with ESMTPS id BF8D93800B7
	for <usrp-users@lists.ettus.com>; Fri,  4 Aug 2023 09:40:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="lj+F7Y5X";
	dkim-atps=neutral
Received: from resomta-c1p-022584.sys.comcast.net ([96.102.18.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 256/256 bits)
	(Client did not present a certificate)
	by resqmta-c1p-024060.sys.comcast.net with ESMTP
	id RuzOqkLSnprSIRv2VqwHrY; Fri, 04 Aug 2023 13:40:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1691156423;
	bh=E5/6ehiEp38PU+p1eJYaR4PsTnufoKecIs7Zx/Qr5zg=;
	h=Received:Received:From:To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:Xfinity-Spam-Result;
	b=lj+F7Y5X9MLFiLH6+w7Y1SvGkPVDciMOg2m6gDt+wKV5se0hYa7LN9RvtrFOGtw4H
	 49dyrfFpQjORxHTskUxnno3lzDH+f0f/CIG7EuVWcSz1+GNsy5VJbiKN/k9W8avX67
	 0CWVhJ3yRSHhTMxQYUJqiSlaWL/JIX9xQrODVpKKYgnplqavB++z3ME0GtpxfceSpz
	 G9KU7wAJ9Ygey3pdBI2zOTfqjZ5LfTE6i8VBV4G0RP2RY5IBXcVD5SuUdPsEcrfDzj
	 07b2aGljeTs8UpUnqhUUPxBGKlW7sW7JW0auLDoE4gfqWetM8iAK/B1RsNGOw1pZSd
	 01XovSZkwLCnw==
Received: from AG112470 ([69.131.13.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 256/256 bits)
	(Client did not present a certificate)
	by resomta-c1p-022584.sys.comcast.net with ESMTPSA
	id Rv29qZFd3X707Rv29qDu1x; Fri, 04 Aug 2023 13:40:06 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgedviedrkeeggdeihecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucevohhmtggrshhtqdftvghsihdpqfgfvfdppffquffrtefokffrnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkgggtofhtsegrtdhgpedvtddvnecuhfhrohhmpeeothhilhhlrgestghomhgtrghsthdrnhgvtheqnecuggftrfgrthhtvghrnheptefggfevfffggeduieefiedvtdfgudffffekvdehleevuefhtdehuedviefhhfdunecukfhppeeiledrudefuddrudefrddvfeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghloheptefiudduvdegjedtpdhinhgvthepieelrddufedurddufedrvdefiedpmhgrihhlfhhrohhmpehtihhllhgrsegtohhmtggrshhtrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuhhsrhhpqdhushgvrhhssehlihhsthhsrdgvthhtuhhsrdgtohhm
From: <tilla@comcast.net>
To: "'Stanley, John P. via USRP-users'" <usrp-users@lists.ettus.com>
Date: Fri, 4 Aug 2023 09:40:01 -0400
Message-ID: <001d01d9c6d9$2daee5e0$890cb1a0$@comcast.net>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdnG2SqbMJS9OxthQO+lUaVJ2kMCLQ==
Content-Language: en-us
X-MailFrom: tilla@comcast.net
X-Mailman-Rule-Hits: administrivia
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: U3EAAVVPQWRGEDK2ZZES7LX3SJ572QSL
X-Message-ID-Hash: U3EAAVVPQWRGEDK2ZZES7LX3SJ572QSL
X-Mailman-Approved-At: Mon, 07 Aug 2023 09:18:46 -0400
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Unsubscribe
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U3EAAVVPQWRGEDK2ZZES7LX3SJ572QSL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6117917203324275952=="

This is a multipart message in MIME format.

--===============6117917203324275952==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_001E_01D9C6B7.A69D6CF0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_001E_01D9C6B7.A69D6CF0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 


------=_NextPart_000_001E_01D9C6B7.A69D6CF0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_001E_01D9C6B7.A69D6CF0--

--===============6117917203324275952==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6117917203324275952==--
