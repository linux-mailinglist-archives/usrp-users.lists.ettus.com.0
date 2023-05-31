Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2F47184DA
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 16:26:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF21D38472D
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 10:26:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685543161; bh=TFqfxywC9eyQk/S1RfnpWLOkbqciAHsarxqK4+lAxSA=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=nOLhBjTOD45GJiiV+JSszdXvgYnl3AO7g+AKQ4S4PkK5dmAvYRMks50VytjfVBlSP
	 fqyQuYbDjrXadPLJW14JmhCajvdDMZ14pEv8ZnX7ckjiCOvSRwzeMx521puO65ToqW
	 rsWulir7iHNShY/keuxdCXenAnRXmcz1wg3ENPDz25qQb8mF6w+5uI5vGnTGZ4MB6D
	 M5G5eVrErozs2J+V62umYSi/zTrh5z92AJGCVi/tQy5+fmPkNydhwqwYAs90l0TG0L
	 quXtMA2OWP9UO0gw9llgYnT92BOdmgx+wa/8A5g/4neNuyxwpyfjLkF8iiDR633Fhx
	 KRLm73a3nG/dg==
Received: from mailserver2a.caci.com (mailserver2a.caci.com [204.194.77.94])
	by mm2.emwd.com (Postfix) with ESMTPS id A0FBC38462E
	for <usrp-users@lists.ettus.com>; Wed, 31 May 2023 10:24:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caci.com header.i=@caci.com header.b="aNcyE+Iy";
	dkim=pass (1024-bit key; unprotected) header.d=caci.onmicrosoft.com header.i=@caci.onmicrosoft.com header.b="EvmiOx6+";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=caci.com; i=@caci.com; q=dns/txt; s=caci;
  t=1685543095; x=1717079095;
  h=from:to:subject:date:message-id:mime-version;
  bh=kE61ZAaOTSAeVj9ZUnrVK0SCm2kruiuIViN2WJji4dA=;
  b=aNcyE+Iy7sq4NfrXGs4aSfOTHorwPnMFnsBz/PHR+w4lkThv1IlZYYgp
   EQhogrMBmwMmyikKW0zXZZi0t3jrgiN83G8WXrl5Wuu4PoYQBsZCbuVRF
   fp8tnMbrNB19rmmk6o5Zm9Pcpp3YTNvaifReYKAkjRiCP5g+04NqJQac7
   y60rm9rtYGbNztb5MnhOVLntPq2jbk5K+bFayheABsueLPdJxpjkpTfr3
   GWVyXWNFpKAxaUGZab+zb0IdK3gc+LulyQg9ehitMAEIKsuFtIzqO0ewK
   5oJsP1BDTEzVvqhA8JwQT7SFpAxFPEtGuGv/sryGm8iD2F5S5gDVghqDB
   A==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681185600";
   d="scan'208,217";a="68890702"
Received: from cis-ex1901a.caci.com ([10.201.50.19])
  by mailserver2a.caci.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 31 May 2023 10:24:55 -0400
Received: from cis-ex1902a.caci.com (10.201.50.109) by cis-ex1901a.caci.com
 (10.201.50.19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Wed, 31 May
 2023 10:24:55 -0400
Received: from USG02-CY1-obe.outbound.protection.office365.us (10.201.132.43)
 by cis-ex1902a.caci.com (10.201.50.109) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42
 via Frontend Transport; Wed, 31 May 2023 10:24:55 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=rMaS9SlCxtXysDRYv7Jdo9ywiB1/CFWAKuqcGHASHBN+bsFORKF7o/BclO6ydhoq+fYw7HOdsLMQA7ZnZGRaJKE1XNRvI0XVTbVmufVTla3FlqrAccGyvDm5wZ7jNdmMEOI/u5Qw9Q3lyL4I12RpncPlJpmPWoV9dWTzfm/Ya15l+nLdFsnOja/10pPyVR6FGxkesLz0N8bB3ysF+34KaVY3PuG6+NxZ747LwDzhyKsfO9n3/ZhrdpnUJ0PSkzCeEHSDCseu2MvdqkHVSSgOXoOTt7307V1HL7eiMYvh1STIn3kBjgmHq9RVXLqDmyPa0eD9Gm9C7V7zUATr9A5Blw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jhk0TKVQ7DamHLYtrpLOLiADEmJMZooQyuZjL1sDBTA=;
 b=PERq62SyaJ2oMeoDiGx8g9NA+SdjQSnldGaEGsp7laCjP8smGRKxLjnCaoesJ/sMrkm96skS7SE0wzyTbI+/bsYSmpA76Nb+LCWigm3CfN7bOzvQhW4WrzL25Y9dMrItpzYLB4EaIRoM0ZSSj94tVPTJJJ+hdWvnjM6083L0UZCxNw0qR3m79euqB+y+Sl8AZ9OmUlUWWrvERRZFOP50U+3zx94W/iNPDgS7U8kRzXApylJ4+2gPyaqaACgAh7mVG/4bZ4j3vWzEXT/YBeo0ZIrgyyPLK8NlywrdYRO+ayxzVk+g88uFqPYZurcnfghK7qFtoyrV+HxMJ10dwP4wMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caci.com; dmarc=pass action=none header.from=caci.com;
 dkim=pass header.d=caci.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caci.onmicrosoft.com;
 s=selector1-caci-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jhk0TKVQ7DamHLYtrpLOLiADEmJMZooQyuZjL1sDBTA=;
 b=EvmiOx6+IIUfPv1/8cNhztu28fHFw3WivbQ/wLVyaKLzvepsKd0HRDZIT8bThV7ljP0uvkH0l3moEe91TI8euIKUlril55DBrGNqHZmtP9sqde3rTqrs9C50Ee9EB7xciGaPW5feIjIYPp461vJS0pmcS7ztSoNXJVCHx48lnls=
Received: from BN2P110MB1638.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:178::12)
 by BN2P110MB1703.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.15; Wed, 31 May
 2023 14:24:54 +0000
Received: from BN2P110MB1638.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2f71:7c47:ffd6:c403]) by BN2P110MB1638.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2f71:7c47:ffd6:c403%5]) with mapi id 15.20.6433.022; Wed, 31 May 2023
 14:24:54 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD Alternative Driver
Thread-Index: AQHZk8uVH9IOAjke10+mCfuMclf8vQ==
Date: Wed, 31 May 2023 14:24:54 +0000
Message-ID: <04654761a3fa418f843847eb530862ca@BN2P110MB1638.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caci.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB1638:EE_|BN2P110MB1703:EE_
x-ms-office365-filtering-correlation-id: 8123e3ac-e49c-438d-525c-08db61e2cd86
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q7VIuTOwVrHRA3ziGmj71FLP0NALZ0+1OHT96G4I0SftPcnQmbrdlcgLgIyR194A+ewkB3kqfEf71caZ8A6RmglrmHPM312YolY4NJ9+WQqdy8KTGlRLCmfSSFGZrwNHnyxG+LjlJG3Z4vNeGC8jMpCdEpKwdU77PeyLNsBxrZZwOHGShAQ1fnfrh4Yj5pI7Y2wdT6RnAUEVv2+UpOJ0SyhYrrYncd3OY1fvx4tu6+8b9G3lkj4V1ZV8FWqETUdboxSVzZjEVytNJFngzVcd2/9h/KLPKmv32LEI60chlPbPPstTFsKHqie3xnhkULDC4taHEb/alUhAGbrHXc6cwuHoGytxaisFVJzcgyiRV5uh+OkJoO5cMyJ9BKWKY92Bw+cBIgvvPjb566Tja1pLfepiOgKxRgzPsdPSXyyWh0ihQUEaJ6OtqWuJ/pEvLuH2IiK4m+rfJRIDgvdglqdBG9aymhrsGyMw0wqJU2Q2UW1WX6u50DENphh5U8nXSiqZPAC9GvXKTzJrcoY6hvmHP4/z1THPPEb2caknJfxEgZAC2chK2nDw82UN4QbM5o0BfgKhxeoLd1LBzHaqaXq2/cKroAAz5wXuW4l098QGg1uWbCPbD1y1sXwkcciwuVk4
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1638.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(451199021)(6916009)(5660300002)(7116003)(8936002)(38100700002)(8676002)(2906002)(38070700005)(55016003)(86362001)(83380400001)(122000001)(4744005)(3480700007)(71200400001)(19627405001)(6506007)(108616005)(498600001)(7696005)(24736004)(66946007)(186003)(66476007)(64756008)(76116006)(66556008)(66446008)(9686003)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: JnfkHhtyxDp7sR55jSzKb3M4sfHryTw9wzlbG5AsgN4c4ZII+uhiBxkoISJ6cNo9g4YOknHO1AIiLeni0CVdTcucXidLE4hSDJBBrMA/o0LiSoLGRGyJR5oM2lj0TGSv4BtXqMyfm466gIXWAs0OK7APZe8TJyO/vKuR63LmMUwYOntqIkd+IcLGsVa88VMVULsa9mpvnn9QTc7mL8rgrdYxdrOMkqHdq2LrI9KSQzL2fNkPQhG2ku9egiFtGrrrhrG5jCp25149/jBsbyulqWBKp2PiSI8KCyf8QJcarUAlQMw96WyxH1N8GUMuJ/u8guCOUNb+Kpc/gdqxuy6RxZVDV/4QgBoWSU+M5DsMqRPlLj7kA+sa000qm8zfyNwLYd+cpGRGkTKixFnWbBFDw2EiOatK7RGVZGy8rzFHmvI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1638.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8123e3ac-e49c-438d-525c-08db61e2cd86
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2023 14:24:54.1656
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 74cf14f4-38e0-460b-9d96-c0a51cb4a55c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1703
X-OriginatorOrg: caci.com
Message-ID-Hash: QIHPA2M5H7X7VFV67MLP7FGNEVNR6UWR
X-Message-ID-Hash: QIHPA2M5H7X7VFV67MLP7FGNEVNR6UWR
X-MailFrom: prvs=508067902=kenneth.roser@caci.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD Alternative Driver
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QIHPA2M5H7X7VFV67MLP7FGNEVNR6UWR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Roser, Ken E. - US via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Roser, Ken E. - US" <kenneth.roser@caci.com>
Content-Type: multipart/mixed; boundary="===============3494091506071078711=="

--===============3494091506071078711==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_04654761a3fa418f843847eb530862caBN2P110MB1638NAMP110PRO_"

--_000_04654761a3fa418f843847eb530862caBN2P110MB1638NAMP110PRO_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Can someone help me contact someone at Ettus about the UHD Alternative Lice=
nse?  My requests at info@ettus.com are going unanswered.

________________________________

This electronic message contains information from CACI International Inc or=
 subsidiary companies, which may be company sensitive, proprietary, privile=
ged or otherwise protected from disclosure. The information is intended to =
be used solely by the recipient(s) named above. If you are not an intended =
recipient, be aware that any review, disclosure, copying, distribution or u=
se of this transmission or its contents is prohibited. If you have received=
 this transmission in error, please notify the sender immediately.

--_000_04654761a3fa418f843847eb530862caBN2P110MB1638NAMP110PRO_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Can someone help me contact someone at Ettus about the UHD Alternative Lice=
nse?&nbsp; My requests at info@ettus.com are going unanswered.</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
This electronic message contains information from CACI International Inc or=
 subsidiary companies, which may be company sensitive, proprietary, privile=
ged or otherwise protected from disclosure. The information is intended to =
be used solely by the recipient(s)
 named above. If you are not an intended recipient, be aware that any revie=
w, disclosure, copying, distribution or use of this transmission or its con=
tents is prohibited. If you have received this transmission in error, pleas=
e notify the sender immediately.<br>
</font>
</body>
</html>

--_000_04654761a3fa418f843847eb530862caBN2P110MB1638NAMP110PRO_--

--===============3494091506071078711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3494091506071078711==--
