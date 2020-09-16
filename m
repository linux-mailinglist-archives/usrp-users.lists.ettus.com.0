Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E4026C3AC
	for <lists+usrp-users@lfdr.de>; Wed, 16 Sep 2020 16:27:13 +0200 (CEST)
Received: from [::1] (port=50912 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIYOs-0006Op-2y; Wed, 16 Sep 2020 10:27:10 -0400
Received: from mail-eopbgr1380125.outbound.protection.outlook.com
 ([40.107.138.125]:62699 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1kIYOn-0006Aq-US
 for USRP-users@lists.ettus.com; Wed, 16 Sep 2020 10:27:06 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zmznh2LMytcr1ATxuU1qFhCrVwg5u5XIXkasBn8egvZ0ta6xG8wLLHKJsZ8jZKF7y+wlNG3gixgLrRezc7oMn30T9J7melXLz4B+BD7NKua6naLT/sYM8bheAuyACP8nsm2eGNAsigvzNAtvsw+a1B8UPyfN9f1Jd9LgBdlZh+QbNi2AdBvcKebOKkFSEeiBkGi8OHMFQ+3JtH9a5V0SZDt91tm1Lb4Bk5dmKGVhzaA4e3py6YYIRlZjU7pkNhVms5RzITiUFj18xmhJIn3PbQnStT+t4R/VAyM7W8SeaO1z0gzuktELUWoRegTtSHlSarewc2RRO2wCnLbO4D13nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pwBC/y0+DaJxCYBuqHm1Xc1c92/x9PSQu3AkMfxiedI=;
 b=EKeFbNtpq2gWVMY49D2ReK24GqgMITf9Sl9+1DuWZDNYI1OGLzbipQMudGDUPNUZXmj9NLCfxAIb6gtrcNCSXrbHD2ntGjyR0YFTkv1e7WtV7+I6X4y8sTWpTXesUyJXfEncuZi2df+uf+0xRvc00U0LbFDjJeOxeIgp8BVQtDZbARlwEHJgjscczXOcuM3tkQ3c1+ENA9krHBdc0F+QpWWsU1jxavR9Na7TyVbqfEL+4rubafCTLiSf7AF+kqPlqrL10O2Qo8e0GL04R49FTM4VJhGFzcXmbvrfOsqC4SyuMEG6MvTsJJP095Kj/tjvZbWEuVHEDF6bbqY6c6RlVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pwBC/y0+DaJxCYBuqHm1Xc1c92/x9PSQu3AkMfxiedI=;
 b=FzRMXUGq5iQGcAAp3hs/HsrjbBu6L9M8akE5uXHCuXOdEbbKfS0jPHCzK8DgTkzd+MX+3cRZLsoIh8HE8E1aZjR/pRlHDSWf394XTQRWYYCSrmGqrtS21i/GM/J6LB27rU6lnrBMspvCQCy2gmSvCMebBS8QztAYOMFojsGxnco=
Received: from BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:47::23)
 by BM1PR0101MB1265.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:28::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.13; Wed, 16 Sep
 2020 14:26:17 +0000
Received: from BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a941:b640:686e:a1fa]) by BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::a941:b640:686e:a1fa%3]) with mapi id 15.20.3370.019; Wed, 16 Sep 2020
 14:26:17 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] 100 MSps in usrp 2955
Thread-Index: AQHWi1mRs8aHg56CiEyOlH2FB7lCwqlpruIAgAAERYCAANKktoAAAeqAgAB2ZB6AAE/AgIAABeI0
Date: Wed, 16 Sep 2020 14:26:17 +0000
Message-ID: <BM1PR01MB2577C7017D807AA8E65C014C90210@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR01MB2577AAF159C707359EF8716C90210@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>,
 <10D37CD6-BF5C-4542-BA82-B580AD65F260@gmail.com>
 <BM1PR01MB257750816AB0DD3A15D5D75A90210@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>,
 <5F621B65.604@gmail.com>
In-Reply-To: <5F621B65.604@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.129.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21843ce1-b4b9-4d17-4516-08d85a4c799e
x-ms-traffictypediagnostic: BM1PR0101MB1265:
x-microsoft-antispam-prvs: <BM1PR0101MB12650EF9C27B5B91C9CB9A3690210@BM1PR0101MB1265.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OIUk9ZpCUwB5/jc4F9x1BgSMAjG8jrhtWb3819KmZRugNl8rk5gN0A4IiVF9VBKscv4tH6+E9e5F5oNLQfBsX5KJg8pnfaJuTJ/mQxnllKoqiP5EMXZ/MZ+7WzoR35URzWJm1Pei1qM6JCedeEjOoH0OBjhM3YPyNWOKuOqy8zCnyu1ACFBwqUYZhi91IrMm/D2V1aJbeyM8sLi6Jo2cIhOlFtwRtJGd5sWWe/rmtm8bFim2GhiKzYjiM9aY9ixfudiyDE2S87rwl7kWXhTO6FpVD68kT/gujlzk6Ii6ZSrVqDi6QoC7zsS1vTYXU0HEzxknB+69kkKifyte3rxeRfOX5VR0SmUKjTQb2YNu27qwrdGJajJTYmSNVssrx+5eAfV194oLowa/dE/61RIZVw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(366004)(396003)(346002)(39840400004)(376002)(136003)(2906002)(64756008)(9686003)(6916009)(91956017)(66946007)(66446008)(76116006)(55016002)(66476007)(66556008)(4326008)(86362001)(83380400001)(6506007)(8936002)(8676002)(71200400001)(166002)(33656002)(5660300002)(52536014)(316002)(53546011)(7696005)(26005)(186003)(478600001)(54906003)(45080400002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 3PWNUiWHIuTU8jGhd4HGNwKXka92iBm1wXz54XWMPdA9p8md2WXua9imjDP4eA+/RRj+SRpkfTex/Y1rdGjaG08UDXcxesjiJpYz9dp4Z/BC4RTFS5pOXgSvzAoDxMuo4e9qEP7wey43WK4Gob5+/pXgFgtHp7uGSvTah5QnjEa6NVl+eD3M/uFZH4Wv8NZ4deBKqYsq75Z0q5cayjymPzT8s3mrjAahW3KfzbMhhKx1oQUs589mthe+pORxrZAC4CtDuTkKOcmpS5MVVq0l/INVsuNSBoiC3V07B32hgz55/g+SnvuyQlcKj/JRWZtETRc7COcvOkjwBzy4V1K35kSb94LXT8x791swkFgxTwNB3TvIk5Q5tn4Tf0sd63kM1mnWn0kQr/1XGVefFI9+jbLQrBjJXR3wfuVE8P6jXFJVqX28TOr61/473rGyL2QKLMdiBz3nqyuxhUIG85S6UArSLs8gngDw4ymR+ktPBnSvqJPB87lWvbFbhauWsOdc1ucIAl9vNFNxVyEYmhyLwdPmIfoLTGOLanuNe1eRIVNSU7bYs3SawzsZuWPTg83gKtPBG6QT27GxkHrFMcoZsdbkPazPszkyFgodWdGP/WqiNirr3mXvgue9rb/L+yIDUcO8eAGktP9JM+vpjHIFjg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 21843ce1-b4b9-4d17-4516-08d85a4c799e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2020 14:26:17.6685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CNHVt5c8Ssv3Ly/rCUWPTd1QMxj75O/CUL6BSfdOmqmafGinxTopCl21wFex3SYhQB83wtlI0bA6+6FtOEDQdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR0101MB1265
Subject: Re: [USRP-users] 100 MSps in usrp 2955
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
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4518954910877688661=="
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

--===============4518954910877688661==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB2577C7017D807AA8E65C014C90210BM1PR01MB2577INDP_"

--_000_BM1PR01MB2577C7017D807AA8E65C014C90210BM1PR01MB2577INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Ok thanks Marcus and Martin for the information.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Wednesday, September 16, 2020 7:34:21 PM
To: Koyel Das (Vehere) <koyel.das@vehere.com>
Cc: Martin Braun <martin.braun@ettus.com>; usrp-users@lists.ettus.com <USRP=
-users@lists.ettus.com>
Subject: Re: [USRP-users] 100 MSps in usrp 2955

On 09/16/2020 05:26 AM, Koyel Das (Vehere) wrote:
By integer fractions I understand that to get 100 MSps, the sampler must sa=
mple at 200 MSps and then decimate by 2 to get 100 MSps right? But if I str=
eam two channels at 100 MSps, the sampler can=92t sample two channels simul=
taneously at 200 MSps and then decimate each to 100 MSps I suppose. Then it=
 will not have any other option than using 120 MSps for two channels instea=
d. This is just what I feel. Correct me if I am wrong.


The 2955 has *4* ADC channels, each operating at 200Msps.   The underlying =
X310 "motherboard" *does* support other master-clock
  rates (and thus host-side sample-rates), but in the *SPECIFIC* case of th=
e TwinRx cards the master clock rate MUST be 200MHz.

For many daughter-cards, those channels are used in pairs for complex-baseb=
and sampling.

For the 2955, which contains two TwinRx cards, and thus 4 analog channels, =
the 4 ADC channels are sampling a "real mode" low-IF signal that
  is 80MHz wide.  That is transformed by the DDC in the FPGA to a 100Msps c=
omplex stream which can then be further decimated to whatever
  (integer fraction) rate the host software requires.



--_000_BM1PR01MB2577C7017D807AA8E65C014C90210BM1PR01MB2577INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>Ok thanks Marcus and Martin for the information.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, September 16, 2020 7:34:21 PM<br>
<b>To:</b> Koyel Das (Vehere) &lt;koyel.das@vehere.com&gt;<br>
<b>Cc:</b> Martin Braun &lt;martin.braun@ettus.com&gt;; usrp-users@lists.et=
tus.com &lt;USRP-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] 100 MSps in usrp 2955</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 09/16/2020 05:26 AM, Koyel Das (Vehere)=
 wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div>By integer fractions I understand that to get 100 MSps, the sampler mu=
st sample at 200 MSps and then decimate by 2 to get 100 MSps right?&nbsp;Bu=
t if I stream two channels at 100 MSps, the sampler can=92t sample two chan=
nels&nbsp;simultaneously at 200 MSps and then
 decimate each to 100 MSps I suppose.&nbsp;Then it will not have any other =
option than using 120 MSps for two channels instead. This is just what I fe=
el. Correct me if I am wrong.</div>
<br>
</div>
</div>
</blockquote>
<br>
The 2955 has *4* ADC channels, each operating at 200Msps.&nbsp;&nbsp; The u=
nderlying X310 &quot;motherboard&quot; *does* support other master-clock<br=
>
&nbsp; rates (and thus host-side sample-rates), but in the *SPECIFIC* case =
of the TwinRx cards the master clock rate MUST be 200MHz.<br>
<br>
For many daughter-cards, those channels are used in pairs for complex-baseb=
and sampling.<br>
<br>
For the 2955, which contains two TwinRx cards, and thus 4 analog channels, =
the 4 ADC channels are sampling a &quot;real mode&quot; low-IF signal that<=
br>
&nbsp; is 80MHz wide.&nbsp; That is transformed by the DDC in the FPGA to a=
 100Msps complex stream which can then be further decimated to whatever<br>
&nbsp; (integer fraction) rate the host software requires.<br>
<br>
<br>
</div>
</body>
</html>

--_000_BM1PR01MB2577C7017D807AA8E65C014C90210BM1PR01MB2577INDP_--


--===============4518954910877688661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4518954910877688661==--

