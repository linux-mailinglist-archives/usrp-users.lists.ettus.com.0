Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C60D245191
	for <lists+usrp-users@lfdr.de>; Sat, 15 Aug 2020 19:16:59 +0200 (CEST)
Received: from [::1] (port=36628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6znb-0005Vl-8J; Sat, 15 Aug 2020 13:16:55 -0400
Received: from mail-eopbgr1390091.outbound.protection.outlook.com
 ([40.107.139.91]:23168 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1k6znX-0005Qd-F6
 for usrp-users@lists.ettus.com; Sat, 15 Aug 2020 13:16:51 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nlnbaMykTY7++qsKQ52YxsXWqOwGXUTjvpWN6TpXNkqtKswt9LLNLVvJz5L/DQv6frKp4c1RVck4Iv3Ap5cEGlusBiRmYfoxvuVOzv/36hAmJ+MGm0vrYekvJTFVFQIFymLfzzEDjBS2PjFXif8yvQadtUEXs8eL25hmdCiZnZrF/dJjsa31NeMVx53J7YzQwoR+GU6DGEAZA6PzRcbkuGk4QbIyTjUz6KBZuQC9iSLy5l1aahAFaUaypU729WNKbPJ4lO0kXTjwjl+LlEJsBZEVSPFOa5J77BWf9EAs2qUnq0gCqLZWptjJLORsn2bxMCrHdYs2q6goExsmwolqjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tp7U/LdCOKUmxLJ0zmsP6vWb6DzaRL1kw7WUQ0glapE=;
 b=Ges+HQetF0KeuFPp5Qhq56VZTKi0J/sEbSRc+NV7sRqIDGMDyR+jNeq0Uap19TizeWuBx0Ul/K8lVYTMh1+agPWqAi8vXo5aAj74Z5wSK7jvJ+CafWyuVzBbh33J9pZx3wlDH6TBQ6Fl30rrZmcrOyza4L65XA9LEjioKYNEtXFpMwcVpWYWzVjmoUP91zaGFT6NfbnlsQLi+4E3EJs8Zcyyc71RC1n38m4MEgaaa+/XERI5dEbVdNxrbX6Q7h3elgyHUDt/XzcM/Yzn7lI/leZvMpG1Ri0ZuwYVCtRlM7Y/e7iYmeLR8WeWPHj/940AntYmw9TcykEf4VOtxXAPeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tp7U/LdCOKUmxLJ0zmsP6vWb6DzaRL1kw7WUQ0glapE=;
 b=kkyhLxP+wQUf6EA3Lv4kxlpSib2VrpqM8b74ggKy3ZsPFV43/RLn/Sh9nVe+II/dK9s/HMBrjXGDQJQTXuU1nWl7B6fAaX8VjyHhEVOYM94My/i1enbWDlAUxqxT/H/PFx3vh1O9FiG9Jxd8iwqfzsouB0Yo6kLcyQ777qv0abU=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR0101MB1786.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:1a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.18; Sat, 15 Aug
 2020 17:16:03 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3%6]) with mapi id 15.20.3283.024; Sat, 15 Aug 2020
 17:16:03 +0000
To: "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: Incorrect data from usrp 2955
Thread-Index: AQHWcybNOTailyD99kmbADMt8WJI1A==
Date: Sat, 15 Aug 2020 17:16:03 +0000
Message-ID: <MA1PR01MB25885B004EA06FFE0C1B69DC90410@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [42.110.154.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 00267bdb-b0d1-4198-f599-08d8413ee3d5
x-ms-traffictypediagnostic: MAXPR0101MB1786:
x-microsoft-antispam-prvs: <MAXPR0101MB1786AB2255B52A5687A21ADC90410@MAXPR0101MB1786.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gFufSZ39fUX2oCzjPQRazDMB7m4kzKj5/p9iNTWFlm37C6lkMQXWpWUysgyn170rpSSMDzCjPVB7bqNIrkumeov7wNmCjY0mU8ZVb0rLoYh+sgfkEwY/CO/FibPhgalKBoG9CBYP6pdi6/gGDKn3VbOWnG47PJ1jXDa8AS2wGqLquya82A0wtKDIwNdJLPoTwKRx5iKxe2D64ZlshVdzNxMaYOjY39Y4BKiNbPziyOFU9HB7pP23XFgZ8dxUN/ZTmWZbDU5VWwbbocgCgSHwW9SvnXd/RqYjDXtztsNy7mXWq3TaLvfEeDDv8BIXR8awO2hmlhNfE6cafc0iN3vbhXyYioGE1iHJfMZcHxnP9/8i2UX0Fq+Ww6aJgPferV//0bhps8cuP9exMCNISYw5m1TR7qKFkXZADyrjqzKimigmN6EdJ2CU3BUTtsScyAt+ENn8h/jOkSuSOHdEez/1RQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(39830400003)(396003)(136003)(366004)(346002)(376002)(26005)(5660300002)(66556008)(66446008)(86362001)(45080400002)(66946007)(64756008)(66476007)(6916009)(2906002)(166002)(8936002)(33656002)(71200400001)(76116006)(83380400001)(52536014)(7696005)(4744005)(478600001)(8676002)(6506007)(4326008)(316002)(55016002)(9686003)(186003)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: EPevBXVdzn6SDrYFF5S8G5HHDGZeE0Z44vRAvCkF8KColRGMa3NR9qItwphfpFk+XVm97qJzzvsyhxcDJCgR71PnIas8bfCIORi+lXAt0XlEi6cykXsKZB0tfzlju+4/ZHETeaUXxp/Ellm6uwOLIdpXjji3RYkmArJhqN8Ton2rVDWPgGx2bY+TYb1lt2O9HRxurIW1ETAV2+5TaOKElwh5dEBPJeAlJAm2F+ucngbCJkqxXEXGjn3vy8fq8ibCvEJZJWR2PQP8IDbrKoSa6ZFJa/p/oPm5JwPskHliLP3ObStyCB4rUlLSQaGrqmWURVF8ZdCgse3+Z8gwUl0PwH5Q+E7DGPW87W8ud+iqcau3uBweD2F8vvgAvf/4uvt/nUHOntw73Do1OPlcMH0suXHLU6ojoz+JLRb9gNBe4nldPQT0Y0hglJq3z1nkxG3yIZMPogdFQ2OCVPK3e8cZTBfllQX5BBiqs1iePjY246CONee2j9vaPnEAmoUFQ5sapDRbn4fTdBo7a6nkzMto7fUFn6gRI7IvKecrW+aNK5no5YdUZIq19DyoFBakDjRv0Anlnbr3T/5tYuJOM8Cjc8ecBHm9++9WeQhOJ2+iPA6xkiY4JItM88AgSUspGPQ4c3wSWdCmHCatoFR+R/PW1w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 00267bdb-b0d1-4198-f599-08d8413ee3d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2020 17:16:03.8253 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pz4fxDJTe15QNO3GmgTDL7HSQpk0hyXYcHQS5XReBh4OovEwzbsmEN8IPvdvvBYQZ8pBwS1fXKtcyRpK1gCsRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR0101MB1786
Subject: [USRP-users] Incorrect data from usrp 2955
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Koyel Das \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Koyel Das \(Vehere\)" <koyel.das@vehere.com>
Content-Type: multipart/mixed; boundary="===============2806621079592090550=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2806621079592090550==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB25885B004EA06FFE0C1B69DC90410MA1PR01MB2588INDP_"

--_000_MA1PR01MB25885B004EA06FFE0C1B69DC90410MA1PR01MB2588INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

We are using USRP 2955. Something has gone wrong. Before we were getting co=
nstant phase difference across channels for limited bandwidth and with time=
 when we split single antenna signal using splitter and fed two channels of=
 USRP but now it is not doing so. This happened on Friday that after gettin=
g a series of correct results : constant phase difference across channels b=
y feeding signal using splitter as mentioned above, we suddenly started to =
receive wrong data: random phase  across channels and with time using the s=
ame setup with splitter. The thing we did was setting gain to near maximum =
and receiving 100 MHz sample rate. But I don't think amplifier has damaged =
because in this usrp we have four independent channels and when we connecte=
d the splitter to unused channels then also we got wrong data. What can go =
wrong that USRP is streaming data but phases are wrong? What do you think? =
Please let me know.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>

--_000_MA1PR01MB25885B004EA06FFE0C1B69DC90410MA1PR01MB2588INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div><span>Hi,<br>
</span>
<div dir=3D"ltr"><br>
</div>
<span>We are using USRP 2955. Something has gone wrong. Before we were gett=
ing constant phase difference across channels for limited bandwidth&nbsp;an=
d with time when we split single antenna signal using splitter and fed two =
channels of USRP but now it is not doing
 so. This happened on Friday that after getting a series of correct results=
 : constant phase difference across channels by feeding signal&nbsp;using s=
plitter as mentioned above,&nbsp;we suddenly started to receive wrong data:=
 random phase &nbsp;across channels and with time
 using the same setup with splitter.&nbsp;The thing we did was setting gain=
 to near maximum and receiving 100 MHz sample rate. But I don't think ampli=
fier has damaged because in this usrp we have four independent channels and=
 when we connected the splitter to unused
 channels then also we got wrong data. What can go wrong that USRP is strea=
ming data but phases are wrong? What do you think? Please let me know.</spa=
n><br>
</div>
<div dir=3D"ltr"><span><br>
</span></div>
<div dir=3D"ltr"><span>Regards,</span></div>
<div dir=3D"ltr"><span>Koyel&nbsp;</span></div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB25885B004EA06FFE0C1B69DC90410MA1PR01MB2588INDP_--


--===============2806621079592090550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2806621079592090550==--

