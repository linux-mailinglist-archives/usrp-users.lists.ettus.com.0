Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 764781C4997
	for <lists+usrp-users@lfdr.de>; Tue,  5 May 2020 00:32:05 +0200 (CEST)
Received: from [::1] (port=43684 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jVjd5-0003Ms-VO; Mon, 04 May 2020 18:32:03 -0400
Received: from mail-eopbgr770052.outbound.protection.outlook.com
 ([40.107.77.52]:10758 helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <minutolo@caltech.edu>)
 id 1jVjd0-0003G9-Sl
 for usrp-users@lists.ettus.com; Mon, 04 May 2020 18:31:58 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TxTEHjKNUMG9XYtiJNOs0H0v3GDJEPoNpzo3Q0vROjFhHW8wSWSLvxxuZ0W3TD7kcq2yi9EhOp8+05yeaV805rS+OstqZefzuwJXOtDD2IWu+3ERnS4SjzNvXlE+jTleAo6AAfmbkDwdN70XpHFlvlN9+A/dvQZCfHz8VQmGf+Fchv5pOtR3cEUPDWVNSxl3YphfJpkuWJbyvwADQ+f72Xs+o2h8/Pu4N5GbrIrqm6T4jkbhK3KIhpd/Jrsjbz3Hje+IhaXCd2IYw0VkMun3F0/EYa6EfEXfGu1vAPI4/+WSTYs64KSo8LDB7VQYwn+YRepFMAyTmFZztp0Cd01oUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ljriTgY6/O4+qpC+GdXDtsm6VBoOVRRBPvc6tKLdAsE=;
 b=Uv7ZiZkEoHERHBgtsD7J89Ddyi+g55aurwUG6C5uFIBEU8kmorN21BqDMuLQtuwwufjtrIbs0YYUZrWwj6/UXvp91mJ6mjR7xCQ/m/xpFC5PUAJoQDm1GCUm6XiF2zTnKDj1RkL9BF6WlvVT7noKWVP1COeiJ3n23JTUiQlOnNjNvX6HuoYR/4TwEGSW4DPJYvoFvVh+jbEecnVfhbrNNn9g6yLQLnKHRsNwfJEjkLOPaKPBOT6OyyUpDZeb6an4Pos6Ibm7a31wPNeqCrWVjt/85/BW6twCZVk2vgDUEOSvm93SVJ6wAJec+6WHHhJnaCFS+L+oPlGh4I/MfhCfsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ljriTgY6/O4+qpC+GdXDtsm6VBoOVRRBPvc6tKLdAsE=;
 b=JSx+IbXGu3lpwtDdNPGTmTeF3CHIfCcDQFvFwhyUpsFQghZm9wIGBAIGtLUW0wVxLok/MkZaccJtgDrQ0D4Ug9qrIOJPvUSiagB0/XXV+h/HxM5SSSelYgvLw8VtwSf6f/Wb+Z4+wwpnvMPhL+MPnLnutytIOI9gdbjtgEQijmA=
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by BYAPR03MB3893.namprd03.prod.outlook.com (2603:10b6:a03:62::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.27; Mon, 4 May
 2020 22:31:15 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::74ee:3c4f:9e64:b4ae]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::74ee:3c4f:9e64:b4ae%6]) with mapi id 15.20.2958.030; Mon, 4 May 2020
 22:31:15 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N321 Tuning
Thread-Index: AQHWImO5bqbDKFfOP0CAprCxReWnHg==
Date: Mon, 4 May 2020 22:31:15 +0000
Message-ID: <BYAPR03MB4678E4F36A6F1AC0106B945AD3A60@BYAPR03MB4678.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=caltech.edu;
x-originating-ip: [2600:6c50:4080:32:414b:306:fea:8e7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 48485a48-eb9f-4fd7-b07d-08d7f07adb96
x-ms-traffictypediagnostic: BYAPR03MB3893:
x-microsoft-antispam-prvs: <BYAPR03MB38935A66D8410489B871AB1DD3A60@BYAPR03MB3893.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03932714EB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CVwwMF9WWykvj3RcslW7z+AqR+sQqEqHgUArgIOFVR+NR5nS936OByGzVaAeLx3Hz5Ie7fOkeFfZI263KgOas5JEtxCBV9W8MdMETo6lZsJni0X+/R6Rtz8STY6CKnzC7c7rlGnapEVWTEfYuqNZ9Yr1QVrpyLc3Lnmg4KYp5n4mOEBTHCY3/B9f+O541Hkw61yOSkI5auxpGv0T28CO0OH9VWDiaQxvov/LVhIXz8y3Jy6P+a1DmlG/qNxo6Vjtl2g0Wa1pblal0HkqVciLWOL2eBNMMWpaiS5rkR0XqRSzUJm+y1PAdqTBKjVwKlDkZOn3iGYv9EDkaXqGuW9ZQ8G2oDJmkr/syPrRdlP6oCvh3gS0r22PePd9tjnHwaRmxhAiw9dmq2i2+BBq7Nvpe4T7OlrfoYq49bbrEUXkcZCvwvI9NlCDY+Vv6OuttiazKSYDkkS+HcJwwbogCFttsOr1PU6TCDA0aL0UaPYchjrCpySezGgDXZmWuA1eGIhxlcnvipACkD6aytUVZsDlAA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR03MB4678.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(376002)(346002)(396003)(136003)(39860400002)(33430700001)(76116006)(71200400001)(7696005)(2906002)(75432002)(186003)(64756008)(66556008)(66476007)(66446008)(7116003)(33440700001)(6916009)(478600001)(6506007)(66946007)(19627405001)(4744005)(5660300002)(316002)(786003)(8936002)(86362001)(52536014)(8676002)(33656002)(9686003)(55016002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: hVF14tFkoCERXA5wckGYTvTXI5utfvPToeV5AL2bB0fz1zeCkbRw3pb7dFjolR9Re0X/RqBY9GyNcYD8vLn0SFAfGpreUKPNUGOupScSkd92S+Q/VD4Lo9c7lruqsSu5dz2/tGKVfIry++JRcwxJMXjLh4JJqdTOpIO3jgjI+4W4nO956EP3xVUknG1aRFjIsOobh5UQwNHD5AAoWyRO81yt31RnX0Aj7tomSnnLZ8F5mUsg5HJFsOP0E7/gjjUC7+TSincybU9duEyMdJ36/L1FqzqUOQH5jbwc+AkuT5tsGj8qBwliBrI+kHNCywF53UmNEkuzYrFhuQShiyMG7JHmYt8t5dgeWk5JvbQ1KWw6q8PqGB5YVjKnLHMvnecJ6gZUwm1ERvfam05geclSf1pePJlWHeK8pS3KKXJj06JVr4FeXRH2gL5tCTNNU5n+aAqqcZUIxhx2lVccjVq4HCRIyZeKKIbe/Zdh23nZCtGLcEr4+pMb17qJOpi9r1YK12oSGg1zSFqRtyPrU6qxKsqMsz9IiyyDkyNmExK8EJhryTjomMn46DQlJ52c3AHmrcaysPeKtasOfXWa8q7xD2Xnb5i7fIeXnxUHZS8GFqCQZjJW5F3iEkWQHBpcWv3+NFHd1cE7rP9hZJOTh8Agmo6PRRHF/gbeA8PFJk12e4XkGH74y5q81mTOr5/lcQSo75LGXiX+kYP3k3HhB1m2XVPirABc4Sd2WrtR5QTGkjJg3PQtrzj/R3DFm45KpHeYHqQ2rOgrkzlVLmwjFhvEvZ0DRnkYkkk1DfO3Z2VLOdg+GM+z7airKoYIWB9yj7eklAA4KkWxcveP2SBgvVXjYMqHAdppZKY0xICYX5m2ZLs=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: 48485a48-eb9f-4fd7-b07d-08d7f07adb96
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2020 22:31:15.5487 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c37IW7QVJtYiTWVlI4HIjOvF19T1SSOiGFu6++km4BKjUehmKnooo84LrrD5W9pO/c2ZBzHcEZ9xMZczBFtDhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3893
Subject: [USRP-users] N321 Tuning
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Minutolo, Lorenzo via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
Content-Type: multipart/mixed; boundary="===============2447982933812234825=="
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

--===============2447982933812234825==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB4678E4F36A6F1AC0106B945AD3A60BYAPR03MB4678namp_"

--_000_BYAPR03MB4678E4F36A6F1AC0106B945AD3A60BYAPR03MB4678namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,
I'm trying to tune the TX channel on the N321 to import the LO from the RX =
channel. I'm on ununtu server 18.04 and UHD 3.15.
The command I'm using are:

On the RX side:
uhd::tune_request_t tune_request(2e9);
tune_request.args =3D uhd::device_addr_t("mode_n=3Dinteger");
my_usrp->set_rx_freq(tune_request,0);
my_usrp->set_rx_lo_export_enabled(true, "lo1", 0);
my_usrp->get_device()->get_tree()->access<bool>("mboards/0/dboards/A/rx_fro=
ntends/0/los/lo1/lo_distribution/LO_OUT_3/export").set(true); // I want to =
export on port 3

On the TX side:
main_usrp->set_rx_lo_source("external", "lo1", 0);

The output port led of the LO lights up correctly however the input LO port=
 led does not light up and the channel is not tuned (I don't get any signal=
.)

What am I doing wrong?

Thanks,
Lorenzo


--_000_BYAPR03MB4678E4F36A6F1AC0106B945AD3A60BYAPR03MB4678namp_
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
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
Hello,</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
I'm trying to tune the TX channel on the N321 to import the LO from the RX =
channel. I'm on ununtu server 18.04 and UHD 3.15.</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
The command I'm using are:</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
On the RX side:</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px">uhd::tune_request_t tune_request(2e9);<br>
</span>
<div style=3D"margin: 0px">tune_request.args =3D uhd::device_addr_t(&quot;m=
ode_n=3Dinteger&quot;);<br>
</div>
<div style=3D"margin: 0px">my_usrp-&gt;set_rx_freq(tune_request,0);<br>
</div>
<div style=3D"margin: 0px"><span style=3D"margin: 0px; background-color: rg=
b(255, 255, 255); display: inline !important">my_usrp</span>-&gt;set_rx_lo_=
export_enabled(true, &quot;lo1&quot;, 0);<br>
</div>
<span style=3D"margin: 0px"><span style=3D"margin: 0px; background-color: r=
gb(255, 255, 255); display: inline !important">my_usrp</span>-&gt;get_devic=
e()-&gt;get_tree()-&gt;access&lt;bool&gt;(&quot;mboards/0/dboards/A/rx_fron=
tends/0/los/lo1/lo_distribution/LO_OUT_3/export&quot;).set(true);
 // I want to export on port 3</span><br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px"><br>
</span></div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
On the TX side:</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
main_usrp-&gt;set_rx_lo_source(&quot;external&quot;, &quot;lo1&quot;, 0);<b=
r>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
The output port led of the LO lights up correctly however the input LO port=
 led does not light up and the channel is not tuned (I don't get any signal=
.)</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
What am I doing wrong?</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
Thanks,</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Arial, He=
lvetica, sans-serif; background-color: rgb(255, 255, 255)">
Lorenzo</div>
<br>
</div>
</body>
</html>

--_000_BYAPR03MB4678E4F36A6F1AC0106B945AD3A60BYAPR03MB4678namp_--


--===============2447982933812234825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2447982933812234825==--

