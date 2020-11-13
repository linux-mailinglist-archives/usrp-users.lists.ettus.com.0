Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAF02B1326
	for <lists+usrp-users@lfdr.de>; Fri, 13 Nov 2020 01:20:34 +0100 (CET)
Received: from [::1] (port=34190 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdMpM-00028W-On; Thu, 12 Nov 2020 19:20:32 -0500
Received: from mail-ot1-f46.google.com ([209.85.210.46]:45819)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kdMpJ-00021j-4q
 for usrp-users@lists.ettus.com; Thu, 12 Nov 2020 19:20:29 -0500
Received: by mail-ot1-f46.google.com with SMTP id k3so7409625otp.12
 for <usrp-users@lists.ettus.com>; Thu, 12 Nov 2020 16:20:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/LK88OlXLBZLHKGpdENShbCXlCJIPjNuHGC9L+PSgDc=;
 b=OUKRlw59znmu8540FbyeQEXhndFC0YDlAEki2VVlFI2OgUB7ItDtID8gbU4tFZujfp
 pTHxJ65NNVCS8TUB4LvwUA5Nf2Q5kRqESaOELvmqiBI7ZKAs+lTDaHy3Fl3ObLj6KTpt
 ufvpvBMySKUw987QrXZDwOeDJtKgQXcYFTCSZZI2mbnxA5aW9zkfp0ZX2SNhyAUEzQvU
 PSlk5Vml95dXMCuw8kbJwLniUykIEpeBNBcZDrQAeVEnnWRSzYw2xxt66eD4mXwFOYIT
 j9Vj9+d/K/iZ4Rbzhex7afGzJkh4vhMd3IBXMme4r9x7ELyhI/x/0zmT5DVA2O4SF+ju
 RVvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/LK88OlXLBZLHKGpdENShbCXlCJIPjNuHGC9L+PSgDc=;
 b=W/ZsaenZH+p51cbNOHdOJv2I+5CmBnVUzIoi7yH56Mk+JQNGP8ANobrCnpZ/LArS8j
 +Q9x22cFQqWLbVO5G5EcUE9SmXxWJWUbJLO5rHvyyaLHZD6vyuBpdDqy9Bfw+KouKjfM
 Kk92EhjtZhP975j0ebFuj0cjOdnurRIBeWykbsfUk4vOAHLu9cH7CBuib8Cy+0Z6zDtQ
 Seq/KCvop8GjhnAV5SzV8X4IfjN14752i9/QhIlm5LzhK0WqBcmvH3/gqdRCjlX+3jKk
 VsuRkGmNuplJr/5e+3cegLkRhtPyOJW4yh0EIv7ThoG9iAnCqHkppKYznnstvlYoshvA
 JUtg==
X-Gm-Message-State: AOAM5314wgA5MXsVqDyJuelBXYaFzlMn5ARJ4psgX3f2oJi42nEAFU9j
 GTvVPMhKoyabO3RjSKnrZqj1W9PwnOqaEfUnCiqTvg==
X-Google-Smtp-Source: ABdhPJz5yK0wJygEVQqXMaYpmpksgvTmbjCVZvyQYvoEo4EHEhHmH6au95Zopvv8HpYLH1pXqQWVqbWfDGdfLvsTyuI=
X-Received: by 2002:a9d:27c9:: with SMTP id c67mr1253851otb.301.1605226788373; 
 Thu, 12 Nov 2020 16:19:48 -0800 (PST)
MIME-Version: 1.0
References: <CACryqrGDDt7bAT0ad_X4HuVjn2zn-SuMSZ-fRz9u68cZ4bJeBA@mail.gmail.com>
 <CACryqrFVm7eKahR8sVHvtmWpSGo8hKXRweG6ZkrSBBq1sW4_Lg@mail.gmail.com>
 <CAB__hTTp2unhz82kihQF9ABWVw+B7GCAXXN6V_ScHtQF54-YXQ@mail.gmail.com>
 <CACryqrGmp9q_CwpXF_1Nxhezz70PUnO7fq9VKgw4ge+K3uXvCg@mail.gmail.com>
In-Reply-To: <CACryqrGmp9q_CwpXF_1Nxhezz70PUnO7fq9VKgw4ge+K3uXvCg@mail.gmail.com>
Date: Thu, 12 Nov 2020 19:19:37 -0500
Message-ID: <CAB__hTTNooOABKKfSJGb0Qjc1f_3B+49rmLLMKH4qaE80QU=yg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4013685704749180257=="
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

--===============4013685704749180257==
Content-Type: multipart/alternative; boundary="00000000000081989c05b3f1fc47"

--00000000000081989c05b3f1fc47
Content-Type: text/plain; charset="UTF-8"

synchronized receive is possible in all of: c++, python, & gnuradio.  I am
only familiar with c++ and if you use a single streamer with the multi_usrp
object and specify a start time for the streaming, the samples will be
synchronous.


On Thu, Nov 12, 2020 at 7:07 PM Xiang Ma <marxwolfs@gmail.com> wrote:

> Thank you.
> If I use the python API, and uhd.usrp_source, will the RXs of two
> daughterboards start to receive the signal at the same time?
> I donot find the setting here
> https://wiki.gnuradio.org/index.php/USRP_Source.
>
> Or I have to use C++ API, not in gnuradio?
>
> Xiang Ma
>
> On Thu, Nov 12, 2020 at 12:18 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> The multi_usrp can handle multiple usrps but it is also the primary high
>> level interface for controlling a single USRP (with 1 or more channels).
>>
>>
>> On Thu, Nov 12, 2020 at 2:15 PM Xiang Ma via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> The multi_usrp object might be designed for multiple USRPs, however, I
>>> have only 1 USRP, just 2 daughterboads, they are using the same reference
>>> lock.
>>> When I run the program, shouldn't they start to receive the signal at
>>> the same time?
>>>
>>> Thank you,
>>>
>>> On Thu, Nov 12, 2020 at 11:40 AM Xiang Ma <marxwolfs@gmail.com> wrote:
>>>
>>>> Hi,
>>>>
>>>> I have a USRP x310 with 2 UBX daughterboards and GPSDO.
>>>>
>>>> I want to use this as two receivers by the two RX in the two
>>>> daugherboards respectively, and receive the signal at the same time. Do I
>>>> have to synchronize them or they will automatically start to receive the
>>>> signal at the same time?
>>>>
>>>> Thank you,
>>>>
>>>> Xiang Ma
>>>>
>>>>
>>>> --
>>>> *Xiang Ma, *Ph.D. Student
>>>> College of Engineering
>>>> Utah State University
>>>> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
>>>>
>>>
>>>
>>> --
>>> *Xiang Ma, *Ph.D. Student
>>> College of Engineering
>>> Utah State University
>>> E-mail:marxwolfs@gmail.com
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>
> --
> *Xiang Ma, *Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com
>

--00000000000081989c05b3f1fc47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">synchronized receive is possible in all of: c++, python, &=
amp; gnuradio.=C2=A0 I am only familiar with c++ and if you use a single st=
reamer with the multi_usrp object and specify a start time for the streamin=
g, the samples will be synchronous.<div><br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 12, 2020 at 7=
:07 PM Xiang Ma &lt;<a href=3D"mailto:marxwolfs@gmail.com">marxwolfs@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">Thank you.<div>If I use the python API, and uhd.usrp_so=
urce, will the RXs of two daughterboards start to receive the signal at the=
 same time?</div><div>I donot=C2=A0find the setting here=C2=A0<a href=3D"ht=
tps://wiki.gnuradio.org/index.php/USRP_Source" target=3D"_blank">https://wi=
ki.gnuradio.org/index.php/USRP_Source</a>.</div><div><br></div><div>Or I ha=
ve to use C++ API, not in gnuradio?</div><div><br></div><div>Xiang Ma</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Thu, Nov 12, 2020 at 12:18 PM Rob Kossler &lt;<a href=3D"mailto:rkossler=
@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">The multi_usrp c=
an handle multiple usrps but it is also the primary high level interface fo=
r controlling a single USRP (with 1 or more channels).<div><br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Nov 12, 2020 at 2:15 PM Xiang Ma via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">The=C2=A0<span style=3D"color:rgb(0,0,0);white-space:pre-wrap">m=
ulti_usrp object might be designed for multiple USRPs, however, I have only=
 1 USRP, just 2 daughterboads, they are using the same reference lock.</spa=
n><div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap">When I run the=
 program, shouldn&#39;t they start to receive the signal at the same time?<=
/span></div><div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap"><br>=
</span></div><div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap">Tha=
nk you,</span></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, Nov 12, 2020 at 11:40 AM Xiang Ma &lt;<a href=
=3D"mailto:marxwolfs@gmail.com" target=3D"_blank">marxwolfs@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">Hi,<div><br></div><div>I have a USRP x310 with 2 UBX daughterboa=
rds and GPSDO.</div><div><br></div><div>I want to use this as two receivers=
 by the two RX in the two daugherboards respectively, and receive the signa=
l at the same time. Do I have to synchronize them or they will automaticall=
y=C2=A0start to receive the signal at the same time?</div><div><br></div><d=
iv>Thank you,</div><div><br></div><div>Xiang Ma</div><div><br clear=3D"all"=
><div><br></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><font face=3D"time=
s new roman, serif" size=3D"4" style=3D"color:rgb(136,136,136)"><i><b>Xiang=
 Ma,=C2=A0</b></i></font><span style=3D"color:rgb(136,136,136)">Ph.D. Stude=
nt</span><div><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444"=
>College of Engineering</font></div><div><font color=3D"#444444">Utah State=
 University</font></div><div style=3D"color:rgb(136,136,136)"><font color=
=3D"#444444">E-mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:=
rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font></div></div=
></div></div></div></div>
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
><div dir=3D"ltr"><font face=3D"times new roman, serif" size=3D"4" style=3D=
"color:rgb(136,136,136)"><i><b>Xiang Ma,=C2=A0</b></i></font><span style=3D=
"color:rgb(136,136,136)">Ph.D. Student</span><div><div style=3D"color:rgb(1=
36,136,136)"><font color=3D"#444444">College of Engineering</font></div><di=
v><font color=3D"#444444">Utah State University</font></div><div style=3D"c=
olor:rgb(136,136,136)"><font color=3D"#444444">E-mail:<a href=3D"mailto:mar=
xwolfs@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">marxwolf=
s@gmail.com</a></font></div></div></div></div>
</blockquote></div>

--00000000000081989c05b3f1fc47--


--===============4013685704749180257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4013685704749180257==--

