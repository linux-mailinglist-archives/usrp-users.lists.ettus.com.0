Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E493318DAB
	for <lists+usrp-users@lfdr.de>; Thu, 11 Feb 2021 15:54:45 +0100 (CET)
Received: from [::1] (port=56822 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lADMi-0006JU-2s; Thu, 11 Feb 2021 09:54:44 -0500
Received: from mail-io1-f51.google.com ([209.85.166.51]:43258)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cwolsief@gmail.com>) id 1lADMe-0006Cq-Ld
 for USRP-users@lists.ettus.com; Thu, 11 Feb 2021 09:54:40 -0500
Received: by mail-io1-f51.google.com with SMTP id f20so5909740ioo.10
 for <USRP-users@lists.ettus.com>; Thu, 11 Feb 2021 06:54:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0MEtrNZAwyRZ0X5YdThDlHpICufp/+5Q3lQX2JxJOqw=;
 b=DGeYqeRvVd1eSjF4c17SKHpIScsXkrQYIfCN3QPcunrRd20d2CozGUdLuiSC2XrIWU
 eGLV5y8zr9R4O4UnvNFhPouObTmQ9vNxBKUosbvcZxT5ZNPJKca0JeObtu/+MYgGAG/D
 SyfeUBRieYcLsqDjkQSlalUbTOGrdrntcg1tgVbZx/hG6f/Ur9lBe3A8wPbgozfWnbJi
 avQ62zsEBJ9KmYzBxtT00dVyINWwU2XGlxcqYnccnWL8KG2ZGJBHPJpN7V+rKy9h/DoI
 SKKl6Mf2J0OUISaYyPZ1x2JewvLAQdd3s6CjZY6EQbiVB79ZhmfymNr6t2RyTUJnPnH3
 ADZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0MEtrNZAwyRZ0X5YdThDlHpICufp/+5Q3lQX2JxJOqw=;
 b=GQfS6JWuOLTGoH6ARjestJAKgU2yufdGa3mUXl0glm+S8YNuj2CM2l77WM2S9rW4Wq
 GbnDW3YfJqhzdp9S8nyQqsmD88Ej4OObl+2AsM3NqJSyCc4+Fva7JxMmJpAxmE9BeNMk
 wKcKUfSM0PaHilYQN9YYEVdn09O4LRqTEZo8w+DKAvCizQR4ThTQUw7Q3kI84L0SYyD8
 /3Qv70k06E5DsBbvfgkGvx+YA+Uvl7fCSgzYhopxMtrHqjHQ+qlpZnOLVN5/t99yonS1
 dgyc3OhnjHmJq83I3oT5QygVVNKOrYUj6Yzfg5sWucT7ZEtxCILAaLHHNOuG2P8YuC98
 iCJw==
X-Gm-Message-State: AOAM533MKV8Iifd8D6tkKomUG0OSD2wwu56q+iRab3r3RlR6XUN8FEUw
 22IBbJ/kYh8/wiZpiHdngqeYc6IyfwWt34dyhPU=
X-Google-Smtp-Source: ABdhPJyD0TKu2jE+zAW4zxYnPni2WM6tFYYQr+X6f8IWi/75pf8kO1Sw30TeiiAviXVH61rk16jmOt7g+MbSDjGmWek=
X-Received: by 2002:a02:cba5:: with SMTP id v5mr9162880jap.72.1613055239930;
 Thu, 11 Feb 2021 06:53:59 -0800 (PST)
MIME-Version: 1.0
References: <CAM06ataJCyM_x3o24-H59EXnB9go=LuxFuEyUiWZebP8ktGShQ@mail.gmail.com>
 <CA5120D6-2F5E-4CCD-8390-728A2810CA11@gmail.com>
 <CAM06atZG1mrZyx+4qFLyvjCi0BmN8PhxDgX1WN72=cUrzeJ2vA@mail.gmail.com>
 <CAM06atZ59QrYg+uW_gUuNRHrqr+c4vuF_0WbTTzR9kcLEU9tVA@mail.gmail.com>
In-Reply-To: <CAM06atZ59QrYg+uW_gUuNRHrqr+c4vuF_0WbTTzR9kcLEU9tVA@mail.gmail.com>
Date: Thu, 11 Feb 2021 09:53:49 -0500
Message-ID: <CAM06atajjWy7y0tXX+Dh6S1q5vMb0A1AiWdxFpK4Vhfyqu+0kA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7501629690123565976=="
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

--===============7501629690123565976==
Content-Type: multipart/alternative; boundary="00000000000094486c05bb10b00e"

--00000000000094486c05bb10b00e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Actually i got it, for my case it was in

export PYTHONPATH=3D"/usr/local/lib/python3/dist-packages/"

Semi-new to this so still figuring out some of the stuff that is probably
obvious. Will throw this line in ~/.bash_profile

Thank you!

On Thu, Feb 11, 2021, 9:46 AM Casey Wolsieffer <cwolsief@gmail.com> wrote:

> I tried your suggestion as well Rob to no avail. Also, thank you both for
> your responses
>
> On Thu, Feb 11, 2021, 9:44 AM Casey Wolsieffer <cwolsief@gmail.com> wrote=
:
>
>> I did sudo make install yes,
>>
>>
>> I'm assuming you mean /usr/local, I tried that in .conf file but that
>> doesn't seem to work either
>>
>>
>> On Thu, Feb 11, 2021, 8:57 AM Marcus D Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> Your install prefix is /use/local
>>>
>>> Did you sudo make install?
>>>
>>>
>>>
>>> Sent from my iPhone
>>>
>>> > On Feb 11, 2021, at 8:30 AM, Casey Wolsieffer via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>> >
>>> > =EF=BB=BF
>>> > Hello, I have tried several times to install Python3 uhd on my system
>>> but when I attempt >>>import uhd in python3 environment I always receiv=
e
>>> ModuleNotFoundError: no module named 'uhd'
>>> >
>>> > As far as I can see there are no hang ups on install and after $make,
>>> I run $make test and get 0 out of 82 fails. Below is my enabled compone=
nts
>>> after I run
>>> >
>>> > $cmake ../
>>> >
>>> > I've also put a uhd.conf file in my ld.so.conf file and ran $sudo
>>> ldconfig. Although I'm not certain I'm putting in correct path, right n=
ow
>>> it's [my_directory]/uhd/host/build/lib/
>>> >
>>> > I'm on Ubuntu 20.04, any help is greatly appreciated!
>>> >
>>> > -- ######################################################
>>> > -- # UHD enabled components
>>> > -- ######################################################
>>> > --   * LibUHD
>>> > --   * LibUHD - C API
>>> > --   * LibUHD - Python API
>>> > --   * Examples
>>> > --   * Utils
>>> > --   * Tests
>>> > --   * USB
>>> > --   * B100
>>> > --   * B200
>>> > --   * USRP1
>>> > --   * USRP2
>>> > --   * X300
>>> > --   * MPMD
>>> > --   * SIM
>>> > --   * N300
>>> > --   * N320
>>> > --   * E320
>>> > --   * E300
>>> > --   * OctoClock
>>> > --   * Manual
>>> > --   * API/Doxygen
>>> > --   * Man Pages
>>> > --
>>> > -- ######################################################
>>> > -- # UHD disabled components
>>> > -- ######################################################
>>> > --   * DPDK
>>> > --
>>> > -- ******************************************************
>>> > -- * You are building the UHD development master branch.
>>> > -- * For production code, we recommend our stable,
>>> > -- * releases or using the release branch (maint).
>>> > -- ******************************************************
>>> > -- Building version: 4.0.0.0-93-g3b9ced8f
>>> > -- Using install prefix: /usr/local
>>> > -- Configuring done
>>> > -- Generating done
>>> > -- Build files have been written to:
>>> /home/casey/Projects/UHD/uhd/host/build
>>> >
>>> >
>>> > _______________________________________________
>>> > USRP-users mailing list
>>> > USRP-users@lists.ettus.com
>>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--00000000000094486c05bb10b00e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Actually i got it, for my case it was in<div dir=3D"auto"=
><br></div><div dir=3D"auto">export PYTHONPATH=3D&quot;/usr/local/lib/pytho=
n3/dist-packages/&quot;</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
Semi-new to this so still figuring out some of the stuff that is probably o=
bvious. Will throw this line in ~/.bash_profile</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">Thank you!</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 11, 2021, 9:46 AM Casey=
 Wolsieffer &lt;<a href=3D"mailto:cwolsief@gmail.com">cwolsief@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">I tr=
ied your suggestion as well Rob to no avail. Also, thank you both for your =
responses</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, Feb 11, 2021, 9:44 AM Casey Wolsieffer &lt;<a href=3D"mail=
to:cwolsief@gmail.com" target=3D"_blank" rel=3D"noreferrer">cwolsief@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto=
">I did sudo make install yes,<div dir=3D"auto"><br></div><div dir=3D"auto"=
><br></div><div dir=3D"auto">I&#39;m assuming you mean /usr/local, I tried =
that in .conf file but that doesn&#39;t seem to work either</div><br><br><d=
iv class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Thu, Feb 11, 2021, 8:57 AM Marcus D Leech &lt;<a href=3D"mailto:patchvo=
nbraun@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">patchvonb=
raun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Your =
install prefix is /use/local<br>
<br>
Did you sudo make install?<br>
<br>
<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Feb 11, 2021, at 8:30 AM, Casey Wolsieffer via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer noref=
errer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
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
rrer noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_bla=
nk">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><=
br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--00000000000094486c05bb10b00e--


--===============7501629690123565976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7501629690123565976==--

