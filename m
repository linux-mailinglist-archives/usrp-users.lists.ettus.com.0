Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1764C586ED
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2019 18:23:28 +0200 (CEST)
Received: from [::1] (port=33878 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgXB9-0007Ea-M3; Thu, 27 Jun 2019 12:23:19 -0400
Received: from eu-smtp-delivery-105.mimecast.com ([146.101.78.105]:34819)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <jaya.thota@toshiba-trel.com>)
 id 1hgXB5-000793-O7
 for usrp-users@lists.ettus.com; Thu, 27 Jun 2019 12:23:16 -0400
Received: from Bayard.toshiba-trel.local
 (214.98-255-62.static.virginmediabusiness.co.uk [62.255.98.214]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-139-KLkrqZglPiy6Ck-TCKOiCA-1; Thu, 27 Jun 2019 17:22:30 +0100
Received: from Bayard.toshiba-trel.local (192.168.23.14) by
 Bayard.toshiba-trel.local (192.168.23.14) with Microsoft SMTP Server (TLS) id
 15.0.1367.3; Thu, 27 Jun 2019 17:22:29 +0100
Received: from Bayard.toshiba-trel.local ([fe80::c4e4:bf4c:ddf0:f66a]) by
 Bayard.toshiba-trel.local ([fe80::c4e4:bf4c:ddf0:f66a%12]) with mapi id
 15.00.1367.000; Thu, 27 Jun 2019 17:22:29 +0100
To: "'USRP-users@lists.ettus.com'" <USRP-users@lists.ettus.com>
Thread-Topic: X310 with CBX 120 daughter board  looses uplink RF Connection
Thread-Index: AdUtBIO6LMvpaEkGQ9q4yDVLMPNuMA==
Date: Thu, 27 Jun 2019 16:22:29 +0000
Message-ID: <87aeadc1d01642b5b0181da373262f33@Bayard.toshiba-trel.local>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.21.216]
MIME-Version: 1.0
X-MC-Unique: KLkrqZglPiy6Ck-TCKOiCA-1
X-Mimecast-Spam-Score: 0
Subject: [USRP-users] X310 with CBX 120 daughter board looses uplink RF
 Connection
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
From: Jaya Thota via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jaya Thota <jaya.thota@toshiba-trel.com>
Content-Type: multipart/mixed; boundary="===============2187275982245461046=="
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

--===============2187275982245461046==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_87aeadc1d01642b5b0181da373262f33Bayardtoshibatrellocal_"

--_000_87aeadc1d01642b5b0181da373262f33Bayardtoshibatrellocal_
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


Hi all,

I have a two X310 with CBX-120 daughter board running on UHD version 3.13.0=
 on Ubuntu 16.04.
I am using it to tx/rx LTE 5MHz BW and 10 MHz BW signals at 2.85MHz using d=
irectional LP0965 antennas.
However after few minutes the USRP looses uplink RF connection.

Do I need to calibrate them?
I did send the following commands without any RF connectors to calibrate. B=
ut I have the same issue.
The master clock rate for LTE is 184.32e6 Hz. Do I need to send this as wel=
l.
Any suggestions will be helpful.
1. sudo uhd_cal_rx_iq_balance --verbose --args=3D"addr=3D192.168.40.2" --fr=
eq_start 2.4e9 --freq_stop 2.9e9 --freq_step 1e6
2. sudo uhd_cal_tx_iq_balance --verbose --args=3D"addr=3D192.168.40.2" --fr=
eq_start 2.4e9 --freq_stop 2.9e9 --freq_step 1e6
3. sudo uhd_cal_tx_dc_offset --verbose --args=3D"addr=3D192.168.40.2" --fre=
q_start 2.4e9 --freq_stop 2.9e9 --freq_step 1e6

Regards
Jaya

________________________________

NOTE: The information in this email and any attachments may be confidential=
 and/or legally privileged. This message may be read, copied and used only =
by the intended recipient. If you are not the intended recipient, please de=
stroy this message, delete any copies held on your system and notify the se=
nder immediately.

Toshiba Research Europe Limited, registered in England and Wales (2519556).=
 Registered Office 208 Cambridge Science Park, Milton Road, Cambridge CB4 0=
GZ, England. Web: www.toshiba.eu/research/trl
---------------------------------------------------------------------------=
------------
 This email has been scanned for email related threats and delivered safely=
 by Mimecast.
 For more information please visit http://www.mimecast.com
---------------------------------------------------------------------------=
------------

--_000_87aeadc1d01642b5b0181da373262f33Bayardtoshibatrellocal_
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
=09{font-family:"Cambria Math";
=09panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
=09{font-family:Calibri;
=09panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
=09{margin:0cm;
=09margin-bottom:.0001pt;
=09font-size:11.0pt;
=09font-family:"Calibri",sans-serif;
=09mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
=09{mso-style-priority:99;
=09color:#0563C1;
=09text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
=09{mso-style-priority:99;
=09color:#954F72;
=09text-decoration:underline;}
span.EmailStyle17
=09{mso-style-type:personal-compose;
=09font-family:"Calibri",sans-serif;
=09color:windowtext;}
.MsoChpDefault
=09{mso-style-type:export-only;
=09font-family:"Calibri",sans-serif;
=09mso-fareast-language:EN-US;}
@page WordSection1
=09{size:612.0pt 792.0pt;
=09margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
=09{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head><body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a two X310 with CBX-120 daughter board runnin=
g on UHD version 3.13.0 on Ubuntu 16.04.<o:p></o:p></p>
<p class=3D"MsoNormal">I am using it to tx/rx LTE 5MHz BW and 10 MHz BW sig=
nals at 2.85MHz using directional LP0965 antennas.<o:p></o:p></p>
<p class=3D"MsoNormal">However after few minutes the USRP looses uplink RF =
connection.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Do I need to calibrate them?<o:p></o:p></p>
<p class=3D"MsoNormal">I did send the following commands without any RF con=
nectors to calibrate. But I have the same issue.
<o:p></o:p></p>
<p class=3D"MsoNormal">The master clock rate for LTE is 184.32e6 Hz. Do I n=
eed to send this as well.<o:p></o:p></p>
<p class=3D"MsoNormal">Any suggestions will be helpful.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">1. sudo uhd_cal_rx_iq_balance --verbose --args=3D&quot;addr=3D192.=
168.40.2&quot; --freq_start 2.4e9 --freq_stop 2.9e9 --freq_step 1e6<o:p></o=
:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">2. sudo uhd_cal_tx_iq_balance --verbose --args=3D&quot;addr=3D192.=
168.40.2&quot; --freq_start 2.4e9 --freq_stop 2.9e9 --freq_step 1e6<o:p></o=
:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">3. sudo uhd_cal_tx_dc_offset --verbose --args=3D&quot;addr=3D192.1=
68.40.2&quot; --freq_start 2.4e9 --freq_stop 2.9e9 --freq_step 1e6<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Jaya<o:p></o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"3"><br>
NOTE: The information in this email and any attachments may be confidential=
 and/or legally privileged. This message may be read, copied and used only =
by the intended recipient. If you are not the intended recipient, please de=
stroy this message, delete any copies
 held on your system and notify the sender immediately.<br>
<br>
Toshiba Research Europe Limited, registered in England and Wales (2519556).=
 Registered Office 208 Cambridge Science Park, Milton Road, Cambridge CB4 0=
GZ, England. Web: www.toshiba.eu/research/trl<br>
<br>
</font>


<br /><br /><span style=3D"font-family:Arial; Font-size:10.0pt"> <hr width=
=3D"100%" /> This email has been scanned for email related threats and deli=
vered safely by Mimecast.<br /> For more information please visit <a href=
=3D"http://www.mimecast.com">http://www.mimecast.com</a> <hr width=3D"100%"=
 /> </span></body></html>

--_000_87aeadc1d01642b5b0181da373262f33Bayardtoshibatrellocal_--



--===============2187275982245461046==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2187275982245461046==--


