Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FE0318D95
	for <lists+usrp-users@lfdr.de>; Thu, 11 Feb 2021 15:47:31 +0100 (CET)
Received: from [::1] (port=56736 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lADFh-00054Z-Sk; Thu, 11 Feb 2021 09:47:29 -0500
Received: from mail-il1-f182.google.com ([209.85.166.182]:39125)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cwolsief@gmail.com>) id 1lADFe-0004xq-G9
 for USRP-users@lists.ettus.com; Thu, 11 Feb 2021 09:47:26 -0500
Received: by mail-il1-f182.google.com with SMTP id o15so4284930ilt.6
 for <USRP-users@lists.ettus.com>; Thu, 11 Feb 2021 06:47:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dVttnZwO/pSX+vAs5P5x4MZpLH4m6rlM0FDBow5f4y4=;
 b=OZPfOikK2P0ekXx4GAKgzwyG9TnsdRQzZ3IEVJQs3R7VYsZfW4pzrLyjQUCRUmlUW3
 eZ0+w2MHVw8cPUCPTzPfcVneabhHMc831QU84V39IDmsSkTw0RdibuYcK8aDyta5dE8V
 z9n6YNahg6vgoT0+HQ9mOTdlgWGk7Zi0AhTlFa+Q9OoVQ3SESxq5YeKnnVdojI/TszMq
 opnfO7fXqsPbfczJCesU358pSBP2XB+DCxYKuq31N5Ak5K6dxriYXTEQvRAS91eYPtah
 LkzCUo+cQVwFT5x+DxLlPuAg2xKf1GU2rwGUb/Fjbpb7pqf2xeJoXF7xCcapxfkSm8kz
 WOFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dVttnZwO/pSX+vAs5P5x4MZpLH4m6rlM0FDBow5f4y4=;
 b=nKW2pIdWFHR0RzudDV8nIjDSGoBXxeKjOZ67kncpFW1BbvYVqPjBZNPTLLuAJ+t7YX
 hRaqAimNBaoaGvJyzaXl7EZs8K8viS6es4AL1PbTpTuOnVYvw3uhnJ3CZ73h9yFNOXy/
 dcrY6qLBv+tOUc4yR1NIqQPjHH0e4nt1lstbLTW2RwtaOITVaxk3A3sQobLMD4i+A0DF
 SmnnCZdhS3H3cXoNx9f07joooYDD50/rDqPtxzyOSuKvunZASUScgP0LewtK8TeKjFYZ
 y66v4CZm7Y3nPw4vapWejJbilTN/3UNBaTmRj8v9w+c/Jb/SuPjS5tPN5bh2m1Sr21CX
 sC4w==
X-Gm-Message-State: AOAM5309MyFNmnaMsfxYxf4Yo7zt4v7jsDjMn98cZElFdKm6YjX7Om75
 jJReFss3Cw2ebIEvEXCLq3rK/GuSMKDAazb6NCQ=
X-Google-Smtp-Source: ABdhPJzhifbZFA9i1LLl09b5zkncu5F6vPwynVQJIOxipVageJQP6e9cpQJLBNE9ndaYJR/FDGeaHJwU5lU5ScTmVBM=
X-Received: by 2002:a05:6e02:1aab:: with SMTP id
 l11mr6074251ilv.300.1613054805744; 
 Thu, 11 Feb 2021 06:46:45 -0800 (PST)
MIME-Version: 1.0
References: <CAM06ataJCyM_x3o24-H59EXnB9go=LuxFuEyUiWZebP8ktGShQ@mail.gmail.com>
 <CA5120D6-2F5E-4CCD-8390-728A2810CA11@gmail.com>
 <CAM06atZG1mrZyx+4qFLyvjCi0BmN8PhxDgX1WN72=cUrzeJ2vA@mail.gmail.com>
In-Reply-To: <CAM06atZG1mrZyx+4qFLyvjCi0BmN8PhxDgX1WN72=cUrzeJ2vA@mail.gmail.com>
Date: Thu, 11 Feb 2021 09:46:35 -0500
Message-ID: <CAM06atZ59QrYg+uW_gUuNRHrqr+c4vuF_0WbTTzR9kcLEU9tVA@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Subject: Re: [USRP-users] Python API install help - Ubuntu 20.04
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
From: Casey Wolsieffer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Casey Wolsieffer <cwolsief@gmail.com>
Content-Type: multipart/mixed; boundary="===============4819267233082437635=="
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

--===============4819267233082437635==
Content-Type: multipart/alternative; boundary="000000000000b320c405bb109621"

--000000000000b320c405bb109621
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I tried your suggestion as well Rob to no avail. Also, thank you both for
your responses

On Thu, Feb 11, 2021, 9:44 AM Casey Wolsieffer <cwolsief@gmail.com> wrote:

> I did sudo make install yes,
>
>
> I'm assuming you mean /usr/local, I tried that in .conf file but that
> doesn't seem to work either
>
>
> On Thu, Feb 11, 2021, 8:57 AM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> Your install prefix is /use/local
>>
>> Did you sudo make install?
>>
>>
>>
>> Sent from my iPhone
>>
>> > On Feb 11, 2021, at 8:30 AM, Casey Wolsieffer via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>> >
>> > =EF=BB=BF
>> > Hello, I have tried several times to install Python3 uhd on my system
>> but when I attempt >>>import uhd in python3 environment I always receive
>> ModuleNotFoundError: no module named 'uhd'
>> >
>> > As far as I can see there are no hang ups on install and after $make, =
I
>> run $make test and get 0 out of 82 fails. Below is my enabled components
>> after I run
>> >
>> > $cmake ../
>> >
>> > I've also put a uhd.conf file in my ld.so.conf file and ran $sudo
>> ldconfig. Although I'm not certain I'm putting in correct path, right no=
w
>> it's [my_directory]/uhd/host/build/lib/
>> >
>> > I'm on Ubuntu 20.04, any help is greatly appreciated!
>> >
>> > -- ######################################################
>> > -- # UHD enabled components
>> > -- ######################################################
>> > --   * LibUHD
>> > --   * LibUHD - C API
>> > --   * LibUHD - Python API
>> > --   * Examples
>> > --   * Utils
>> > --   * Tests
>> > --   * USB
>> > --   * B100
>> > --   * B200
>> > --   * USRP1
>> > --   * USRP2
>> > --   * X300
>> > --   * MPMD
>> > --   * SIM
>> > --   * N300
>> > --   * N320
>> > --   * E320
>> > --   * E300
>> > --   * OctoClock
>> > --   * Manual
>> > --   * API/Doxygen
>> > --   * Man Pages
>> > --
>> > -- ######################################################
>> > -- # UHD disabled components
>> > -- ######################################################
>> > --   * DPDK
>> > --
>> > -- ******************************************************
>> > -- * You are building the UHD development master branch.
>> > -- * For production code, we recommend our stable,
>> > -- * releases or using the release branch (maint).
>> > -- ******************************************************
>> > -- Building version: 4.0.0.0-93-g3b9ced8f
>> > -- Using install prefix: /usr/local
>> > -- Configuring done
>> > -- Generating done
>> > -- Build files have been written to:
>> /home/casey/Projects/UHD/uhd/host/build
>> >
>> >
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000b320c405bb109621
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I tried your suggestion as well Rob to no avail. Also, th=
ank you both for your responses</div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, Feb 11, 2021, 9:44 AM Casey Wolsieff=
er &lt;<a href=3D"mailto:cwolsief@gmail.com">cwolsief@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">I did sudo ma=
ke install yes,<div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">I&#39;m assuming you mean /usr/local, I tried that in .conf f=
ile but that doesn&#39;t seem to work either</div><br><br><div class=3D"gma=
il_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 11=
, 2021, 8:57 AM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m" target=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">Your install prefix is /use/loc=
al<br>
<br>
Did you sudo make install?<br>
<br>
<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Feb 11, 2021, at 8:30 AM, Casey Wolsieffer via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer" targ=
et=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hello, I have tried several times to install Python3 uhd on my system =
but when I attempt &gt;&gt;&gt;import uhd in python3 environment I always r=
eceive ModuleNotFoundError: no module named &#39;uhd&#39;<br>
&gt; <br>
&gt; As far as I can see there are no hang ups on install and after $make, =
I run $make test and get 0 out of 82 fails. Below is my enabled components =
after I run<br>
&gt; <br>
&gt; $cmake ../<br>
&gt; <br>
&gt; I&#39;ve also put a uhd.conf file in my ld.so.conf file and ran $sudo =
ldconfig. Although I&#39;m not certain I&#39;m putting in correct path, rig=
ht now it&#39;s [my_directory]/uhd/host/build/lib/<br>
&gt; <br>
&gt; I&#39;m on Ubuntu 20.04, any help is greatly appreciated!<br>
&gt; <br>
&gt; -- ###################################################### <br>
&gt; -- # UHD enabled components=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; -- ###################################################### <br>
&gt; --=C2=A0 =C2=A0* LibUHD <br>
&gt; --=C2=A0 =C2=A0* LibUHD - C API <br>
&gt; --=C2=A0 =C2=A0* LibUHD - Python API <br>
&gt; --=C2=A0 =C2=A0* Examples <br>
&gt; --=C2=A0 =C2=A0* Utils <br>
&gt; --=C2=A0 =C2=A0* Tests <br>
&gt; --=C2=A0 =C2=A0* USB <br>
&gt; --=C2=A0 =C2=A0* B100 <br>
&gt; --=C2=A0 =C2=A0* B200 <br>
&gt; --=C2=A0 =C2=A0* USRP1 <br>
&gt; --=C2=A0 =C2=A0* USRP2 <br>
&gt; --=C2=A0 =C2=A0* X300 <br>
&gt; --=C2=A0 =C2=A0* MPMD <br>
&gt; --=C2=A0 =C2=A0* SIM <br>
&gt; --=C2=A0 =C2=A0* N300 <br>
&gt; --=C2=A0 =C2=A0* N320 <br>
&gt; --=C2=A0 =C2=A0* E320 <br>
&gt; --=C2=A0 =C2=A0* E300 <br>
&gt; --=C2=A0 =C2=A0* OctoClock <br>
&gt; --=C2=A0 =C2=A0* Manual <br>
&gt; --=C2=A0 =C2=A0* API/Doxygen <br>
&gt; --=C2=A0 =C2=A0* Man Pages <br>
&gt; --=C2=A0 <br>
&gt; -- ###################################################### <br>
&gt; -- # UHD disabled components=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>
&gt; -- ###################################################### <br>
&gt; --=C2=A0 =C2=A0* DPDK <br>
&gt; --=C2=A0 <br>
&gt; -- ****************************************************** <br>
&gt; -- * You are building the UHD development master branch. <br>
&gt; -- * For production code, we recommend our stable, <br>
&gt; -- * releases or using the release branch (maint). <br>
&gt; -- ****************************************************** <br>
&gt; -- Building version: 4.0.0.0-93-g3b9ced8f <br>
&gt; -- Using install prefix: /usr/local <br>
&gt; -- Configuring done <br>
&gt; -- Generating done <br>
&gt; -- Build files have been written to: /home/casey/Projects/UHD/uhd/host=
/build<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer norefe=
rrer" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://=
lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>

--000000000000b320c405bb109621--


--===============4819267233082437635==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4819267233082437635==--

