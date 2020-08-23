Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6027E24ED34
	for <lists+usrp-users@lfdr.de>; Sun, 23 Aug 2020 14:29:45 +0200 (CEST)
Received: from [::1] (port=42764 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k9p81-0003MF-CA; Sun, 23 Aug 2020 08:29:41 -0400
Received: from ns13-777.999servers.com ([103.14.122.123]:48434)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <kpras@trilcomm.com>) id 1k9p7w-0003HZ-Oa
 for usrp-users@lists.ettus.com; Sun, 23 Aug 2020 08:29:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=trilcomm.com; s=default; h=Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CF6uwlETwns51Qdym9ZIzMaJwvFdg0vN2CibexwMh94=; b=lyL0zvWT2sD8+VjDXcw7YHC8D
 TpAbQA+6hUhcAc2IFydg2WcCEITfPeMaDe4qVN7O2cy9V1doAZitR26Q42DfwEoK+QStIOzKaUfZt
 L7Nt7SdI4MmdO4BEauMNpPaEGsEJsFNf54+yUpa+M6jbyWEKXQ2GHOPkwZA+NMt36JkigHSAfA4q3
 pTx35ZnK/ZMhULZ5q2mJI0UuN55B7YH2IvWjRa++MijXGNuJyGTEYSe6C6DeBjNNDaTXEP70fA47F
 ondrIk9Ow6qjAMTb/mj/Hz7IrKS2/v14M7hLlT5z/9RanUSbFXvwtPtjPPSEMvcX+kG+dN6XnJkuO
 pdCfF3hYg==;
Received: from [183.83.141.206] (port=46808 helo=AetherGT)
 by ns13-777.999servers.com with esmtpsa (TLS1) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.93)
 (envelope-from <kpras@trilcomm.com>)
 id 1k9p7D-0000PH-SD; Sun, 23 Aug 2020 17:58:52 +0530
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>, <usrp-users@lists.ettus.com>
References: <53F074DDB8EF9CF2.b08124db-1501-4661-9a63-6aee26d65445@mail.outlook.com>
 <5F41C5B7.9030201@gmail.com>
In-Reply-To: <5F41C5B7.9030201@gmail.com>
Date: Sun, 23 Aug 2020 17:58:52 +0530
Message-ID: <000301d67948$f6b23a50$e416aef0$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdZ47IE+twAMVGWkTuSaALQVAhlcbQAXCuAA
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - ns13-777.999servers.com
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - trilcomm.com
X-Get-Message-Sender-Via: ns13-777.999servers.com: authenticated_id:
 kpras@trilcomm.com
X-Authenticated-Sender: ns13-777.999servers.com: kpras@trilcomm.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [USRP-users] USRP B210: getting RX samples with gradually
 increase delay
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
From: Prasad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Prasad <kpras@trilcomm.com>
Content-Type: multipart/mixed; boundary="===============4154775175054648335=="
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

This is a multipart message in MIME format.

--===============4154775175054648335==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0004_01D67977.106A7650"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_0004_01D67977.106A7650
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Marcus,

=20

Verified the code couple of time even tested bypassing USRP and it works =
fine.

So, suspecting any time_spec either in RX or TX missing in the code?

=20

Regards,

Prasad.

=20

From: Marcus D. Leech [mailto:patchvonbraun@gmail.com]=20
Sent: Sunday, August 23, 2020 6:56 AM
To: kpras@trilcomm.com; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] USRP B210: getting RX samples with gradually =
increase delay

=20

On 08/22/2020 09:08 PM, kpras@trilcomm.com wrote:

Yes relative delay between samples in buffer.

While detecting SYNC signal of 5G periodically, it  detects gradually =
increased delay from its expected position.

It means expected to receive at  2280 position of buffer but its keep =
detecting away from expected position, 2281,2282,2284,........ and so =
on.

=20

Thanks,

Prasad.

=20

My guess is that you have an off-by-one error in your buffer-harvesting =
code.  This has nothing to do with the device.




------=_NextPart_000_0004_01D67977.106A7650
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body bgcolor=3Dwhite lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Dear Marcus,<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<div>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Verified the code couple of time even tested bypassing =
USRP and
it works fine.<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>So, suspecting any time_spec either in RX or TX missing =
in the
code?<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Regards,<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Prasad.<o:p></o:p></span></p>

</div>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif";
color:windowtext'>From:</span></b><span =
style=3D'font-size:10.0pt;font-family:
"Tahoma","sans-serif";color:windowtext'> Marcus D. Leech
[mailto:patchvonbraun@gmail.com] <br>
<b>Sent:</b> Sunday, August 23, 2020 6:56 AM<br>
<b>To:</b> kpras@trilcomm.com; usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] USRP B210: getting RX samples with =
gradually
increase delay<o:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<div>

<p class=3DMsoNormal>On 08/22/2020 09:08 PM, <a =
href=3D"mailto:kpras@trilcomm.com">kpras@trilcomm.com</a>
wrote:<o:p></o:p></p>

</div>

<blockquote style=3D'margin-top:5.0pt;margin-bottom:5.0pt'>

<p class=3DMsoNormal><span style=3D'color:#212121'>Yes relative delay =
between
samples in buffer.<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#212121'>While detecting SYNC =
signal of
5G periodically, it&nbsp; detects gradually increased delay from its =
expected
position.<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#212121'>It means expected to =
receive
at&nbsp; 2280 position of buffer but its keep detecting away from =
expected
position, 2281,2282,2284,........ and so on.<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#212121'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#212121'>Thanks,<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'color:#212121'>Prasad.<o:p></o:p></span></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</blockquote>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'>My guess is that you =
have an
off-by-one error in your buffer-harvesting code.&nbsp; This has nothing =
to do
with the device.<br>
<br>
<o:p></o:p></p>

</div>

</body>

</html>

------=_NextPart_000_0004_01D67977.106A7650--



--===============4154775175054648335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4154775175054648335==--


