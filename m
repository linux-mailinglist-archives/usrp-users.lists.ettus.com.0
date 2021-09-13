Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2156D409A57
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 19:07:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 229D838419E
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 13:07:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gtri.gatech.edu header.i=@gtri.gatech.edu header.b="hp0m9gAJ";
	dkim-atps=neutral
Received: from unifiededge.gtri.gatech.edu (unifiededge.gtri.gatech.edu [130.207.205.170])
	by mm2.emwd.com (Postfix) with ESMTPS id E91F2384094
	for <usrp-users@lists.ettus.com>; Mon, 13 Sep 2021 13:06:58 -0400 (EDT)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=unifiededge;
	c=simple/simple; t=1631552818; h=from:subject:to:date:message-id;
	bh=A6vdDY3ENzEqGPJ/ybTc2VoSCGwBb1dOChf/gK+7GXk=;
	b=hp0m9gAJ6/v0IrZVEOWmRnxxUTV95gVqGH0piEZ4+YkwUKk5y3XjonARoNjaGjAbHDNLnORW1n9
	pdUNZY6d1mOTAysy3+Sb/mNsh2OdAjCxdVBZp+6ruNOgCR7EhKWFpgyb5z3P9cd22h5S7ZTm6e8Og
	FgmfH8iRswJX1ucTq+ijo8Z3VQNvGRHDOClclqFsm6381V7rWId6+yXHWyOnsd0D8G3piNUFBZucC
	6b8+e3bWQilCm0GaFNxUrSJNBvm9NCpCnQ6+qXdb87O0pzu9SBT5WOca37QSon9LliAsYu4GRF9y5
	Dz0tbRkIpRtz8EA3QFj6B8LcwYkvWgUhFQsg==
Received: from tybee.core.gtri.org (10.41.1.49) by exedge06.gtri.dmz
 (10.41.104.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.2.858.5; Mon, 13 Sep 2021
 13:06:58 -0400
Received: from ocracoke.core.gtri.org (2610:148:610:2916::71) by
 tybee.core.gtri.org (2610:148:610:2901::49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Mon, 13 Sep 2021 13:06:58 -0400
Received: from ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf]) by
 ocracoke.core.gtri.org ([fe80::59db:29b9:bcab:ddaf%13]) with mapi id
 15.01.2308.014; Mon, 13 Sep 2021 13:06:57 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnoc 4.0 gain block tutorial --> register problem
Thread-Index: AQHXp04eBQvs8W6JNUqWdkm972Ll2auiHhbdgAAUVhw=
Date: Mon, 13 Sep 2021 17:06:57 +0000
Message-ID: <d843f624eb3c4220bfdb1201a623f8eb@gtri.gatech.edu>
References: <ab0a8f479cc74e59a05b0d764c9cfee3@gtri.gatech.edu>,<a2b2443a10404d1280c409b81b832274@gtri.gatech.edu>
In-Reply-To: <a2b2443a10404d1280c409b81b832274@gtri.gatech.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Message-ID-Hash: DZ46WPA37YPYY7FMQCLCC3YSMSLBCAUU
X-Message-ID-Hash: DZ46WPA37YPYY7FMQCLCC3YSMSLBCAUU
X-MailFrom: Jeff.Hodges@gtri.gatech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc 4.0 gain block tutorial --> register problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DZ46WPA37YPYY7FMQCLCC3YSMSLBCAUU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Hodges, Jeff via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============7094983369157868101=="

--===============7094983369157868101==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_d843f624eb3c4220bfdb1201a623f8ebgtrigatechedu_"

--_000_d843f624eb3c4220bfdb1201a623f8ebgtrigatechedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm now convinced there is something majorly wrong with UHD4.0 controlport.=
  Not only am I experiencing the issue I have described here but if I creat=
e an image with two write registers (0x0 and 0x4) it works, but if I create=
 two write registers addresses of 0x4 and 0x8, it fails both read and write=
.

Is anyone using this UHD4.0? I never had these problems with UHD3.15.  I'm =
building for the X310.


I can try to debug with chipscope but that is a pain and would rather not d=
o waste time if someone else has already identified the source of this prob=
lem.


Thanks,


Jeff

________________________________
From: Hodges, Jeff via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, September 13, 2021 11:48:06 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: rfnoc 4.0 gain block tutorial --> register proble=
m


I can read and write from register addr 0x0 but the default value read from=
 peek32(0x0) is 0 regardless of what I set the REG_USER_DEFAULT value to.


This only occurs on register addr 0x0.


Jeff


________________________________
From: Hodges, Jeff via USRP-users <usrp-users@lists.ettus.com>
Sent: Saturday, September 11, 2021 5:02 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] rfnoc 4.0 gain block tutorial --> register problem


Following the gain block tutorial from GRCON20, when I read from the regist=
ers using gain_block->regs().peek32(0x0), the default value that is return =
is not the same as set during reset. The default value I read is always 0 e=
ven when my verilog sets it to some other value after rebuilding the image.


Has anyone seen this behavior?


Also i am having problems with other FPGA builds involving the registers to=
 please tell me if something is wrong with rfnoc 4.0 controlport.

All i've done is taken the default gain block and added another default val=
ue after reset:



  localparam REG_USER_ADDR    =3D 0; // Address for example user register
  localparam REG_USER_DEFAULT =3D 1; // Default value for user register
  localparam REG_USER_DEFAULT2 =3D 2; //Default value for user register aft=
er reset

  reg [31:0] reg_user =3D REG_USER_DEFAULT;

  always @(posedge ctrlport_clk) begin
    if (ctrlport_rst) begin
      reg_user =3D REG_USER_DEFAULT2;
    end else begin
      // Default assignment
      m_ctrlport_resp_ack <=3D 0;

      // Read user register
      if (m_ctrlport_req_rd) begin // Read request
        case (m_ctrlport_req_addr)
          REG_USER_ADDR: begin
            m_ctrlport_resp_ack  <=3D 1;
            m_ctrlport_resp_data <=3D reg_user;
          end
        endcase
      end

      // Write user register
      if (m_ctrlport_req_wr) begin // Write requst
        case (m_ctrlport_req_addr)
          REG_USER_ADDR: begin
            m_ctrlport_resp_ack <=3D 1;
            reg_user            <=3D m_ctrlport_req_data[31:0];
          end
        endcase
      end
    end
  end



Jeff

--_000_d843f624eb3c4220bfdb1201a623f8ebgtrigatechedu_
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
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>I'm now convinced there is something majorly wrong with UHD4.0 controlpo=
rt.&nbsp; Not only am I experiencing the issue I have described here but if=
 I create an image with two write registers (0x0 and 0x4) it works, but if =
I create two write registers addresses
 of 0x4 and 0x8, it fails both read and write.</p>
<p><br>
Is anyone using this UHD4.0? I never had these problems with UHD3.15. &nbsp=
;<span>I'm building for the X310.</span></p>
<p><br>
</p>
<p>I can try to debug with chipscope but that is a pain and would rather no=
t do waste time if someone else has already identified the source of this p=
roblem.<br>
</p>
<p><br>
</p>
<p>Thanks,<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Hodges, Jeff via USRP=
-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Monday, September 13, 2021 11:48:06 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: rfnoc 4.0 gain block tutorial --&gt; regis=
ter problem</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D=
"ltr">
<p>I can read and write from register addr 0x0 but the default value read f=
rom peek32(0x0) is 0 regardless of what I set the REG_USER_DEFAULT value to=
.<br>
</p>
<p><br>
</p>
<p>This only occurs on register addr 0x0.<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Hodges, Jeff via US=
RP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Saturday, September 11, 2021 5:02 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] rfnoc 4.0 gain block tutorial --&gt; register =
problem</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p>Following the gain block tutorial from GRCON20, when I read from the reg=
isters using gain_block-&gt;regs().peek32(0x0), the default value that is r=
eturn is not the same as set during reset. The default value I read is alwa=
ys 0 even when my verilog sets it to
 some other value after rebuilding the image.</p>
<p><br>
</p>
<p>Has anyone seen this behavior?<br>
</p>
<p><br>
</p>
<p>Also i am having problems with other FPGA builds involving the registers=
 to please tell me if something is wrong with rfnoc 4.0 controlport.<br>
<br>
All i've done is taken the default gain block and added another default val=
ue after reset:<br>
</p>
<p><br>
</p>
<p><br>
</p>
<p></p>
<div>&nbsp; localparam REG_USER_ADDR&nbsp;&nbsp;&nbsp; =3D 0; // Address fo=
r example user register<br>
&nbsp; localparam REG_USER_DEFAULT =3D 1; // Default value for user registe=
r<br>
&nbsp; localparam REG_USER_DEFAULT2 =3D 2; //Default value for user registe=
r after reset<br>
<br>
&nbsp; reg [31:0] reg_user =3D REG_USER_DEFAULT;<br>
<br>
&nbsp; always @(posedge ctrlport_clk) begin<br>
&nbsp;&nbsp;&nbsp; if (ctrlport_rst) begin<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg_user =3D REG_USER_DEFAULT2;<br>
&nbsp;&nbsp;&nbsp; end else begin<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // Default assignment<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; m_ctrlport_resp_ack &lt;=3D 0;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // Read user register<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (m_ctrlport_req_rd) begin // Read request=
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; case (m_ctrlport_req_addr)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_USER_ADDR: begin=
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; m_ctrlpo=
rt_resp_ack&nbsp; &lt;=3D 1;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; m_ctrlpo=
rt_resp_data &lt;=3D reg_user;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; end<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; endcase<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; end<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // Write user register<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (m_ctrlport_req_wr) begin // Write requst=
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; case (m_ctrlport_req_addr)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REG_USER_ADDR: begin=
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; m_ctrlpo=
rt_resp_ack &lt;=3D 1;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reg_user=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;=3D =
m_ctrlport_req_data[31:0];<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; end<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; endcase<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; end<br>
&nbsp;&nbsp;&nbsp; end<br>
&nbsp; end<br>
<br>
</div>
<br>
<p></p>
<p>Jeff<br>
</p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_d843f624eb3c4220bfdb1201a623f8ebgtrigatechedu_--

--===============7094983369157868101==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7094983369157868101==--
