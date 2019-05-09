Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 297C418577
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 08:38:40 +0200 (CEST)
Received: from [::1] (port=36464 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOchT-0004HV-0K; Thu, 09 May 2019 02:38:39 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:33892)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <robin.coxe@ettus.com>)
 id 1hOcgv-000483-AP
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 02:38:35 -0400
Received: by mail-qt1-f171.google.com with SMTP id j6so1318003qtq.1
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 23:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:thread-topic:thread-index:date:message-id
 :references:in-reply-to:accept-language:content-language
 :mime-version; bh=dOR3iwC7A2MTs2izr7d3/s43pcCfYbKRnV7naoadyyU=;
 b=dItHJGw9PWRQk+7ztot8SWVAdPk/316eTG9el5TL68GEygsHrCtAa8BNLRvyZAvAZI
 b3dFQ7XEdbOj4fACbJ4r1BU9Ai32G+zvo5XlKedziUTog4m7vrheE/P0UVSD2J4iwNRI
 9KoeXJ+MSSmUNWz8iKBnk+18rupSv3QTRkdWFshbiThjb19O2qCA15+n4w0Doh5cpqGp
 Xmdz+x1I/0pvavF96dvVLA82QvoI7jpYIe43WdhYGozpAtYLshC7irh6KaOkrUn+qSi9
 zxyQCCdVEmLsolIbrFfgbTtnMXjhxyIXb7uti13LaqurgwIDXXNqE4IvrD6AB1cL4OQM
 aKiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:thread-topic:thread-index:date
 :message-id:references:in-reply-to:accept-language:content-language
 :mime-version;
 bh=dOR3iwC7A2MTs2izr7d3/s43pcCfYbKRnV7naoadyyU=;
 b=YN3a/dZreL0RUr8q215w/55Xr7tV7Yc2CDyyZS8LxRu8erHmUbICgjVgk8Os10BawA
 3HtLg2KvB44QKkbqXQAw63K3+QKYV+rOGDU68l1mbrkbm8By4r7+Y33l3y5veStgvXSX
 471nCoFyiDraNskW4srQbHTeKOsXNagGDMAYfs0eDw1fKDnZqUJs7VTaalNYwFxBHN4V
 pSqPKBvkymm1ZXc8sRdzQ0RCjRHmSP+7htgJ8SxHD3BMeOqrW97GqSSmM+cDuCTOFXAP
 m4jfIl2rbqYI5rU2RSFhM8wudzmncnBAJFNjGggSKx+FsgdpcqQ7/pxzwgVp9Mf3ZPhU
 Ja4A==
X-Gm-Message-State: APjAAAXLBDaS8lU15qKB3dU/wc8AxAOvRYRslcfwA95qEcW1xX4SOIda
 2co9eHjlgEQA8shS+tcxeWiHcEyjFWNmhw==
X-Google-Smtp-Source: APXvYqwibzBU5NL28Joe6DrcLDOmjohkeeQssB7Re3efQd7AXiM4jyS7CdBwLWLoogx0YvlKy7EqjQ==
X-Received: by 2002:ac8:35fb:: with SMTP id l56mr2064091qtb.130.1557383844602; 
 Wed, 08 May 2019 23:37:24 -0700 (PDT)
Received: from BN7PR03MB4545.namprd03.prod.outlook.com ([52.96.23.109])
 by smtp.gmail.com with ESMTPSA id b27sm658666qtb.53.2019.05.08.23.37.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 23:37:23 -0700 (PDT)
To: =?iso-8859-1?Q?Ramazan_=C7etin?= <ramazan.cetin@gohm.com.tr>, Jason
 Matusiak <jason@gardettoengineering.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Running E310 in Network Mode
Thread-Index: ATk3NGVlrZA9VxGfr9gs/Z+cYr7vizA2NUMyNTdkMGK0coyKMA==
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Thu, 9 May 2019 06:37:21 +0000
Message-ID: <BN7PR03MB4545A32B6F443E8A8EA1488CF2330@BN7PR03MB4545.namprd03.prod.outlook.com>
References: <49b1b11e-15ac-e733-6643-549679512c09@gohm.com.tr>
 <BL0PR12MB2340D4EC35F3885332A766A8AF320@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <2031afcb-51ef-007c-efd8-b8bf77aa1d25@gohm.com.tr>
In-Reply-To: <2031afcb-51ef-007c-efd8-b8bf77aa1d25@gohm.com.tr>
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
Subject: Re: [USRP-users] Running E310 in Network Mode
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
Content-Type: multipart/mixed; boundary="===============8084588802465430922=="
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

--===============8084588802465430922==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR03MB4545A32B6F443E8A8EA1488CF2330BN7PR03MB4545namp_"

--_000_BN7PR03MB4545A32B6F443E8A8EA1488CF2330BN7PR03MB4545namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

If you need higher BW streaming to a host PC in network mode with a similar=
 front end to the E310, take a look at the USRP E320 if you need a 10gigE l=
ink or the B210 if USB 3.0 data rates are sufficient.

The E310 was designed to be a standalone embedded SDR, not a networked devi=
ce with full BW streaming capabilities.

-Robin


________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Ramazan =
=C7etin via USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, May 8, 2019 11:21 PM
To: Jason Matusiak; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Running E310 in Network Mode


Hello Jason,

Thank you for your answer. Actually, i have investigated this link. But, i =
would like to remove limitations on network mode and use USRP E310 line USR=
P N210. Passing samples directly from FPGA to network. Is it possible?


Regards.

On 8.05.2019 17:14, Jason Matusiak wrote:
See here: https://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_network_m=
ode


________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com><mailto:usrp-users-bou=
nces@lists.ettus.com> on behalf of Ramazan =C7etin via USRP-users <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Sent: Wednesday, May 8, 2019 8:02 AM
To: Ettus Research Support; usrp-users@lists.ettus.com<mailto:usrp-users@li=
sts.ettus.com>
Subject: [USRP-users] Running E310 in Network Mode

Hello,

We want to run USRP E310 in network mode. I think the samples coming
from FPGA passing through CPU before sending to network. This decreases
bandwidth because of CPU limitations.


So, is there any ettus image or suggestions that we can run E310
directly from FPGA to network without speed limitations? (like N210 or B210=
)

Best regards.

Ramazan


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BN7PR03MB4545A32B6F443E8A8EA1488CF2330BN7PR03MB4545namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div>
<div>
<div>
<div style=3D"direction: ltr;">If you need higher BW streaming to a host PC=
 in network mode with a similar front end to the E310, take a look at the U=
SRP E320 if you need a 10gigE link or the B210 if USB 3.0 data rates are su=
fficient. &nbsp;</div>
<div><br>
</div>
<div style=3D"direction: ltr;">The E310 was designed to be a standalone emb=
edded SDR, not a networked device with full BW streaming capabilities. &nbs=
p;</div>
<div><br>
</div>
<div style=3D"direction: ltr;">-Robin</div>
</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature"></div>
</div>
<div>&nbsp;</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"dir=3D&quot;ltr&quot;"><font face=3D"Calib=
ri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USR=
P-users &lt;usrp-users-bounces@lists.ettus.com&gt; on behalf of Ramazan =C7=
etin via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, May 8, 2019 11:21 PM<br>
<b>To:</b> Jason Matusiak; usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Running E310 in Network Mode
<div>&nbsp;</div>
</font></div>
<meta content=3D"text/html; charset=3DWindows-1252">
<p>Hello Jason,</p>
<p>Thank you for your answer. Actually, i have investigated this link. But,=
 i would like to remove limitations on network mode and use USRP E310 line =
USRP N210. Passing samples directly from FPGA to network. Is it possible?</=
p>
<p><br>
</p>
<p>Regards.<br>
</p>
<div class=3D"moz-cite-prefix">On 8.05.2019 17:14, Jason Matusiak wrote:<br=
>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
See here:&nbsp;<a href=3D"https://files.ettus.com/manual/page_usrp_e3x0.htm=
l#e3x0_network_mode">https://files.ettus.com/manual/page_usrp_e3x0.html#e3x=
0_network_mode</a></div>
<br>
<div id=3D"Signature">
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users-bounces@lists.=
ettus.com">
&lt;usrp-users-bounces@lists.ettus.com&gt;</a> on behalf of Ramazan =C7etin=
 via USRP-users
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@lists.ettus.co=
m">&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Sent:</b> Wednesday, May 8, 2019 8:02 AM<br>
<b>To:</b> Ettus Research Support; <a class=3D"moz-txt-link-abbreviated" hr=
ef=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Running E310 in Network Mode</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Hello,<br>
<br>
We want to run USRP E310 in network mode. I think the samples coming <br>
from FPGA passing through CPU before sending to network. This decreases <br=
>
bandwidth because of CPU limitations.<br>
<br>
<br>
So, is there any ettus image or suggestions that we can run E310 <br>
directly from FPGA to network without speed limitations? (like N210 or B210=
)<br>
<br>
Best regards.<br>
<br>
Ramazan<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:USRP-users@lists.ettus=
.com">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><=
br>
</div>
</span></font></div>
</div>
</div>
</blockquote>
</div>
</body>
</html>

--_000_BN7PR03MB4545A32B6F443E8A8EA1488CF2330BN7PR03MB4545namp_--


--===============8084588802465430922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8084588802465430922==--

