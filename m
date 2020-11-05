Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 588592A841F
	for <lists+usrp-users@lfdr.de>; Thu,  5 Nov 2020 17:57:20 +0100 (CET)
Received: from [::1] (port=44742 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kaiZZ-0003Ov-OM; Thu, 05 Nov 2020 11:57:17 -0500
Received: from mail-qv1-f51.google.com ([209.85.219.51]:43712)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kaiZW-0003IB-Du
 for USRP-users@lists.ettus.com; Thu, 05 Nov 2020 11:57:14 -0500
Received: by mail-qv1-f51.google.com with SMTP id bl9so999065qvb.10
 for <USRP-users@lists.ettus.com>; Thu, 05 Nov 2020 08:56:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=DMZc62oBD6xoXPdf0ztZg8tLSxJ2+bUpqB+YvywRnBY=;
 b=vfb7k5VeVlSkzUe06oamDV80BZDjg/D4yx04byAhb6ZBj3EIvc+kaHnpKYfB7lSEp7
 FrWSgVLdSqrXedEOoD3+MywBMRDVY5qle2A6BlTvNLd0OCb3OUG5j3R6duLMDubo7IT1
 UsjjIQO5T6llYTxfbV6uTDkgwt6/Y7wYCk+vVRXqBxlfj7g++78VxnovJp3CbOOwSIpG
 0P++UtXkxEqkmTX7NvWZgPZrcUsEgDL5xhzOnGzb6UUXcj9iB1eeE3NBn15X31d02Q+F
 SGpKaGs4wJVohHPDN970VLJY4fwXLf+zHr3l9+VI/27QCSZyTaqOaue0fs2jv7kZDGf5
 4K1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=DMZc62oBD6xoXPdf0ztZg8tLSxJ2+bUpqB+YvywRnBY=;
 b=EOTGDSbNQ/iP1fMndznWIXtfXGzx4iTnA6NBEaf8QrJ90YNkXIdZFvZPd8i8EAnkwz
 PFZFcGdhai5pHdVz6XZxRC3684HVsXeHeMgwnAUz2vViQ34ErJzt8cRPu/a4f7GksJYi
 Jc07cZe4EcBY1KEn9QHuQcCBdF2bQS8iSwpDw1XBw5wi2xFGHWXcX5MuDhW1t82mjqcg
 jpqTOzQNM2ZfnvveKvNSbq9kCHAWdlx50DAeVInR3h+e3Ajv7+YWMWBPyhjNgEZC/jx7
 /3AAtfT/t5ogaTMeL47vmvnXbIyrAL3HwDJSK63gFVdc8Hp12z3+X9pROvSvvx1KVq6+
 8TuA==
X-Gm-Message-State: AOAM5322ZpjgFCQPdqKw23OilspfGpwwhqRF+z/JKJsn+dbYz/Z0ETqV
 oKyj6dJdxK5gCtDjF4e4qIO0FlOiuIQcMw==
X-Google-Smtp-Source: ABdhPJwyVQXbLXbfENDlEB9bMVkzOhFOchF6NByRsQ5Dxjy0HkW3fXkw/y3+HTYa7vjb/xXneBBzTg==
X-Received: by 2002:ad4:472c:: with SMTP id l12mr2916741qvz.42.1604595393908; 
 Thu, 05 Nov 2020 08:56:33 -0800 (PST)
Received: from [192.168.2.132]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id w25sm1420577qkj.85.2020.11.05.08.56.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Nov 2020 08:56:33 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Thu, 5 Nov 2020 11:56:32 -0500
Message-Id: <AB67488F-E760-4AE0-ACF2-827E053EB04A@gmail.com>
References: <3C6FE1A2-33E5-40EC-9904-399B8FB7933D@iubelttechnologies.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <3C6FE1A2-33E5-40EC-9904-399B8FB7933D@iubelttechnologies.com>
To: Mark Koenig <mark.koenig@iubelttechnologies.com>
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] uhd_cal_rx_iq_balance
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============2097343251097267384=="
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


--===============2097343251097267384==
Content-Type: multipart/alternative; boundary=Apple-Mail-8A5F4818-D034-4F1B-97B4-9EC071DDAE1C
Content-Transfer-Encoding: 7bit


--Apple-Mail-8A5F4818-D034-4F1B-97B4-9EC071DDAE1C
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The Val routines use the serial number of the daughter card to index into th=
e database. It shouldn=E2=80=99t matter where the card is moved.=20

Sent from my iPhone

> On Nov 5, 2020, at 10:06 AM, Mark Koenig via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello,
> =20
> I have some questions regarding the Rx iq balance function.  After running=
 this script on a particular radio (x310 or N210) with a UBX it saves the re=
sults on the machine in which it was ran on, correct?  If I need to move the=
 UBX to another radio (X310 or N210), but the new radio with the UBX will be=
 on the same machine, do I need to rerun the IQ balance script?
> =20
> Is there a scenario I wouldn=E2=80=99t want to always be applying the IQ b=
alance corrections?
> =20
> Thanks
> =20
> Mark
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-8A5F4818-D034-4F1B-97B4-9EC071DDAE1C
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The Val routines use the serial number of t=
he daughter card to index into the database. It shouldn=E2=80=99t matter whe=
re the card is moved.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div=
><div dir=3D"ltr"><br><blockquote type=3D"cite">On Nov 5, 2020, at 10:06 AM,=
 Mark Koenig via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br=
></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Title" content=3D"">
<meta name=3D"Keywords" content=3D"">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
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
span.msoIns
	{mso-style-type:export-only;
	mso-style-name:"";
	text-decoration:underline;
	color:teal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>


<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hello,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I have some question=
s regarding the Rx iq balance function.&nbsp; After running this script on a=
 particular radio (x310 or N210) with a UBX it saves the results on the mach=
ine in which it was ran on, correct?&nbsp;
 If I need to move the UBX to another radio (X310 or N210), but the new radi=
o with the UBX will be on the same machine, do I need to rerun the IQ balanc=
e script?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Is there a scenario I=
 wouldn=E2=80=99t want to always be applying the IQ balance corrections?<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thanks<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Mark<o:p></o:p></spa=
n></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></body></html>=

--Apple-Mail-8A5F4818-D034-4F1B-97B4-9EC071DDAE1C--


--===============2097343251097267384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2097343251097267384==--

