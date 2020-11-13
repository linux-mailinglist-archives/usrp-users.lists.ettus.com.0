Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 899822B1308
	for <lists+usrp-users@lfdr.de>; Fri, 13 Nov 2020 01:08:24 +0100 (CET)
Received: from [::1] (port=34118 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdMdW-0001Ys-KT; Thu, 12 Nov 2020 19:08:18 -0500
Received: from mail-lj1-f176.google.com ([209.85.208.176]:39847)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kdMdT-0001Sy-1n
 for usrp-users@lists.ettus.com; Thu, 12 Nov 2020 19:08:15 -0500
Received: by mail-lj1-f176.google.com with SMTP id o24so8465787ljj.6
 for <usrp-users@lists.ettus.com>; Thu, 12 Nov 2020 16:07:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JDc2jrDYEwWXrOrkMnNwIlbcc7YTlki8Yr8y0MM4CL4=;
 b=nEwKed7bzy9yj+XC43n92cQJTV1C5J6upzVmJfNa2f3/aqUBzMvhHKZGKzuZywjllj
 7wWGyDGbx0AP1qZmlDXgoBavOxtX3Baof+4P6+2fPA9F9hWfmRkv7xN3A2036LQM2SaM
 MgT8a+wlDtg2DgJET7ZpmjA5HOMKZVOHEVNPBSCKk83i5QoM/zCCk1IOHiWvszpUf5Vf
 6cKmAGa1aDOefE4yzOnL8lOMrTxsOzsB+pXVMYzUdLfv9W2cjNajfBujepKHj9t1yxR3
 q7bN6YFXSeqpzD6TX0Ey4StxLB7r2ASEcTI4/kiLIseNelE9x6SLizVTxyeQ2sniULsw
 2RlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JDc2jrDYEwWXrOrkMnNwIlbcc7YTlki8Yr8y0MM4CL4=;
 b=bwd1R0gL+JE0c/9SOu54KtKv1CQMGCfn6NPchabGao70FRkkXgtpclEOKE2jXZCLoC
 PBGa3uv40rsPzNByA0qeSSCGP/cF6k62DFYTspa9kNPP3Uar+5MIqQn4eclu3jILew6P
 9Zp4aJ4XjHqgyuedx1AwL9lssagGp+S1kTLK4O7aedixDDYNONErxDa1yMyKJBBwp+E8
 haginIFu2ApH9WG8cI0qazC7hLe5+D8cHKUiGaUBMSvqwNGBF0B1x6ZLXe9ObivexIvE
 EVyqONiH5KJmS/ZxH2DqWqt+2IcO86gjNv9Fd5ouzQeOkid3poK3FJnTmVSzKCTHWxv9
 f0FA==
X-Gm-Message-State: AOAM5301GlHcBAJV1118GjGDyCBc3OnpT1Pb8aYfKtUhVWkauKUI6ySm
 fGlAZ2eYOEMLHmjT0mg2IHLnmNUkcLF1JgCIpk0=
X-Google-Smtp-Source: ABdhPJw9MlaBM2HVHDYigBA8EBYMP4WFpRzCZ6Unh+eT87OPpwBQT6EjEVSA0IPQuJ5ejDiQBiRbA1S1z5oFG/0nlz8=
X-Received: by 2002:a2e:2201:: with SMTP id i1mr924266lji.257.1605226053763;
 Thu, 12 Nov 2020 16:07:33 -0800 (PST)
MIME-Version: 1.0
References: <CACryqrGDDt7bAT0ad_X4HuVjn2zn-SuMSZ-fRz9u68cZ4bJeBA@mail.gmail.com>
 <CACryqrFVm7eKahR8sVHvtmWpSGo8hKXRweG6ZkrSBBq1sW4_Lg@mail.gmail.com>
 <CAB__hTTp2unhz82kihQF9ABWVw+B7GCAXXN6V_ScHtQF54-YXQ@mail.gmail.com>
In-Reply-To: <CAB__hTTp2unhz82kihQF9ABWVw+B7GCAXXN6V_ScHtQF54-YXQ@mail.gmail.com>
Date: Thu, 12 Nov 2020 17:07:23 -0700
Message-ID: <CACryqrGmp9q_CwpXF_1Nxhezz70PUnO7fq9VKgw4ge+K3uXvCg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] Rx time sychoronization
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
From: Xiang Ma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xiang Ma <marxwolfs@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9154431490596388322=="
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

--===============9154431490596388322==
Content-Type: multipart/alternative; boundary="000000000000b8050705b3f1d065"

--000000000000b8050705b3f1d065
Content-Type: text/plain; charset="UTF-8"

Thank you.
If I use the python API, and uhd.usrp_source, will the RXs of two
daughterboards start to receive the signal at the same time?
I donot find the setting here
https://wiki.gnuradio.org/index.php/USRP_Source.

Or I have to use C++ API, not in gnuradio?

Xiang Ma

On Thu, Nov 12, 2020 at 12:18 PM Rob Kossler <rkossler@nd.edu> wrote:

> The multi_usrp can handle multiple usrps but it is also the primary high
> level interface for controlling a single USRP (with 1 or more channels).
>
>
> On Thu, Nov 12, 2020 at 2:15 PM Xiang Ma via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> The multi_usrp object might be designed for multiple USRPs, however, I
>> have only 1 USRP, just 2 daughterboads, they are using the same reference
>> lock.
>> When I run the program, shouldn't they start to receive the signal at the
>> same time?
>>
>> Thank you,
>>
>> On Thu, Nov 12, 2020 at 11:40 AM Xiang Ma <marxwolfs@gmail.com> wrote:
>>
>>> Hi,
>>>
>>> I have a USRP x310 with 2 UBX daughterboards and GPSDO.
>>>
>>> I want to use this as two receivers by the two RX in the two
>>> daugherboards respectively, and receive the signal at the same time. Do I
>>> have to synchronize them or they will automatically start to receive the
>>> signal at the same time?
>>>
>>> Thank you,
>>>
>>> Xiang Ma
>>>
>>>
>>> --
>>> *Xiang Ma, *Ph.D. Student
>>> College of Engineering
>>> Utah State University
>>> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
>>>
>>
>>
>> --
>> *Xiang Ma, *Ph.D. Student
>> College of Engineering
>> Utah State University
>> E-mail:marxwolfs@gmail.com
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

-- 
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com

--000000000000b8050705b3f1d065
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you.<div>If I use the python API, and uhd.usrp_sourc=
e, will the RXs of two daughterboards start to receive the signal at the sa=
me time?</div><div>I donot=C2=A0find the setting here=C2=A0<a href=3D"https=
://wiki.gnuradio.org/index.php/USRP_Source">https://wiki.gnuradio.org/index=
.php/USRP_Source</a>.</div><div><br></div><div>Or I have to use C++ API, no=
t in gnuradio?</div><div><br></div><div>Xiang Ma</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 12, 2020=
 at 12:18 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd=
.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">The multi_usrp can handle multiple usrps but it is als=
o the primary high level interface for controlling a single USRP (with 1 or=
 more channels).<div><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, Nov 12, 2020 at 2:15 PM Xiang Ma via=
 USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">The=C2=A0<span style=3D"c=
olor:rgb(0,0,0);white-space:pre-wrap">multi_usrp object might be designed f=
or multiple USRPs, however, I have only 1 USRP, just 2 daughterboads, they =
are using the same reference lock.</span><div><span style=3D"color:rgb(0,0,=
0);white-space:pre-wrap">When I run the program, shouldn&#39;t they start t=
o receive the signal at the same time?</span></div><div><span style=3D"colo=
r:rgb(0,0,0);white-space:pre-wrap"><br></span></div><div><span style=3D"col=
or:rgb(0,0,0);white-space:pre-wrap">Thank you,</span></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 12, =
2020 at 11:40 AM Xiang Ma &lt;<a href=3D"mailto:marxwolfs@gmail.com" target=
=3D"_blank">marxwolfs@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I =
have a USRP x310 with 2 UBX daughterboards and GPSDO.</div><div><br></div><=
div>I want to use this as two receivers by the two RX in the two daugherboa=
rds respectively, and receive the signal at the same time. Do I have to syn=
chronize them or they will automatically=C2=A0start to receive the signal a=
t the same time?</div><div><br></div><div>Thank you,</div><div><br></div><d=
iv>Xiang Ma</div><div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"l=
tr"><div dir=3D"ltr"><font face=3D"times new roman, serif" size=3D"4" style=
=3D"color:rgb(136,136,136)"><i><b>Xiang Ma,=C2=A0</b></i></font><span style=
=3D"color:rgb(136,136,136)">Ph.D. Student</span><div><div style=3D"color:rg=
b(136,136,136)"><font color=3D"#444444">College of Engineering</font></div>=
<div><font color=3D"#444444">Utah State University</font></div><div style=
=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-mail:<a href=3D"mailt=
o:congshanya@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">ma=
rxwolfs@gmail.com</a></font></div></div></div></div></div></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><font face=3D"times new roman, serif" size=3D"4" style=3D=
"color:rgb(136,136,136)"><i><b>Xiang Ma,=C2=A0</b></i></font><span style=3D=
"color:rgb(136,136,136)">Ph.D. Student</span><div><div style=3D"color:rgb(1=
36,136,136)"><font color=3D"#444444">College of Engineering</font></div><di=
v><font color=3D"#444444">Utah State University</font></div><div style=3D"c=
olor:rgb(136,136,136)"><font color=3D"#444444">E-mail:<a href=3D"mailto:mar=
xwolfs@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">marxwolf=
s@gmail.com</a></font></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"times new roman, =
serif" size=3D"4" style=3D"color:rgb(136,136,136)"><i><b>Xiang Ma,=C2=A0</b=
></i></font><span style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div=
><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">College of E=
ngineering</font></div><div><font color=3D"#444444">Utah State University</=
font></div><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-=
mail:<a href=3D"mailto:marxwolfs@gmail.com" style=3D"color:rgb(17,85,204)" =
target=3D"_blank">marxwolfs@gmail.com</a></font></div></div></div></div>

--000000000000b8050705b3f1d065--


--===============9154431490596388322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9154431490596388322==--

