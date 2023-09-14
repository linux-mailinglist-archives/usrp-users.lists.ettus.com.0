Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E2E7A00B1
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 11:49:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48BB23854F1
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 05:49:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694684942; bh=+fGyxX7/RD5QeySQYJWDzgU7GoCkAlWi1NcGcVDCQgo=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ALgZcJyU2ck8m0zoF6Jjo1rUECD4RxhU3X5yg3k51+NBbj8VY1l5FX2GV8ztoXBLU
	 knQ7cq7z/gCzicUUDP6yPAbk0Rk06ATZ2ytJecFlUUMO9ucjCG8iIAyoRglFNvfWNY
	 JoNQV6DTouuLkuUrjTc2XMu0f7NmfAZIAFOetpZX2MGELYhFZIp4nqOpLBYBevMk2B
	 yXg8gHg5fDQbzlzyiPJEuVbdPZCtuPUJmEgGXL3SPH/G6j0nCmLEUnfs5Br8nIhJIj
	 TveJJspfkoaXeDdR3Tlk9axjOhom9+nG4n9OOu0qt7Ed3u9KxecBYTjtmsXkiPPrfo
	 Bw/AtvewojcCA==
Received: from IND01-BMX-obe.outbound.protection.outlook.com (mail-bmxind01on2063.outbound.protection.outlook.com [40.107.239.63])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C430384EF9
	for <usrp-users@lists.ettus.com>; Thu, 14 Sep 2023 05:48:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=mobiveil.co.in header.i=@mobiveil.co.in header.b="an6Mr2JB";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MXIoTPISbPtF9IaMe49ukQsAOjlil0V6Avh2uxIB2KtTAP9BBawdoX/v3Kar74+ZAMMGDVgOuMtsKYyPMzSzOYGdZEzmfEq9QTs5uSnc9OC/TjHAbaIsCpx+tR6uz+dzYOQ3sQbzVYFMdA94I1aalSmfXFdaDa8btyF/dLs3XFDnhuEcZvv4nqhiUbLN9Dh/SUyDXbJbiprTVltyq9roYqhs7mSkzDy3EWmqwrR3M7/nowBidkK5SOmBDS5fZAOMw7oSpvfP6SMRS4JyS6+hZSZoSaI8+FyEZqWeqUeUXAV+mtg/HKIk0hEgMa801CblkyD3fL5ww8BA83OyXZI0qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TM5V57Pn+yDLKUdX6oYmziqSPirg+PThnlAt3K5vIh4=;
 b=U62U8H3+ENMAVOlpiTVoIGf/m6NCaGZwV6dzLbRokh1mXfn3DxSJQEYbpS2ztoiPY1R4QT358JPoFNW58DtRV8B8NwpYP0UAcwS7ksXX55QoTP/q4oUYJLG/iOLl/VKGhsEmHeDgZLYD6CV6cKvBHIAwDaeLrlA6izatqKo8k6vIrfHfLgABdSVMOWZJ9V5X7Ovf5nyIqNB+rAinJw53OHKIByEAAfu5hKB8nbU0TIVvvDV8y8hksXHASqddhDeojilTu+sQAXuFffFGdlALmrzChYJYRXQZRvjznad4zu992dM21Rvt9zNOFEF6olTw8ojMUSEcEIWQCpt3extC6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mobiveil.co.in; dmarc=pass action=none
 header.from=mobiveil.co.in; dkim=pass header.d=mobiveil.co.in; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mobiveil.co.in;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TM5V57Pn+yDLKUdX6oYmziqSPirg+PThnlAt3K5vIh4=;
 b=an6Mr2JB7E/YYtvcycPRCXtN/67somppSc+4Fs4keqGltXfvoU81WI8HqUB1V13378tIIJRBTODbZs4NLbcuqEE8EzqmIIVjaM+FQuveYLycOf2HwAm2En8ZkJQWj+HRYEVvBjDTdEqqC5Hs2kZrfTYbObBVnY9l8QXXNOmSVbs9C1zr41aizdQqrw7d0RswXokKgEvIY5nk3/l00FxDs6s+Vgc8Dd5/7GI518Na26Z49UQYamV3he6w/LdKY/JGsumQ2ymdCBvGU8tsvYmkNxEIm7Q7kXfO+Hyu6xK1QjsDAF8bdNRADWro2QzbAZz+2ANRA2atDJGrnu5WvLNxLQ==
Received: from BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:5f::20)
 by PN0PR01MB8030.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:42::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.20; Thu, 14 Sep
 2023 09:48:38 +0000
Received: from BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d934:2e34:a027:99ab]) by BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d934:2e34:a027:99ab%2]) with mapi id 15.20.6792.020; Thu, 14 Sep 2023
 09:48:38 +0000
From: Sivanesh Kumar K <k.sivaneshkumar@mobiveil.co.in>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: How to connect usrpb210 to google cloud
Thread-Index: AQHZ5up0FKjbBAdaD0uTxsCKOVi89w==
Date: Thu, 14 Sep 2023 09:48:38 +0000
Message-ID: 
 <BMXPR01MB3558BDD10C2CA34EE1843FAED6F7A@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-IN, en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mobiveil.co.in;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BMXPR01MB3558:EE_|PN0PR01MB8030:EE_
x-ms-office365-filtering-correlation-id: dec0a02c-6621-4a34-c469-08dbb507c52f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 KN4H9NoIBaWEC+Ysp+eVb4N95pDITRfB6gGpprwy/m83PqfBavOzLbTgEesLyqA2aW/GSlwivq30eBV7vWgTeLZReoUKL3ceRoygFcs9LMcqP/yOoPyXTZ9JLGBLGkFdmu7gdx/JnZcQ/EyJV4R6ozssw+8zHfMgqBsmPlYl0NsdyW30OtMwSD0zIglzQ82s+RxBMau11K4u6vj+PIK/bjIEHeXfACMaxv40tPPWUCoZGYzYQe2X6aXloyh57AqzebhLm9A5Psr+caXCzhw8sQK+hrtRwnUYQ5P0ttQkiBKXy60EFgjb1aJdsFM0c26KV31dXK2dUnSCNKv5YYpGax30bveNlKtjzAXCAK3p/D7TKfr9+vtbBIeo694xTyKu5fXYzgq2P5T+YHgB+Q3likL5J0YuLuvdnNklyPiU/zUM70ykoJp9bC0lOLzgmiE0pUsU1nU9/LCsl5us3HfE42SK9DLCXDG05mf9fWMm8b7bU1BUSly5XX+x9A69Wo2PsWryIOl1Dw/RdWGg/0PGiHOGBaDVrtVq0rnbIaOIbn6kgVZnziDgxWRuzpnlUp7H/LkMpnYRNLWDJtTo6j4bWGc8FRE7RGFtSK/uyFhpwZo=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(39850400004)(136003)(396003)(346002)(451199024)(186009)(1800799009)(7696005)(52536014)(5660300002)(26005)(8676002)(8936002)(71200400001)(6506007)(55236004)(9686003)(83380400001)(19627405001)(478600001)(55016003)(122000001)(6916009)(316002)(66476007)(76116006)(41300700001)(64756008)(66446008)(66556008)(66946007)(33656002)(2906002)(86362001)(966005)(38100700002)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?J1hO1b3wrGXTrrmtTlVFuzvb5KWt+v6TJiCHcfbdZKU+cB8NGgQ++83hS2?=
 =?iso-8859-1?Q?UexfOUF5MdCojIWsaC5QCQ6ba/oK4H3zy5t147NsTDK69snmHQhZIqAUHn?=
 =?iso-8859-1?Q?SX9HqWaFZnV/5sSi4/OJ+iq2H8kixNdyKItroCOXCgfvXoRTb3gq354Q7g?=
 =?iso-8859-1?Q?2bzdY1uhYQrHLRh1hz5OoZgU8bSQjfbPLgTpZmWA1IOW2bcsjPdiEtCHfh?=
 =?iso-8859-1?Q?XqRoJx4g0rfW/NDPJV/veb9edzElKuL7/MHsAC21lKyOAT4xygoMps6XyV?=
 =?iso-8859-1?Q?QB5sjSjJgZLQvNG5VhGQ9qLYtTHGtFH1BnuFW8+YedVPQaWtZNWIi0MsI4?=
 =?iso-8859-1?Q?BKT5vFcWiebhsNrTeoYGEpJNhxDHkJYUJfPat2O9ULk90TBFSNdJRD3TQy?=
 =?iso-8859-1?Q?WBgvU1pAD1LObf1D9f4HsRyFy0k0a35hIgUspyEYzgXcF4KugexEfYM8o6?=
 =?iso-8859-1?Q?nEfe6wRfwNm90t1llzrYI+x+1w5INldDlStWfp3+XY10KVEVaKkKOF71BJ?=
 =?iso-8859-1?Q?dkuaAv0AUT/2ffii/YAH8lzeGhszleskz99ktJlHMc1XMiNHLYDPeUETIO?=
 =?iso-8859-1?Q?6nAye4mCLlT/UiocL/RJFDjYTrG9Nat08ucN5Fo5eoBRZ/flBL1FQCQAcJ?=
 =?iso-8859-1?Q?q1ExYs7WfUSqCLqeb5SrEo+lQBxU0bv8NMCNAD5+yQocxAMknhXW1wprTl?=
 =?iso-8859-1?Q?lMwnDRy4LbBRbarTz2ccdgEpcVBs8xIhFX1BhcFyzF6lBUOKA0uYTaFQCF?=
 =?iso-8859-1?Q?MOj46NwF2ZgHKp6BqSeCLLcWfTGuCaOM/2SHDTzmKG/RmqGdyWL/I8CLbW?=
 =?iso-8859-1?Q?6Wc73HjZc9bqpQfnoM+6kaTYOIBXIc6brUyvKynbwrF+fnc9TYNB9FUspX?=
 =?iso-8859-1?Q?OoUJLR2S/VOt9U9BblSZS2gXUALmLDlC/ke4+aqz/QKSDOh8MxBVoBdvc/?=
 =?iso-8859-1?Q?yDooep8DEburlqleOVQQFE6uhN7jt4kTCRasnUEeuX3dQzM2xD06k+la0R?=
 =?iso-8859-1?Q?Piy7xuo+1oHqZQLo6APxbU4dEF1xtyajc1mTRwGLOHdJ8VV+dkH2eAtD85?=
 =?iso-8859-1?Q?E6EzTU8YMlm1XTudMjb5EwcHkT8qnYXV2csezmHRnvMSxjZpNTB6BGKohB?=
 =?iso-8859-1?Q?itTn67T56DbzjIF1tvgEmiQ2zfafE2vuIL1jxnd+uBosnTgBOj8kh/7d86?=
 =?iso-8859-1?Q?gJ73stn++c49l3kF5XCQDHneLAF9pG90hvxkLgfZQl4rvv06fVAFkEPoxr?=
 =?iso-8859-1?Q?48Di9Ie5rW1daNjvvIaHwxH2Y/EDrJI+Bzu3LQN75yz/17BlfUu1xWa1xE?=
 =?iso-8859-1?Q?Qo1fggSIemy30ZQ2AQyRf/4o2bnK6qYbMTuszjowxR8GytCe+Yo0xLfdJj?=
 =?iso-8859-1?Q?lVgF0KIS/Mn3IfYl4BhP0tomgf3TCFREVeSkSRkpb64mOIOuaut9G9aqIl?=
 =?iso-8859-1?Q?t3l6rUdA8InsGoiDUgEaya+jFq6azYtKXLA94Cm/42ysnhgQsGWpgoRFH1?=
 =?iso-8859-1?Q?lJ70m81kXulgdP7UADc88gTiRUu2PGtC53icYWhcFvr3kigkk6sL6B8Ppt?=
 =?iso-8859-1?Q?KiedgJWuPPSwOMMMHa1MyJ5YS90tWkyvKX4RJa0WBcG90fFYeFdg4I7l8Y?=
 =?iso-8859-1?Q?5MbzZjIjbuy67JZpCcawXUxoGiTofThTi8qgmETLYKRgyhFki/Uqu11g?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: mobiveil.co.in
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: dec0a02c-6621-4a34-c469-08dbb507c52f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 09:48:38.0225
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fc646429-760a-4f9d-81fc-c568b17eb1c2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /7RE0Wx52Skr+HJ7rNSZjfYdVu1cnezgbqkEdnwZ7jCq7cHXpxG5Tk5ADLwTs4P84G9wD9FasB8qungNG2hCb4zwZe8ErrxXsOZCqiHh8Zk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0PR01MB8030
Message-ID-Hash: MOCU6ZVIRCT4OS4XZNPCOURTOIUDMJVE
X-Message-ID-Hash: MOCU6ZVIRCT4OS4XZNPCOURTOIUDMJVE
X-MailFrom: k.sivaneshkumar@mobiveil.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to connect usrpb210 to google cloud
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X5SVVHUYQ3J5TYBXA2HXL6SB2BPFV2WG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4656570735567670846=="

--===============4656570735567670846==
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB3558BDD10C2CA34EE1843FAED6F7ABMXPR01MB3558INDP_"

--_000_BMXPR01MB3558BDD10C2CA34EE1843FAED6F7ABMXPR01MB3558INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

HI all,

I trying to connect usrpB210 in google cloud. I, installed ubuntu 22.04 in =
google cloud and done below steps to build uhd


sudo apt install -y libboost-all-dev libusb-1.0-0-dev doxygen python3-docut=
ils python3-mako python3-numpy python3-requests python3-ruamel.yaml python3=
-setuptools cmake build-essential

git clone https://github.com/EttusResearch/uhd.git ~/uhd
cd ~/uhd
git checkout v4.4.0.0
cd host
mkdir build
cd build
cmake ../
make -j $(nproc)
make test # This step is optional
sudo make install
sudo ldconfig
sudo uhd_images_downloader


After connecting usrp in local mechicne which as google cloud , usrp is not=
 detecting

After given uhd_find_device command but not able to see usrp details gettin=
g no usrp found error

how i need to connect please give some idea


Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review, use, disclosure or distribution is pro=
hibited. If you are not the intended recipient, please notify the sender an=
d destroy all copies and the original message.

--_000_BMXPR01MB3558BDD10C2CA34EE1843FAED6F7ABMXPR01MB3558INDP_
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
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
HI all,</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I trying to connect usrpB210 in google cloud. I, installed ubuntu 22.04 in =
google cloud and done below steps to build uhd</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<pre class=3D"code highlight ContentPasted0" lang=3D"shell"><span lang=3D"s=
hell" class=3D"line ContentPasted0" id=3D"LC1"><span class=3D"nb ContentPas=
ted0">sudo </span>apt <span class=3D"nb ContentPasted0">install</span>&nbsp=
;<span class=3D"nt ContentPasted0">-y</span>&nbsp;libboost-all-dev libusb-1=
.0-0-dev doxygen python3-docutils python3-mako python3-numpy python3-reques=
ts python3-ruamel.yaml python3-setuptools cmake build-essential</span>=0A=
<span lang=3D"shell" class=3D"line" id=3D"LC2"></span>=0A=
<span lang=3D"shell" class=3D"line ContentPasted0" id=3D"LC3">git clone htt=
ps://github.com/EttusResearch/uhd.git ~/uhd</span>=0A=
<span lang=3D"shell" class=3D"line ContentPasted0" id=3D"LC4"><span class=
=3D"nb ContentPasted0">cd</span>&nbsp;~/uhd</span>=0A=
<span lang=3D"shell" class=3D"line ContentPasted0" id=3D"LC5">git checkout =
v4.4.0.0</span>=0A=
<span lang=3D"shell" class=3D"line ContentPasted0" id=3D"LC6"><span class=
=3D"nb ContentPasted0">cd </span>host</span>=0A=
<span lang=3D"shell" class=3D"line ContentPasted0" id=3D"LC7"><span class=
=3D"nb ContentPasted0">mkdir </span>build</span>=0A=
<span lang=3D"shell" class=3D"line ContentPasted0" id=3D"LC8"><span class=
=3D"nb ContentPasted0">cd </span>build</span>=0A=
<span lang=3D"shell" class=3D"line ContentPasted0" id=3D"LC9">cmake ../</sp=
an>=0A=
<span lang=3D"shell" class=3D"line ContentPasted0" id=3D"LC10">make <span c=
lass=3D"nt ContentPasted0">-j</span>&nbsp;<span class=3D"si ContentPasted0"=
>$(</span><span class=3D"nb ContentPasted0">nproc</span><span class=3D"si C=
ontentPasted0">)</span></span>=0A=
<span lang=3D"shell" class=3D"line ContentPasted0" id=3D"LC11">make <span c=
lass=3D"nb ContentPasted0">test</span>&nbsp;<span class=3D"c ContentPasted0=
"># This step is optional</span></span>=0A=
<span lang=3D"shell" class=3D"line ContentPasted0" id=3D"LC12"><span class=
=3D"nb ContentPasted0">sudo </span>make <span class=3D"nb ContentPasted0">i=
nstall</span></span>=0A=
<span lang=3D"shell" class=3D"line ContentPasted0" id=3D"LC13"><span class=
=3D"nb ContentPasted0">sudo </span>ldconfig</span>=0A=
<span lang=3D"shell" class=3D"line ContentPasted0" id=3D"LC14"><span class=
=3D"nb ContentPasted0">sudo </span>uhd_images_downloader</span>=0A=
</pre>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
After connecting usrp in local mechicne which as google cloud , usrp is not=
 detecting
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
After given uhd_find_device command but not able to see usrp details gettin=
g no usrp found error<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
how i need to connect please give some idea<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review,
 use, disclosure or distribution is prohibited. If you are not the intended=
 recipient, please notify the sender and destroy all copies and the origina=
l message.
</body>
</html>

--_000_BMXPR01MB3558BDD10C2CA34EE1843FAED6F7ABMXPR01MB3558INDP_--

--===============4656570735567670846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4656570735567670846==--
