Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3306429BAE8
	for <lists+usrp-users@lfdr.de>; Tue, 27 Oct 2020 17:25:19 +0100 (CET)
Received: from [::1] (port=53526 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXRmZ-0008GQ-QE; Tue, 27 Oct 2020 12:25:11 -0400
Received: from exedge04.gtri.gatech.edu ([130.207.193.244]:3934)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Jeff.Hodges@gtri.gatech.edu>)
 id 1kXRmV-00088n-JT
 for usrp-users@lists.ettus.com; Tue, 27 Oct 2020 12:25:07 -0400
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=exedge04;
 c=simple/simple; t=1603815866; h=from:subject:to:date:message-id;
 bh=a7sxvpurTutqLXntKNc8urBKJVyKBCbb6TR5a+aZc3c=;
 b=XN9FDOQOI/hJTLM55xvgVAmUVGT5RdYjnI70EByj47d3tY9mRASidzsqglzMfFm73pwy//S1ok/
 f1DUYkcqjliw9vYPiD8bDcr6il7rB5xsapjIySLHoFJEl+94LkndVBTS5Bn/cvHsbC2x6mvgOejK3
 TYMWG+SV/XqLcHhsRcI=
Received: from ocracoke.core.gtri.org (10.41.22.71) by exedge04.gtri.org
 (130.207.193.244) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Tue, 27 Oct
 2020 12:24:26 -0400
Received: from ocracoke.core.gtri.org (2610:148:610:2916::71) by
 ocracoke.core.gtri.org (2610:148:610:2916::71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2106.2; Tue, 27 Oct 2020 12:24:26 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.2106.003; Tue, 27 Oct 2020 12:24:26 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: C++ how to get usrp::multi_usrp::sptr from USRP_Sink_Block
Thread-Index: AQHWrHmUYJkh34YlB0S+eM/7YGpY9A==
Date: Tue, 27 Oct 2020 16:24:26 +0000
Message-ID: <0b218fc462bf455fa059abfbbae584c7@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Subject: [USRP-users] C++ how to get usrp::multi_usrp::sptr from
 USRP_Sink_Block
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
Content-Type: multipart/mixed; boundary="===============7736173040798147372=="
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

--===============7736173040798147372==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0b218fc462bf455fa059abfbbae584c7gtrigatechedu_"

--_000_0b218fc462bf455fa059abfbbae584c7gtrigatechedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

How do I get the device sptr (::uhd::usrp::multi_usrp::sptr) from the usrp_=
sink_block sptr?


For example, the following works:


                basic_block_sptr blk =3D global_block_registry.block_lookup=
(pmt::intern(usrp_alias));
                d_usrp =3D boost::dynamic_pointer_cast<gr::uhd::usrp_sink::=
sptr>(blk);

But errors here:

                ::uhd::usrp::multi_usrp::sptr d_usrp_dev =3D d_usrp->get_de=
vice();


What happens if I just create another usrp object for the same device in ad=
dition to the one already created by the uhd_sink_block? I'm guessing that =
will not work.


My end goal is to be able to create a block that makes direct C++ api calls=
 to the usrp to tune it between bursts, since the uhd (for unknown reasons)=
 does not support timed command tuning on a tagged stream in burst mode (as=
 i mentioned in yesterday's email).

Jeff

--_000_0b218fc462bf455fa059abfbbae584c7gtrigatechedu_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;=
,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&q=
uot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p>How do I get the device sptr (::uhd::usrp::multi_usrp::sptr) from the us=
rp_sink_block sptr?&nbsp;
<br>
</p>
<p><br>
</p>
<p>For example, the following works:</p>
<p></p>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; <br>
</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; basic_block_sptr blk =3D global_block_registry.block_l=
ookup(pmt::intern(usrp_alias));<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; d_usrp =3D boost::dynamic_pointer_cast&lt;gr::uhd::usrp_sin=
k::sptr&gt;(blk);</div>
<div><br>
</div>
<div>But errors here:<br>
</div>
<div><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; ::uhd::usrp::multi_usrp::sptr d_usrp_dev =3D d_usrp-&gt;get=
_device();<br>
<br>
</div>
<p>What happens if I just create another usrp object for the same device in=
 addition to the one already created by the uhd_sink_block? I'm guessing th=
at will not work.</p>
<p><br>
</p>
<p>My end goal is to be able to create a block that makes direct C&#43;&#43=
; api calls to the usrp to tune it between bursts, since the uhd (for unkno=
wn reasons) does not support timed command tuning on a tagged stream in bur=
st mode (as i mentioned in yesterday's email).<br>
<br>
Jeff<br>
</p>
</div>
</body>
</html>

--_000_0b218fc462bf455fa059abfbbae584c7gtrigatechedu_--


--===============7736173040798147372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7736173040798147372==--

