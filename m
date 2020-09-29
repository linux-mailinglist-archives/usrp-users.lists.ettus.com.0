Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 550AD27D5CA
	for <lists+usrp-users@lfdr.de>; Tue, 29 Sep 2020 20:30:09 +0200 (CEST)
Received: from [::1] (port=55304 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNKO8-00072p-DS; Tue, 29 Sep 2020 14:30:08 -0400
Received: from mail-mw2nam10on2071.outbound.protection.outlook.com
 ([40.107.94.71]:22497 helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <mark.koenig@iubelttechnologies.com>)
 id 1kNKO3-0006mI-Kf
 for usrp-users@lists.ettus.com; Tue, 29 Sep 2020 14:30:03 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n+v+VrXeREJSMsAd8ufrXPqW+7IMTTeG/8QwUg8P227AgtjbISNSCU8ZbzbwmQFTri0o4qmf+N5dA4td+O81CG+pNmXob0yaYD3yv5RSqbqo6Bun5HUEVd8yA7Js6P4HXNLTOvcsa3w9HZ1cW7d+9Hot3zF2POgENb/jmOJWEC8J2/MIU2PvWQAK7w7Nz17tacGkNSgAEvtlB/3YEWDGIeKeVuoy/c5WPUUefn+eCVqMqx7L3JITCaj2WLd4kEkN4xMEd1qY4bn5dbFNxF6wLvpsBOr4x6d/KR97SZejgsi8UU4wrjlqciO8e3kioz329LPMDL+uACG41I1C7lBiEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y9VG+Mo/ugm3MkYUlegSB1wvx4JYXMgc3GYA6J9VYaM=;
 b=AlolT5HcacdGbMazVSlfFlFdVIxM+H/YgCcI46TD3x/u5RJeO5rAU68Ff3iQYYenOqfndjRt02rJzMWcnjiT5FKTxGYpFXUAwDvEWzWAyHx0iLkOLvtvwSWz7u5alh6T8K3efH/AbBDJsGgSkuMzVZTE3MsruL+Kuuq85ReuFJ4vYC0t3rLedCkP5xRAwin0nJtPj5QWzGvwA3VSaMO79sVXp6Z5SbPrdZXdOSbkFccJwfVTM2iewRhcsX5o0paIEG8VxUTivFJAPhnZUMRDdWqd2qqraevHWdkox6gMaUQoKxuPnv+VTppKW+GG03BuK9FxsxtgER0FlW5tvqJzzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iubelttechnologies.com; dmarc=pass action=none
 header.from=iubelttechnologies.com; dkim=pass
 header.d=iubelttechnologies.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG330411.onmicrosoft.com; s=selector2-NETORG330411-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y9VG+Mo/ugm3MkYUlegSB1wvx4JYXMgc3GYA6J9VYaM=;
 b=Eor6csDkU9oSD9I/WkloTLJBR1dnPgYOnalBi0K0m+2+x39ER44qIBQFk0qHFP8hmeDhXU6itjiZeQtgw0VGoVqYT9GdJVXs/BHZjZy506UXJ3YELwxwcu5XnT35XpnatnNS2H4QBjkULl2srp1aKdmRUH/8f2w+ENOsh3pIjtU=
Received: from DM6PR12MB3067.namprd12.prod.outlook.com (2603:10b6:5:115::10)
 by DM5PR12MB2455.namprd12.prod.outlook.com (2603:10b6:4:b7::39) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.22; Tue, 29 Sep
 2020 18:29:18 +0000
Received: from DM6PR12MB3067.namprd12.prod.outlook.com
 ([fe80::bd20:425d:d437:a1b1]) by DM6PR12MB3067.namprd12.prod.outlook.com
 ([fe80::bd20:425d:d437:a1b1%4]) with mapi id 15.20.3412.029; Tue, 29 Sep 2020
 18:29:18 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] TWINRX Gain
Thread-Index: AQHWlodZUI4MTk+k5EORf24LkVKWzql/5TUAgAAAQImAAAGxgIAAACuGgAAG6YCAAADzxg==
Date: Tue, 29 Sep 2020 18:29:17 +0000
Message-ID: <DM6PR12MB3067DE67D641B09806F8411A8C320@DM6PR12MB3067.namprd12.prod.outlook.com>
References: <DM6PR12MB306787C9B650A03D7A2CAF878C320@DM6PR12MB3067.namprd12.prod.outlook.com>,
 <1B286BD5-53D8-411C-84CC-0E0B6F2962ED@gmail.com>
 <DM6PR12MB3067482AEC0E9D141AC2FE2C8C320@DM6PR12MB3067.namprd12.prod.outlook.com>,
 <5F7375B7.60104@gmail.com>
 <DM6PR12MB3067CA6916624B9C2B8528328C320@DM6PR12MB3067.namprd12.prod.outlook.com>,
 <5F737BA7.1050009@gmail.com>
In-Reply-To: <5F737BA7.1050009@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none
 header.from=iubelttechnologies.com;
x-originating-ip: [72.9.220.173]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b5b86f46-ac20-445c-da02-08d864a59389
x-ms-traffictypediagnostic: DM5PR12MB2455:
x-microsoft-antispam-prvs: <DM5PR12MB24553620587E81E4BCE5F6BF8C320@DM5PR12MB2455.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M+Se7mBIhA6sJVvmIdS7YWaBfPtN7+dl8vmiIlFJrK312ve8CTYRYAH+lTswh6D/xvYeCfDjMyKWzihlYWeRmOfG1AS/xyTMd73Sc/07JZVqiwM9QNEuWssKb4dA0uKTHqvg5ckX90NaqXRb5Ek+B9FsxLq40tDl9IP9DpGtUPVV8jiYV+KiZfIwBN4xpIsEwY7osNTnjeqmxRC4kW1N8VfssPJQcssxnKOgKKtb43YQvZf4MDI5w37v/kOoj46A/NOcZ2r/fNVFuasRP/3dHyVRK+pZ8jSa9jKNfqIPOOwBYQW6YV5qzYXryBKmNZWDDbyH+GqNxywO1H/ecPMB8cojqh7DLw3/FM5qDSfL77MuevxRfyApLx9dUC3uR3i4C91RmJTc/5R2vDo7kGyM2XSLTeDkKu9l28g4tcd4tI/Sw8fVjXiKKqUADJQcypax7wXN5yVfNMi6BPD9GdujUA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB3067.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(396003)(346002)(39830400003)(366004)(33656002)(8936002)(8676002)(7696005)(71200400001)(66446008)(64756008)(966005)(44832011)(478600001)(2906002)(66556008)(66476007)(83380400001)(66946007)(5660300002)(76116006)(186003)(86362001)(53546011)(9686003)(55016002)(6916009)(26005)(4326008)(19627405001)(166002)(6506007)(316002)(52536014);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 2kwk3o240a/u+/TePyhDnhS23mU6M+1h+YuIQryWKsfu/JX2c5lqDEQyRk0hoRWjBUJglfyWbPfqSuNEARyh+ruexv2Pigy8hdSu/CFoCC6HjWknmu0JaUFTIK0S9T8GqjPYcySLIj3j9nntF2LF848gOZu2vjJJgVDIajfITeqm6LueMt94b5C+0k4DePePmZbbEs6QLZ9Jx2qMHxTaJCeHv3kRI1pjvXstJSFlQPeuc7+RMu05V1UYzKFhbfvFxEQHhD7Zo7+CzvIt5CZf1bPrRUiLnJDT6N6Yo5VHURuozGFOCK2fzBC7bdvD2b82QWDpXwj9gE9SABD1gIjzrfoRZdAdyExPWaUEOUBrWgLs90ojPPf1Hce/wh7f7IZe3dEJJBiC1FicEE89oPCEWITsxFcBpu0FdvWzs+J0wPVMuiEXwfZ6FkSThSeV4IUeJLwmUIJPSXT/phXrS8O4Q/Aspnky8jzvXYMcIpCe0Yv9+ciw3eAodV4w5P1STbHID2yt1zYD2nuBARVcqH7SKQmoNM0ZWAxZ5lXvmq634dSsiiinFdynzBWJ+lxDlTUuBQNmbBgScD9lqAISsUMdwxVZa/G+QLyFrbpHY/JqcaoBN5vg3AYMbIbKnh+uHjN6inqP20zpvfXzivGWZM/2fw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: iubelttechnologies.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3067.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5b86f46-ac20-445c-da02-08d864a59389
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2020 18:29:17.9452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a86298a-7d59-4320-a7f5-798264e69360
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Rm/nPeYOGhhiHFCBcEHluHCjqW+vs+TucEfiMHZuFD6fvMf+ljLYDofHGoE1FdSaNbX0sCVAiprXxElJpWddAaWEFDehNPTHdSSTOofdf8bzwqHkIwQOZhFonBvU7Ghf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB2455
Subject: Re: [USRP-users] TWINRX Gain
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
Content-Type: multipart/mixed; boundary="===============0995913451305637218=="
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

--===============0995913451305637218==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR12MB3067DE67D641B09806F8411A8C320DM6PR12MB3067namp_"

--_000_DM6PR12MB3067DE67D641B09806F8411A8C320DM6PR12MB3067namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I get it, thanks for the block diagrams.  I will look into doing a lab test=
 with a calibrated source.
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Tuesday, September 29, 2020 2:23 PM
To: Mark Koenig <mark.koenig@iubelttechnologies.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] TWINRX Gain

On 09/29/2020 02:02 PM, Mark Koenig wrote:
Yes, I understand gain varies with temperature and frequency, I just wasnt =
sure if there was any receive chain analysis performed with the daughtecard=
 to give the developer an idea of what type of gain is provided over the at=
tenuation range at various frequencies.  I am not too concerned about tenth=
s of dBs....I was just interested in what the actual gain range provided by=
 the card is.

Thanks

Mark
________________________________

If you look at the first page of this:

https://files.ettus.com/schematics/twinrx/TwinRX%20RF%20Board%20Rev%20D.pdf

You can see the overall block diagram.  You can also see several PE43503 at=
tenuators, sprinkled among several different MMIC amplifiers, and
 various different RF pathways through switches and filters depending on ba=
nd.   It would be hard for me to unwind all of that and give you
 a definitive answer.

Even for the IF processing, there are two different IFs, depending on the f=
requency band--again with various distributions of gain and
  attenuation (either explicit attenuation, or attenuation via filtering)--=
all of which have considerable uncertainty--due to batch-to-batch
  variability and temperature effects.   I'm fairly sure that even the desi=
gner of the board couldn't tell you, for any given board configuration
  what the actual gain measured between the antenna input an the ADC input =
actually was, with better than 5dB confidence.  Which is where
  calibration comes in.

https://files.ettus.com/schematics/twinrx/TwinRX%20IF%20Board%20Rev%20C.pdf

In a laboratory instrument, like a spectrum analyser, all of this is painst=
akingly calibrated at the factory, usually using lookup tables (or the
  analog-era equivalent), based on well-characterized calibration sources. =
 So when you set the gain level on the front-panel of the device
  to some dB value, you'll actually get that value at the measurement point=
 and when you look at the measurement on the display and it
  says -70dBm, it's actually -70dBm at the input terminal.  SDRs aren't tha=
t, typically.  Although one could build a fairly nice lab instrument
  *around* an SDR, using all the aforementioned calibration exercises, etc.

Now, this all, I admit, sounds a tad "lecturey".  I know you probably know =
all of this, but many on the list don't, or perhaps haven't thought about
  it much.  So, I'm prompted to deliver this, or a very similar "lecture" a=
 few times a year due to similar queries to yours.

--_000_DM6PR12MB3067DE67D641B09806F8411A8C320DM6PR12MB3067namp_
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
<div>
<div id=3D"appendonsend" style=3D"font-family: Calibri, Arial, Helvetica, s=
ans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I get it, thanks for the block diagrams.&nbsp; I will look into doing a lab=
 test with a calibrated source.</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, September 29, 2020 2:23 PM<br>
<b>To:</b> Mark Koenig &lt;mark.koenig@iubelttechnologies.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] TWINRX Gain</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 09/29/2020 02:02 PM, Mark Koenig wrote:=
<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Yes, I understand gain varies with temperature and frequency, I just wasnt =
sure if there was any receive chain analysis performed with the daughtecard=
 to give the developer an idea of what type of gain is provided over the at=
tenuation range at various frequencies.&nbsp;
 I am not too concerned about tenths of dBs....I was just interested in wha=
t the actual gain range provided by the card is.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Mark</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<br>
</blockquote>
If you look at the first page of this:<br>
<br>
<a class=3D"x_moz-txt-link-freetext" href=3D"https://files.ettus.com/schema=
tics/twinrx/TwinRX%20RF%20Board%20Rev%20D.pdf">https://files.ettus.com/sche=
matics/twinrx/TwinRX%20RF%20Board%20Rev%20D.pdf</a><br>
<br>
You can see the overall block diagram.&nbsp; You can also see several PE435=
03 attenuators, sprinkled among several different MMIC amplifiers, and<br>
&nbsp;various different RF pathways through switches and filters depending =
on band.&nbsp;&nbsp; It would be hard for me to unwind all of that and give=
 you<br>
&nbsp;a definitive answer.<br>
<br>
Even for the IF processing, there are two different IFs, depending on the f=
requency band--again with various distributions of gain and<br>
&nbsp; attenuation (either explicit attenuation, or attenuation via filteri=
ng)--all of which have considerable uncertainty--due to batch-to-batch<br>
&nbsp; variability and temperature effects.&nbsp;&nbsp; I'm fairly sure tha=
t even the designer of the board couldn't tell you, for any given board con=
figuration<br>
&nbsp; what the actual gain measured between the antenna input an the ADC i=
nput actually was, with better than 5dB confidence.&nbsp; Which is where<br=
>
&nbsp; calibration comes in.<br>
<br>
<a class=3D"x_moz-txt-link-freetext" href=3D"https://files.ettus.com/schema=
tics/twinrx/TwinRX%20IF%20Board%20Rev%20C.pdf">https://files.ettus.com/sche=
matics/twinrx/TwinRX%20IF%20Board%20Rev%20C.pdf</a><br>
<br>
In a laboratory instrument, like a spectrum analyser, all of this is painst=
akingly calibrated at the factory, usually using lookup tables (or the<br>
&nbsp; analog-era equivalent), based on well-characterized calibration sour=
ces.&nbsp; So when you set the gain level on the front-panel of the device<=
br>
&nbsp; to some dB value, you'll actually get that value at the measurement =
point and when you look at the measurement on the display and it<br>
&nbsp; says -70dBm, it's actually -70dBm at the input terminal.&nbsp; SDRs =
aren't that, typically.&nbsp; Although one could build a fairly nice lab in=
strument<br>
&nbsp; *around* an SDR, using all the aforementioned calibration exercises,=
 etc.<br>
<br>
Now, this all, I admit, sounds a tad &quot;lecturey&quot;.&nbsp; I know you=
 probably know all of this, but many on the list don't, or perhaps haven't =
thought about<br>
&nbsp; it much.&nbsp; So, I'm prompted to deliver this, or a very similar &=
quot;lecture&quot; a few times a year due to similar queries to yours.<br>
</div>
</div>
</body>
</html>

--_000_DM6PR12MB3067DE67D641B09806F8411A8C320DM6PR12MB3067namp_--


--===============0995913451305637218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0995913451305637218==--

