Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C778318D9E
	for <lists+usrp-users@lfdr.de>; Thu, 11 Feb 2021 15:52:36 +0100 (CET)
Received: from [::1] (port=56796 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lADKd-00062k-1q; Thu, 11 Feb 2021 09:52:35 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:41496)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <pageheller@gmail.com>)
 id 1lADKZ-0005cI-PF
 for usrp-users@lists.ettus.com; Thu, 11 Feb 2021 09:52:31 -0500
Received: by mail-ot1-f50.google.com with SMTP id s107so5331496otb.8
 for <usrp-users@lists.ettus.com>; Thu, 11 Feb 2021 06:52:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:date:message-id:subject:from:to:cc:in-reply-to
 :references:user-agent;
 bh=Eo1YyX0EGsB56vviRKL7DG1F/1h1wMhKtOyiT3B0yYE=;
 b=teX+0uB/a9gXlDw6hkhcgVFnYJ5Brxcx5W5zebFAepEDrV464WJPAXvvEK8PftTRZY
 YO/gNzgIvtDI0ufs+KGFsdfGsfSS92mrhhl0BsCZsta5IxHbi74iF6L3oLux5tJGVa4L
 6XAvANCP1dJ8LIhXCFjmaAuioFn5ttOGvq50/p3GKWsHIwleEJS7E2Y5isO3wshHjzL5
 0oUGPuRw0X7MkxPi58fvK7t8nYUoUSvb5OdQ6XqWNrprUvGSn9YoWB+FmHvfcA2DTH5j
 BQmjJQMopd8jbGoIxJuQ7dl/YSkgQy9LF4ypQrH4xVdP6S4xj81OUUML+0TdLXk7QDRE
 j9Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
 :in-reply-to:references:user-agent;
 bh=Eo1YyX0EGsB56vviRKL7DG1F/1h1wMhKtOyiT3B0yYE=;
 b=VATK+Z0Nlp981Ib3820ITDyMyVp2dHdKkRLbzkATqDAdqYxLIE0MZzyOhiuadJQJAU
 8Kwn26DaMcKb3uI5qtjojwlyjA3qtgWDM11gtzq1K4fD7AFa9QmTs9hBUMfXRHcEA6IB
 +Q8/3Z2U2vOBOtr49/+bAAOyZC7aZxachximkkAAcB1ZW7EdsCcmsHJkpDIEriwvwPed
 j4y8T6MrKidwqp5GDKqWG2HL1ZKAKx9wh2Oxp+YMS9dspafKEigPtJswDsTYBQh2rmMS
 0JRBm4WeLy86pnYJNFchOD58j4/TY6SPwawh/YlnZq7uFTrlGQYwoC2vZJkpGLYBYpD0
 /5eg==
X-Gm-Message-State: AOAM530O6Ht1gRrBUIQ4oreHi2uFV7ef2U+G3pzwwBf4Fsd/AuU0rwqk
 cFSw4B+rYe10JmYEGPlWJaw=
X-Google-Smtp-Source: ABdhPJzeBtqaP2jVMv2i54m5eZ/uBiXd4nRKMNWtCjF/FbuQFItbgie0npknQaje3GTz06yMeJOgxQ==
X-Received: by 2002:a9d:2aa6:: with SMTP id e35mr6163377otb.283.1613055111070; 
 Thu, 11 Feb 2021 06:51:51 -0800 (PST)
Received: from [192.168.1.9]
 (47-218-105-159.bcstcmta04.res.dyn.suddenlink.net. [47.218.105.159])
 by smtp.gmail.com with ESMTPSA id m15sm1010911otl.11.2021.02.11.06.51.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Feb 2021 06:51:50 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 11 Feb 2021 08:51:39 -0600
Message-ID: <Mailbird-30384332-fa0b-4667-a251-9a7faa329e6a@gmail.com>
To: "" <cwolsief@gmail.com>,
 "" <patchvonbraun@gmail.com>
Cc: "Casey Wolsieffer via USRP-users" <usrp-users@lists.ettus.com>
In-Reply-To: <CAM06atZ59QrYg+uW_gUuNRHrqr+c4vuF_0WbTTzR9kcLEU9tVA@mail.gmail.com>
References: <CAM06ataJCyM_x3o24-H59EXnB9go=LuxFuEyUiWZebP8ktGShQ@mail.gmail.com>
 <CA5120D6-2F5E-4CCD-8390-728A2810CA11@gmail.com>
 <CAM06atZG1mrZyx+4qFLyvjCi0BmN8PhxDgX1WN72=cUrzeJ2vA@mail.gmail.com>
 <CAM06atZ59QrYg+uW_gUuNRHrqr+c4vuF_0WbTTzR9kcLEU9tVA@mail.gmail.com>
User-Agent: Mailbird/2.9.18.0
X-Mailbird-ID: Mailbird-30384332-fa0b-4667-a251-9a7faa329e6a@gmail.com
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
From: page heller via USRP-users <usrp-users@lists.ettus.com>
Reply-To: page heller <pageheller@gmail.com>
Content-Type: multipart/mixed; boundary="===============7130737698234171915=="
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

--===============7130737698234171915==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_61243878.653250993223"

------=_NextPart_61243878.653250993223
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We also failed with ubuntu 20.xx, but it will install correctly with 18.04.=
=C2=A0 -p
On 2/11/2021 8:47:28 AM, Casey Wolsieffer via USRP-users <usrp-users@lists.=
ettus.com> wrote:
I tried your suggestion as well Rob to no avail. Also, thank you both for y=
our responses

On Thu, Feb 11, 2021, 9:44 AM Casey Wolsieffer <cwolsief@gmail.com [mailto:=
cwolsief@gmail.com]> wrote:

I did sudo make install yes,


I'm assuming you mean /usr/local, I tried that in .conf file but that doesn=
't seem to work either


On Thu, Feb 11, 2021, 8:57 AM Marcus D Leech <patchvonbraun@gmail.com [mail=
to:patchvonbraun@gmail.com]> wrote:

Your install prefix is /use/local

Did you sudo make install?



Sent from my iPhone

> On Feb 11, 2021, at 8:30 AM, Casey Wolsieffer via USRP-users <usrp-users@=
lists.ettus.com [mailto:usrp-users@lists.ettus.com]> wrote:
>
> =EF=BB=BF
> Hello, I have tried several times to install Python3 uhd on my system but=
 when I attempt >>>import uhd in python3 environment I always receive Modul=
eNotFoundError: no module named 'uhd'
>
> As far as I can see there are no hang ups on install and after $make, I r=
un $make test and get 0 out of 82 fails. Below is my enabled components aft=
er I run
>
> $cmake ../
>
> I've also put a uhd.conf file in my ld.so.conf file and ran $sudo ldconfi=
g. Although I'm not certain I'm putting in correct path, right now it's [my=
_directory]/uhd/host/build/lib/
>
> I'm on Ubuntu 20.04, any help is greatly appreciated!
>
> -- ######################################################
> -- # UHD enabled components
> -- ######################################################
> -- * LibUHD
> -- * LibUHD - C API
> -- * LibUHD - Python API
> -- * Examples
> -- * Utils
> -- * Tests
> -- * USB
> -- * B100
> -- * B200
> -- * USRP1
> -- * USRP2
> -- * X300
> -- * MPMD
> -- * SIM
> -- * N300
> -- * N320
> -- * E320
> -- * E300
> -- * OctoClock
> -- * Manual
> -- * API/Doxygen
> -- * Man Pages
> --
> -- ######################################################
> -- # UHD disabled components
> -- ######################################################
> -- * DPDK
> --
> -- ******************************************************
> -- * You are building the UHD development master branch.
> -- * For production code, we recommend our stable,
> -- * releases or using the release branch (maint).
> -- ******************************************************
> -- Building version: 4.0.0.0-93-g3b9ced8f
> -- Using install prefix: /usr/local
> -- Configuring done
> -- Generating done
> -- Build files have been written to: /home/casey/Projects/UHD/uhd/host/bu=
ild
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com [mailto:USRP-users@lists.ettus.com]
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com [http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com]

_______________________________________________ USRP-users mailing list USR=
P-users@lists.ettus.com http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com
------=_NextPart_61243878.653250993223
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<body><div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-fami=
ly: Arial;color: #000000;text-align: left" dir=3D"ltr">
                                        We also failed with ubuntu 20.xx, b=
ut it will install correctly with 18.04.&nbsp; -p<div class=3D"mb_sig"></di=
v><blockquote class=3D'history_container' type=3D'cite' style=3D'border-lef=
t-style:solid;border-width:1px; margin-top:20px; margin-left:0px;padding-le=
ft:10px;'>
                        <p style=3D'color: #AAAAAA; margin-top: 10px;'>On 2=
/11/2021 8:47:28 AM, Casey Wolsieffer via USRP-users &lt;usrp-users@lists.e=
ttus.com&gt; wrote:</p><div style=3D'font-family:Arial,Helvetica,sans-serif=
'><div dir=3D"auto">I tried your suggestion as well Rob to no avail. Also, =
thank you both for your responses</div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 11, 2021, 9:44 AM Casey Wolsie=
ffer &lt;<a href=3D"mailto:cwolsief@gmail.com">cwolsief@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">I did sudo =
make install yes,<div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">I&#39;m assuming you mean /usr/local, I tried that in .conf=
 file but that doesn&#39;t seem to work either</div><br><br><div class=3D"g=
mail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb =
11, 2021, 8:57 AM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.=
com" target=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">Your install prefix is /use/l=
ocal<br>
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
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
</div></blockquote>
                                        </div></body>
------=_NextPart_61243878.653250993223--


--===============7130737698234171915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7130737698234171915==--

