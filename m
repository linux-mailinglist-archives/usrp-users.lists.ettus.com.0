Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A62AC3B750
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jun 2019 16:27:50 +0200 (CEST)
Received: from [::1] (port=49844 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1haLGw-0004DM-Hq; Mon, 10 Jun 2019 10:27:42 -0400
Received: from mail-it1-f175.google.com ([209.85.166.175]:55727)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1haLGs-00045j-9W
 for usrp-users@lists.ettus.com; Mon, 10 Jun 2019 10:27:38 -0400
Received: by mail-it1-f175.google.com with SMTP id i21so13546183ita.5
 for <usrp-users@lists.ettus.com>; Mon, 10 Jun 2019 07:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=HnVj5vE9XU1F5Xcs8ZaSqnGd78Y42s15U4Y97TSxgfM=;
 b=XbPyJbPpXrN3K250VMYPTky4UOKRyXDJ1Bncdt6BGCu+9Rfw9ABYrwxKKhfl8vQfbT
 KtSNlVRUhvk2VeZHC16KB8BPf5lerPhledDA5QN7Nux0vQKUSxGANxbTtzWvsbbcdd/U
 2LwyXNO0Ova+yW9wOecLFugUyX/zBeq4s3Dh2es+w2cC7zxLLk8zEYadrGAo6AY+k2fk
 7aM23YIBbypg7CCQsYlI/KAiLWYzLD36Tuik7qHZSoqvQdl26nxkWcOnSNDMJxOyD8ih
 1N8ZywhTafTXo/2FbDjA9DuA8P2mOsr2CdkRJM5TNjimFKiRdIJXIAGJZ6I/YbduHaQI
 Ke/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=HnVj5vE9XU1F5Xcs8ZaSqnGd78Y42s15U4Y97TSxgfM=;
 b=Pc889DqIvlnB4oHBgGKPbUGn4p6ppQkZ9hD3kZjxoEyUjzE7uIcBkFB91fWqMGe8TH
 uA2ATjmqiWqeHZEXSQS33gYd8FYJBgp3FtOMkEEQbAuUIOhnjjE3VOsQlmxbJ/VAESEF
 2yVV170P4uX86bM2IHE0XLssu1XZoieptaHCciQxPOgTc/IHH8bqersO7jxHR2iFKwz9
 y+x8Td/ZkJ/mmFMapMF51Lyn2kc03D8oCcg6AFLxFlk7VVxMvXWl7AfN2By/vVx/UNxW
 heGBNSNNsaIj4vSl+oih7A74Gw14w2M03oNlEHxHl53bhrWeG+EpOYxn7w4Li+Rg2sDi
 OM1g==
X-Gm-Message-State: APjAAAWrlPIBgl8SVnyZjUlNjZGy6IUUJnTxkx+X5nQBBSpdSY0XFAdW
 mu7Nttzk3h1Uh+3GNGmH/XHvc7b/2BQ=
X-Google-Smtp-Source: APXvYqy5tJFDOsPBWEM7EMfR0dig97AlycKC9ic5LYG9LuJfklLAQ6DBD8uOl5DdpKVTt6JVdgwSHA==
X-Received: by 2002:a05:6638:40c:: with SMTP id
 q12mr41536223jap.17.1560176817451; 
 Mon, 10 Jun 2019 07:26:57 -0700 (PDT)
Received: from [192.168.2.29]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.gmail.com with ESMTPSA id m7sm3390879iob.69.2019.06.10.07.26.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 07:26:56 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <BL0PR12MB234057AA40194AD79592AB33AF130@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Mon, 10 Jun 2019 10:26:56 -0400
Message-Id: <79C595A4-A51D-405B-8B85-EA1C7C7DA20B@gmail.com>
References: <BL0PR12MB2340FE595800AEE988A97927AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <97385c33-0632-9752-41ab-9190d3b59bb3@balister.org>
 <BL0PR12MB23407505B7EFEE3FAF0A34BBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <6406FA1A-8520-4DE3-914C-00634F2AF194@gmail.com>
 <BL0PR12MB2340AA2DD249B609B88CBFE3AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAL263iw1aYQYx7C6N5t0LtrL3hDUu7zp_jamkRa8aXnE6SiENQ@mail.gmail.com>
 <BL0PR12MB23402BF8B67C85AB9ED6F7FBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAL263izHx4dMkm8Ho2Dn9MQ8Rk7qW+gT3oL3vrAGvL2WaAUBNw@mail.gmail.com>
 <BL0PR12MB2340EF121686FC31593EC856AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <BL0PR12MB23408E4536DA1297A3D96350AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <5CFAD87B.209@gmail.com>
 <BL0PR12MB234057AA40194AD79592AB33AF130@BL0PR12MB2340.namprd12.prod.outlook.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Subject: Re: [USRP-users] E320 hogging the network
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3475033434738817882=="
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


--===============3475033434738817882==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-EFB07309-7F3D-4D64-B1E6-5F94F282590B
Content-Transfer-Encoding: 7bit


--Apple-Mail-EFB07309-7F3D-4D64-B1E6-5F94F282590B
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Since the communication channel to the radio is not IP based, seems to me th=
at the waters would be muddied by =E2=80=9Cfaking=E2=80=9D it.=20



Sent from my iPhone

> On Jun 10, 2019, at 7:17 AM, Jason Matusiak <jason@gardettoengineering.com=
> wrote:
>=20
> Bingo, thanks.  One note though, the type is e3x0 (not e300).
>=20
> Doesn't the e310 understand an IP address of 127.0.0.1 though?  I would th=
ink that something like that would be a perfect use-case for the localhost.
>=20
>=20
> From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
> Sent: Friday, June 7, 2019 5:34 PM
> To: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] E320 hogging the network
> =20
>> On 06/07/2019 03:05 PM, Jason Matusiak via USRP-users wrote:
>> OK, this is actually an E310 problem.  The E310 always looks off device f=
irst.  A coworker reminded me that we spent a couple days years back trying t=
o figure out why the device was asking like it was working, but we weren't s=
eeing any results.  It was because it was actually talking to an N2xx on the=
 network even with the IP address arg.
>>=20
>> We never found a solution (using both the 127 and 192 address as an argum=
ent still causes issues).  So, it would be nice to clean this up on the E310=
 at some point, but for now I will try not to mix the E310 and E320 on the s=
ame subnet.
>>=20
> For the case of running E310 apps *on* the E310, just use "type=3De300", r=
adio hardware on the E310 itself doesn't *have* an IP address, so using
>   addr=3D will simply cause UHD to go down the wrong device path when you'=
re running it ON the E31x itself.
>=20
>=20

--Apple-Mail-EFB07309-7F3D-4D64-B1E6-5F94F282590B
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Since the communication channel to the radi=
o is not IP based, seems to me that the waters would be muddied by =E2=80=9C=
faking=E2=80=9D it.&nbsp;<div><br></div><div><br><br><div id=3D"AppleMailSig=
nature" dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br>On Jun 10,=
 2019, at 7:17 AM, Jason Matusiak &lt;<a href=3D"mailto:jason@gardettoengine=
ering.com">jason@gardettoengineering.com</a>&gt; wrote:<br><br></div><blockq=
uote type=3D"cite"><div dir=3D"ltr">

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font-=
family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Bingo, thanks.&nbsp; One note thou=
gh, the type is e3x0 (not e300).</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Doesn't the e310 understand an IP a=
ddress of 127.0.0.1 though?&nbsp; I would think that something like that wou=
ld be a perfect use-case for the localhost.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" sty=
le=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;<a href=3D=
"mailto:usrp-users-bounces@lists.ettus.com">usrp-users-bounces@lists.ettus.c=
om</a>&gt; on behalf of Marcus D. Leech via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, June 7, 2019 5:34 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a><br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 06/07/2019 03:05 PM, Jason Matusiak via U=
SRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; colo=
r:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">OK, this is actually an E310 prob=
lem.&nbsp; The E310 always looks off device first.&nbsp; A&nbsp;coworker rem=
inded me that we spent a couple days years back&nbsp;trying to figure out wh=
y the device was asking like it was working, but we
 weren't seeing any results.&nbsp; It was because it was actually talking to=
 an N2xx on the network even with the IP address arg.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">We never found a solution (using b=
oth the 127 and 192 address as an argument still causes issues).&nbsp;&nbsp;=
<span style=3D"font-size:12pt">So, it would be nice to clean this up on the E=
310 at some point, but for now I will try
</span><span style=3D"font-size:12pt">not to mix the E310 and E320 on the sa=
me subnet.</span></p>
<br>
</div>
</blockquote>
For the case of running E310 apps *on* the E310, just use "type=3De300", rad=
io hardware on the E310 itself doesn't *have* an IP address, so using<br>
&nbsp; addr=3D will simply cause UHD to go down the wrong device path when y=
ou're running it ON the E31x itself.<br>
<br>
<br>
</div>
</div>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-EFB07309-7F3D-4D64-B1E6-5F94F282590B--


--===============3475033434738817882==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3475033434738817882==--

