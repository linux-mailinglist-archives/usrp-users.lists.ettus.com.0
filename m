Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 079933FCEE7
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 23:02:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 631FD384522
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 17:02:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="l57MqcFQ";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="ikNjqb9x";
	dkim-atps=neutral
Received: from email3-east.aero.org (email3-east.aero.org [130.221.184.167])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C53C3818D3
	for <usrp-users@lists.ettus.com>; Tue, 31 Aug 2021 17:01:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1630443688; x=1661979688;
  h=from:to:subject:date:message-id:mime-version;
  bh=4/xYXO0T9KyUwnCqxueQSMfXzhf10kKll1i7B1ChwPA=;
  b=l57MqcFQChSZ9VGdZZk6e4hb2QqtleYvPMJLHdWjkpiKe+KHDhUfJ1+g
   yHuYhxUto9O/1YYhqWruV9T6F5bKUi0tm75P5mGtdEBwvqQv01q2C5y71
   POCPYxi2k1IDt/QO71NGczHw2fNBoFXSG2KRwT3rEmW4vZFBr3nfJ8/yc
   4=;
x-SBRS: 2.3
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="5486311"
X-IronPort-AV: E=Sophos;i="5.84,367,1620716400";
   d="scan'208,217";a="5486311"
IronPort-PHdr: =?us-ascii?q?A9a23=3AY0HJxx2w6MTfJl2SsmDPTlBlVkEcU/3cOg8O9?=
 =?us-ascii?q?oFhhq5Sb7/l9JPnbwTT5vRo2VnOW4iTq/dJkPHfvK2oX2scqY2Av3YPfN0pN?=
 =?us-ascii?q?VcFhMwakhZmDJuDDkv2f/rrdDAhWsleSEJ+uXq8NBsdFMP3fVaHpHq04HYbE?=
 =?us-ascii?q?Qn+MgwgIOPzF8bSgs272vr09YfUZlBBiSC6J7RoI0bekA=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Acfl/zaFK9FkG88dTpLqFdZHXdLJyesId70?=
 =?us-ascii?q?hD6qkvc3Fom52j/fxGws5x6fatskd2ZJhSo6H4BEDgewKVyXcR2+Us1NiZLW?=
 =?us-ascii?q?3bUQeTTb2KjrGSiAEIeReOkdK1vJ0IG8cRNDSaNykYsS+O2njcLz9W+qjkzE?=
 =?us-ascii?q?nHv4fj5kYoaTsvR7Br7g9/BAreOFZxXhN6CZ0wE4fZztZbphK7EE5nI/iTNz?=
 =?us-ascii?q?0gZazuttfLnJXpbVotHBg88jSDijuu9frTDwWY5BEDSDlCqI1SvVQt0jaJqZ?=
 =?us-ascii?q?lLgcvLiyM05FWjr6i+reGRhOerSvb8yfT9YQ+c8jpALL4RIIFq+gpF6t1HoW?=
 =?us-ascii?q?xa6uXkslMuOd9+5GjWeXzwqRzx2xP42DJr8HP6z0SE6EGT1fARaQhKefapv7?=
 =?us-ascii?q?gpBycxKnBQwu1UweZOxSaUppBXBRTPkGD04MXJTQhjkg6xrWA5meAegnRDWc?=
 =?us-ascii?q?9GAYUh27A37QdQCtMNDSj64IcoHK1nC9zd/u9fdRefY2rCtmdizdSwVjA4Hw?=
 =?us-ascii?q?uAQEIFpsuJugIm60xR3g8d3ogSj30A/JUyR91N4PnFKL1hkPVUQsoffctGdZ?=
 =?us-ascii?q?Q8qAuMexzwqDf3QSuvyHjcZd060kP22u/KCe8OlZyXkbQzveQPpKg=3D?=
X-IPAS-Result: =?us-ascii?q?A2HzAgDGly5he2dBL2hXAx4BPAwCCxWBWYFTUYFWaoYPg?=
 =?us-ascii?q?gEDhTmdUIdWA1QLAQEBAQEBAQEBBwJBBAEBAwOEaAKCMSY3Bg4BAgQBFAEBA?=
 =?us-ascii?q?QUBAQEBAQYDAQICEAEBDQ0PBzokhWgNg1OBCAEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQUCgQhWLgEBOBEBDHQnBBsahE5SBQMvAZ10A?=
 =?us-ascii?q?YE6AosXgTOBAYIIAQEGBASCEYJ5GII0CYE6gn+ED4cjgVVEgViHakWDBoIuh?=
 =?us-ascii?q?lkfgTOgaIFlnVItB4MugTEGC504EqcBu0MCBAIEBQIOAQEGgXeBfzMaMIMsU?=
 =?us-ascii?q?BkPkhKKXkIyOAIGCwEBAwmSDAE?=
Received: from mail-dm3gcc02lp2103.outbound.protection.outlook.com (HELO GCC02-DM3-obe.outbound.protection.outlook.com) ([104.47.65.103])
  by email3-east.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 14:01:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C5QNQ5HAhO2Rku3PZ03ASpYo5sb4scRK8BSQYCYg3fa0P/ZixsP6xw0O8Khbbchquh20gLBmFVsK4j4ShbkWXmVGZ3ejrTufFTScoNazU3D/tuAW5dfxQsS901vostrzJanUwF0ex0ASi/8M0xqn9dXnsLu2WayOPByQ84Xy4rR7Fk4J46GcEd9BNmhvNws1Pefqln86EV3DqZWRGtiicbx6NljEZ8LUBgsQQBjkChX7sPNvOjC3hLEtWRjLXH4uaCsYqzFTNgUmbhn1SNLylgX50+UWLXExQ/Y16qADrM35W5NNtS5a7q1uYXUWDLYM1kmUP+B4h6dWxi1Pxl3Ytw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=l25f/IarvV64HzMMnoLGBEZ2atW9h5KOVMy5V5YHP+s=;
 b=c9avAarC+KwtVfEMRVBvnRxnJBHPKTf7YXmU7UB9MHDx0Cs5/Gnxxjhs0gZ9U2rCzssGlm8Urnt8DJh+nQvWjFMA+Ax99poh99D3I16fMsxXB6sG5uo6L5y1SNGLFV9UiL79YPExwuLfOldA5VdeNjaX9qSiS7xmpJv0C5br1hCFPtZqKbTSJ3MCB6Yp1I2YB1XJHk5ZfZjKVRKuWH53VIuOKRVdn5XBXLCShEjd8JuO3dY0U2vX10QUu646ajFc3oKd4uRlPkhKQ0z7Xec4Mc3cCX0a9TqlaHcE1Toar6HMZdKnYLdMQvXvkRD2LzWEMpw5JtjfJEM3ec7nERAskg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l25f/IarvV64HzMMnoLGBEZ2atW9h5KOVMy5V5YHP+s=;
 b=ikNjqb9xKDSZQts9ly+MYFFAfJuXZytlc/N4IJWfrGj7Vy5TytVTPDrnaY9r0F0swQFWdJSXB/Dl6BvYt5acr5+TP2Q5+q74+OkgwwMgSi0GfQH6VYEH+QQHfhgk69Mkn6ZyDg0I8617oqjE9k45QbksjfO0cY9hQloIFOOhh5Y=
Received: from SA9PR09MB5168.namprd09.prod.outlook.com (2603:10b6:806:41::12)
 by SA0PR09MB6681.namprd09.prod.outlook.com (2603:10b6:806:6d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17; Tue, 31 Aug
 2021 21:01:26 +0000
Received: from SA9PR09MB5168.namprd09.prod.outlook.com
 ([fe80::b42e:c51c:4d54:76d8]) by SA9PR09MB5168.namprd09.prod.outlook.com
 ([fe80::b42e:c51c:4d54:76d8%2]) with mapi id 15.20.4457.024; Tue, 31 Aug 2021
 21:01:26 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: block alias in GRC
Thread-Index: AQHXnqszJgC9ZlnXeUCMtizL/2G6QQ==
Date: Tue, 31 Aug 2021 21:01:26 +0000
Message-ID: 
 <SA9PR09MB516888457D1E4D6380A3CEF0ECCC9@SA9PR09MB5168.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1a350066-d637-4e2d-7682-08d96cc27f54
x-ms-traffictypediagnostic: SA0PR09MB6681:
x-microsoft-antispam-prvs: 
 <SA0PR09MB66816E498D5A2EF04FC78F48ECCC9@SA0PR09MB6681.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6uLUJy+y3l9VXDyAGe8LwA7L1tgEzlIS7nX+lRKL6wc5Y4lYNwhtyPuJNn6dNnAqTZAokFqFX5+d5LXCckh7SrmiPqCTyoRAw2gitXkEGHo2jfkx+w1eDgInd3fTiKzxjBhJRtzpuOzk3Ni4hdaJTDJ7DcE1/nltX5YydZi4Sqos6GJRiOSu4YcRrxSqaySq1rgrZSZfdJjPWD8kwos3Ma0u3+KUey/AwiyDhOPVYuYpaTLK6AXM2irmVpAa4EK/o8iv23xY+XQ1rL6i1KYDxnGq2RDflNABylpyPWe2/G0837nJRfhB1Uo2WmwKnJ+yREUzvFvSCWeJOJqjCv7W1ZErFfr6FzHBZ7zzGVbN5u95qdmVOklM0a5E0YU8yvN74VCfaQ8WRPQp5Uq8c58mf3jfexX+USHGL8NLXuD6QQbhADbGDXK8YdT+f3437kaRGkLxyJ+vVsJ9iYNYN8iRoazSNsSzluEw4szEW747Ur3Ku3vjOhNi2FXeXEPDQwAqxRE+T9GJdNu7Jsglz7Jo8ZupQwvMPlPZWe7Hc1lLfje6IRH1wqod9uph48GR7+zfvUg+OXqdcLtEKmwLJy6pobtvB0wjZileexwE0Eyhy2snD3566/PABfM46ezFKNHz/MJsykpH5wAIL9Pv8iA/9+3VXW1ZD4QivfVHtKyErb4eUoZEi/zYmjsV0sO+T9cIJzqBS0pEYyBEHBEP46NvTg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA9PR09MB5168.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(39860400002)(366004)(136003)(396003)(66556008)(66946007)(19627405001)(38070700005)(3480700007)(76116006)(52536014)(186003)(38100700002)(478600001)(66476007)(122000001)(26005)(6506007)(64756008)(91956017)(66446008)(71200400001)(33656002)(2906002)(4744005)(316002)(7696005)(8676002)(86362001)(5660300002)(83380400001)(8936002)(55016002)(9686003)(44832011)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?ohRyB6axppbh5EosahJynSvE9hbFdekL0Aj6ZqgsQKe/OoKXlhHO6ulfXz?=
 =?iso-8859-1?Q?aEdhxjraxvGCxg6YTi/NKXmP6PoHyqmGZu6SQtkuwSHHWD5MPuPBwNbeae?=
 =?iso-8859-1?Q?wZ2H9jzopiModN3HRxEwB8TAs1/1BZTNuin7lL8Et95PsVacK6wRfijQFr?=
 =?iso-8859-1?Q?/Ghgmntv5xLWVQ77YxR/sev+Du2uriQwDP19iEDko3UyLx2V8v+rpbeHqh?=
 =?iso-8859-1?Q?9HuSFiBnrijPX9omKCZ1buzex0UwThGfuoCLZ7OQZ4m0MYDACZ9jqL53yB?=
 =?iso-8859-1?Q?vSiA5/7rM4eRUxCkzcL78h9g8/4oeYeioCSdJ1s36c7D9AGWva92+bnFPj?=
 =?iso-8859-1?Q?BOy3415mdbQgqSK9yLUxzizt5lbQ2P6RtnxYJSqOAbLY3Arry+TS+1q/BI?=
 =?iso-8859-1?Q?vZOyTLtns1uzpJEZ7fC5KVOoCGn0JsM7R7VIJZJ2dA2ML29V7i8KQyzpAQ?=
 =?iso-8859-1?Q?7iJRmm3CoJtidYmRBqu5yEQYcQYnL3nDzI/eN9nvWtVIfZsUBMsVIMLWZW?=
 =?iso-8859-1?Q?pd0ZdXHddrS6wVJ5sh8FFS/sldYeVgTK3tsi1aE6tgBaBjhDkjehMQJ+An?=
 =?iso-8859-1?Q?gQ0gW7l9QIClTiVu2n1GxG7kqgbVjOOUNkWGJ9Vvn22sHkwvHBEUptZKiv?=
 =?iso-8859-1?Q?9xENeKDwrsGEE+7hgYB8jtdmiUbkDBM0PlKPEPKgId/R/0oPMfvdvqdJ0J?=
 =?iso-8859-1?Q?p5TudOxa68mIDgY8pzREpw2O6I8jyrf6FdJQelEYdobQ9dVBa/3mnv244Z?=
 =?iso-8859-1?Q?mDkgOHPVyPI+CPCBfGPoBdEsiMCXqbAM+R+yeCHtME+L+82Kt1dCXL+x8Q?=
 =?iso-8859-1?Q?Lc8WL7n6QKo4Ahl+iJkQG1oIRd7VqvkUG9yDg/kXa/uFAGjxH1MzaHCPA1?=
 =?iso-8859-1?Q?r3zQq0BVggOZYWN95TrdTpSKjw2Hzv3VhdI5hj17WSm5eZKxltHFgIUF6a?=
 =?iso-8859-1?Q?OHS6AncGFNpa13502ysysTC0EZrBBUKqdDv3GZcf80mK/4AB5qVeedykS1?=
 =?iso-8859-1?Q?9r2Q9WcsZZAkUgUdM2FinEl/t/0qNj+EweOtxr2do8EcsElJjlb1T0gsWD?=
 =?iso-8859-1?Q?xU5NRITbDOcVdkymz3ns7qogteI+6ktngQzp/gx8stl9VqxNlBlZbvNwj0?=
 =?iso-8859-1?Q?7PRjeN6dcdZlyWT7hQAV9Gum9nStBwIpoRLMV1N1JHv5sHdjUaDjwjjCyl?=
 =?iso-8859-1?Q?JDCOTLFs1hnqilp9KGpIOxfPgymjbcIqSe1B2wpNRDHPylIhpieIiF/ONw?=
 =?iso-8859-1?Q?kNwCkKaYnO2VmoU+jWkMQE2V8c/WqCOg47gzR/g5Bp8pIzw0QYhG7hIlgs?=
 =?iso-8859-1?Q?0YrYpypAprerWunnsx6vajn3ND+ldMqvh7PvjMHp1XfUNDY=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA9PR09MB5168.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a350066-d637-4e2d-7682-08d96cc27f54
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2021 21:01:26.4367
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR09MB6681
Message-ID-Hash: WOMXXQYZBLMVYGYZMBNBK622TVIA5DFA
X-Message-ID-Hash: WOMXXQYZBLMVYGYZMBNBK622TVIA5DFA
X-MailFrom: prvs=8705085d6=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] block alias in GRC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I6KN6CWJ32GZZCJKZNEVCIC3G35C4A7K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4374171061893048609=="

--===============4374171061893048609==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA9PR09MB516888457D1E4D6380A3CEF0ECCC9SA9PR09MB5168namp_"

--_000_SA9PR09MB516888457D1E4D6380A3CEF0ECCC9SA9PR09MB5168namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'd like to suggest a minor change to the 'block alias' field in the advanc=
ed tab. Currently it is treated as a string, but it should be treated as an=
y to allow creating aliases based on variables/parameters.  It helps with l=
arge flowgraphs, especially with hierarchical blocks.


________________________

Eugene Grayver, Ph.D.
Aerospace Corp., Principal Engineer
Tel: 310.336.1274
________________________

--_000_SA9PR09MB516888457D1E4D6380A3CEF0ECCC9SA9PR09MB5168namp_
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
I'd like to suggest a minor change to the 'block alias' field in the advanc=
ed tab. Currently it is treated as a string, but it should be treated as an=
y to allow creating aliases based on variables/parameters.&nbsp; It helps w=
ith large flowgraphs, especially with
 hierarchical blocks.</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"color:rgb(0,0,0); fon=
t-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt; background-col=
or:rgb(255,255,255)">
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><span style=3D"color:blac=
k; font-family:&quot;Arial&quot;,sans-serif; font-size:10pt"><span id=3D"ms=
-rterangepaste-start"></span><span style=3D"color:rgb(0,0,0); font-family:A=
rial,sans-serif; font-size:13.33px">________________________</span><span id=
=3D"ms-rterangepaste-end"></span><br>
</span></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><span style=3D"color:blac=
k; font-family:&quot;Arial&quot;,sans-serif; font-size:10pt">Eugene Grayver=
, Ph.D.<br>
Aerospace Corp., Principal Engineer<br>
Tel: 310.336.1274<br>
________________________</span><br>
</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_SA9PR09MB516888457D1E4D6380A3CEF0ECCC9SA9PR09MB5168namp_--

--===============4374171061893048609==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4374171061893048609==--
