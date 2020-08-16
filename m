Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F266245985
	for <lists+usrp-users@lfdr.de>; Sun, 16 Aug 2020 22:49:09 +0200 (CEST)
Received: from [::1] (port=47142 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7PaW-0007xI-6c; Sun, 16 Aug 2020 16:49:08 -0400
Received: from mr85p00im-zteg06011501.me.com ([17.58.23.182]:40798)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <ghulands@me.com>) id 1k7PaS-0007qA-Fe
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 16:49:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
 t=1597610903; bh=6id09DBa3pBnICZn2kRDVVkqd7B+CSJXhtndDB6mXxQ=;
 h=From:Message-Id:Content-Type:Mime-Version:Subject:Date:To;
 b=vj2hLJsfRXqb5ICoX2XoC2CgyvBDppb3IoUD//ONJ8LzaaqV7rEcoA4qEwHVN5jP3
 t8Od3+fklnndG0ta596PpukR5X2+2xuYx2lGTOFHcFDxJY/XVsCFK2oIWsuaDgnyiP
 LVlBOfMkt0SDf8237PGCbUcMaahH5U/tzUps9R0n8/zr9Jhs09cmCXV7184h/1N9IK
 4NsP9pu9BA6TKNQUNncqpVzlDDnakQh1IWBroFg0UqcNAFjle3WN4LKwQ/3oiiiv2u
 THz9gwShz6P410jPdZ0bxq4jJAaGZRjYhoy4S1Qs9czYhXBp2Q2Z4R1dVms5o4WHS8
 21I+aWe4NWNBw==
Received: from gregs-mbp-82.ghulands.homeip.net
 (c-73-116-156-63.hsd1.ca.comcast.net [73.116.156.63])
 by mr85p00im-zteg06011501.me.com (Postfix) with ESMTPSA id 1693C2A07D6;
 Sun, 16 Aug 2020 20:48:23 +0000 (UTC)
Message-Id: <387BD354-DF4A-4D29-9D10-30CBE911C762@me.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Date: Sun, 16 Aug 2020 13:48:22 -0700
In-Reply-To: <5F399965.3060808@gmail.com>
Cc: usrp-users@lists.ettus.com
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
References: <84027C06-239F-4DD5-B847-D9F777453988@me.com>
 <5F399965.3060808@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-08-16_09:2020-08-14,
 2020-08-16 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2004280000 definitions=main-2008160173
Subject: Re: [USRP-users] B210 Got a ctrl packet with unknown SID
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
From: Greg Hulands via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Greg Hulands <ghulands@me.com>
Content-Type: multipart/mixed; boundary="===============8511330768735862905=="
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


--===============8511330768735862905==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1D34E482-1468-4B9E-8DD1-EDB45E89C41B"


--Apple-Mail=_1D34E482-1468-4B9E-8DD1-EDB45E89C41B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,
Thanks for the suggestion. Adding that parameter didn=E2=80=99t help. =
The encoding is done on the GPU of the Jetson and cpu load is only 10% =
when this is happening.

Any other ideas?

Thanks,
Greg

> On Aug 16, 2020, at 1:39 PM, Marcus D. Leech via USRP-users =
<usrp-users@lists.ettus.com> wrote:
>=20
> On 08/16/2020 04:13 PM, Greg Hulands via USRP-users wrote:
>> Hi,
>> I=E2=80=99m playing around with a Jetson Nano dev kit and trying to =
stream h265 encoded video over dvb-t2 using the b210. I am using the =
example from the dtv folder of gr. I modified the source file to read =
from a file made with mkfifo.
>>=20
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; =
UHD_3.15.0.0-54-gbc585b43
>> [INFO] [B200] Detected Device: B210
>> [INFO] [B200] Operating over USB 3.
>> [INFO] [B200] Initialize CODEC control...
>> [INFO] [B200] Initialize Radio control...
>> [INFO] [B200] Performing register loopback test...
>> [INFO] [B200] Register loopback test passed
>> [INFO] [B200] Performing register loopback test...
>> [INFO] [B200] Register loopback test passed
>> [INFO] [B200] Asking for clock rate 36.571429 MHz...
>> [INFO] [B200] Actually got clock rate 36.571428 MHz.
>>=20
>> I then launch the gstreamer pipeline and then the below is output and =
nothing is transmitted. I googled around and it was suggested that the =
usb3 controller might be an issue, but I have seen other people =
successfully using the Jetson Nano with the board.
>>=20
>> Does anyone have any suggestions?
>>=20
>> Thanks,
>> Greg
> Those 'S' are a strong indication that your USB subsystem is really =
not keeping up.  I'm not surprised, given that it's having to do both =
encoding,
>  and managing a high-speed sample-flow to the USRP.
>=20
> The 'S' means 'sequence error', which generally mans your USB is =
dropping frames.   You could try adding 'num-rx_frames=3D128' to your
>  device arguments and see if that helps.
>=20
>=20
>>=20
>> SSSSSSSS[ERROR] [B200] Got a ctrl packet with unknown SID 207029870
>> SSSSSSSSSSSS[ERROR] [B200] Got a ctrl packet with unknown SID =
392757359
>> SSSS[ERROR] [B200] Got a ctrl packet with unknown SID 57090934
>> [ERROR] [B200] Got a ctrl packet with unknown SID 190782680
>> SSSSSSSSSSS[ERROR] [B200] Got a ctrl packet with unknown SID =
4268095150
>> [ERROR] [B200] Got a ctrl packet with unknown SID 139913854
>> [ERROR] [B200] Got a ctrl packet with unknown SID 4067295524
>> SSSSSSSSSS[ERROR] [B200] Got a ctrl packet with unknown SID =
4284742065
>> SSSSSSSS[ERROR] [B200] Got a ctrl packet with unknown SID 22226522
>> [ERROR] [B200] Got a ctrl packet with unknown SID 90499236
>> SS[ERROR] [B200] Got a ctrl packet with unknown SID 23069098
>> SS[ERROR] [B200] Got a ctrl packet with unknown SID 4066441695
>> [ERROR] [B200] Got a ctrl packet with unknown SID 4133743282
>> S[ERROR] [B200] Got a ctrl packet with unknown SID 4150322913
>> [ERROR] [B200] Got a ctrl packet with unknown SID 90109890
>> [ERROR] [B200] Got a ctrl packet with unknown SID 441973211
>> [ERROR] [B200] Got a ctrl packet with unknown SID 241827466
>> [ERROR] [B200] Got a ctrl packet with unknown SID 124189179
>> [ERROR] [B200] Got a ctrl packet with unknown SID 73204104
>> [ERROR] [B200] Got a ctrl packet with unknown SID 458545291
>> [ERROR] [B200] Got a ctrl packet with unknown SID 3664645059
>> S[ERROR] [B200] Got a ctrl packet with unknown SID 4200001599
>> [ERROR] [B200] Got a ctrl packet with unknown SID 4184080041
>> [ERROR] [B200] Got a ctrl packet with unknown SID 3781167125
>> SSSSSSUSSSSSSSS[ERROR] [B200] Got a ctrl packet with unknown SID =
224652429
>> [ERROR] [B200] Got a ctrl packet with unknown SID 56228458
>> SSSSSS[ERROR] [B200] Got a ctrl packet with unknown SID 3981447612
>> SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS[ERROR] [B200] Got a =
ctrl packet with unknown SID 340790525
>> SSS[ERROR] [B200] Got a ctrl packet with unknown SID 945686494
>> SSSSSSS[ERROR] [B200] Got a ctrl packet with unknown SID 22817439
>> SSS
>>=20
>> Gstreamer pipeline:
>> gst-launch-1.0 nvarguscamerasrc ! 'video/x-raw(memory:NVMM), =
width=3D1920, height=3D1080,format=3DNV12, framerate=3D30/1' ! =
nvv4l2h265enc bitrate=3D8000000 ! mpegtsmux ! filesink =
location=3Dcamera.ts
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>

--Apple-Mail=_1D34E482-1468-4B9E-8DD1-EDB45E89C41B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hi,<div class=3D"">Thanks for the suggestion. Adding that =
parameter didn=E2=80=99t help. The encoding is done on the GPU of the =
Jetson and cpu load is only 10% when this is happening.</div><div =
class=3D""><br class=3D""></div><div class=3D"">Any other =
ideas?</div><div class=3D""><br class=3D""></div><div =
class=3D"">Thanks,</div><div class=3D"">Greg</div><div class=3D""><div><br=
 class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On Aug =
16, 2020, at 1:39 PM, Marcus D. Leech via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">On 08/16/2020 04:13 PM, Greg =
Hulands via USRP-users wrote:</span><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><blockquote type=3D"cite" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D"">Hi,<br class=3D"">I=E2=80=99m playing =
around with a Jetson Nano dev kit and trying to stream h265 encoded =
video over dvb-t2 using the b210. I am using the example from the dtv =
folder of gr. I modified the source file to read from a file made with =
mkfifo.<br class=3D""><br class=3D"">[INFO] [UHD] linux; GNU C++ version =
7.5.0; Boost_106501; UHD_3.15.0.0-54-gbc585b43<br class=3D"">[INFO] =
[B200] Detected Device: B210<br class=3D"">[INFO] [B200] Operating over =
USB 3.<br class=3D"">[INFO] [B200] Initialize CODEC control...<br =
class=3D"">[INFO] [B200] Initialize Radio control...<br class=3D"">[INFO] =
[B200] Performing register loopback test...<br class=3D"">[INFO] [B200] =
Register loopback test passed<br class=3D"">[INFO] [B200] Performing =
register loopback test...<br class=3D"">[INFO] [B200] Register loopback =
test passed<br class=3D"">[INFO] [B200] Asking for clock rate 36.571429 =
MHz...<br class=3D"">[INFO] [B200] Actually got clock rate 36.571428 =
MHz.<br class=3D""><br class=3D"">I then launch the gstreamer pipeline =
and then the below is output and nothing is transmitted. I googled =
around and it was suggested that the usb3 controller might be an issue, =
but I have seen other people successfully using the Jetson Nano with the =
board.<br class=3D""><br class=3D"">Does anyone have any suggestions?<br =
class=3D""><br class=3D"">Thanks,<br class=3D"">Greg<br =
class=3D""></blockquote><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Those 'S' are a strong indication that your USB subsystem is =
really not keeping up. &nbsp;I'm not surprised, given that it's having =
to do both encoding,</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">&nbsp;and managing a high-speed sample-flow to the =
USRP.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">The 'S' means =
'sequence error', which generally mans your USB is dropping frames. =
&nbsp;&nbsp;You could try adding 'num-rx_frames=3D128' to your</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">&nbsp;device arguments and see =
if that helps.</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><blockquote type=3D"cite" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br class=3D"">SSSSSSSS[ERROR] [B200] =
Got a ctrl packet with unknown SID 207029870<br =
class=3D"">SSSSSSSSSSSS[ERROR] [B200] Got a ctrl packet with unknown SID =
392757359<br class=3D"">SSSS[ERROR] [B200] Got a ctrl packet with =
unknown SID 57090934<br class=3D"">[ERROR] [B200] Got a ctrl packet with =
unknown SID 190782680<br class=3D"">SSSSSSSSSSS[ERROR] [B200] Got a ctrl =
packet with unknown SID 4268095150<br class=3D"">[ERROR] [B200] Got a =
ctrl packet with unknown SID 139913854<br class=3D"">[ERROR] [B200] Got =
a ctrl packet with unknown SID 4067295524<br class=3D"">SSSSSSSSSS[ERROR] =
[B200] Got a ctrl packet with unknown SID 4284742065<br =
class=3D"">SSSSSSSS[ERROR] [B200] Got a ctrl packet with unknown SID =
22226522<br class=3D"">[ERROR] [B200] Got a ctrl packet with unknown SID =
90499236<br class=3D"">SS[ERROR] [B200] Got a ctrl packet with unknown =
SID 23069098<br class=3D"">SS[ERROR] [B200] Got a ctrl packet with =
unknown SID 4066441695<br class=3D"">[ERROR] [B200] Got a ctrl packet =
with unknown SID 4133743282<br class=3D"">S[ERROR] [B200] Got a ctrl =
packet with unknown SID 4150322913<br class=3D"">[ERROR] [B200] Got a =
ctrl packet with unknown SID 90109890<br class=3D"">[ERROR] [B200] Got a =
ctrl packet with unknown SID 441973211<br class=3D"">[ERROR] [B200] Got =
a ctrl packet with unknown SID 241827466<br class=3D"">[ERROR] [B200] =
Got a ctrl packet with unknown SID 124189179<br class=3D"">[ERROR] =
[B200] Got a ctrl packet with unknown SID 73204104<br class=3D"">[ERROR] =
[B200] Got a ctrl packet with unknown SID 458545291<br class=3D"">[ERROR] =
[B200] Got a ctrl packet with unknown SID 3664645059<br =
class=3D"">S[ERROR] [B200] Got a ctrl packet with unknown SID =
4200001599<br class=3D"">[ERROR] [B200] Got a ctrl packet with unknown =
SID 4184080041<br class=3D"">[ERROR] [B200] Got a ctrl packet with =
unknown SID 3781167125<br class=3D"">SSSSSSUSSSSSSSS[ERROR] [B200] Got a =
ctrl packet with unknown SID 224652429<br class=3D"">[ERROR] [B200] Got =
a ctrl packet with unknown SID 56228458<br class=3D"">SSSSSS[ERROR] =
[B200] Got a ctrl packet with unknown SID 3981447612<br =
class=3D"">SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS[ERROR] [B200] =
Got a ctrl packet with unknown SID 340790525<br class=3D"">SSS[ERROR] =
[B200] Got a ctrl packet with unknown SID 945686494<br =
class=3D"">SSSSSSS[ERROR] [B200] Got a ctrl packet with unknown SID =
22817439<br class=3D"">SSS<br class=3D""><br class=3D"">Gstreamer =
pipeline:<br class=3D"">gst-launch-1.0 nvarguscamerasrc ! =
'video/x-raw(memory:NVMM), width=3D1920, height=3D1080,format=3DNV12, =
framerate=3D30/1' ! nvv4l2h265enc bitrate=3D8000000 ! mpegtsmux ! =
filesink location=3Dcamera.ts<br class=3D""><br class=3D""><br =
class=3D"">_______________________________________________<br =
class=3D"">USRP-users mailing list<br class=3D""><a =
href=3D"mailto:USRP-users@lists.ettus.com" =
class=3D"">USRP-users@lists.ettus.com</a><br class=3D""><a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br class=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">USRP-users mailing =
list</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><a href=3D"mailto:USRP-users@lists.ettus.com" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">USRP-users@lists.ettus.com</a><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a></div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_1D34E482-1468-4B9E-8DD1-EDB45E89C41B--


--===============8511330768735862905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8511330768735862905==--

