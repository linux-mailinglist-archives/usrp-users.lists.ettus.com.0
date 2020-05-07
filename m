Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAD41C7FB9
	for <lists+usrp-users@lfdr.de>; Thu,  7 May 2020 03:08:46 +0200 (CEST)
Received: from [::1] (port=50750 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jWV1l-0003j1-SY; Wed, 06 May 2020 21:08:41 -0400
Received: from mout.web.de ([212.227.15.4]:53331)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hex98@email.de>) id 1jWV1i-0003aa-A9
 for usrp-users@lists.ettus.com; Wed, 06 May 2020 21:08:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588813677;
 bh=btXgcNqlMTCYWt52ddkpRTIvidFGf9dqSmzI7CUmgD0=;
 h=X-UI-Sender-Class:Date:Subject:From:To;
 b=jpyNIgbnb9oRDi3ubEXrkh/cyeegov+04TcxboplN0VoepRkKyvaC5LRLqWkbCJqv
 V5ttZ90wqoHMSGefDodQooAKEeQN6+2LI3KnY9Cw55aqsdKQOLKNqzmRl13kcS6XzI
 Rz/nK0+xNaPFtq/WZWUGtkXeacXhAsWAIcdTV8Ro=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.14] ([87.150.154.203]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MiMAE-1itZAR0bfK-00fTud for
 <usrp-users@lists.ettus.com>; Thu, 07 May 2020 03:07:57 +0200
User-Agent: Microsoft-MacOutlook/16.36.20041300
Date: Thu, 07 May 2020 03:07:56 +0200
To: <usrp-users@lists.ettus.com>
Message-ID: <FE777AB1-6314-4C78-B763-82260D19A8A3@email.de>
Thread-Topic: TX underflows when using multi_usrp vs. two independent
 tx_streamers
Mime-version: 1.0
X-Provags-ID: V03:K1:jkG7l7pvkQ0txXqsiXNqb9WRbJBC+2EQgrC3jGLIO6Pv54tx4iB
 oZ5YIKXiyCBlGlfPNxGaWrWTxGUy8HDdn9653HcnDf+w+PE9REnQNC5/VtRV1ZBNWp2JMGj
 3ANKT+/YkmuUyUhjwGGJnPsvffOwR2M0ZIzBS8WXIQLbkuQ4YNm2PXdoVj/0YNJhNW38eOw
 yFr8encJJO6BEypE0ycQA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8Bh8xKTgcfg=:IgiT+f0HdY4mYfYq2eUO3N
 B/Pwq9B66J9irK1nxtyJwO8FKTg58PnyQ8KZN7+JAkFFWuU5HxmehztZksDoKZEr47EfJinQt
 vHHGjvMgVXPacfc36nkrQKbyFpdK529b3N9RPEGJvJwEJ7C3oLFtRPZpkWsjPDBDEo/e7vDYo
 pxKYSMW1WiyDcwPOJeTXeweBtYR6IzqlwGeDn7nJQp3sALBDzz7ii4UmV8fCbNIf1dTZ69jfd
 GaaayJ4d8BrCvwT93Z6nXUnanlrr119pjdMXgNWJYwQZAXyX9ejv2aXFmfy9cs1aeG3NZ9QQ1
 Yx13MYDX1RzwE/D+vMFKgBqaJJK4m/ucBbDNrlb7yKz4nZ2w+9uuP5+8sMpJTfDuYZz0Cy66/
 GgvZUOAToTFxSA5ppV2nmyaXNtZvbbojB6FablI22i4f+RPfdh+htAefAaL+SPMCdJ0zbX/4r
 gxohxT+gX650N9Jg2Opq4AwPjkc7ImEX/JYiRcnThPT+H5gdQyYmjCyeeK6HSK++vBw3Jqw1W
 76Bp0F8fuebsiQw3gFK3sX+EPTKmJtEG4xOzFXTBcRpBxchDXgBwes9fAxOkiK0agb3fC7pnJ
 TfgURoy38CTox1wZ5ALYJL+f5wIW4TWOqCejPoT0RyzemzuY87whv+mCFKgKkiRWBdZuCjpfj
 68pQJjAVvAxwNVcGjH+8LPULoUklHjOlcXa8DHa+R5tznk9MG7GGYPL6W2M0RCZqOMFMCp8T7
 5hBpFxzGbkgygbAM7nDw6W5Jpm5wLqMrqXX5IHTkJfJoGqfNxT61Sdvkex8x2JrvxInshs4Sx
 UAe43QiwxeOLAP02063WTOSfCQblQociGOWwtWswKCOlQaV803GWzLhMEItYW7QQlxc8ZQHXj
 QKrm3rozAxvmJXx6V0NEVriUpiuyuLvSyKJFWrxsxzFbH/WDXx7usFXVNJjiOyR5yUuYjRfVc
 5edUpQMFU1mzypx0GY9nuCbxB2Ud9Po6WhxrIgkDZWpKJRySYnxen9tcrb6X9cFtY+gTPVQY5
 oA3yQyILCR3+lafiIrpsMFt1rZzEvTcMQv4ix031mAVg50z88T6YFYj3SNWikjKBXDCyMxrl9
 uxRlTDE+20YVWUuEW8bOu8Xi9yc0vZ4FQ+JNy/QFH2Jgyq4OvIMXkdhDUPtFPx+w2ITPA3WeN
 ii6HqDi2DuyiEP03xlJwCTDo5+L9hNaNSFrZoYuVu8RUjadmv4QJRM0HVnUccnhK6rQvSZ5BW
 YmYF+mi1iPiKTQWM3
Subject: [USRP-users] TX underflows when using multi_usrp vs. two
 independent tx_streamers
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
From: Max via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Max <hex98@email.de>
Content-Type: multipart/mixed; boundary="===============2220428297850515525=="
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

> This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

--===============2220428297850515525==
Content-type: multipart/alternative;
	boundary="B_3671665677_586097967"

> This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

--B_3671665677_586097967
Content-type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all



I have two X300 USRPs connected to the same PC by 10Gb. Both USRPs are syn=
chronized with 10MHz.

I can receive data without any overflows at 200 MHz (one channel per USRP)=
, but transmitting results in massive underflows for 184.32 and 200 MHz.

benchmark_rate shows the same behavior when transmitting on both USRPs at =
the same time; sampling rates <=3D 100 MHz or using just one USRP however =
works without underflows.



But I also tried running two benchmark_rate processes in parallel, one for=
 each of the USRPs, and this works flawlessly.

Is there any explanation, why using uhd::usrp::multi_usrp results in massi=
ve underflows, while operating two devices in parallel in general seems to=
 work?



I assume using two uhd::device objects with independent tx_streamers could=
 be a workaround for me. But using multi_usrp nevertheless seems more conv=
enient.



Kind regards,

Max



System:

Intel Xeon Server running Ubuntu 18.04 Linux with UHD version 3.14.1.


--B_3671665677_586097967
Content-type: text/html;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:schema=
s-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/office/20=
04/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta http-equiv=3DC=
ontent-Type content=3D"text/html; charset=3Dutf-8"><meta name=3DGenerator content=3D=
"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1847329433;
	mso-list-type:hybrid;
	mso-list-template-ids:-1223422704 2056441126 67567619 67567621 67567617 67=
567619 67567621 67567617 67567619 67567621;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:2035031174;
	mso-list-type:hybrid;
	mso-list-template-ids:-1990931608 1591131108 67567619 67567621 67567617 67=
567619 67567621 67567617 67567619 67567621;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style></head><body lang=3DDE link=3D"#0563C1" vlink=3D"#954F72"><div class=3DW=
ordSection1><p class=3DMsoNormal><span style=3D'font-size:11.0pt'>Hi all<o:p></o=
:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt'><o:p>&nbsp;<=
/o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt'=
>I have two X300 USRPs connected to the same PC by 10Gb. Both USRPs are sync=
hronized with 10MHz. <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'font-size:11.0pt'>I can receive data without any overflows at 200 =
MHz (one channel per USRP), but transmitting results in massive underflows f=
or 184.32 and 200 MHz.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-US style=3D'font-size:11.0pt'>benchmark_rate shows the same behavior when tra=
nsmitting on both USRPs at the same time; sampling rates &lt;=3D 100 MHz or us=
ing just one USRP however works without underflows. <o:p></o:p></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt'><o:p>&nbsp;</o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt'>But =
I also tried running two benchmark_rate processes in parallel, one for each =
of the USRPs, and this works flawlessly. <o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US style=3D'font-size:11.0pt'>Is there any explanation, wh=
y using uhd::usrp::multi_usrp results in massive underflows, while operating=
 two devices in parallel in general seems to work?<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt'><o:p>&nbsp;</o:p></=
span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt'>I assu=
me using two uhd::device objects with independent tx_streamers could be a wo=
rkaround for me. But using multi_usrp nevertheless seems more convenient.<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0=
pt'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'f=
ont-size:11.0pt'>Kind regards,<o:p></o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US style=3D'font-size:11.0pt'>Max<o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US style=3D'font-size:11.0pt'><o:p>&nbsp;</o:p></span></p><=
p class=3DMsoNormal><span style=3D'font-size:11.0pt'>System:<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:11.0pt'>Intel Xeon Se=
rver running Ubuntu 18.04 Linux with </span><span style=3D'font-size:11.0pt'>U=
HD version 3.14.1.</span><span lang=3DEN-US style=3D'font-size:11.0pt'><o:p></o:=
p></span></p></div></body></html>

--B_3671665677_586097967--




--===============2220428297850515525==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2220428297850515525==--



