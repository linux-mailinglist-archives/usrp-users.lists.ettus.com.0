Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3DA1377E
	for <lists+usrp-users@lfdr.de>; Sat,  4 May 2019 06:40:17 +0200 (CEST)
Received: from [::1] (port=57582 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMmT8-0005nx-EI; Sat, 04 May 2019 00:40:14 -0400
Received: from mail-ed1-f50.google.com ([209.85.208.50]:40695)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <robin.coxe@ettus.com>)
 id 1hMmSa-0005f5-Fn
 for usrp-users@lists.ettus.com; Sat, 04 May 2019 00:40:10 -0400
Received: by mail-ed1-f50.google.com with SMTP id e56so8423614ede.7
 for <usrp-users@lists.ettus.com>; Fri, 03 May 2019 21:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:thread-topic:thread-index:date:message-id
 :references:in-reply-to:accept-language:content-language
 :mime-version; bh=WzySG+zqczrakHqzOznQzujXi+QSdONXO4HBWm3gaTk=;
 b=JjGfb/EpxtnpwCylLVVN0IUupS3VqVE39xaQ/1L6UUM57WXbkWDWKYHPX6jE7gXUWA
 rwUWI8zHx/kew6Ez+zWN6OV25WpSUq7HMrf0eXOBjYjM85Y74yawjCv9kDmm0jF0ZQT6
 J5FboXv2XII7e5g+AZrIDeoJ5q7iXM3PPr2XHCInFAvZpu8rZD9D7+mgeYzjGRHn/dQo
 hO7OInD25xXlxcBKUWtSZ6Ts/7n9neVgGg0uhGgku0Bszu6VcikE32aGurDCOPoUo7j2
 9BByC2+BRBUYvURm9Cbnyk7avBUJVJAJG55t7/UoQHUsRTHUJC5GyJ5P1ZV48XscIclv
 ERIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:thread-topic:thread-index:date
 :message-id:references:in-reply-to:accept-language:content-language
 :mime-version;
 bh=WzySG+zqczrakHqzOznQzujXi+QSdONXO4HBWm3gaTk=;
 b=XisGf6XqUNyK/fBw3ze5D42hvwOlQu8Z2WDeb/QdRINmxELOMGo6aMzMV/4e0z38lc
 gv3vSLyXZJFRTdBqp9PyF/lcZeH+w18N4RFtv6IEFs3tdAESK1398w0vdMc4QCm3OhNo
 /fHD47qpMx5YmM4OtZkuI6NCTKsb4gZNvjpREfCoqyJRIbF19UnOVyTiG0Vq5+HMoFaF
 U//kom9pyVok632ks4b3irMSj+XKcr8AvviV8MIw9Socl40udYJ7nlUSPpn1zinSNOM+
 VdUWjF1u0BV9/BN4dWwNkFf51bMTR1L03hb0C+WPESS7UOtbxTrs/6p99AjZq8BSlVhu
 d4GA==
X-Gm-Message-State: APjAAAWnIwgU9WkuxqRTkdapEUaPGq/9AIQXVmUVloy1nTu1LUPPHwe0
 r+dsJEgO8LpB8AOQPeuda1BXMOBI
X-Google-Smtp-Source: APXvYqxgsVx5Ag3B2Q4dGNKHd8iPbrnQRJI5WmkzbZjjo1gq/32ivulIr3S+64Ib7SJbyUm1SGg8PQ==
X-Received: by 2002:a17:906:685:: with SMTP id
 u5mr9496012ejb.125.1556944739374; 
 Fri, 03 May 2019 21:38:59 -0700 (PDT)
Received: from DM6PR03MB4556.namprd03.prod.outlook.com ([52.96.21.61])
 by smtp.gmail.com with ESMTPSA id u20sm562274ejn.69.2019.05.03.21.38.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 21:38:58 -0700 (PDT)
To: Rensi Mathew <rensisam@yahoo.co.in>, Vsr Ravi via USRP-users
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] B200 Overrun
Thread-Index: AWY2OTI3eCATKI0dxJWfk8JJxUYz/DQzMTY02/ZZrFA=
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Sat, 4 May 2019 04:38:55 +0000
Message-ID: <DM6PR03MB45560C798154B6FD08C115F4F2360@DM6PR03MB4556.namprd03.prod.outlook.com>
References: <1432742277.62002.1556943355674.ref@mail.yahoo.com>,
 <1432742277.62002.1556943355674@mail.yahoo.com>
In-Reply-To: <1432742277.62002.1556943355674@mail.yahoo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] B200 Overrun
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <robin.coxe@ettus.com>
Content-Type: multipart/mixed; boundary="===============7067094999779367704=="
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

--===============7067094999779367704==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR03MB45560C798154B6FD08C115F4F2360DM6PR03MB4556namp_"

--_000_DM6PR03MB45560C798154B6FD08C115F4F2360DM6PR03MB4556namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Are you using USB 3.0?  USB 2.0 will max out at about 8 Ms/s.



Robin Coxe | Chief R&D Program Manager, SDR | Santa Clara, CA | 408.610.636=
3

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Rensi Ma=
thew via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, May 3, 2019 9:17 PM
To: Vsr Ravi via USRP-users
Subject: [USRP-users] B200 Overrun

Dear sir
I am using B200 SDR to run the program usrp_spectrum_sense.py with a sampli=
ng frequency of 16e6.
I think I am using a fairly low sampling rate.
Still I am getting some 'OOOO'.

Could someone tell me the possible reasons for the same? And how I can avoi=
d the same?

Thanking you
Rensi Sam


--_000_DM6PR03MB45560C798154B6FD08C115F4F2360DM6PR03MB4556namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div>
<div>
<div>
<div style=3D"direction: ltr;">Are you using USB 3.0? &nbsp;USB 2.0 will ma=
x out at about 8 Ms/s. &nbsp;</div>
<div><br>
</div>
<div style=3D"direction: ltr;"></div>
<div><br>
</div>
</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature">
<div style=3D"direction: ltr;">Robin Coxe | Chief R&amp;D Program Manager, =
SDR | Santa Clara, CA | 408.610.6363</div>
</div>
</div>
<div>&nbsp;</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"dir=3D&quot;ltr&quot;"><font face=3D"Calib=
ri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USR=
P-users &lt;usrp-users-bounces@lists.ettus.com&gt; on behalf of Rensi Mathe=
w via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Friday, May 3, 2019 9:17 PM<br>
<b>To:</b> Vsr Ravi via USRP-users<br>
<b>Subject:</b> [USRP-users] B200 Overrun
<div>&nbsp;</div>
</font></div>
<meta content=3D"text/html; charset=3Dutf-8">
<div class=3D"yahoo-style-wrap" style=3D"font-family:Helvetica Neue,Helveti=
ca,Arial,sans-serif; font-size:16px">
<div>
<div>
<div>Dear sir</div>
<div>I am using B200 SDR to run the program usrp_spectrum_sense.py with a s=
ampling frequency of 16e6.</div>
<div>I think I am using a fairly low sampling rate.<br>
</div>
<div>Still I am getting some 'OOOO'.</div>
<div><br>
</div>
<div>Could someone tell me the possible reasons for the same? And how I can=
 avoid the same?</div>
<div><br>
</div>
<div>Thanking you</div>
<div>Rensi Sam<br>
</div>
</div>
<br>
</div>
</div>
</div>
</body>
</html>

--_000_DM6PR03MB45560C798154B6FD08C115F4F2360DM6PR03MB4556namp_--


--===============7067094999779367704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7067094999779367704==--

