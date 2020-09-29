Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 505DE27D4AC
	for <lists+usrp-users@lfdr.de>; Tue, 29 Sep 2020 19:43:56 +0200 (CEST)
Received: from [::1] (port=54884 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNJfN-0002Dj-5t; Tue, 29 Sep 2020 13:43:53 -0400
Received: from mail-bn8nam12on2047.outbound.protection.outlook.com
 ([40.107.237.47]:4833 helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <mark.koenig@iubelttechnologies.com>)
 id 1kNJfJ-00026l-5R
 for usrp-users@lists.ettus.com; Tue, 29 Sep 2020 13:43:49 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hgJEiuon3XoeLA2rFh14LBEivvv/8rhXsgHTAX6yuKAdeAY66x6GsdD596w/wo6ip2eUycGM6n+CZ27hkTzW8Lg9r+1QgO2Kz4Kd/QFTAebPKkCSE13DZcFvN9Gm59QkutEIruro9FRspXhWHdtTi3PLooOF8nrOTTT+6PyaB+V9dqhL0AQmF9rxFk3HSfa9+KotoN8iMeYBd26Py0EGwHEn5pPkYgEYSUyp8DCM1XnM/MQlIxuc1XzM+slGeA96/ysogkwlf3xsZtJ2HS95E8Ii8IP9e5WgP6j/FfnMIZ8+7Ay8Ud3j2t4yDD3JWXkEUMzfXzvGjgNagQlaVsKm8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PZtYrX7SReJPlqfBSjwAjsh8exybuQQQApvkBRngX20=;
 b=GY6l3PjE17SXbGk+V3DcvOLJ19vZg+EPJcf4stJLAmosMC8+AwNn6aLs23RoRzETEZmM4MsRpv7YyGdyTG/uMNJSz/jtkgac7YT3Gv3eJcqDKhQOtqg1ieW9m9CBz0Ywt1Km5HKiRlXKoXIuvLDbCpuxQd3TGyBOGXOOZZJYhCFyc3aMgYcI5O5rB6tynZVbRLonGHlgN45A8c2RoCSeCpy7G08WFY+wEPWKHPuSfnBN4UdBjr25sEJq6LM5KS7v8e0sLY1+bR3i3h/yCHgS/IZSAD366VUgRHTgXJQYpHiQp1SwFeP9twEOvHPg/s+xEZIRWLId66Ek+9S3mbpK3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iubelttechnologies.com; dmarc=pass action=none
 header.from=iubelttechnologies.com; dkim=pass
 header.d=iubelttechnologies.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG330411.onmicrosoft.com; s=selector2-NETORG330411-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PZtYrX7SReJPlqfBSjwAjsh8exybuQQQApvkBRngX20=;
 b=dZRhexf4ooKqUAOes2uIFUIZQ3Y1iLEx8HeRAACfxnJZOSdg1/2lGS59mDJEMBxx1gACnN0b7ARZFQUkD3/g3OLnwlc7y2MbXbBzMlMXlGuXkCXLYrzcRzmnMwrpPqBdCDAnTlWW6t6dcDHGrNc5lCUdXe4rKNN68X0JSEzblHM=
Received: from DM6PR12MB3067.namprd12.prod.outlook.com (2603:10b6:5:115::10)
 by DM6PR12MB4731.namprd12.prod.outlook.com (2603:10b6:5:35::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.25; Tue, 29 Sep
 2020 17:43:06 +0000
Received: from DM6PR12MB3067.namprd12.prod.outlook.com
 ([fe80::bd20:425d:d437:a1b1]) by DM6PR12MB3067.namprd12.prod.outlook.com
 ([fe80::bd20:425d:d437:a1b1%4]) with mapi id 15.20.3412.029; Tue, 29 Sep 2020
 17:43:06 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: TWINRX Gain
Thread-Index: AQHWlodZUI4MTk+k5EORf24LkVKWzg==
Date: Tue, 29 Sep 2020 17:43:06 +0000
Message-ID: <DM6PR12MB306787C9B650A03D7A2CAF878C320@DM6PR12MB3067.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=iubelttechnologies.com;
x-originating-ip: [72.9.220.173]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f0874123-7065-4296-8872-08d8649f1f9f
x-ms-traffictypediagnostic: DM6PR12MB4731:
x-microsoft-antispam-prvs: <DM6PR12MB4731F8419E1D015A0E6AE5338C320@DM6PR12MB4731.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: za6AnN/y0DNPC4/PTQAkYUl5WhiiFJHUQ0HxJmKdYIe/jFOjn5+v5cb+BYVPsIYpwZdZZ1ZkrhypS4uykyzipBwnEdj8VWOuWzOp11xc+fBs4GvNw8k5x5g5SmPrwlGnNfCvswFdx1hemecUkw8fwx2tnvF8wEirjnMWdyu5Sxo2h+Y4jCSuHQFLfdgOtq0Bvpo/sgfF1/3AobfQOHk0iDnrn+kzpl/IkdCNb6peQpTWwV5mwC87MK8ZAArdEiFkwk/QajPK4487SCWN+L1PV7V9ZL0yT+jhw8lEO1bqTFQvPkMY92eXHz6iRDcpWkMyH6IkpRzpWlQGZXFLzczlxx4k5pPKKRL9S00a/LA+Q1lCaJzl2EyhXeGjGkWx0o73
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB3067.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(366004)(346002)(396003)(39830400003)(66446008)(19627405001)(8936002)(86362001)(8676002)(7696005)(478600001)(558084003)(44832011)(71200400001)(6916009)(6506007)(33656002)(316002)(52536014)(76116006)(64756008)(26005)(9686003)(66556008)(55016002)(7116003)(5660300002)(66476007)(66946007)(186003)(2906002)(3480700007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: PbaQV1g9UKACkM3cecHd0XWJ3NQ2mqKiaD5BQKtG3QEvmlPDGgHcknSGFzJww/WRP7RNyMSdNmk7C24ptjOz6BsMyFwLQktc4JsEV11WxbVwnhK9BVpdowcDJ02Xyivt2wsutiUc+sHwttBS1eOlDqmHL1jYvvX4fffUoKOSSQ2DcSpkKnP6jFXYe4doGMESjYxtOHTnwieyqc0hir/ZOcxLXEqOoo4fYB+1kH+W3gXtj0wil8CY1AL6DLuL1/YeOtnhp+etnfk/A4emyyihlfW4pf2xgbJhX1ldaUclsbIoq62IceZKAHaBvwOBpQVAhfWXyw9FZhSkAnCrmZLrJSwa4VHMG8M+4D6xgC1BVQj6xES9gQC6TITYP8VM1uczf8qrQIpSSFvjY3W8ulgNv/21u6iRNWJwc2U8zeWMa8LyAnnGi6jin52hRZ6kWC3+ZXDIwthwuxmv5Tw/Uz6qyc42FwfC3DPCO0OtTBcY2dAXDFMNwf71OSpVmDlktrSIN0qNhuXeXHFL+S6kZd2/Z6uvWIWwFr2A3o5BhllXOc3PJ08cpwHttAy2dwjwOqKeDL2dsE1Tk3VLMNmYrlVWjNWkbkqAoZCdHBuZPUFL6hRKfSjUPPil4PG7FeyZ2bWleyJhP6+gpmacVEYpbcsmoA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: iubelttechnologies.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3067.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0874123-7065-4296-8872-08d8649f1f9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2020 17:43:06.5322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a86298a-7d59-4320-a7f5-798264e69360
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2hmWwhO3YAP6XzEYqMKHRNqQ90u3wMe0urMImHw4mmLlKrDhKETaE25RXvCkREoE/3Rct7D6OxNrPaoETq/Dt5NR9cyUCVkdxjuUuIyZvCP+SmaE3DEMm2AnrkDhStFz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4731
Subject: [USRP-users] TWINRX Gain
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
From: Mark Koenig via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark Koenig <mark.koenig@iubelttechnologies.com>
Content-Type: multipart/mixed; boundary="===============8024505271812379536=="
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

--===============8024505271812379536==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR12MB306787C9B650A03D7A2CAF878C320DM6PR12MB3067namp_"

--_000_DM6PR12MB306787C9B650A03D7A2CAF878C320DM6PR12MB3067namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

The TwinRx daughtercard identifies as having 0-93dB gain range.  Is this tr=
ue?  If I dial in 90dB am I truly getting 90dB of gain and my incoming sign=
al is amplified that much or is there some sort of offset and the gain rang=
e is something different?  I believe the UBX-160 offers 0-31.5dB.

Thanks

Mark

--_000_DM6PR12MB306787C9B650A03D7A2CAF878C320DM6PR12MB3067namp_
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
The TwinRx daughtercard identifies as having 0-93dB gain range.&nbsp; Is th=
is true?&nbsp; If I dial in 90dB am I truly getting 90dB of gain and my inc=
oming signal is amplified that much or is there some sort of offset and the=
 gain range is something different?&nbsp; I believe
 the UBX-160 offers 0-31.5dB.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Mark</div>
</body>
</html>

--_000_DM6PR12MB306787C9B650A03D7A2CAF878C320DM6PR12MB3067namp_--


--===============8024505271812379536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8024505271812379536==--

