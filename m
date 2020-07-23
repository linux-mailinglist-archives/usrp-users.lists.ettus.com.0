Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 802CC22A3C2
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 02:39:19 +0200 (CEST)
Received: from [::1] (port=56048 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyPGT-0005OX-P3; Wed, 22 Jul 2020 20:39:13 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:28619)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1jyPGQ-0005IM-Jx
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 20:39:10 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1595464706; h=from:subject:to:date:message-id;
 bh=PkQ3zS93bGkAhxdtxiQ3tfpjLigTNjFNdOY9DMkgaU0=;
 b=C5XYKOC4XCvMVnjLa2GAdX5vPhlDLqvVkoal9rKW03yYv5f0Hz0k4mmrpVYTQP6pfYsby7RGO+0
 BBRVvT8CLhqPHi68x/RucwnpQQpBtcrPzNrFXxr/kgU8VKhFQpzk5zCm/T7cX8nQ5x42gmj4KhvaU
 gzeGjTY4+5Pst1MIKZI=
Received: from jekyll.core.gtri.org (10.41.1.48) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Wed, 22 Jul
 2020 20:38:26 -0400
Received: from ocracoke.core.gtri.org (10.41.22.71) by jekyll.core.gtri.org
 (10.41.1.48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Jul 2020 20:38:26 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.1913.007; Wed, 22 Jul 2020 20:38:26 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] gnuradio-companion can not find RFNOC blocks
Thread-Index: AQHWSlHW09iecvKdi0yKlf4pp1xXNKkSywcAgAGx/w4=
Date: Thu, 23 Jul 2020 00:38:26 +0000
Message-ID: <22a2a81b26d546589fe1f648d2f00dd6@gtri.gatech.edu>
References: <CAN6+RzkMFo8AtOYqM=i-56KKBkeZ_ss1nogCmDLpt2cY5K5FRg@mail.gmail.com>,
 <f67cfd2e-7acc-9950-d1b9-545aaaf9569b@ettus.com>
In-Reply-To: <f67cfd2e-7acc-9950-d1b9-545aaaf9569b@ettus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: Re: [USRP-users] gnuradio-companion can not find RFNOC blocks
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
From: "Hodges, Jeff via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============2320564419787028448=="
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

--===============2320564419787028448==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_22a2a81b26d546589fe1f648d2f00dd6gtrigatechedu_"

--_000_22a2a81b26d546589fe1f648d2f00dd6gtrigatechedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Cherif,


Did you install gr-ettus? Unless you are using UHD on master branch (4.0), =
you need gr-ettus. I installed UHD3.15LTS on Ubuntu 18.04 without PYBOMBS a=
nd it works fine.


Jeff

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus M=
=FCller via USRP-users <usrp-users@lists.ettus.com>
Sent: Tuesday, July 21, 2020 2:39:46 PM
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] gnuradio-companion can not find RFNOC blocks

Hi Cherif,

this is typically an issue encountered if you didn't install the blocks
into a directory GNU Radio companion looks into.

Make sure that you've used `-DCMAKE_INSTALL_PREFIX=3D` with a prefix that
contains a path that GNU Radio looks into; GRC prints the paths into the
console when it's started!

Best regards,
Marcus

On 24.06.20 20:03, cherif chibane via USRP-users wrote:
> Hello,
>
> I have just installed RFNOC using the app note:
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>
> I used the manual way because I was having some weird problems using
> Pybombs and I am using X300 under Ubuntu 18.4. I can successfully use  al=
l
> the UHD commands, load FPGA with new images etc.I can also successfully u=
se
> the Gnuradio-comapnion gnuradio blocks.
>
> But when I use gnuradio-comapnion graphs with  RFNOC blocks, it can not
> find them.
> Here is the error:
> Loading: "/home/rfnocdev/rfnoc/gr-ettus/examples/rfnoc/rfnoc_ddc.grc"
> Block key "variable_uhd_device3" not found
> Block key "uhd_rfnoc_streamer_ddc" not found
> Block key "uhd_rfnoc_streamer_fifo" not found
> Block key "uhd_rfnoc_streamer_radio" not found
>
>
> Any ideas What I am missing here.
>
> Thanks,
> Cherif
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_22a2a81b26d546589fe1f648d2f00dd6gtrigatechedu_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p>Cherif, <br>
</p>
<p><br>
</p>
<p>Did you install gr-ettus? Unless you are using UHD on master branch (4.0=
), you need gr-ettus. I installed UHD3.15LTS on Ubuntu 18.04 without PYBOMB=
S and it works fine.</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of Marcus M=FCller via USRP-us=
ers &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Tuesday, July 21, 2020 2:39:46 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] gnuradio-companion can not find RFNOC bloc=
ks</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hi Cherif,<br>
<br>
this is typically an issue encountered if you didn't install the blocks<br>
into a directory GNU Radio companion looks into.<br>
<br>
Make sure that you've used `-DCMAKE_INSTALL_PREFIX=3D` with a prefix that<b=
r>
contains a path that GNU Radio looks into; GRC prints the paths into the<br=
>
console when it's started!<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On 24.06.20 20:03, cherif chibane via USRP-users wrote:<br>
&gt; Hello,<br>
&gt; <br>
&gt; I have just installed RFNOC using the app note:<br>
&gt; <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Development=
">https://kb.ettus.com/Getting_Started_with_RFNoC_Development</a><br>
&gt; <br>
&gt; I used the manual way because I was having some weird problems using<b=
r>
&gt; Pybombs and I am using X300 under Ubuntu 18.4. I can successfully use&=
nbsp; all<br>
&gt; the UHD commands, load FPGA with new images etc.I can also successfull=
y use<br>
&gt; the Gnuradio-comapnion gnuradio blocks.<br>
&gt; <br>
&gt; But when I use gnuradio-comapnion graphs with&nbsp; RFNOC blocks, it c=
an not<br>
&gt; find them.<br>
&gt; Here is the error:<br>
&gt; Loading: &quot;/home/rfnocdev/rfnoc/gr-ettus/examples/rfnoc/rfnoc_ddc.=
grc&quot;<br>
&gt; Block key &quot;variable_uhd_device3&quot; not found<br>
&gt; Block key &quot;uhd_rfnoc_streamer_ddc&quot; not found<br>
&gt; Block key &quot;uhd_rfnoc_streamer_fifo&quot; not found<br>
&gt; Block key &quot;uhd_rfnoc_streamer_radio&quot; not found<br>
&gt; <br>
&gt; <br>
&gt; Any ideas What I am missing here.<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Cherif<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; USRP-users@lists.ettus.com<br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><br>
&gt; <br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
USRP-users@lists.ettus.com<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><=
br>
</div>
</span></font>
</body>
</html>

--_000_22a2a81b26d546589fe1f648d2f00dd6gtrigatechedu_--


--===============2320564419787028448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2320564419787028448==--

