Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC9482A378
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jan 2024 22:40:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 08649385597
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jan 2024 16:40:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704922841; bh=tJxrxJ2ISL0D1y8amqEFDzVCa8EECNGOLJjjwW48fG4=;
	h=To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=JvrSzFTz0izbaMjlM79aE+4UdZJD8L5JiDEAejDBA+b121fgqwqwaxr87twS7Nf53
	 du5AmQBwzLAo0S1Xe10p1iX7LkJd/O2hrEptOr7bq/qT/QFNqaWYxUZKHKNO5xkCAr
	 lEPNEgajGW7YkYQEaiXNTr/N4E9dows5A0ZfK0kX3v4x/8PWdajDCi5/iUVZlTfVJX
	 P/mG3iFMe/mYCyL9TqyGJYovivKBf6GgDcRF8RKq7yPnuwLpI0y8Xo6ndr0tHr36IE
	 xspjQGDpWcTSuPsF2u2yCHCt60fm0jmiylgrJFFoHPl0VsBiRBiSN2RJ60wRTNqFKo
	 tLi4a9Frg9YWA==
Received: from mx0a-002bf101.pphosted.com (mx0a-002bf101.pphosted.com [148.163.151.36])
	by mm2.emwd.com (Postfix) with ESMTPS id B8C92385469
	for <usrp-users@lists.ettus.com>; Wed, 10 Jan 2024 16:40:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=curtisswright.com header.i=@curtisswright.com header.b="ifF8/Kd9";
	dkim-atps=neutral
Received: from pps.filterd (m0123022.ppops.net [127.0.0.1])
	by mx0a-002bf101.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40AGP932008557
	for <usrp-users@lists.ettus.com>; Wed, 10 Jan 2024 16:40:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	curtisswright.com; h=from:to:cc:subject:date:message-id
	:content-type:mime-version; s=pps042021; bh=K1RxNI3i8//dIKZkw4AL
	/MfBcwHS9Asway0WF9soSbQ=; b=ifF8/Kd9tdmnwsus2/jhU00Z7MirRKv4Fld0
	GoY/2VHG8Iu6wvK4gz7OkdweuIAekodbZMqRl3n/ebxw/6Mf8BL//KDXbMkfGj3m
	xwFuUMUmz/jlNNx+ZiFO0KvGmN6w+L+AFVQD2H5GVSKnhDoWf56WYLe6Xi1L4GUd
	kUpvHgJxfKGRqF2no1VTTGRVdLScjN4IrowObxcx7qLRBDQnhjrpT87xl+xH9XBY
	OVwxHJGAa/2IJCAqhbtn72UyiOfSAyu0R06v7qbzNAhhtF7lnlPpBEYBoRGkxtLC
	xJaFYav2wWDbmwkuJdT1m234hFzexPQOpfBksEIXGCmuTbHhwQ==
Received: from useiedge1902.curtisswright.com ([67.23.50.86])
	by mx0a-002bf101.pphosted.com (PPS) with ESMTPS id 3vhxqx8ct6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 10 Jan 2024 16:40:02 -0500 (EST)
Received: from USEIMAIL1901.ATL.CW.LOCAL (10.100.42.77) by
 useiedge1902.curtisswright.com (10.102.200.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Wed, 10 Jan 2024 16:39:59 -0500
Received: from USEIMAIL1903.ATL.CW.LOCAL (10.100.42.79) by
 USEIMAIL1901.ATL.CW.LOCAL (10.100.42.77) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Wed, 10 Jan 2024 16:40:00 -0500
Received: from USEIMAIL1903.ATL.CW.LOCAL ([fe80::dfdb:8466:4d70:e1b6]) by
 USEIMAIL1903.ATL.CW.LOCAL ([fe80::dfdb:8466:4d70:e1b6%13]) with mapi id
 15.02.1258.028; Wed, 10 Jan 2024 16:40:00 -0500
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E320 Full Enclosed Serial Console
Thread-Index: AdpEDLzRhiFbSRVNRqGk1/xzpt+Ueg==
Date: Wed, 10 Jan 2024 21:39:59 +0000
Message-ID: <224b1c6c97e246349b3344c199353309@curtisswright.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_a5df92d3-bc41-4011-84ae-24af45e15272_ActionId=99a3f1db-c6ec-4c11-a524-d8b60093bc11;MSIP_Label_a5df92d3-bc41-4011-84ae-24af45e15272_ContentBits=0;MSIP_Label_a5df92d3-bc41-4011-84ae-24af45e15272_Enabled=true;MSIP_Label_a5df92d3-bc41-4011-84ae-24af45e15272_Method=Standard;MSIP_Label_a5df92d3-bc41-4011-84ae-24af45e15272_Name=a5df92d3-bc41-4011-84ae-24af45e15272;MSIP_Label_a5df92d3-bc41-4011-84ae-24af45e15272_SetDate=2024-01-10T21:33:36Z;MSIP_Label_a5df92d3-bc41-4011-84ae-24af45e15272_SiteId=079132a0-3864-4413-a77e-c26f1fb47e37;
x-originating-ip: [10.15.201.25]
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: nfD9Y8czE6kncZa27-Hvx9RWy8P6imoF
X-Proofpoint-GUID: nfD9Y8czE6kncZa27-Hvx9RWy8P6imoF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-02_01,2023-11-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1011
 priorityscore=1501 adultscore=0 suspectscore=0 mlxlogscore=469
 impostorscore=0 phishscore=0 spamscore=0 mlxscore=0 bulkscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2401100172
Message-ID-Hash: F452JZW64D5PERWJGW736PSEF75IR7CB
X-Message-ID-Hash: F452JZW64D5PERWJGW736PSEF75IR7CB
X-MailFrom: prvs=4739279ded=sjimenez@curtisswright.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Tran, Tim" <tim.tran@curtisswright.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320 Full Enclosed Serial Console
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F452JZW64D5PERWJGW736PSEF75IR7CB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Jimenez, Samuel via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Jimenez, Samuel" <sjimenez@curtisswright.com>
Content-Type: multipart/mixed; boundary="===============3509051854031178740=="

--===============3509051854031178740==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_224b1c6c97e246349b3344c199353309curtisswrightcom_"

--_000_224b1c6c97e246349b3344c199353309curtisswrightcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have an Full Enclosed E320 and wish to access serial console to the STM32=
 microcontroller as well as the CPU. When I connect the USB-A to micro cabl=
e, I see the following in Linux (Ubuntu 16.04):

/dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F-if00-port0
/dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2516351E882F-if01-port0

I presume these are for FPGA access, as it's supposed to show the "usb-Sili=
con_Labs_CP2105..." for console access to the MCU and CPU. Either way, I tr=
y to access them using the `screen` command as indicated by the manuals, bu=
t no luck.

Is there any extra configuration to gain serial access to the MCU and CPU f=
or the E320 Full Enclosure?

Thank you,

Samuel Jimenez
Software Dev Engineer, Sr.

Curtiss-Wright
20130 Lakeview Center Plaza, Suite 200, Ashburn, VA 20147 United States
T: 703.840.6731
sjimenez@curtisswright.com<mailto:sjimenez@curtisswright.com> | www.curtiss=
wrightds.com

----------------------------------------------------------------------
This e-mail and any files transmitted with it are proprietary and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have reason to believe that you have received this e-mail in error, =
please notify the sender and destroy this e-mail and any attached files. Pl=
ease note that any views or opinions presented in this e-mail are solely th=
ose of the author and do not necessarily represent those of the Curtiss-Wri=
ght Corporation or any of its subsidiaries. Documents attached hereto may c=
ontain technology subject to government export regulations. Recipient is so=
lely responsible for ensuring that any re-export, transfer or disclosure of=
 this information is in accordance with applicable government export regula=
tions. The recipient should check this e-mail and any attachments for the p=
resence of viruses. Curtiss-Wright Corporation and its subsidiaries accept =
no liability for any damage caused by any virus transmitted by this e-mail.
=20
For information about how we process personal data and monitor communicatio=
ns, please visit  https://www.curtisswright.com/privacy-notice/default.aspx

--_000_224b1c6c97e246349b3344c199353309curtisswrightcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have an Full Enclosed E320 and wish to access seri=
al console to the STM32 microcontroller as well as the CPU. When I connect =
the USB-A to micro cable, I see the following in Linux (Ubuntu 16.04):<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2=
516351E882F-if00-port0<o:p></o:p></p>
<p class=3D"MsoNormal">/dev/serial/by-id/usb-Digilent_Digilent_USB_Device_2=
516351E882F-if01-port0<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I presume these are for FPGA access, as it&#8217;s s=
upposed to show the &#8220;usb-Silicon_Labs_CP2105&#8230;&#8221; for consol=
e access to the MCU and CPU. Either way, I try to access them using the `sc=
reen` command as indicated by the manuals, but no luck.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there any extra configuration to gain serial acce=
ss to the MCU and CPU for the E320 Full Enclosure?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Arial&quot;,sans=
-serif;color:black">Samuel Jimenez<span style=3D"mso-ligatures:none"><o:p><=
/o:p></span></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Software Dev Engineer, Sr.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:black">Curtiss-Wright<o:p></o:p></span></b></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">20130 Lakeview Center Plaza, Suite 200, A=
shburn, VA 20147 United States<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">T: 703.840.6731
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black"><a href=3D"mailto:sjimenez@curtisswright.=
com"><span style=3D"color:blue">sjimenez@curtisswright.com</span></a> |
<a href=3D"www.curtisswrightds.com"><span style=3D"color:blue">www.curtissw=
rightds.com</span></a></span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>

<HR>This e-mail and any files transmitted with it are proprietary and inten=
ded solely for the use of the individual or entity to whom they are address=
ed. If you have reason to believe that you have received this e-mail in err=
or, please notify the sender and destroy this e-mail and any attached files=
. Please note that any views or opinions presented in this e-mail are solel=
y those of the author and do not necessarily represent those of the Curtiss=
-Wright Corporation or any of its subsidiaries. Documents attached hereto m=
ay contain technology subject to government export regulations. Recipient i=
s solely responsible for ensuring that any re-export, transfer or disclosur=
e of this information is in accordance with applicable government export re=
gulations. The recipient should check this e-mail and any attachments for t=
he presence of viruses. Curtiss-Wright Corporation and its subsidiaries acc=
ept no liability for any damage caused by any virus transmitted by this e-m=
ail.<BR>
 <BR>
For information about how we process personal data and monitor communicatio=
ns, please visit  https://www.curtisswright.com/privacy-notice/default.aspx=
<BR>
</body>
</html>

--_000_224b1c6c97e246349b3344c199353309curtisswrightcom_--

--===============3509051854031178740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3509051854031178740==--
