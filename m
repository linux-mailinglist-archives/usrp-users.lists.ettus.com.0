Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B69278404
	for <lists+usrp-users@lfdr.de>; Fri, 25 Sep 2020 11:30:20 +0200 (CEST)
Received: from [::1] (port=56680 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kLk3T-0005gn-LT; Fri, 25 Sep 2020 05:30:15 -0400
Received: from kda-chqmg-04.kongsberg.com ([193.71.180.8]:46998)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Andreas.Bertheussen@kongsberg.com>)
 id 1kLk3O-0005bJ-8n
 for usrp-users@lists.ettus.com; Fri, 25 Sep 2020 05:30:10 -0400
Received: from pps.filterd (kda-chqmg-04.kongsberg.com [127.0.0.1])
 by kda-chqmg-04.kongsberg.com (8.16.0.42/8.16.0.42) with SMTP id
 08P9RO4l025352
 for <usrp-users@lists.ettus.com>; Fri, 25 Sep 2020 11:29:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kongsberg.com;
 h=from : to :
 subject : date : message-id : content-type : mime-version; s=KDA1;
 bh=EUb4BrUb82nmzg5z0BVWAsHSoSFHwP3yfCLTEur1uCU=;
 b=ihDG8N/SY+i5sxb1L9gS4ZyOCkvh/16tf5pG9FIBO9h+CNbkEPQHKgWiLhI1c46dYWGh
 rqnCy7l5mKrRW1pZF/UPnsI/6Rwage0ULEuUrsWgrv6SiVUhFN6NbCgKcAvWQXvNpEEV
 wOZaF7JrOlN2vh+joe5pYbuuv8rD6QITdL2+cAzblJO+P31sCm6NJX+Ax3TA9IpI2ieW
 ClTfUEahIj6ZO/7XCjB19AESY4TP1yqG9iD8bcGzPjz3eLhYGm+qF+3+Vtaqlu2l+NsE
 rz4v8nP7qL051XM812aodOfQynOoemKcPaZLwZaL/ufZU/2lt/R3b/u6JXgKbYkpmczi gA== 
Received: from ukgw-exca4-p01.kda.kongsberg.com ([10.50.100.49])
 by kda-chqmg-04.kongsberg.com with ESMTP id 33n826134t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Fri, 25 Sep 2020 11:29:27 +0200
Received: from Ukgw-ExcK2-p01.kda.kongsberg.com (10.50.100.41) by
 Ukgw-ExcA4-p01.kda.kongsberg.com (10.50.100.49) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2044.4; Fri, 25 Sep 2020 11:29:27 +0200
Received: from Ukgw-ExcK2-p01.kda.kongsberg.com ([fe80::d4f4:2bb9:d12d:546e])
 by Ukgw-ExcK2-p01.kda.kongsberg.com ([fe80::d4f4:2bb9:d12d:546e%21])
 with mapi id 15.01.2044.004; Fri, 25 Sep 2020 11:29:27 +0200
To: <usrp-users@lists.ettus.com>
Thread-Topic: Losing phase alignment after underruns with X310 multi-USRP
Thread-Index: AdaTHiRBVi76VdksS7Od12hROY4asA==
Date: Fri, 25 Sep 2020 09:29:27 +0000
Message-ID: <24712a5fdd99465994c9aee26afd55eb@kongsberg.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.73.0.10]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-25_02:2020-09-24,
 2020-09-25 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 phishscore=0 malwarescore=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 mlxlogscore=481 impostorscore=0 spamscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009250065
Subject: [USRP-users] Losing phase alignment after underruns with X310
 multi-USRP
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
From: Andreas B via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andreas.Bertheussen@kongsberg.com
Content-Type: multipart/mixed; boundary="===============3467104193950029749=="
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

--===============3467104193950029749==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_24712a5fdd99465994c9aee26afd55ebkongsbergcom_"

--_000_24712a5fdd99465994c9aee26afd55ebkongsbergcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a setup of several X310s connected over 10Gbit Ethernet, and synced =
with an Octoclock. I'm generating signals on a PC, and streaming the signal=
s to the X310s to get coherent waveforms. For now I'm generating sinusoids =
where the phase of each channel slowly varies with time at different rates.=
 I use UHD 4 on Fedora 32.

In case the CPU load spikes and an underrun occurs, the phase relationship =
between the channels out of the X310 changes / is lost. (Presumably because=
 the X310 knows which packets belong to which channel, but not which packet=
s should be aligned in time?)

Is there a way to avoid losing the established phase relationship, despite =
the underruns? All examples I've seen of multi-USRP TX only sets the timest=
amp for the first send() call, and clears it afterward, so I'm not sure if =
timestamping is the correct way to do it.

Regards,
Andreas.

________________________________

CONFIDENTIALITY
This e-mail and any attachment contain KONGSBERG information which may be p=
roprietary, confidential or subject to export regulations, and is only mean=
t for the intended recipient(s). Any disclosure, copying, distribution or u=
se is prohibited, if not otherwise explicitly agreed with KONGSBERG. If rec=
eived in error, please delete it immediately from your system and notify th=
e sender properly.

--_000_24712a5fdd99465994c9aee26afd55ebkongsbergcom_
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NO-BOK" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><a name=3D"_Hlk4149789"><span lang=3D"EN-GB">Hi,<o:p=
></o:p></span></a></p>
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_Hlk4149789"><span lang=
=3D"EN-GB"><o:p>&nbsp;</o:p></span></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-bookmark:_Hlk4149789"><span lang=
=3D"EN-GB">I have a</span></span><span lang=3D"EN-GB"> setup of several X31=
0s connected over 10Gbit Ethernet, and synced with an Octoclock. I&#8217;m =
generating signals on a PC, and streaming the signals
 to the X310s to get coherent waveforms. For now I&#8217;m generating sinus=
oids where the phase of each channel slowly varies with time at different r=
ates. I use UHD 4 on Fedora 32.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">In case the CPU load spikes and=
 an underrun occurs, the phase relationship between the channels out of the=
 X310 changes / is lost. (Presumably because the X310 knows which packets b=
elong to which channel, but not which
 packets should be aligned in time?)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Is there a way to avoid losing =
the established phase relationship, despite the underruns? All examples I&#=
8217;ve seen of multi-USRP TX only sets the timestamp for the first send() =
call, and clears it afterward, so I&#8217;m not
 sure if timestamping is the correct way to do it. <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">Andreas.<o:p></o:p></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"2"><br>
CONFIDENTIALITY<br>
This e-mail and any attachment contain KONGSBERG information which may be p=
roprietary, confidential or subject to export regulations, and is only mean=
t for the intended recipient(s). Any disclosure, copying, distribution or u=
se is prohibited, if not otherwise
 explicitly agreed with KONGSBERG. If received in error, please delete it i=
mmediately from your system and notify the sender properly.<br>
</font>
</body>
</html>

--_000_24712a5fdd99465994c9aee26afd55ebkongsbergcom_--


--===============3467104193950029749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3467104193950029749==--

