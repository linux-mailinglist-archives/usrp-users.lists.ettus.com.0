Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4EF1A49B8
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2020 20:13:17 +0200 (CEST)
Received: from [::1] (port=51138 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jMy9Q-0001sX-9S; Fri, 10 Apr 2020 14:13:12 -0400
Received: from clt-mbsout-02.mbs.boeing.net ([130.76.144.163]:30522)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <kenneth.c.clark2@boeing.com>)
 id 1jMy9M-0001nN-2S
 for usrp-users@lists.ettus.com; Fri, 10 Apr 2020 14:13:08 -0400
Received: from localhost (localhost [127.0.0.1])
 by clt-mbsout-02.mbs.boeing.net (8.15.2/8.15.2/DOWNSTREAM_MBSOUT) with SMTP id
 03AICOHI032534; Fri, 10 Apr 2020 14:12:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=boeing.com;
 s=boeing-s1912; t=1586542346;
 bh=n/Awybl3WMilO0fGKx0SfR1EVeMokyfoZAtpwhsz/So=;
 h=From:To:CC:Subject:Date:From;
 b=Qh4nFPnHPDJvAhUTX5UKkgvW3BfNZQVJVaMWMF6JG+iUa1p1bwXaZV6h+c4+xkj2S
 OOjvnKSK+yGLPuh1QpDfKPzsD9+TL0QyrX5ifohqEEAZtMKsCRO4xAAGQQ/SzstYND
 0XF3jzB2hw5MgMKV4gX84GnR0fNmzciH7F2TQm7goRJAgW27xy0PM2nbz7dLlaM1uD
 nOj5UMRDbbTLxc6ggNM8nm5rVAidQ14fzqOzEbtgCpggPyx3QypT3HfN/i+LQpkckS
 R9ScuR/jlGoAIegPxO2tSRnGnH1ezCw1jy63Ba07L0jHxQdKAuJM4YqlIU366gW5Ub
 5f+qT1QYzF/bA==
Received: from XCH16-05-08.nos.boeing.com (xch16-05-08.nos.boeing.com
 [144.115.66.92])
 by clt-mbsout-02.mbs.boeing.net (8.15.2/8.15.2/UPSTREAM_MBSOUT) with ESMTPS id
 03AICCDn031355
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Fri, 10 Apr 2020 14:12:12 -0400
Received: from XCH16-05-12.nos.boeing.com (144.115.66.96) by
 XCH16-05-08.nos.boeing.com (144.115.66.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1913.5; Fri, 10 Apr 2020 11:12:11 -0700
Received: from XCH16-05-12.nos.boeing.com ([fe80::2853:a628:2b4e:d669]) by
 XCH16-05-12.nos.boeing.com ([fe80::2853:a628:2b4e:d669%11]) with mapi id
 15.01.1913.005; Fri, 10 Apr 2020 11:12:11 -0700
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Controlling B205mini GPIO pins from the FPGA?
Thread-Index: AdYPYvDPJpjyf4zQRESw6ssx9VIedw==
Date: Fri, 10 Apr 2020 18:12:11 +0000
Message-ID: <4558c03f51754d30bb5dbf0326b3e776@boeing.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [144.115.204.6]
x-tm-snts-smtp: 3B923100F1132E56506218B2BE342BA0346E4310998BBB0EFD5768A00968A8A72000:8
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: [USRP-users] Controlling B205mini GPIO pins from the FPGA?
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
From: "Clark \(US\), Kenneth C via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Clark \(US\), Kenneth C" <kenneth.c.clark2@boeing.com>
Cc: "Clark \(US\), Kenneth C" <kenneth.c.clark2@boeing.com>
Content-Type: multipart/mixed; boundary="===============4024023748427373799=="
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

--===============4024023748427373799==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4558c03f51754d30bb5dbf0326b3e776boeingcom_"

--_000_4558c03f51754d30bb5dbf0326b3e776boeingcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am modifying the FPGA code (from version 7.0) for the B205mini.

I would like to control the GPIO pins from the FPGA code.

Control via the example GPIO host executable works fine.

I have tried hijacking the function in "radio_legacy.v" which I think is co=
ntrolling them.

  generate
      if (FP_GPIO !=3D 0) begin: add_fp_gpio
         gpio_atr #(.BASE(SR_FP_GPIO), .WIDTH(10), .FAB_CTRL_EN(0) ) fp_gpi=
o_atr
            (.clk(radio_clk),.reset(radio_rst),
            .set_stb(set_stb),.set_addr(set_addr),.set_data(set_data),
           .rx(run_rx), .tx(run_tx),
            .gpio_in(fp_gpio_in), .gpio_out(fp_gpio_out), .gpio_ddr(fp_gpio=
_ddr),
            .gpio_out_fab(10'h000 /* no fabric control */), .gpio_sw_rb(fp_=
gpio_readback));
      end
   endgenerate

In particular replacing the fp_gpio_out with my own register.

But so far all that does is cause the host GPIO program to no longer be abl=
e to control the pins (as expected), but the FPGA values are not coming out=
 either.

I would appreciate any examples, hints, tips/tricks to get this to work.

Thanks,

Ken Clark


--_000_4558c03f51754d30bb5dbf0326b3e776boeingcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am modifying the FPGA code (from version 7.0) for =
the B205mini.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would like to control the GPIO pins from the FPGA =
code.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Control via the example GPIO host executable works f=
ine.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have tried hijacking the function in &#8220;radio_=
legacy.v&#8221; which I think is controlling them.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; generate<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (FP_GPIO !=3D 0) b=
egin: add_fp_gpio<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gpi=
o_atr #(.BASE(SR_FP_GPIO), .WIDTH(10), .FAB_CTRL_EN(0) ) fp_gpio_atr<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; (.clk(radio_clk),.reset(radio_rst),<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; .set_stb(set_stb),.set_addr(set_addr),.set_data(set_data),<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;.rx(run_rx), .tx(run_tx),<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; .gpio_in(fp_gpio_in), .gpio_out(fp_gpio_out), .gpio_ddr(fp_g=
pio_ddr),<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; .gpio_out_fab(10'h000 /* no fabric control */), .gpio_sw_rb(=
fp_gpio_readback));<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; end<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; endgenerate<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In particular replacing the fp_gpio_out with my own =
register.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But so far all that does is cause the host GPIO prog=
ram to no longer be able to control the pins (as expected), but the FPGA va=
lues are not coming out either.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would appreciate any examples, hints, tips/tricks =
to get this to work.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ken Clark<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_4558c03f51754d30bb5dbf0326b3e776boeingcom_--



--===============4024023748427373799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4024023748427373799==--


