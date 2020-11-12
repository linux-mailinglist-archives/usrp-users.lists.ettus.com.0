Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B93B2B0DBA
	for <lists+usrp-users@lfdr.de>; Thu, 12 Nov 2020 20:18:46 +0100 (CET)
Received: from [::1] (port=60280 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdI7J-0003DH-1d; Thu, 12 Nov 2020 14:18:45 -0500
Received: from mail-oi1-f173.google.com ([209.85.167.173]:39636)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kdI7E-0002ya-TP
 for usrp-users@lists.ettus.com; Thu, 12 Nov 2020 14:18:40 -0500
Received: by mail-oi1-f173.google.com with SMTP id u127so7641675oib.6
 for <usrp-users@lists.ettus.com>; Thu, 12 Nov 2020 11:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wbq62ZGYerrR5hkfBAXdnNccd8EkcmtP5lBtOdOQMMg=;
 b=WYr7j7QzMaVWwC5/PgA/UyDFrSA/CToRSttUSe+/fzOXJocYWLpfMUdNjY3eEk3wng
 sNUsrct2ZkBPgsYjmnvdlx1WjX4L2RgaGHA5Ow+XFmZnVHBgnhhSP6xOIPF4KXr+UHFn
 prxuCBARdOIjmOBdKZLWX4PFilNpydDyDhr7KyAJvmYbSLTrEIWhRbI1zsEytc0YIdoK
 1ug4exUIMwOZ1q0PPDv/S3kwisMLRdYJPazbpcqetyQjnjxWI67XxRs81LCeeTHpVfGf
 HlbjPxxPFmMtMCswR2DX6s/Q+TO9rrn9T4I0GXkhg2NbKqiOHN3sPH96OFkk7HMk2xkO
 vNmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wbq62ZGYerrR5hkfBAXdnNccd8EkcmtP5lBtOdOQMMg=;
 b=j1y4PslZNUHeteFRqW6q638HZNKZiy/nr2QRyWkbgEBZPwQRZXUEfcixHKCQ+XrNOC
 Xo/1/3lBoIH67A6f8+tjXot8gsiKYYSnk6816wFFXjuP/c+JcGD7FN6nAW/T41uYzu6U
 CUHCCjfprpYli2pQrPfa5RkRZMylz/O9t+C92HPQCn99PFf0OrM0rEMq/gFAnyEkd+vH
 rRMhnAorym3js09sV9l5SuHbeIlxiQ6+XOgpudJJuBVJc9goAqNh46vScg2dIIbRb+5F
 HE1C2SSqF1uxo1/NlYAQFzdJxVTC6G4g7EjzMZJSDnruFKgakRoNg1gHMHr36JEJDT1D
 0ysQ==
X-Gm-Message-State: AOAM53271e+8MG86WXSa6BhmE1NOLRP/1DG7BWEopZvRFTDVULXaHDlB
 qc4L3vSZaECrgJHq0singuslkSwic7u1t4qpqvpqkQ==
X-Google-Smtp-Source: ABdhPJzBw22pUIGRoGq5RmFEIh0505M2o3Tctc6kkBri6u+i74NGph8RPBcAbqWCqW/4vQcL+7bCE3KKxJ8H3/TPfoI=
X-Received: by 2002:aca:c4d7:: with SMTP id u206mr829447oif.150.1605208679977; 
 Thu, 12 Nov 2020 11:17:59 -0800 (PST)
MIME-Version: 1.0
References: <CACryqrGDDt7bAT0ad_X4HuVjn2zn-SuMSZ-fRz9u68cZ4bJeBA@mail.gmail.com>
 <CACryqrFVm7eKahR8sVHvtmWpSGo8hKXRweG6ZkrSBBq1sW4_Lg@mail.gmail.com>
In-Reply-To: <CACryqrFVm7eKahR8sVHvtmWpSGo8hKXRweG6ZkrSBBq1sW4_Lg@mail.gmail.com>
Date: Thu, 12 Nov 2020 14:17:49 -0500
Message-ID: <CAB__hTTp2unhz82kihQF9ABWVw+B7GCAXXN6V_ScHtQF54-YXQ@mail.gmail.com>
To: Xiang Ma <marxwolfs@gmail.com>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4025821508773542855=="
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

--===============4025821508773542855==
Content-Type: multipart/alternative; boundary="000000000000294c9d05b3edc5bf"

--000000000000294c9d05b3edc5bf
Content-Type: text/plain; charset="UTF-8"

The multi_usrp can handle multiple usrps but it is also the primary high
level interface for controlling a single USRP (with 1 or more channels).


On Thu, Nov 12, 2020 at 2:15 PM Xiang Ma via USRP-users <
usrp-users@lists.ettus.com> wrote:

> The multi_usrp object might be designed for multiple USRPs, however, I
> have only 1 USRP, just 2 daughterboads, they are using the same reference
> lock.
> When I run the program, shouldn't they start to receive the signal at the
> same time?
>
> Thank you,
>
> On Thu, Nov 12, 2020 at 11:40 AM Xiang Ma <marxwolfs@gmail.com> wrote:
>
>> Hi,
>>
>> I have a USRP x310 with 2 UBX daughterboards and GPSDO.
>>
>> I want to use this as two receivers by the two RX in the two
>> daugherboards respectively, and receive the signal at the same time. Do I
>> have to synchronize them or they will automatically start to receive the
>> signal at the same time?
>>
>> Thank you,
>>
>> Xiang Ma
>>
>>
>> --
>> *Xiang Ma, *Ph.D. Student
>> College of Engineering
>> Utah State University
>> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
>>
>
>
> --
> *Xiang Ma, *Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000294c9d05b3edc5bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The multi_usrp can handle multiple usrps but it is also th=
e primary high level interface for controlling a single USRP (with 1 or mor=
e channels).<div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, Nov 12, 2020 at 2:15 PM Xiang Ma via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">The=C2=A0<span style=3D"color:rgb(0,0,0);white-=
space:pre-wrap">multi_usrp object might be designed for multiple USRPs, how=
ever, I have only 1 USRP, just 2 daughterboads, they are using the same ref=
erence lock.</span><div><span style=3D"color:rgb(0,0,0);white-space:pre-wra=
p">When I run the program, shouldn&#39;t they start to receive the signal a=
t the same time?</span></div><div><span style=3D"color:rgb(0,0,0);white-spa=
ce:pre-wrap"><br></span></div><div><span style=3D"color:rgb(0,0,0);white-sp=
ace:pre-wrap">Thank you,</span></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 12, 2020 at 11:40 AM Xiang=
 Ma &lt;<a href=3D"mailto:marxwolfs@gmail.com" target=3D"_blank">marxwolfs@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I have a USRP x310 with =
2 UBX daughterboards and GPSDO.</div><div><br></div><div>I want to use this=
 as two receivers by the two RX in the two daugherboards respectively, and =
receive the signal at the same time. Do I have to synchronize them or they =
will automatically=C2=A0start to receive the signal at the same time?</div>=
<div><br></div><div>Thank you,</div><div><br></div><div>Xiang Ma</div><div>=
<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><=
font face=3D"times new roman, serif" size=3D"4" style=3D"color:rgb(136,136,=
136)"><i><b>Xiang Ma,=C2=A0</b></i></font><span style=3D"color:rgb(136,136,=
136)">Ph.D. Student</span><div><div style=3D"color:rgb(136,136,136)"><font =
color=3D"#444444">College of Engineering</font></div><div><font color=3D"#4=
44444">Utah State University</font></div><div style=3D"color:rgb(136,136,13=
6)"><font color=3D"#444444">E-mail:<a href=3D"mailto:congshanya@gmail.com" =
style=3D"color:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></f=
ont></div></div></div></div></div></div>
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

--000000000000294c9d05b3edc5bf--


--===============4025821508773542855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4025821508773542855==--

