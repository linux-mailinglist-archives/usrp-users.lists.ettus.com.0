Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9B632B8B6
	for <lists+usrp-users@lfdr.de>; Wed,  3 Mar 2021 15:48:32 +0100 (CET)
Received: from [::1] (port=53962 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lHSnc-0004qx-8c; Wed, 03 Mar 2021 09:48:28 -0500
Received: from mail-qk1-f181.google.com ([209.85.222.181]:40489)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lHSnY-0004hf-0j
 for usrp-users@lists.ettus.com; Wed, 03 Mar 2021 09:48:24 -0500
Received: by mail-qk1-f181.google.com with SMTP id l132so22954359qke.7
 for <usrp-users@lists.ettus.com>; Wed, 03 Mar 2021 06:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=1PAbLQvf3I2KeCNuNeBV0x9LV8XdBqOjVdqPVQ26hBE=;
 b=OezGirguqBWZtbildmRo4JVTvUSzOyzV0dOnxPg+QUUraYdVd4E+PJNTml+NN0A4XG
 uXmMNB0BsWC1A2RkgmmTRNOPyCCSzT6VZul2L1vXcmfs7v8vK83bEk9UdpTCQYkRgctZ
 uoWI7arglKa5g625J/U6MWJ+bknjoWZObF6956Lk3uCtVJufAfN4EE3Sflm+Tb9RgGqm
 zRzIekbmXCMR+ByXgrYIuBEpFGXDWOb49W+qJAX0/synVQdNmh1+mX7RfU4PF2C37Usl
 nBJwL/1Bpi4ehlqHqDwW4lIEfFEUgO8u+hVzVHoOsQuepWesg/Lxug3mwpFnwXehYvsS
 KTvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=1PAbLQvf3I2KeCNuNeBV0x9LV8XdBqOjVdqPVQ26hBE=;
 b=Hj/MynZJDgZPb/BG80UouPPa2/NFqiAN+59xa0h+hmKUk79HRW3Aabnj2AJ6OV+07j
 Q8KNp/nXOVTm7vbGlhW7c20de3fkq96LMIEbU4xODVvZWWuih5Ak4ynzPVDmtADBeaJk
 vfwHfUpT02YSB8rJI8k/wz/wDd1eodYLTOG6yS212+ktDlysBuioNym0XhDM8wKn8UQ7
 xtM0m/nM0RfTShI9T9qC5KOYFdsslcF4qGZdKh6BVg9B+MqEst3GH19rm3g4EBM+izxg
 pZTN7F30VqIjBNILJ/j5ZO0H2HcEJk5VcQA8k3VkzbguzwqAOR4Hw0RIWUbX26hD6Mjm
 RKKQ==
X-Gm-Message-State: AOAM533KPu3K6Qtokkd7AEUk70YVYuLufN3BMNo6XJhuLWgU1z++XjdY
 q7eg1fVkgIpNHTw3elbTzf57csM2p30=
X-Google-Smtp-Source: ABdhPJzFcB29o8vA9P3TPX3stDUniZz9oCUiP5h/Epf2zEKDh/shth9fFCt6YDqjNNidbs2Boj8hIQ==
X-Received: by 2002:a05:620a:1593:: with SMTP id
 d19mr13782570qkk.83.1614782863253; 
 Wed, 03 Mar 2021 06:47:43 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.gmail.com with ESMTPSA id e96sm852279qtb.60.2021.03.03.06.47.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Mar 2021 06:47:43 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 3 Mar 2021 09:47:42 -0500
Message-Id: <3AF881A0-725E-4878-8B9B-89B729FECBA6@gmail.com>
References: <CACSyVY0AxAsNpVrnmQRExTcdANCKqaKhrSj-_G5Q7tFZXeRgOg@mail.gmail.com>
Cc: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
In-Reply-To: <CACSyVY0AxAsNpVrnmQRExTcdANCKqaKhrSj-_G5Q7tFZXeRgOg@mail.gmail.com>
To: Kelvin Lok <kelvin.lok266@gmail.com>
X-Mailer: iPhone Mail (18D52)
Subject: Re: [USRP-users] B205mini continously transmitting a carrier tone
 even though UHD crashed
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
Content-Type: multipart/mixed; boundary="===============5109338076201666256=="
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


--===============5109338076201666256==
Content-Type: multipart/alternative; boundary=Apple-Mail-DE06C8A6-46C6-4E6E-9B34-EA51A22EE647
Content-Transfer-Encoding: 7bit


--Apple-Mail-DE06C8A6-46C6-4E6E-9B34-EA51A22EE647
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Well assuming it doesn=E2=80=99t crash you can turn down the RF gain and tun=
e it to an out of band frequency.=20

Sent from my iPhone

> On Mar 3, 2021, at 9:32 AM, Kelvin Lok <kelvin.lok266@gmail.com> wrote:
>=20
> =EF=BB=BF
> Thanks Marcus, I realised it might just have been the lo offset. Is there a=
 way to "turn off" the lo linkage to the front-end output whenever I'm done w=
ith the usrp? Ideally, I would like to avoid power cycling the radio wheneve=
r I'm done.
>=20
>> On Wed, 3 Mar 2021, 10:18 pm Marcus D Leech, <patchvonbraun@gmail.com> wr=
ote:
>> That=E2=80=99s likely just the TX Lo leakage.=20
>>=20
>> I=E2=80=99m guessing it a a lot weaker than when you=E2=80=99re actually t=
ransmitting?
>>=20
>> Sent from my iPhone
>>=20
>> > On Mar 3, 2021, at 3:42 AM, Kelvin Lok via USRP-users <usrp-users@lists=
.ettus.com> wrote:
>> >=20
>> > =EF=BB=BF
>> > Hi everyone, I am facing an unexpected problem where my B205mini USRP i=
s continuously transmitting a tone (that I set initialised as the tx freq), e=
ven when my parent program has crashed. My parent program is a C++ program t=
hat calls uhd, but when the main program catches an exception and terminates=
, the B205mini is still transmitting a tone. I observed this behaviour by mo=
nitoring the TX output with a spectrum analyser.
>> >=20
>> > Does anyone have any ideas what could be the problem? Do I need to call=
 a UHD usrp destructor? I noticed that the example UHD programs don't need t=
o release or delete the uhd object. Hence I am stumped.
>> >=20
>> >=20
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-DE06C8A6-46C6-4E6E-9B34-EA51A22EE647
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Well assuming it doesn=E2=80=99t crash you c=
an turn down the RF gain and tune it to an out of band frequency.&nbsp;<br><=
br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquot=
e type=3D"cite">On Mar 3, 2021, at 9:32 AM, Kelvin Lok &lt;kelvin.lok266@gma=
il.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div d=
ir=3D"ltr">=EF=BB=BF<div dir=3D"auto">Thanks Marcus, I realised it might jus=
t have been the lo offset. Is there a way to "turn off" the lo linkage to th=
e front-end output whenever I'm done with the usrp? Ideally, I would like to=
 avoid power cycling the radio whenever I'm done.</div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 3 Mar 2021, 10:18 pm=
 Marcus D Leech, &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbrau=
n@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">That=E2=80=99=
s likely just the TX Lo leakage. <br>
<br>
I=E2=80=99m guessing it a a lot weaker than when you=E2=80=99re actually tra=
nsmitting?<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Mar 3, 2021, at 3:42 AM, Kelvin Lok via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi everyone, I am facing an unexpected problem where my B205mini USRP i=
s continuously transmitting a tone (that I set initialised as the tx freq), e=
ven when my parent program has crashed. My parent program is a C++ program t=
hat calls uhd, but when the main program catches an exception and terminates=
, the B205mini is still transmitting a tone. I observed this behaviour by mo=
nitoring the TX output with a spectrum analyser.<br>
&gt; <br>
&gt; Does anyone have any ideas what could be the problem? Do I need to call=
 a UHD usrp destructor? I noticed that the example UHD programs don't need t=
o release or delete the uhd object. Hence I am stumped.<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"=
noreferrer">USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.c=
om/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-DE06C8A6-46C6-4E6E-9B34-EA51A22EE647--


--===============5109338076201666256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5109338076201666256==--

