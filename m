Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 275EB507A1A
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 21:20:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 603AA384579
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 15:20:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650396018; bh=0ilyB77SMpFLo7L70tyJy2WPGY6rQmqB7UvIaHrlNV8=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PKJTWClc226BSoKre9kyHSCcf7nzmC+KkwThPjiDsbbct5EhOgxtSDjM4y92dI1f5
	 jx7ZdPeHXPZbTRqo/iPhQxUgezTlEJkkAAub8u5AMfqpTXKg52L5Bdmk6Ncur65whh
	 Q7AS5DUldlhUhY7vOa2Vs4QKfYYw4Ub41j9c8QK66UGC4S/GRQT8f7yk8NTjZbPoHK
	 waRInMgxOfEf8gUN/j1DdkIQChHKrNF8wQ8J8bgB1lhNT+GNqsBiF/b9UX9Fh0fQG6
	 XbAP6my7Sh7s2BHIqBeKy7RFhl5zraMM43kX1N3oljtaaoKWZxN0V8mssW8rQ7bMHA
	 E8PPAttYhMQ5Q==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id BE2543844A6
	for <USRP-users@lists.ettus.com>; Tue, 19 Apr 2022 15:19:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Fc6CLa5Z";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id 204so8270165qkg.5
        for <USRP-users@lists.ettus.com>; Tue, 19 Apr 2022 12:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=lP3OfKqRq7TlcBXa8n1lt+IvHbDXUQOglb49l99hRJE=;
        b=Fc6CLa5ZdlOmVnV7bBnv3GDAqq7SY6nwcqzfTK/mVG5CTPphzExZjl5tz80WDq+8wE
         TIENixlPdyc8yINNIpoOSkUBfZyk7ihS/Zj52YD0UK+gRyJtmjqF12biGSRLpf/IwdAr
         AZJmfLUia2NMZsDLuObfJe/9mUFD3QBrmxxYSx87FjhrVu1ZddvgpGMTiLZeIQ5tTCrs
         S2qdnBgBHDUEA0bSs4XuSgYMAc/kmY9MwvAfs7G7ZUDcFWg6tIhsTUDn8nkOCoyFzgm5
         lDxzwNSEaZcvu3wCaojI5er73rhJadyId1CHEjvwkwaQgb2uqUYSzsE6J6ISweTmQisN
         8jfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=lP3OfKqRq7TlcBXa8n1lt+IvHbDXUQOglb49l99hRJE=;
        b=QeD+7c6VgwAQpI7DhPXwbAJ9h8YjGYty0bEg2JCKuxNbo7oM9iquyF/QUcq1oKr95k
         dFF4d3r5XMiTBHR1piy5ZN7zjL5mQn+e7nC1DrKZEKOkIeKKWqaSqej1bGegPIhCfAOC
         e2neEsDPFJbh2G0oVuj/B3SkrGF51qx6GrwZsHuwGutMhVliFRxnNkgwZ+RHp3ADJaBy
         JGi3c4rJwdNb0k8+OYgd2nWFEuIGNg33sQGZJQOCqVCu9ywqow3CjRxQoqVM8d8IwpYI
         RrEy5Dv/lGmtdwqQXo6NHDKI0MvojFBMyiaEwUxZvK+NSXuMCKUUh7cOdVjGw5iR2dTR
         +9dg==
X-Gm-Message-State: AOAM531s0n/0u/oUPeq2rMSEv9QayA8+Ge32dO+Vz+22Isuq1Z+lfaFq
	DIUihiQE/hmzkGoSg2tFUdefU/FWJVGJnA==
X-Google-Smtp-Source: ABdhPJzBQkIpKuNDysGqnd22LazpUmr3s/i+IrrOYncz7cwbDwMfMKgJlG7ueEbjMuBQ1JjtE4gRrA==
X-Received: by 2002:a05:620a:668:b0:69e:c143:3e78 with SMTP id a8-20020a05620a066800b0069ec1433e78mr3128153qkh.432.1650395955234;
        Tue, 19 Apr 2022 12:19:15 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.gmail.com with ESMTPSA id c20-20020a05622a059400b002e1d59e68f3sm547664qtb.48.2022.04.19.12.19.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 12:19:14 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 19 Apr 2022 15:19:13 -0400
Message-Id: <1666312C-2F74-477D-A337-ACB393EC5850@gmail.com>
References: <BN6PR03MB3137CB897CC3C5E722D963D8C8F29@BN6PR03MB3137.namprd03.prod.outlook.com>
In-Reply-To: <BN6PR03MB3137CB897CC3C5E722D963D8C8F29@BN6PR03MB3137.namprd03.prod.outlook.com>
To: Abby Mize <abby@lunasonde.com>
X-Mailer: iPhone Mail (19E258)
Message-ID-Hash: W6TXTX2MHYMWRROOPYH6VBEMUGGPECHP
X-Message-ID-Hash: W6TXTX2MHYMWRROOPYH6VBEMUGGPECHP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: remove from list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W6TXTX2MHYMWRROOPYH6VBEMUGGPECHP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0088700111046225822=="


--===============0088700111046225822==
Content-Type: multipart/alternative; boundary=Apple-Mail-70609F77-9EEF-4EAA-987B-B020A06F4045
Content-Transfer-Encoding: 7bit


--Apple-Mail-70609F77-9EEF-4EAA-987B-B020A06F4045
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

There=E2=80=99s a trailer at the end of every list message that tells you ho=
w to leave the list.=20

Sent from my iPhone

> On Apr 19, 2022, at 3:15 PM, Abby Mize <abby@lunasonde.com> wrote:
>=20
> =EF=BB=BF
> Hello,
> =20
> I=E2=80=99d like to be removed from the list, I no longer am going to use U=
SRP for the time being.=20
> =20
> Thanks!
> =20
> Abby Mize
> Senior Embedded Systems Engineer
>=20
> +1 505 504 3611
> www.lunasonde.com
> =20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-70609F77-9EEF-4EAA-987B-B020A06F4045
Content-Type: multipart/related;
	type="text/html";
	boundary=Apple-Mail-E55C1F20-B43E-4CAB-B409-083B0374C955
Content-Transfer-Encoding: 7bit


--Apple-Mail-E55C1F20-B43E-4CAB-B409-083B0374C955
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">There=E2=80=99s a trailer at the end of eve=
ry list message that tells you how to leave the list.&nbsp;<br><br><div dir=3D=
"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite=
">On Apr 19, 2022, at 3:15 PM, Abby Mize &lt;abby@lunasonde.com&gt; wrote:<b=
r><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF=


<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:"\@Malgun Gothic";}
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I=E2=80=99d like to be removed from the list, I no lo=
nger am going to use USRP for the time being.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Abby Mize</b><o:p></o:p></p>
<p class=3D"MsoNormal">Senior Embedded Systems Engineer<o:p></o:p></p>
<p class=3D"MsoNormal"><img width=3D"130" height=3D"17" style=3D"width:1.358=
3in;height:.175in" id=3D"Picture_x0020_1" alt=3D"image001.png" src=3D"cid:im=
age001.png@01D853E6.6E10FC20"><o:p></o:p></p>
<p class=3D"MsoNormal">+1 505 504 3611<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"http://www.lunasonde.com"><span style=3D"c=
olor:blue">www.lunasonde.com</span></a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-E55C1F20-B43E-4CAB-B409-083B0374C955
Content-Type: image/png;
	name=image001.png;
	x-apple-part-url="image001.png@01D853E6.6E10FC20"
Content-Disposition: inline;
	filename=image001.png
Content-Transfer-Encoding: base64
Content-Id: <image001.png@01D853E6.6E10FC20>

iVBORw0KGgoAAAANSUhEUgAAAIIAAAARCAYAAAAR8XQQAAAAAXNSR0ICQMB9xQAAAAlwSFlzAAAO
xAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAAS/SURBVGje
7ZkHSJZBGMctszJtaFG2CBq2bdqiHRVStgcNGlgUldkkQSps72VLjAZERRERNGnR3pMGQZREQUZF
RZGVac8D/xeu65bfFw36XviB3z3P3Xv3vP+7e+4MSk1NDQoQIBAEXwMXFFSDaB0QQkAIi4k3xHWi
TUAI/+6HLORDnapEESIYv8sTS4gvRO9/Xgj07CXOEkUdgjEEs6CLxl4d9kka+3a8K9LwjmnERSLU
cWaed/QtSCwlMolXxGNiNlHYUKctcYR4RnwjbhFRks9wIpuoJJWXIC4TOyz94phs0dhaIp4PiacC
l4ipRDlL281Q/4FUn4mXhcCFuUSYQzBnEHksCI29AexrNPabsLMYSmp8NsAn3NKXKOIzfEc59D0N
vgeIdHxg/t1Q4z8T9nvEXKK9GDzJl4O9VSqLxGrBbWw09Os+C0xj64b63H6GwF2UvyXGGNruAr8H
Un0mVhYCO70nijkEczIaHqix14d9qcZ+HnZPDMEKn1XEJ5sw6ZmDdr4Sd3jGG3xLwXeXYsZXVviP
gP8sooBDXCYQx6WyCKw83njXaupeIy5obF11QqenA/ESdt0K3Qn2mS5bw+8UwhWoOB1+ab4IgZdz
BPmQ0KfuFiHw8n3aYYzhRBaxJx/5A8/+4gohZGM270MfE3wUgm6rrYl43iZCDEKY97cJ4SqCw/v1
Aviu9EEII1G3J68q6P81S98Xoc5J3XYAv47wa2BpLxRjaKexRyCvOAvhHlaJwR8hwGe9rr+CEFZC
rCLBf1oI37yPLMyU8fkUAvf5oWI/jzXUCRG2kzzkDGGaBPSDQywKIG6rDULI8QQK4TzBu1v9QiH0
k2OoEIKK+v4IYYpFCPUchJDjnRqwZHt5Q38XIWBvzIOI4nhLIMahbK/DGJoQ5+B/Sj4tcUCRhEY4
bCF8l5BkEcJVoawu8QLbWoyQaPojhIli/DRC4NVotESkP0JIQsO9NPbGsK+wCCFCKCuOYxnXa06k
YPvQCeEAfHM1Sq/nuK9vgv9Qqbwayodb6veCXyNXIaC8Fq84EEMFbFUX/RDCDfiUNQhhlmuO8M4x
eI1U+7pgH2RJbn4SAsprQ4x8lN1PvNYs21WxtezABxPpjHev18xe+fxfCf7bFP6HMdtLG/KD57yy
GGKlFAJsfYV85ZYuiRWEME5jT4B9s+p0IwhhjosQ+Jz8ke/OiaYCMXLj2BdPoPEZngr5o2Gv+oQA
lc6PEGBrigw4D3upSggZpllPzzGMJUrxUfgOYwDfDqIs2XA0K4O4ZELcIcKlVA9MHu5jFV+EAPtg
YRU7aBHCfFzW1UGcOKHdLSz74ZbjYzr+PxINaovfyHPO1CyxX1S3jRjgUWF5fo6lzru4aG4IziP4
RVoy9s/y4OipCNsZQ/utVLMcJ4tTwiVMFv7eqTp2CUfC4/B7hXF65/bL8k2ipj77PjL4TIePbmuI
NyR7uUh4QwztxxnqL5SFkIRMeQmuYD1STHfyfGziXIBYxzeJRB+H28BE7oDpSpieYcjuCyuSvGU8
IyzvSMYpQl7NCqGPHLy1cm5gaK8hjonrEJcWjvVCMdZEh/6O1diicezl9y7H+BfgxrCCQx+qS/WX
C+10/e//6RTgR74Dyf5pfsk8/dQAAAAASUVORK5CYII=

--Apple-Mail-E55C1F20-B43E-4CAB-B409-083B0374C955--

--Apple-Mail-70609F77-9EEF-4EAA-987B-B020A06F4045--

--===============0088700111046225822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0088700111046225822==--
