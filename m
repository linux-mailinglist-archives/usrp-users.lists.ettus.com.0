Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C24B52867C3
	for <lists+usrp-users@lfdr.de>; Wed,  7 Oct 2020 20:53:01 +0200 (CEST)
Received: from [::1] (port=40872 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQEYd-0001QY-C6; Wed, 07 Oct 2020 14:52:59 -0400
Received: from smtprelay0057.hostedemail.com ([216.40.44.57]:42704
 helo=smtprelay.hostedemail.com)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <jon@beniston.com>) id 1kQEYZ-0001JU-Ml
 for usrp-users@lists.ettus.com; Wed, 07 Oct 2020 14:52:55 -0400
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 16BF318029132
 for <usrp-users@lists.ettus.com>; Wed,  7 Oct 2020 18:52:15 +0000 (UTC)
X-Session-Marker: 6A6F6E4062656E6973746F6E2E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, jon@beniston.com, ,
 RULES_HIT:2:10:41:72:355:379:541:542:871:960:962:967:973:983:988:989:1000:1021:1029:1155:1189:1208:1260:1263:1308:1309:1313:1314:1345:1381:1431:1436:1437:1516:1517:1518:1575:1587:1588:1589:1592:1594:1606:1691:1730:1764:1776:1792:2194:2199:2525:2526:2527:2528:2561:2564:2610:2682:2685:2689:2859:2902:2917:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3865:3866:3867:3868:3870:3871:3872:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4048:4184:4321:4362:4379:4423:4511:4513:4605:6117:6119:6261:6300:6353:6506:6658:6670:6678:6747:6748:7281:7398:7688:7875:7903:8583:8603:8660:8957:9010:9025:9082:9121:9388:9868:10004:10026:10049:10197:10346:10394:10848:10919:11026:11233:11604:11656:11658:11914:12043:12295:12296:12297:12438:12555:12663:12895:13139:13148:13161:13229:13230:13439:14096:14659:21060:21063:21080:21088:21433:21451:21499:21627:21703:21740:21789:21819:21917:21939:30012:30054:30060:30070:30083,
 0, RBL:
X-HE-Tag: drink72_53003f5271d1
X-Filterd-Recvd-Size: 85023
Received: from jonpc (cpc98568-croy24-2-0-cust213.19-2.cable.virginm.net
 [82.34.249.214]) (Authenticated sender: jon@beniston.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA
 for <usrp-users@lists.ettus.com>; Wed,  7 Oct 2020 18:52:14 +0000 (UTC)
To: <usrp-users@lists.ettus.com>
Date: Wed, 7 Oct 2020 19:52:13 +0100
Message-ID: <051701d69cda$f9201040$eb6030c0$@beniston.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="----=_NextPart_000_0518_01D69CE3.5AE51480"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: Adac11dyZUP4wtH9QoGkUWbpth6Vcw==
Content-Language: en-gb
Subject: [USRP-users] How to destroy a tx_stream?
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
From: Jon Beniston via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jon Beniston <jon@beniston.com>
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

------=_NextPart_000_0518_01D69CE3.5AE51480
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0519_01D69CE3.5AE53B90"


------=_NextPart_001_0519_01D69CE3.5AE53B90
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

 

What is the correct way to destroy a tx_stream? I've tried calling
tx_stream.reset() (which I've seen suggested on the mailing list for
rx_streams) and assigning nullptr, but both give some strange results, as
below. I'm using UHD 4.0 with a B210. Outline of my code:

 

      

       // Init and send some data - this works ok

       usrp = uhd::usrp::multi_usrp::make(some_args);

       usrp->set_freq_etc();

       tx_stream = usrp->get_tx_stream(args);

       repeat

             tx_stream->send(buf, size, md);

        // Indicate no more data

        md.end_of_burst = true;

        tx_stream->send(buf, 0, md);

        // Throw away any underflows, so we don't get them next time

        while (tx_stream->recv_async_msg(amd)) 

              ;

 

        // What do I do here when I'm done?

        tx_stream.reset();

        tx_stream = nullptr;

 

       // Some time later - send again

       tx_stream = usrp->get_tx_stream(args);

       repeat

             tx_stream->send(buf, size, md);

      .

 

For the first transmissions, the output spectrum is as I'd expect (in
attached OkSpectrum.PNG). However, if I call tx_stream.reset(), then the
spectrum appears wrong for subsequent transmissions, as in OddSpectrum.PNG
(i.e. the unexpected peak at the centre freq).

 

Perhaps something silly I'm doing wrong, but I can't see this done in any of
the example code. The docs say: 'When calling
<https://files.ettus.com/manual/classuhd_1_1device.html#a66d1bf289dd03a03df3
860f3eee578c0> get_tx_stream() a second time, the first streamer must be
destroyed beforehand.', but it seems the opposite for me. If I don't call
it, subsequent transmissions seem fine.

 

Thanks,

Jon  

 

 


------=_NextPart_001_0519_01D69CE3.5AE53B90
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Roboto;
	panose-1:2 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>What is the =
correct way to destroy a tx_stream? I&#8217;ve tried calling =
tx_stream.reset() (which I&#8217;ve seen suggested on the mailing list =
for rx_streams) and assigning nullptr, but both give some strange =
results, as below. I&#8217;m using UHD 4.0 with a B210. Outline of my =
code:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Init and =
send some data &#8211; this works ok<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;usrp =3D =
uhd::usrp::multi_usrp::make(some_args);<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
usrp-&gt;set_freq_etc();<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tx_stream =3D =
usrp-&gt;get_tx_stream(args);<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
repeat<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tx_stream-&gt;send(buf, size, =
md);<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // Indicate =
no more data<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
md.end_of_burst =3D true;<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
tx_stream-&gt;send(buf, 0, md);<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // Throw =
away any underflows, so we don&#8217;t get them next =
time<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while =
(tx_stream-&gt;recv_async_msg(amd)) <o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // What do =
I do here when I&#8217;m done?<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
tx_stream.reset();<o:p></o:p></p><p class=3DMsoNormal>&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tx_stream =3D =
nullptr;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // Some time =
later &#8211; send again<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tx_stream =3D =
usrp-&gt;get_tx_stream(args);<o:p></o:p></p><p class=3DMsoNormal>&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;repeat<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tx_stream-&gt;send(buf, size, =
md);<o:p></o:p></p><p class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&#8230;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>For the first transmissions, the output spectrum is as =
I&#8217;d expect (in attached OkSpectrum.PNG). However, if I call =
tx_stream.reset(), then the spectrum appears wrong for subsequent =
transmissions, as in OddSpectrum.PNG (i.e. the unexpected peak at the =
centre freq).<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Perhaps something silly I&#8217;m doing wrong, but I =
can&#8217;t see this done in any of the example code. The docs say: =
&#8216;<span =
style=3D'font-size:10.5pt;font-family:Roboto;color:black;background:white=
'>When calling </span><a =
href=3D"https://files.ettus.com/manual/classuhd_1_1device.html#a66d1bf289=
dd03a03df3860f3eee578c0" title=3D"Make a new transmit streamer from the =
streamer arguments. "><b><span =
style=3D'font-size:10.5pt;font-family:Roboto;color:#869578;text-decoratio=
n:none'>get_tx_stream()</span></b></a><span =
style=3D'font-size:10.5pt;font-family:Roboto;color:black;background:white=
'> a second time, the first streamer must be destroyed =
beforehand.&#8217;, </span><span =
style=3D'color:black;background:white'>but it seems the opposite for me. =
If I don&#8217;t call it, subsequent transmissions seem =
fine.</span><o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p class=3DMsoNormal>Jon&nbsp; =
<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_001_0519_01D69CE3.5AE53B90--

------=_NextPart_000_0518_01D69CE3.5AE51480
Content-Type: image/png;
	name="OkSpectrum.PNG"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="OkSpectrum.PNG"

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
FWcrzlacrThbcbbibMXZioOtwsGpOQk4W3G24mzF2YqzFWcrzlacrThbcbBVODg1JwFnK85WnK04
W3G24mzF2YqzFWcrDrYKB6fmJOBsxdmKsxVnK85WnK04W3G24mzFwVbh4NScBJytOFtxtuJsxdmK
sxVnK85WnK042CocnJqTgLMVZyvOVpytOFtxtuJsxdmKsxUHW4WDU3MScLbibMXZirMVZyvOVpyt
OFtxtuJgq3Bwak4CzlacrThbcbbibMXZirMVZyvOVhxsFQ5OzUnA2YqzFWcrzlacrThbcbbibMXZ
ioOtwsGpOQk4W3G24mzF2YqzFWcrzlacrThbcbBVODg1JwFnK85WnK04W3G24mzF2YqzFWcrDrYK
B6fmJOBsxdmKsxVnK85WnK04W3G24mzFwVbh4NScBJytOFtxtuJsxdmKsxVnK85WnK042CocnJqT
gLMVZyvOVpytOFtxtuJsxdmKsxUHW4WDU3MScLbibMXZirMVZyvOVpytOFtxtuJgq3Bwak4Czlac
rThbcbbibMXZirMVZyvOVhxsFQ5OzUnA2YqzFWcrzlacrThbcbbibMXZioOtwsGpOQk4W3G24mzF
2YqzFWcrzlacrThbcbBVODg1JwFnK85WnK04W3G24mzF2YqzFWcrDrYKB6fmJOBsxdmKsxVnK85W
nK04W3G24mzFwVbh4NScBJytOFtxtuJsxdmKsxVnK85WnK042CocPNHzx+v7+8d79vocjL9+PBfr
OAk4W3G24mzF2YqzFWcrzlacrThbcbBVOHie59eP1+f8+Onj5e3t4+Xpv4/n1/ef8aeXt+JGxUnQ
w1acrThbcbbibMXZirMVZyvOVhxsFQ5eSfqtSPptSP76Pf708vH29vLx9P04vTFJkiRJ8/t9vR8K
B0+WfjNS/mlWdUNSPYZvTJ9sxdmKsxVnK85WnK04W3G24mzFwVbh4GEuf371/W9D3l6equfTjUf6
ky1vSPZiK85WnK04W3G24mzF2YqzFWcrDrYKB6/m69+OVDckwZ9sleuozVacrThbcbbibMXZirMV
ZyvOVhxsFQ6e5unl9fKP2L8e59+Q+I/a92IrzlacrThbcbbibMXZirMVZysOtgoHz/P8+vMnXMm/
/8WtdHOSx8s/33IS9LAVZyvOVpytOFtxtuJsxdmKsxUHW4WDU3MScLbibMXZirMVZyvOVpytOFtx
tuJgq3Bwak4CzlacrThbcbbibMXZirMVZyvOVhxsFQ5OzUnA2YqzFWcrzlacrThbcbbibMXZioOt
wsGpOQk4W3G24mzF2YqzFWcrzlacrThbcbBVODg1JwFnK85WnK04W3G24mzF2YqzFWcrDrYKB6fm
JOBsxdmKsxVnK85WnK04W3G24mzFwVbh4NScBJytOFtxtuJsxdmKsxVnK85WnK042CocnJqTgLMV
ZyvOVpytOFtxtuJsxdmKsxUHW4WDU3MScLbibMXZirMVZyvOVpytOFtxtuJgq3Bwak4CzlacrThb
cbbibMXZirMVZyvOVhxsFQ5OzUnA2YqzFWcrzlacrThbcbbibMXZioOtwsGpOQk4W3G24mzF2Yqz
FWcrzlacrThbcbBVODg1JwFnK85WnK04W3G24mzF2YqzFWcrDrYKB6fmJOBsxdmKsxVnK85WnK04
W3G24mzFwVbh4NScBJytOFtxtuJsxdmKsxVnK85WnK042CocnJqTgLMVZyvOVpytOFtxtuJsxdmK
sxUHW4WDU3MScLbibMXZirMVZyvOVpytOFtxtuJgq3Bwak4CzlacrThbcbbibMXZirMVZyvOVhxs
FQ5OzUnA2YqzFWcrzlacrThbcbbibMXZioOtwsGpOQk4W3G24mzF2YqzFWcrzlacrThbcbBVODg1
JwFnK85WnK04W3G24mzF2YqzFWcrDrYKB6fmJOBsxdmKsxVnK85WnK04W3G24mzFwVbh4NScBJyt
OFtxtuJsxdmKsxVnK85WnK042CocnJqTgLMVZyvOVpytOFtxtuJsxdmKsxUHW4WDU3MScLbibMXZ
irMVZyvOVpytOFtxtuJgq3Bwak4CzlacrThbcbbibMXZirMVZyvOVhxsFQ5OzUnA2YqzFWcrzlac
rThbcbbibMXZioOtwsGpOQk4W3G24mzF2YqzFWcrzlacrThbcbBVODg1JwFnK85WnK04W3G24mzF
2YqzFWcrDrYKB6fmJOBsxdmKsxVnK85WnK04W3G24mzFwVbh4NScBJytOFtxtuJsxdmKsxVnK85W
nK042CocnJqTgLMVZyvOVpytOFtxtuJsxdmKsxUHW4WDU3MScLbibMXZirMVZyvOVpytOFtxtuJg
q3Bwak4CzlacrThbcbbibMXZirMVZyvOVhxsFQ5OzUnA2YqzFWcrzlacrThbcbbibMXZioOtwsGp
OQk4W3G24mzF2YqzFWcrzlacrThbcbBVODg1JwFnK85WnK04W3G24mzF2YqzFWcrDrYKB6fmJOBs
xdmKsxVnK85WnK04W3G24mzFwVbh4NScBJytOFtxtuJsxdmKsxVnK85WnK042CocnJqTgLMVZyvO
VpytOFtxtuJsxdmKsxUHW4WDU3MScLbibMXZirMVZyvOVpytOFtxtuJgq3Bwak4CzlacrThbcbbi
bMXZirMVZyvOVhxsFQ5exfPr+8f728vH0+Xx88fr++fji9eP52I5JwFnK85WnK04W3G24mzF2Yqz
FWcrDrYKB0+XbkbeXl8/3r5vSNLj1+ev555e3j7eX59/lnUScLbibMXZirMVZyvOVpytOFtxtuJg
q3DwVOmG4+3l6eO/p5fvG5L025HityI/41+P0xuTJEmSNL/yur8hHDzNz81Iety6IakewzemT7bi
bMXZirMVZyvOVpytOFtxtuJgq3DwMJc/v/r+tyFvL88fL2/534kU3j5vUrwh2YWtOFtxtuJsxdmK
sxVnK85WnK042CocvI6OP9n6tZ6abMXZirMVZyvOVpytOFtxtuJsxcFW4eB1FDce/qP2fdiKsxVn
K85WnK04W3G24mzF2YqDrcLB6/j1m5D0W5L8Z1zln285CXrYirMVZyvOVpytOFtxtuJsxdmKg63C
wak5CThbcbbibMXZirMVZyvOVpytOFtxsFU4ODUnAWcrzlacrThbcbbibMXZirMVZysOtgoHp+Yk
4GzF2YqzFWcrzlacrThbcbbibMXBVuHg1JwEnK04W3G24mzF2YqzFWcrzlacrTjYKhycmpOAsxVn
K85WnK04W3G24mzF2YqzFQdbhYNTcxJwtuJsxdmKsxVnK85WnK04W3G24mCrcHBqTgLOVpytOFtx
tuJsxdmKsxVnK85WHGwVDk7NScDZirMVZyvOVpytOFtxtuJsxdmKg63Cwak5CThbcbbibMXZirMV
ZyvOVpytOFtxsFU4ODUnAWcrzlacrThbcbbibMXZirMVZysOtgoHp+Yk4GzF2YqzFWcrzlacrThb
cbbibMXBVuHg1JwEnK04W3G24mzF2YqzFWcrzlacrTjYKhycmpOAsxVnK85WnK04W3G24mzF2Yqz
FQdbhYNTcxJwtuJsxdmKsxVnK85WnK04W3G24mCrcHBqTgLOVpytOFtxtuJsxdmKsxVnK85WHGwV
Dk7NScDZirMVZyvOVpytOFtxtuJsxdmKg63Cwak5CThbcbbibMXZirMVZyvOVpytOFtxsFU4ODUn
AWcrzlacrThbcbbibMXZirMVZysOtgoHp+Yk4GzF2YqzFWcrzlacrThbcbbibMXBVuHg1JwEnK04
W3G24mzF2YqzFWcrzlacrTjYKhycmpOAsxVnK85WnK04W3G24mzF2YqzFQdbhYNTcxJwtuJsxdmK
sxVnK85WnK04W3G24mCrcHBqTgLOVpytOFtxtuJsxdmKsxVnK85WHGwVDk7NScDZirMVZyvOVpyt
OFtxtuJsxdmKg63Cwak5CThbcbbibMXZirMVZyvOVpytOFtxsFU4ODUnAWcrzlacrThbcbbibMXZ
irMVZysOtgoHp+Yk4GzF2YqzFWcrzlacrThbcbbibMXBVuHg1JwEnK04W3G24mzF2YqzFWcrzlac
rTjYKhycmpOAsxVnK85WnK04W3G24mzF2YqzFQdbhYNTcxJwtuJsxdmKsxVnK85WnK04W3G24mCr
cHBqTgLOVpytOFtxtuJsxdmKsxVnK85WHGwVDk7NScDZirMVZyvOVpytOFtxtuJsxdmKg63Cwak5
CThbcbbibMXZirMVZyvOVpytOFtxsFU4ODUnAWcrzlacrThbcbbibMXZirMVZysOtgoHp+Yk4GzF
2YqzFWcrzlacrThbcbbibMXBVuHg1JwEnK04W3G24mzF2YqzFWcrzlacrTjYKhycmpOAsxVnK85W
nK04W3G24mzF2YqzFQdbhYNTcxJwtuJsxdmKsxVnK85WnK04W3G24mCrcHBqTgLOVpytOFtxtuJs
xdmKsxVnK85WHGwVDk7NScDZirMVZyvOVpytOFtxtuJsxdmKg63Cwak5CThbcbbibMXZirMVZyvO
VpytOFtxsFU4ODUnAWcrzlacrThbcbbibMXZirMVZysOtgoHT/T88fr+/vH+4+3j5akef/14LtZx
EnC24mzF2YqzFWcrzlacrThbcbbiYKtw8ETpxuP3DUfy/Pr+8fr89f3Ty9vH++vzz3NOAs5WnK04
W3G24mzF2YqzFWcrzlYcbBUOnii6IanGnl4+3t5ePp6+H6c3Jkm6LR8f48fvvG76mtXLSJLm9O8a
vykcPNHvP9l6e3n6HitvUn4/hm9Mn2zF2YqzFWerL+kGIn/N39darcp167FH5bzibMXZirMVB1uF
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
rThbcbBVODg1JwFnK85W3Eytli6M9r5oGtleq1W9rZ5t77lua6xl6/pLts6r1n6M7nO5zMh7rNfp
2cbaukutotdZeu2e/Ury8r3rXYvHds5WnK042CocnJqTgLMVZytuplZ7XmitGdneUqvRC7t6+Z71
o2XPXH/J1nnV2o/RfS6XGXmPW9avl68fk3m1NpaN7lvvetfisZ2zFWcrDrYKB6fmJOBsxdmKm6nV
nhdaa0a2t9Rq9MKuXr5n/WjZM9dfsnVe9e7b2n6n57Po+TXler3bWFuXzKu1saxn39b2a0Ye2zlb
cbbiYKtwcGpOAs5WnK24mVrtdaFFjGxvqVXe3sh2y3V61o+W7X39evne9Vu2zqve97a23/n50fdX
rte7jbV1ybxqPa717FvvtmfgsZ2zFWcrDrYKB6fmJOBsxdmKm6nVnhdba0a2tdQqb29ku+U6vevX
y5+9fsvWeRXtx9K+re331vdVrt+7rbV1ybxqPa717FvvtmfgsZ2zFWcrDrYKB6fmJOBsxdmKm6UV
uRja64JpdDtLrfI2R7ZdrtO7/pZ1k63rt2ydV9G+LO3f6HNUuY3e7a2tS+ZV63GN7lu0HF33mjy2
c7bibMXBVuHg1JwEnK04W3GztCIXQ3tdMI1uZ6lV3ubItst1etffsm6ydf2WrfMq2pel/Rt9jiq3
MbK9vE60LplXrceRLcuQda/JYztnK85WHGwVDk7NScDZirMVN0urvS60iNHtLLXK2xzZdrlO7/pb
1k3yOiPrLtk6r+r9Wdu/pef3em95OyPbW1qXzKvW48jaMkvPk+1fk8d2zlacrTjYKhycmpOAsxVn
K26WVntcaFGj21lrNbrdvN7I+uU6W9YfWXfJ1nlV7w/Zv9Yye723vJ2R7S2tu9SqXp689toyS8+T
7SdpObrsnjy2c7bibMXBVuHguZ5fP97f3y/eXp6+x58/Xr/H3t9fP56L5Z0EnK04W3GztCIXN3td
AI1uZ63V6HbzeiPrl+tsff09bZ1X9T6RfWwts9f7y9sZ2V5ap7XeUqt6HfLaa8ssPd+zfbLs3jy2
c7bibMXBVuHgeS43I79vOJLn1/eP1+ev759e3j7eX59/nnMScLbibMXN0Ipe2Ox1ATS6nbVWo9vN
642sX66z9fX3tHVejbyv1nJ7vb+8nZHtpXVa6/XMK/Laa8ssPd+zLtmXvXls52zF2YqDrcLB0zy/
vn28PNXj6bcjxU3K08vH29vLx9P34/TGJD22dGETjUd6lm3ZYxuR0e3m9UbWL9c56n1dw8j7ai23
V5e8nZHtpXVG96Ncj26jtRxZf2mZ+jm6P5Lux+/r/FA4eJLyz7K+fP1WpLohqR7DN6ZPtuJsxc3Q
Kl3UROORnmVbRrex1mp0u3m9a61/hK3zqnwv9H21lturS97O6PZa6/XMK/rareXI+kvL1M/R/dmL
x3bOVpytONgqHDzM5c+vvm8+3l5e/v4m5PLYG5K92IqzFTdDq56Lmq0XQFvWX2u1Zdtp3dH183pb
Xn9vW+dV+V7o+4qW27NJ3tboNlvr0XnV87qtZck2etbt2ac9eGznbMXZioOtwsGT1DceTx8vb+lP
uKrx4E+2/m1DS2zF2YqboVXPRc3WC6At6x/ZKu3X6L7l9ba22dPWVuV7oe8rWm7PJmlbe24vW2uV
X7PntVvLkm30rtuzX1t5bOdsxdmKg63CwdOkf7z+87+s9fMbEv9R+15sxdmKm6FVzwXN1oufLesf
2Srt1+i+bVn3KFtble+HvrdouT27pG3tub1srVV+zZ7Xbi1LttG7bs9+beWxnbMVZysOtgoHT5R+
K5L/DUn5D9zTb0nyePlbFCdBD1txtuJmaNVzQbP14mfL+ke22rJfad2tXfa2tVV+Pz3vK1p2zy5p
W3tuL1trlV+z57WjZen6reV6x4/gsZ2zFWcrDrYKB6fmJOBsxdmKu3ar3ouZrRc/W9Y/stWW/Urr
bu2ytz1ajbyvevk9u4zsD7HWKr9mz2tHy9L1W8v1jh/BYztnK85WHGwVDk7NScDZirMVd+1WIxcz
PevUy265eJp5Xp15UUjs0Sq9p973tefPO3JE57VW+TXPatFabmn93n0b5bGdsxVnKw62Cgen5iTg
bMXZiiOt0sXGURccI9ul6+TlyuW3vI+Z59WW93WEPVql99T7vvb6Wbccsc21Vvk1t7SIHre0llta
v3ffRnls52zF2YqDrcLBqTkJOFtxtuLWWpUXGkdcdIxsM1onjdXj5eP8fbQu5bzi9mgV/UzXRD/z
PR2xTfoZ3NIietzSWm5p/d59G+VnkLMVZysOtgoHp+Yk4GzF2YpbajV6QdNjZJtL+5W/j5apx3o5
r7g9Wo38zMrlt/68I0dsc61Vfs0tLaLHLdFya+v27tsoP4OcrThbcbBVODg1JwFnK85W3FKrkQuT
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
9TbKx/VzBF2HzquRfTjKUpv8+Ij9ha3CwamVbyyFG4k3ul5paX36HNmHaHmyXkIPLmtGt7G03tp7
2brf9fbT12gsfU3owUW26mErzlacrThbLSvPg+X3S8hy0Xm2Rl8vq7fZWn/t+SV0HTqvRvbhKOW+
1PuVHmfl+B5gq3BwauUbG42X1xldd229pefL58jr52XS1/L7cpmW1Iouu2R0G0vrrb2Xrftdbz99
jcbS18STFmcrzlacrThbcbZaF50Tl5DlyDbp62X1Nlvrrz2/hK5D59XIPhyl3Jdov9LYyP6urQNb
hYNTq99YDkEjlsul7+l6GVln6fmR18tfy+/LZVpSq97Xi4xuo7UefR9b9j16jfR9OV4+50mLsxVn
K85WnK04W60rz4v1cxGyHNkmfb0kLVtvs7X+2vNL6Do982pkP46Q9mOpTfl8j7V1YKtwcGrRG+uJ
WC7Xs15G1ll6fuT16q90G6lV7+tFRrfRWi+Pr213y763XqMcL5/zpMXZirMVZyvOVpyt1rXOly1k
ObJN+npJWrbeZmv9teeX0HV65tXIfhwh7cdSm/L5Hq118jhsFQ5OLXpjPRHr5aL1lrZFXmtt/Wi8
JS9ffyVyq97XrI2u31qPvpetrxut33rOkxZnK85WnK04W3G2Wrd0zmxZWzY9T5aJxiPl9uqvtbXn
l9B1euZVvc2R/dpDet382tE+lM/3WNsWbBUOTm3pjZGQ9TKtkPVYNvIaJbJ+KS9ffyVyq97XrI2u
31qPvpetrxut33rOkxZnK85WnK04W3G2Wrd0zmxZWzY9T5aJxiPl9uqvtfL51jItdPmeeVVvc2S/
9lC+7tLr9+5btHz5WrBVODi1pTe2FrEVjYxla6+RtZaj65fKdXrWz63SOnk9sn69TM9r1qJ16b6M
vu7S9lvPedLibMXZirMVZyvOVuuWzpkta8um58n26GuW26u/1srnW8u00OV75lW9HyP7tYfydZde
v2ffym22xmGrcHBqS29sLWIrWmuMLh/Zsm5tdL3cKq2ft0G2VS8z+vpJtC7d3ujr5vWWXrt+zpMW
ZyvOVpytOFtxtlq3dM5sWTq/5u/J9uhr5uXK7bbWjZal6PI986rcj3L7vfu2VWs/aj371dpeepzH
YKtwcGpLb2wtYvT80hhdPpKWq5el69ZG18utyn0h26qXJeu0ROvS7Y2+7tJ+t57zpMXZirMVZyvO
Vpyt1i2dM1uWzq/5e7I9+pp5uXK7rXWjZSm6fM+8Kvej3D55Lbo/RGs/aj2v2dpeOQ63Fw5ObW0S
tN54z3geq59rbSOSlt2y/h7KVvm1yT7Uy27Z72jdnu2NvPbSOvm5ehlPWpytOFtxtuJsxdlqXeu8
uCRathxL35Pt0dfMy5Xbba0bLVs/17L2fNYzr8r9KLdPXovuD9Haj1rPa7a2V47D7YWDU1ubBK03
vhSkfi4/bo0Tadkt6++hbhXtUyQvR5dfEq3fs82R119aJz9XL+NJi7MVZyvOVpytOFuta50Xl0TL
lmPpe7I9+pp5uXK7rXWjZaPHtaXnaj3zqnzd8jXIviwt0ytti2y35zVb2yvHYatwcGprb6wVsjWe
LIWMvhJp2S3r76FuVe7TkrwcXX5JtI2ebY68/sg6nrQ4W3G24mzF2Yqz1bp8ztx6bi7H0vdke/Q1
83LldlvrtpYtH0eWnqv1zqtyP+qxSLT8VmlbZLs9rxltr/4etgoHp7b2xlohW+NJ/Vx+3PpKpGXL
9XrW3Uvdqt6P1j7l5erlR9Xb6NnmyOuPrONJi7MVZyvOVpytOFuty+fMrefmcix9T7ZHXzMvV263
te7Ssq11kqXnar3zqvX6dLx+vrb2fJKWIdsj28qi7dXfw1bh4NTW3thSlPx9rX4uPc7K5+vlltTr
96y7l7pVvR+t/cpjred71dvo2ebI64+s40mLsxVnK85WnK04W63L58yt5+ZyjG6rd7n0tfy+XCZb
W3ZtPaJ3XkX7kR9n9Xj0tWXt+SQts+f2knp76Wu9LmwVDk5t7Y2VIepQLfVy6WsWPU/U6/esu5eo
Vbkf0X6tPT9i6TXW1PtTPtcyss+etDhbcbbibMXZirPVunzOHD03R2Nbt1Wqt5sft9aLlimXXVov
Go/0zqtoP3rG6+dL6bml57NyubXlyfaSenvpa70ubBUOTm3tjZUh6lAtOWBWjuXvy69EvX7PunuJ
WpX7Ue9XtJ/14xFbt5mXp+uN7LMnLc5WnK04W3G24my1rvccm9XLl497trW0nfpx/j59rZfLyuei
5crnonGid16tvebaeP18iSyTpOd7lo3Ga+VyrW3DVuHg1NbeGIlTS8+XyrH8ffmVqNfvWXcvUaty
P+r9ivazfjxi6zbz8nS9kX32pMXZirMVZyvOVpyt1vWeY7N6+fJxz7bq9ch2o+Wy+rl6ufy4NU70
zqvWa5bSc/VyS+uRZUrp+Z5lo/FauVxr27BVODi1tTdWB0lf6zgt5bL19+VXItrO2aJW5b6U+5i/
1vtaPx6xdZt5ebreyD570uJsxdmKsxVnK85W63rPsVm5fPq+fpy/X9PaTv21NVZLz0Xr1I9b48TI
vErbX3qN8vnW1xJZJiuXWVouI8sk5XKtdWCrcHBqa28sBym/tiLVymXr9cvniHL9+rmzRK3K/an3
MX2t97d+PGLrNvPydL2RffakxdmKsxVnK85WnK3W9Z5js3L59H39OH+/prWd+mtrrJaei9apn4/G
y8dLRubV2vbLfWp9LZXLl2Pl43o8WidSLrO2zTWwVTg4tbU3lgPVX4m0bGv98jmiXv8aolbl/tT7
mL7W+1s/HrF1m3n5pfXK53q3n3jS4mzF2YqzFWcrzlbryDk2Uq6X1c8R9Xr5cf21FI2VyPP1Mmvr
lEbmFdl+Xib6Wq/fGisf1+PROpFymbVtroGtwsGpkTdGg0fyeq2vvUbX20PUqtyf6D3W+1s/HrF1
m3n5pfXK53q3n3jS4mzF2YqzFWcrzlbr0jkz6W2Vz7V5/fy4fI6o18uP66+laKxEnq+XWVunNDKv
yPbzfpXK8fx9+bUUjZXj6WtrmVK5zNo218BW4eDUyBujwSN5vdbXXqPr7SFqVe5P9B6P2N96m72v
Ue5f9HXpe2rk4PKobMXZirMVZyvOVuvSOTPpbZXPtXn9/Lh8jiq3lb/WY6VorESer5dZW6c0Mq/I
9vN+lcrx+vtauUw5Vo6Xz7XU65fPrY3XYKtwcGrkjdHgkXq9/Hiv7Z0palXuT/3e0tcj9rfeZu9r
lPsXfW2N9Rg5uDwqW3G24mzF2YqzFZPOnb2tyvNuVj9HldvKX+uxUjRWWns+K5ej6yQj84psPy2T
lyPfR+rny8f1cy2t9UtkOwlsFQ5OjbyxVjyiXi8/3mt7Z4palftTv7ej9rXebu/rlPtXK8fLZXuN
HFwela04W3G24mzF2YpJ587eVvU5uDz/lt8T0fr5cbStaKy09nxWLkfXSUbmVe8+pa9r30fq56PH
+fuWvEz9tUS2k8BW4eDUyBujkSL1ulu2lWxdf4uoVbk/+fv6697q7fa+Trl/tXK8XLbXyMHlUdmK
sxVnK85WnK2YdO7sbVWfg8vzb/k9Ea2fH0fbisZKa89n5XJ0nWRkXvXuU/q69n2kfj56nL9vycvU
X0tkOwlsFQ5OjbwxGilSr7tlW9cWtSrfT/6+/rq3eru9r1PuXxaNl2O9Rg4uj8pWnK04W3G24mzF
pHNnb6v6HFyef8vviWj9/DjaVjRWWns+K5ej6yQj86p3n9LXte8j9fPR4/x9S16m/loi20lgq3Bw
auSN0UjEnts6W9SqfD/5+/rr3ra+TrleuW40Xj7fY+Tg8qhsxdmKsxVnK85WTDp39raqz8Hl+bf8
nqjXJ+P1WGnt+azcPl0nGZlXPfuUv65931I+Xy+/tm5WrhetT7cDW4WDUyNvjEYi9tzW2aJWS5Pq
qPe69XXK9cp1o/Hy+R4jB5dHZSvOVpytOFtxtmLSuXOkVev823suLrdTj9djS+MZff3ydek6yZHz
qtyf+vv8eE25XL1ezzbystH6dDuwVTg4NQ8uXNRqaVLRydVr6+uU65XrRuPl8z2cV5ytOFtxtuJs
xdmKSefOkVblObf1PRWt09rO2vZ7Xj8v27POkfOq3J/6+/x4TblcvV7PNvKy0fp0O7BVODg1Dy5c
1GqPydWr3n7v65TrletG4+XzPZxXnK04W3G24mzF2YpJ586RVuU5t/U9Fa3T2s7a9ntePy/bs86R
86rcn/r7/HhNuVy9Xs828rLR+nQ7sFU4ODUPLlzUao/J1avefu/rlOuV60bj5fM9nFecrThbcbbi
bMXZiknnzpFW5Tm39f0Wre2sbb/n9fOyPeucMa/S/tT7RvexXK7cTv3cknK9en26jQS2Cgen5sGF
i1q1Jlc9tqd6+72v01qvHG8tQzmvOFtxtuJsxdmKsxWTzp0jrcpzbuv7LVrbWdt+z+vnZXvWOWNe
pf2p943uY7lcuZ36uSXlevX6dBsJbBUOHuj54/Xt5eNpdfzz8fv7x/vF68dzsawHFy5q1Zpc9die
6u33vk5rvXK8tQzlvOJsxdmKsxVnK85WTDp3jrQqz7mt77dobWev7Sd5Wz3bPGNepf2p943uY7lc
uZ36uSXlevX6dBsJbBUOHuLp5e3rBqO6IYnGn1/fP16fi+dfn3+W9+DCRa1ak6se21O9/d7Xaa1X
jreWoZxXnK04W3G24mzF2YpJ586RVuU5t/X9Fq3t7LX9JG+rZ5tnzat63+g+lsul7+vH+fslrXXq
7a2BrcLB4zy9fLxFvyH5NZ5+O1L8VqRaJ70xjUuTqPzaGttTvf3e12mtV463lpEkSctGz53lekec
h1vbOuI19tzmntJ+9e5buXy9Pt1Wa516e8Sva/5YOHickRuS6jF8Y/oUtUqTqPzaGttTvf3e12mt
V463lqGcV5ytOFtxtuJsxdmKSefOkVblOXfrefhaRvb7zHmV9qu3abl8vT7dVmudentrYKtwcLOf
P8P69Pby9O85b0hOFbXKkyiaaD0TrEe9/d7Xaa1XjreWoZxXnK04W3G24mzF2YobaVWec7eeh69l
ZL/PnFcjPev3VG6Dbq+1TvqebiOBrcLB44zckFTreHDholZ5Em2ZXL3q1+x9rdZ65XhrGcp5xdmK
sxVnK85WnK24ra22noevZWS/z5xXIz3r91Rug26vtQ5dP4OtwsHjoBsS/1H7XqJWeSLVk6t3gvWo
X7P3tVrrleOtZSjnFWcrzlacrThbcbbitrbaeh6+lpH9PnNejfZM6428t6xcp/U9AVuFg4co/4wr
+XXD8Wc8/ZYkj5V/vuXBpUfUKpqc6fveCdajfM2R12mtF203Wo5wXnG24mzF2YqzFWcrbmurrefh
axnZ7zPn1WjPtN7Ie4uU6/duC7YKB6fmwYWLWrUm59bJuqR8zZHXaa0XbTdajnBecbbibMXZirMV
Zytua6ut5+FrGdnvM+fVaM+03sh7i5Tr924LtgoHp+bBhYtatSbn1sm6pHzNkddprRdtN1qOcF5x
tuJsxdmKsxVnK26PVuX5+FaMXD+cOa9Ge+75syi307tN2CocnJoHFy5qlSdSPaH2mrSR8jVHXyda
L9ru6PadV5ytOFtxtuJsxdmK26NVeT6+FSPXD2fOq9Gee/4syu30bhO2Cgen5sGFi1rliVRPqL0m
baR8zdHXidaLtju6fecVZyvOVpytOFtxtuL2aFWej2/FyPXDmfNqtOeeP4tyO73bhK3Cwal5cOGi
Vnki1RNqr0kbKV9z9HWi9aLtjm7fecXZirMVZyvOVpytuD1alefjWzFy/XDmvBrtuefPotxO7zZh
q3Bwah5cuKhVnkj1hNpr0kbK1xx9nWi9aLuj23decbbibMXZirMVZytuj1bl+fhWjFw/nDmvRnvu
+bMot9O7TdgqHJyaBxeu1SqapHtN2kjedvS6VLRetN3R7TuvOFtxtuJsxdmKsxW3R6vyfHwrRq4f
zpxXoz33/FmU2+ndJmwVDk7NgwvXahVN0r0mbUt+zdHXidbLY+V2R7fvvOJsxdmKsxVnK85W3B6t
yvPxrRi5fjhzXo323PNnUW6nd5uwVTg4NQ8uXKtVNEn3mrQt+TVHXydaL4+VX0e377zibMXZirMV
ZyvOVtwerbach6+lvIaon2s5c16N9tzzZ1Fup3ebsFU4ODUPLlyrVTRJ95q0Lfk1R18nWi+PlV9H
t++84mzF2YqzFWcrzlbcHq22nIevZWSfz5xXoz33/FmU2zmoVTg4NQ8uXKtVNEn3mrQt+TVHXyda
L4+VX0e377zibMXZirMVZyvOVtwerbach69lZJ/PnFejPff8WeTtjGwPtgoHp+bBhWu1iibpXpO2
Jb/m6OtE6+Wx8uvo9p1XnK04W3G24mzF2Yrbo9WW8/C1jOzzmfNqtOeeP4u8nZHtwVbh4NQ8uHCt
VtEk3WvStuTXHH2daL08Vn4d3b7zirMVZyvOVpytOFtxe7Tach6+lpF9PnNejfbc82eRtzOyPdgq
HJyaBxeu1SqapHtN2pb8mqOv01qv3OaW7TuvOFtxtuJsxdmKsxW3R6st5+Fr6t3nM+fVaM89fw55
WyPbhK3Cwal5cOFardKEqifVnhM3smUyJ6310ni57dHtO684W3G24mzF2YqzFbdHqy3n4Wvq3ecz
59Vozz1/DnlbI9uErcLBqXlw4Vqt0oSqJ9WeEzeyZTInrfXS+NZtJ84rzlacrThbcbbibMXt0ao8
J9+S3n0+c17N0nP0ZwtbhYNT8+DCtVpFk+roCZ+3P/o6rfXK8S3vwXnF2YqzFWcrzlacrbg9WqXz
8JZz8bX07vOZ82qWnqM/W9gqHJyaBxeu1SqaVEdP+Lz90ddprVeOb3kPzivOVpytOFtxtuJsxe3R
Kp2Ht5yLr6V3n8+cV7P0HP3Zwlbh4NQ8uHCtVtGkOnrC5+2Pvk5rvXJ8y3twXnG24mzF2YqzFWcr
bo9W6Ty85Vx8Lb37fOa8mqXn6M8WtgoHp+bBhWu1iibV0RM+b3/0dVrrleNb3oPzirMVZyvOVpyt
OFtxe7RK5+Et5+Jr6d3nM+fVLD1Hf7awVTg4NQ8uXKvV6KTaIr/e6Ou21ivHt7wn5xVnK85WnK04
W3G24vZolc7DW87F19K7z484r0Z/trBVODg1Dy5cq9U1Dhj59UZft7VeOb7lPTmvOFtxtuJsxdmK
sxW3R6t0Ht5yLr6W3n1+xHk1+rOFrcLBqXlw4VqtrnHAyK83+rqt9crxLe/JecXZirMVZyvOVpyt
uD1apfPwlnPxtfTu8yPOq9GfLWwVDk7NgwvXanWNA0Z+vdHXba1Xjm95T84rzlacrThbcbbibMXt
0Sqdh7eci6+ld58fcV6N/mxhq3Bwah5cuFaraxww8uuNvm5rvXJ8y3tyXnG24mzF2YqzFWcrbo9W
6Ty85Vx8Lb37/IjzavRnC1uFg1Pz4MK1Wl3jYJFfc+/XLre3ZdvOK85WnK04W3G24mzF7dEqnYf3
Ps+foXefH3Fejf5sYatwcGoeXLhWq2scLPJr7v3a5fa2bNt5xdmKsxVnK85WnK24PVql8/De5/kz
9O7zI86r0Z8tbBUOTs2DC9dqdY2DRX7NvV+73N6WbTuvOFtxtuJsxdmKsxW3R6t0Ht77PH+G3n1+
xHk1+rOFrcLBqXlw4VqtrnGwyK+592uX29uybecVZyvOVpytOFtxtuL2aJXOw3uf58/Qu8+POK9G
f7awVTg4NQ8uXKvVNQ4W+TX3fu1ye1u27bzibMXZirMVZyvOVtwerdJ5eO/z/Bl69/kR59Xozxa2
Cgen5sGFa7W6xsEiv+ber11ub8u2nVecrThbcbbibMXZitujVToP732eP0PvPj/ivBr92cJW4eDU
PLhwrVbXOFjk19z7tcvtbdm284qzFWcrzlacrThbcXu0Sufhvc/zZ+jd50ecV6M/W9gqHJyaBxeu
1eoaB4ujXrPc7pbXcF5xtuJsxdmKsxVnK26PVte4vthD734/4rxKjUZ+vrBVODg1Dy5cq9U1DhhH
vWa53S2v4bzibMXZirMVZyvOVtwera5xfbGH3v1+xHmVGo38fGGrcHBqHly4VqtrHDCOes1yu1te
w3nF2YqzFWcrzlacrbg9Wl3j+mIPvfv9iPMqNRr5+cJW4eDUPLhwrVbXOGAc9Zrldre8hvOKsxVn
K85WnK04W3GP3Kr3+uERW6VGI9dZsFU4ODUPLlyr1ZYL91FHvWa53S2v4bzibMXZirMVZyvOVtwj
t+q9fnjEVqnRyHUWbBUOTs2DC9dqteXCfdRRr7nXdp1XnK04W3G24mzF2Yp75Fa91xKP2Co1Grnm
gq3Cwal5cOFarY66OVhy1GvutV3nFWcrzlacrThbcbbiHrlV77XEI7ZKjUauuWCrcHBqHly4Vquj
bg6WHPWae23XecXZirMVZyvOVpytuEdu1Xst8YitRq+3YKtwcGoeXLhWK29I/nJecbbibMXZirMV
ZyvOVtwjtvKGpOIHhmu18obkL+cVZyvOVpytOFtxtuJsxT1iqzu7IXn+eH17+XjKj59ePt7e3z/e
v729PP1b7mf89eP5Z30/MD1ara5xQ3IUb0jOZyvOVpytOFtxtuJsxT1iq7u5IXl6efu6wShvSJ5f
P16f8zLpJuTt4+Xpv4/n1/ef8ct6r8/fy/iB6dFq5Q3JX84rzlacrThbcbbibMXZinvEVndzQ3KR
fiNS3pD88vTx8pZuSNKNSfFbkWqd9Ma0TZpU0fgtuqf3IkmSNKMt11u/r/dD4eBxlm5Ifp6rbkj+
PJYkSZJ0J8LBzX7+POvXvwv51Lwh+ffnWn9vQLwhkSRJku5UOHic8IakvBnJj9t/siVJkiTpboSD
x6lvLtLjXzcjX5b+UbskSZKkuxEOHqL8M64k3XDUY8nXn3il35LkMf9cS5IkSbpT4aAkSZIknSEc
lCRJkqQzhIOSJEmSdIZwcH7Pr7/+3cnwP3q/w/8Fr/Q/CPDv/xt++W9xyk7VePA/LPB3ufp/ivka
498u/2MIn89VP/ef9x79XO/wZy1J0q7y+fXbr//XDer0eS2zeN1x9DVT7/i361xjhYNT+/qH8L8D
Pr8GQYk7u0hNk+Xts8XPe/q8ccv/a2X//j/hp+/TZFxv1vpfO7vW+I/Lz+3zvf28nzz29vXej/mw
SJJ01/78v2Goz79CLtcu6aJ+4brjWtdSrfEf17nGCgen9u+iOpCC/Nz1fS/3Henl8wfwNZ5/EOkC
/d/Y5b8CrK4/eONzgjSpft5DOCnKmxByQ1It87Pda41/Py7GnvN7/hy7fMBevpddWOep+rkn+YMp
SdIj+3X+zS7nz3SB+ve8ebmg/Tmfrl13PZjoWuTHta6lWuPfj4uxk6+xwsGpvZUhf2lETl/LIOnP
vXLIX1Hh+hP6uRlJj3+9pyRPjrJbeq//JsvPur9UPX4eX2s8P/708x6/nyt/VsXPrPxAXPzq8qmc
C5IkPbh04Xk5X5b/1fxyTi3+Y/Dlz+ar83IeT+t9n4PD665Hkq9Joue6r4GOHs+PP/3s9/dz+XH5
tby2yur32vdzDwen1vzhhoGKkOVy+XH9PVl/On/vRi/+7HOaWNFvl5bGo0l7rfH8+FPxM8kHz8uB
L49HP7N6LD0O37ckSQ/uctPxeX7NNxi/zqnpvFz8NqS+9ojOt/U5+REsvu/ea6Cjx/PjT8V+n3iN
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
jS9dUZtWCQAAAABJRU5ErkJggg==

------=_NextPart_000_0518_01D69CE3.5AE51480
Content-Type: image/png;
	name="OddSpectrum.PNG"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="OddSpectrum.PNG"

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
L123qOtk1p2y17xa836Hyy9ZP7tutNxwbKwV2Qbdj0fhsZ2zFWcrLtEqHDzE6/vH5e1lOF7+tqS5
WXl5u3x8vF1evh+XNyhJc8oFGBkjsuutUbc53Pbc4znt8kvXLeo6mXXPsOb9nrFutCxdnyy3ZF8k
aQu31/mzwsEDtL+u9eXrb0kGNyaDx4k3+LRsxdmKu5dW5QJsyfiUzDrFmlZ1m8Ntzz2e0y6/dN2i
rpNZd8pe82rN++1h3ejxWCu6naX7EymvUUXP98JjO2crzlZcolU4uIvrr2V934R8vL39/ZuR62Nv
TLZiK85W3L20GrtgWnohtebCa22rsQu/dmzN+1m6blHWyaw3Z695teb99rBu9HisFd3O0v2JtK+x
xevtxWM7ZyvOVlyiVTh4gOENyMvl7aP8atdgPPhVrt/X0BRbcbbi7qXV1MXSkgupNRdda1uVbUfb
b8eW7l9dful6VVkvu+6UveZVu69L97uHdaPHY63odpbuz9Dc/vXEYztnK85WXKJVOHiI8o/cf/6X
uH7+xsR//L4VW3G24s5uVS6CyIXQ1DJLLqTWXHStbTW27XZ86f7V5bPvq6yXXXfKXvOq3del+93D
utHjveYVNbd/PfHYztmKsxWXaBUOHqT8LUn9NybtP4Qvf2tSx9u/VXEyLGErzlbcma3qBRC5EJpa
ZsmF1JqLrrWtxrbdji/dv7p89n2V9bLrTtlrXrX7unS/e113r3lFReuPja3d1loe2zlbcbbiEq3C
wW45GThbcbbizmzVXuRMXfDMXQwtuVhac2G1ttXYttvxzP6Vdda8rzXrjtlrXq1p1eu6e80rKlp/
OFYfr93WWh7bOVtxtuISrcLBbjkZOFtxtuLOajV24ROZuxhacrG05sJqbauxbbfjmf0r66x5X3vY
a16tadXrunvNKypafzg29x6O4rGdsxVnKy7RKhzslpOBsxVnK+6sVuRiaG68WnKhtOaiam0r8v4y
+1fWWfO+9rDXvNqiVfsntWa7c+tu0WrpPlVj6w3H597DUTy2c7bibMUlWoWD3XIycLbibMWd0Ype
DM2NV/RCae0F1V6t2v3K7OPa97WHnlutbbx0/bl1t2iVeU/F1HpT+53d3loe2zlbcbbiEq3CwW45
GThbcbbizmg1dlGzdLyiF0lrL6b2atXuV2Yf176vPfTcKturrrd0/Xb5aN0tWq19T5H6XLRMdntr
eWznbMXZiku0Cge75WTgbMXZijuj1dhFzdLxilwklWXIclP2atXu19p97EWvrco62cZ1vaXrt8tH
627Rau17itTnomWy21vLYztnK85WXKJVONgtJwNnK85W3NGt5i5oMhdB5Pkqep7aq1W7X2v3sRc9
t1q73tL15/Z5i1Zr31OkPhctk93eWh7bOVtxtuISrcLBbjkZOFtxtuKObjV3QZO9CBpbph0nrzNl
r1Z1v9buX0/2bjX8+QhrPqepdbdq1W6D7uPcclOvRbexJY/tnK04W3GJVuFgt5wMnK04W3FHtyIX
QlOPxxxx8bRXq7qPW+7r2R6xVdlmdrtT627Vqt1GtK3hPkTLDE0tQ9bfmsd2zlacrbhEq3CwW04G
zlacrbijW81dzAyfpxc/Y8ttefG0V6u6j1vu69kesVXZZna7U+vu3Wrs57H9aU0tQ9afUtZf+hoe
2zlbcbbiEq3CwW45GThbcbbijmyVuRCiFy5jyy298JmyV6u6j1vu69n2nFel0xmt1mx3at2959XY
z2P7Q61ZP7sPHts5W3G24hKtwsFuORk4W3G24o5sRS5ChsvQC5douaUXPXP2alX3c+v9PdOe86p0
OqPVmu1Orbv3vBr+HD3OyL7G1H7N8djO2YqzFZdoFQ52y8nA2YqzFZdtlbkoIesMl6HbiZbL7OOU
PedV2det9/dMj9hqzXan1t27Vfvnlta0mHo8xWM7ZyvOVlyiVTjYLScDZyvOVlymVfZihyyfvWiJ
llu6f3P2nFdlX7fe3zM9Yqs1251a915bZV43WmfJ63hs52zF2YpLtAoHu+Vk4GzF2YrLtGovJOhF
xZKLj61ef8k2iT3nVdnXrff3TI/aas12x9a951ZLXztafslreGznbMXZiku0Cge75WTgbMXZilva
angRQS8qllx8tMuuef0l2yT2nFdlX7fe3zM9aqs9trv38WrPVktfe2x5+joe2zlbcbbiEq3CwW45
GThbcbbilraKLiDIRcWSC5h2Wbpedr+W2HNelX3den/P9Kit9tjuPR+vlvSYWpa+jsd2zlacrbhE
q3CwW04GzlacrbilraILCHJRkbmAWbJOMVx+6fpz9pxXZV+33t8z2Yq75+PVks9haln6Oh7bOVtx
tuISrcLBbjkZOFtxtuKWthq7gJi7sMhcwCxZp2iXX7ousee82mN/z7R3q0fqdc/HqyWfw9Sy9HU8
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

------=_NextPart_000_0518_01D69CE3.5AE51480
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

------=_NextPart_000_0518_01D69CE3.5AE51480--


