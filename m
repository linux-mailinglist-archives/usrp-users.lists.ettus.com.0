Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AAA8FF0E4
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2024 17:40:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E9132384F70
	for <lists+usrp-users@lfdr.de>; Thu,  6 Jun 2024 11:40:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1717688428; bh=R4PXaZMzJs3acXBNpv9QC/fR2T/KkR7AV0a+D9AG1FE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wjWrifjL47KcpX+AFiKya9Ypgo0o9r13Q5VLy8XyPKeX2Sj6mxGUesckbBVm+qmRF
	 q++fSmBh0vtObqYe4zv0+bR7VG1/z9XX5m+E+DSChlHEIQgkS7pqmqg8vLX1478NWk
	 qppN8QuMOZF67c+3uoxStRNgPCUhJUG+4LKSVRUein1kgcPVO4PSlJnetuq50lN8vH
	 BXEYPjIhVwT2h0QLDA3d7qb2hkm1N2G/a6cHa9HsjxSqzMlldachK7SCHG84VnzL1h
	 /hOjfFUabEQVORJKnAT9iA4RAohZ4V4rOajN4XZuQAsHppV69Dt6QGWcVFhsCO/YnI
	 HdN8VdBBPXU4A==
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 2FE2C384E11
	for <usrp-users@lists.ettus.com>; Thu,  6 Jun 2024 11:40:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="e49rUVCv";
	dkim-atps=neutral
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-24ca03ad307so567131fac.3
        for <usrp-users@lists.ettus.com>; Thu, 06 Jun 2024 08:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717688417; x=1718293217; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qH2pJpcFAmri8o+xl3voi8RG+TUmWbXTM/X63hwZCDI=;
        b=e49rUVCv9KqbUfxBaNCPtdBLE88x8mP0+IeWap5lD/RX/i2GpVLTXWYRmJagTWk07u
         aKSR5eIP7xEHioFjt+d3p3kAsTNUuPAyXFHtm70ec2uo56f986repmL6T8MOcyl05ic5
         FDu2TcAU6VC6/OjkShIXjq/SQAhNjH4SmvArC0cQjl4clQWHMxajtSJ0Z7Rs2FarF9Ty
         E4iwGJOJvWpnHGVnjD21HKkzdElMhWKTp/pknvGcITGJYvt0JuC0deosiPHfzlstWNWS
         +MMzNPk2OT26cr3DStb1PVXaXHmVcbLlha8SjsfuEs93IrfPZI1vkTFppHFciLzv89+h
         qJvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717688417; x=1718293217;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qH2pJpcFAmri8o+xl3voi8RG+TUmWbXTM/X63hwZCDI=;
        b=nG5hHkibCvIRdfpkPMe+CwvZs/3p3YBF0J1qQfOVMQyZtk69H3N5BMjQtj5XuEf5Ys
         r0vT+FFzLdGV3LJF2sc7se/rhqbvNH5udEPyt4MabTMgWyyJb8CzFdl/6AZh1yplHnIy
         eJ51jOs3/ayoLu6AVC0kDRanbTYfZv5LlIaiBvyOS/PGNwlweQOjhmzJuFOiZSlNMxdb
         lXRK36hDCzYmi5j+KCW8yn+cZRwGh9OwPl2VX8kBf8ebmMiScOB3c3JmA18Oxrp2Ti7j
         eqG0YgYK3PSHTuz7OwWiyEqomDYA/tYoGB4O6H99CMof3rI41g16pEyK757KFSPocNqF
         XIAA==
X-Gm-Message-State: AOJu0Yz+9y58ufIGqmX6SYDoDms1/obWvIYIKdHRRqod92jeBEaf7jn5
	grdmn2VXTbpeXY3e42isfJc1zzrSG1fqRrIbkp7l3wyf7QLkzHnwu4rdmg==
X-Google-Smtp-Source: AGHT+IFhkwVi34nE3NxRHdmSXsgQaGaVeUSkpy2BSyAfNh68CteGA2e228GVq2vVfxWZenX/vKbxYQ==
X-Received: by 2002:a05:6870:32ce:b0:24f:e5f2:1d04 with SMTP id 586e51a60fabf-251226a152amr6689955fac.16.1717688416611;
        Thu, 06 Jun 2024 08:40:16 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-79532887f13sm70866185a.71.2024.06.06.08.40.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 08:40:16 -0700 (PDT)
Message-ID: <2d88473a-201f-4472-b41a-a25c4f0dd52a@gmail.com>
Date: Thu, 6 Jun 2024 11:40:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PA4PR10MB4367439E8CAB433C8059D4ADACFA2@PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PA4PR10MB4367439E8CAB433C8059D4ADACFA2@PA4PR10MB4367.EURPRD10.PROD.OUTLOOK.COM>
Message-ID-Hash: VHKOPE5773HKIAXFZ6M33QZ4U2X4ND35
X-Message-ID-Hash: VHKOPE5773HKIAXFZ6M33QZ4U2X4ND35
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 light up but no real transmission happens!
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VHKOPE5773HKIAXFZ6M33QZ4U2X4ND35/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8014866407819087385=="

This is a multi-part message in MIME format.
--===============8014866407819087385==
Content-Type: multipart/alternative;
 boundary="------------DIiRggBQW0otQzp0Jdonp3JC"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DIiRggBQW0otQzp0Jdonp3JC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06/06/2024 10:58, Kariminezhad Ali (CR/APC1) via USRP-users wrote:
>
> Hi everyone,
>
> I am running a gnuradio generated code on NI-X310. The TX port lights=20
> up red but there is no transmission on the air. I have done different=20
> debugging steps, from replacing the cables to replacing the whole=20
> USRP. By replacing the USRP with another X310, the transmission is=20
> smooth as expected (under same settings, FPGA image versions etc.).=20
> Have you faced any similar issue before. Could it be a hardware issue?=20
> What could be possible solutions?
>
> Thanks a lot for your support and sharing your thought in advance.
>
> Best regards
>
> Ali
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Do both X310 units have the same daugtercards installed?=C2=A0 What type =
of=20
daughtercards?=C2=A0 How are you measuring output power?


--------------DIiRggBQW0otQzp0Jdonp3JC
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 06/06/2024 10:58, Kariminezhad Ali
      (CR/APC1) via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PA4PR10MB4367439E8CAB433C8059D4ADACFA2@PA4PR10MB4367.EURPRD10=
.PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi everyone,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I am running a gnuradio generated code on
          NI-X310. The TX port lights up red but there is no
          transmission on the air. I have done different debugging
          steps, from replacing the cables to replacing the whole USRP.
          By replacing the USRP with another X310, the transmission is
          smooth as expected (under same settings, FPGA image versions
          etc.). Have you faced any similar issue before. Could it be a
          hardware issue? What could be possible solutions?<o:p></o:p></p=
>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks a lot for your support and sharing
          your thought in advance.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-ligatures:none">Best
            regards<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black;mso-ligatures:none">Ali</span><o:p></o:p></p>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Do both X310 units have the same daugtercards installed?=C2=A0 What t=
ype
    of daughtercards?=C2=A0 How are you measuring output power?<br>
    <br>
    <br>
  </body>
</html>

--------------DIiRggBQW0otQzp0Jdonp3JC--

--===============8014866407819087385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8014866407819087385==--
