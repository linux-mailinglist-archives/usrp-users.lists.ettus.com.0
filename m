Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0622B264D
	for <lists+usrp-users@lfdr.de>; Fri, 13 Nov 2020 22:11:49 +0100 (CET)
Received: from [::1] (port=42974 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdgMF-0005N1-Td; Fri, 13 Nov 2020 16:11:47 -0500
Received: from mail-qk1-f174.google.com ([209.85.222.174]:38810)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dw2zq@virginia.edu>) id 1kdgMC-0005Gb-Bc
 for USRP-users@lists.ettus.com; Fri, 13 Nov 2020 16:11:44 -0500
Received: by mail-qk1-f174.google.com with SMTP id 11so10253402qkd.5
 for <USRP-users@lists.ettus.com>; Fri, 13 Nov 2020 13:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=virginia-edu.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version; bh=BfshnwRpO8NRZ+SzFaFhTv/2HaiirGNLbR3vmuw7B+k=;
 b=e5mdFRduN0vEOeF2gpSmToizrlfQZ9OEbbI0fpzzX8kuyammMBKP7hJAe7EcBkLSHB
 TDwHZtjkySl9A1Dj+cYeCCRBeK1BVDhDkAS2xiihx62T1ORGrZHlPIjSWoFsZ7lJwHBj
 TKBHO+FD8/dpawsWVVS/U6BjJD3Aals8QJPPjhczu+wHP3YJ3S1dshlGj08wqJQTXtuy
 erqd1cRnrVIZkWPm71qH3SkeDFGHfpPpZmb7QZiuefGVtg68Xn5uvIf5aJvCeQe+HY8w
 WWbUSM76b2MPLqu1ph0wycR3Mjax3N7BaaJe4DJf1CZ/OAKN30FSwUsXvdLTC3HuYJmi
 js7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version;
 bh=BfshnwRpO8NRZ+SzFaFhTv/2HaiirGNLbR3vmuw7B+k=;
 b=IJmyhxXHLUlSOHtnYSUtighNNewh7poQVXUNO34a85NyGJ4KeYH/SXYd8Lji90rzYa
 zMOKCpSCOXgXJJj2sx2gresegV57baSrBgDP/92ay/m/cWbpTWOFl7z65edxhXvv9AF6
 zsFSROEAhKx148KJZhG32XsxWTLeSGz6kOqPXe8Hv7NyK+5cdChFMtW6/BNbm4sB3hVf
 r8nGPS9IyQloMuH7ZVXSp2CqQXhpvNS8bv7If0qrlErCNuOoqaTnYpry+iSYaGCUSKSI
 ro9bDn1iNT//0avvH87bnUhnyKpPgANaQGMcz8fLcODxSl/+sRHV9NAT/vo/Y3Ab+WXm
 HU6w==
X-Gm-Message-State: AOAM5336K+9t1ukORh6zItxxOcmEUuLujvQKEyWU8z+A9OHwf0F2HFlv
 +r7gU5AZo+eyBVaPU0SGZV8Bw3YssddPaw==
X-Google-Smtp-Source: ABdhPJxV+KItcSTiiebtNDDfWE57nPue4j/G3sT1kCZ6J7j8gc393TtkIDZ7JN7NL0iR4u4o+0oTjg==
X-Received: by 2002:a37:a915:: with SMTP id s21mr4158836qke.38.1605301863617; 
 Fri, 13 Nov 2020 13:11:03 -0800 (PST)
Received: from [10.14.189.5] (c-73-40-68-102.hsd1.va.comcast.net.
 [73.40.68.102])
 by smtp.gmail.com with ESMTPSA id l46sm7945536qta.44.2020.11.13.13.11.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Nov 2020 13:11:02 -0800 (PST)
Message-ID: <a55d2f7a3cd1a43082212f48ee45054dfd0b263d.camel@virginia.edu>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>, 
 "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Date: Fri, 13 Nov 2020 16:11:07 -0500
In-Reply-To: <SA0PR19MB4382E98531C1FD25FA6C10FEC6E60@SA0PR19MB4382.namprd19.prod.outlook.com>
References: <SA0PR19MB4382E98531C1FD25FA6C10FEC6E60@SA0PR19MB4382.namprd19.prod.outlook.com>
User-Agent: Evolution 3.38.1 
MIME-Version: 1.0
Subject: Re: [USRP-users] Expected FPGA Compatibility number 36, but got 38
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
From: Dustin Widmann via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dustin Widmann <dw2zq@virginia.edu>
Content-Type: multipart/mixed; boundary="===============4520712159073633466=="
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


--===============4520712159073633466==
Content-Type: multipart/alternative; boundary="=-ZwAVo8VVmqPcL+kZqH8S"


--=-ZwAVo8VVmqPcL+kZqH8S
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Jerrid,

Your gnuradio is built against UHD 3.15 instead of UHD 4.0. You'll
probably need to rebuild gnuradio taking care to make sure to make sure
it doesn't use 3.15 when you do.

With regards to the compat numbers....

With uhd-3.15 I observed:
LD_LIBRARY_PATH=/opt/uhd-3.15/lib /opt/uhd-3.15/bin/uhd_image_loader --
args="type=x300,addr=192.168.40.2" --fpga-path /opt/uhd-
3.15/share/uhd/images/usrp_x3
10_fpga_XG.bit
# reset the device
LD_LIBRARY_PATH=/opt/uhd-3.15/lib /opt/uhd-3.15/bin/uhd_usrp_probe 2>&1
| fgrep "FPGA Version"
|   |   FPGA Version: 36.0

With uhd-4.0 I observed:
LD_LIBRARY_PATH=/opt/uhd-4.0/lib "/opt/uhd-4.0/bin/uhd_image_loader" --
args="type=x300,addr=192.168.40.2" --fpga-path /opt
/uhd-4.0/share/uhd/images/usrp_x310_fpga_XG.bit
#reset the device
LD_LIBRARY_PATH=/opt/uhd-4.0/lib /opt/uhd-4.0/bin/uhd_usrp_probe 2>&1 |
fgrep "FPGA Version"
|   |   FPGA Version: 38.0

Dustin

On Fri, 2020-11-13 at 20:48 +0000, Jerrid Plymale via USRP-users wrote:
> Hello All,
>  
> So I have been working on transitioning to using UHD 4.0 from 3.15,
> and I am running into a problem. I was able to get the software
> updated without issue, then I downloaded the new FPGA images using
> the uhd_image_downloader and updated the two USRP X310’s I am working
> with. After that I tried running one of my flowgraphs in GRC and I
> get the following: RuntimeError: Expected FPGA Compatibility number
> 36, but got 38. So do I need to update UHD again to a newer version,
> or is there a way I can install the older versions of the FPGA Image?
>  
> Best Regards,
>  
> Jerrid
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--=-ZwAVo8VVmqPcL+kZqH8S
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>


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
	font-family:"Calibri",sans-serif;}
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
--></style>
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word"><div>Hi Jerrid,</div><div><br></div><div>Your gnuradio is built=
 against UHD 3.15 instead of UHD 4.0. You'll probably need to rebuild gnura=
dio taking care to make sure to make sure it doesn't use 3.15 when you do.<=
/div><div><br></div><div>With regards to the compat numbers....</div><div><=
br></div><div>With uhd-3.15 I observed:</div><div><div><span style=3D"font-=
family: monospace;">LD_LIBRARY_PATH=3D/opt/uhd-3.15/lib&nbsp;</span><span s=
tyle=3D"font-family:monospace">/opt/uhd-3.15/bin/uhd_image_loader --args=3D=
"type=3Dx300,addr=3D192.168.40.2" --fpga-path /opt/uhd-3.15/share/uhd/image=
s/usrp_x3<br>10_fpga_XG.bit<br></span></div></div><div># reset the device</=
div><div><div><span style=3D"font-family:monospace">LD_LIBRARY_PATH=3D/opt/=
uhd-3.15/lib /opt/uhd-3.15/bin/uhd_usrp_probe 2&gt;&amp;1 | fgrep "FPGA Ver=
sion"
<br>| &nbsp;&nbsp;| &nbsp;&nbsp;FPGA Version: 36.0<br></span></div></div><d=
iv><br></div><div>With uhd-4.0 I observed:</div><div><div><span style=3D"fo=
nt-family:monospace">LD_LIBRARY_PATH=3D/opt/uhd-4.0/lib "/opt/uhd-4.0/bin/u=
hd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.40.2" --fpga-path /op=
t<br>/uhd-4.0/share/uhd/images/usrp_x310_fpga_XG.bit<br></span></div></div>=
<div>#reset the device</div><div><div><span style=3D"font-family:monospace"=
>LD_LIBRARY_PATH=3D/opt/uhd-4.0/lib /opt/uhd-4.0/bin/uhd_usrp_probe 2&gt;&a=
mp;1 | fgrep "FPGA Version"
<br>| &nbsp;&nbsp;| &nbsp;&nbsp;FPGA Version: 38.0<br></span></div></div><d=
iv><br></div><div>Dustin</div><div><br></div><div>On Fri, 2020-11-13 at 20:=
48 +0000, Jerrid Plymale via USRP-users wrote:</div><blockquote type=3D"cit=
e" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1=
ex"><div class=3D"WordSection1"><p class=3D"MsoNormal">Hello All,<o:p></o:p=
></p><p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p><p class=3D"MsoNormal">So =
I have been working on transitioning to using UHD 4.0 from 3.15, and I am r=
unning into a problem. I was able to get the software updated without issue=
, then I downloaded the new FPGA images using the uhd_image_downloader and =
updated the two USRP X310=E2=80=99s I am working with. After that I tried r=
unning one of my flowgraphs in GRC and I get the following: RuntimeError: E=
xpected FPGA Compatibility number 36, but got 38. So do I need to update UH=
D again to a newer version, or is there a way I can install the older versi=
ons of the FPGA Image?<o:p></o:p></p><p class=3D"MsoNormal"><o:p>&nbsp;</o:=
p></p><p class=3D"MsoNormal">Best Regards,<o:p></o:p></p><p class=3D"MsoNor=
mal"><o:p>&nbsp;</o:p></p><p class=3D"MsoNormal">Jerrid<o:p></o:p></p></div=
><div>_______________________________________________<br></div><div>USRP-us=
ers mailing list<br></div><div><a href=3D"mailto:USRP-users@lists.ettus.com=
">USRP-users@lists.ettus.com</a><br></div><div><a href=3D"http://lists.ettu=
s.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br></div></blockquote><div><=
br></div><div class=3D"-x-evo-signature-wrapper"><span class=3D"-x-evo-sign=
ature" id=3D"none"></span></div></body></html>

--=-ZwAVo8VVmqPcL+kZqH8S--



--===============4520712159073633466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4520712159073633466==--


