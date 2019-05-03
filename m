Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A09291255A
	for <lists+usrp-users@lfdr.de>; Fri,  3 May 2019 02:08:34 +0200 (CEST)
Received: from [::1] (port=57452 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMLkd-0002Gc-NV; Thu, 02 May 2019 20:08:31 -0400
Received: from mail-it1-f182.google.com ([209.85.166.182]:33980)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <sdormian@eng.ucsd.edu>)
 id 1hMLk6-00026U-0w
 for usrp-users@lists.ettus.com; Thu, 02 May 2019 20:08:28 -0400
Received: by mail-it1-f182.google.com with SMTP id p18so6879995itm.1
 for <usrp-users@lists.ettus.com>; Thu, 02 May 2019 17:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eng.ucsd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mVJSfflnLvbI2cANjEvQ6I4sNAQWrIRhyMCoS0+Bcjk=;
 b=gIT88e6j3iUZRwDyje6FpZsl6oxTYne++/r3EzFNtBnmF0YECcsESiCSWxpqc2gW2H
 gPpZRkhcmyT21yPKJMoRpGUrdxYcGPzP2tqL0O+PaCEdABju7r0DYBJPfk4NU4a9Ya3R
 47gD+uthJbixuolmf3TWU8CTD9EkvMzCjdKb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mVJSfflnLvbI2cANjEvQ6I4sNAQWrIRhyMCoS0+Bcjk=;
 b=txln7y8A/sb13STQojycOmrweQUvQ8NauVK6aGdOCsTNSjfcL4b3eYYUR5haOfiSZ2
 iZzRhOD1fcLDoO0f3B1QKJfXPoV5YZ+AAh/3j52ydnl6LFF4pcy6v6Blr6B0Y7QE7n0/
 oc5zPgTUCDWP4EgrKTSxfyt8cPR9uKIau8WOvQaOvZf4Kvf4cAy2k73kkZj/kblunmRb
 6pccFqCxRyE8KoQ3e/EOPyZMF0q8AYQjsMH2XhqRPneHBg3KwrJsfCxS/SmyDgRIqJmQ
 7EyjQHMixgRHlqY/8DMwPjjo77IaJ2QLFshe8l1bkqtkWqLpC4NQpLQCM1gJf4pGEdxG
 E+bg==
X-Gm-Message-State: APjAAAXZx16M9VhT6HZiGVt2GKldWXNeM4bCqI3+t/cjoLzqNRkdZBZl
 tolLQC0MD4Yk5KyN0P8GFSKieCzW6wLIQdcccqt30A==
X-Google-Smtp-Source: APXvYqxZmcKUPMZYnJmI7kAWl3/qRmoxWEiGza0IckUEWsquu7zIL6eMOhBtagbePY0A1UWQSjibxv56LWqSlrcC/sg=
X-Received: by 2002:a02:8585:: with SMTP id d5mr5006804jai.69.1556842037179;
 Thu, 02 May 2019 17:07:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAJKWE_dGPwMCtm-+pQsy92p9drQbFE+DTuigX243TptdhX11dQ@mail.gmail.com>
 <CALbO1t2JjvMCKvocmsBniY+C140esBX4DFrYtZxuAP6_q2tUHg@mail.gmail.com>
In-Reply-To: <CALbO1t2JjvMCKvocmsBniY+C140esBX4DFrYtZxuAP6_q2tUHg@mail.gmail.com>
Date: Thu, 2 May 2019 17:06:39 -0700
Message-ID: <CANaxSipi3e0ibwwW55iDQ7c2EPhsjvmXFZZftWi7AgcYTBJ61w@mail.gmail.com>
To: Jorge Chen <superme991@gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] N310 Multi Device Configuration
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ali Dormiani via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ali Dormiani <sdormian@eng.ucsd.edu>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7834372245637376050=="
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

--===============7834372245637376050==
Content-Type: multipart/alternative; boundary="0000000000009909a80587f08847"

--0000000000009909a80587f08847
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello fellow N310 users. My lab has 6 N310's all operating and streaming to
a single data server (10 Gbe links).

We use GNU Radio for everything. The software is great for controlling
multiple devices with many antennas easily (highly recommended). My
experience with native C++ UHD driver commands is rather limited.


Maybe RF mapping is the problem? There was a recent change where UHD 3.13 +
redid that stuff.

The N310 antenna mapping is available from here:

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#N310_2

Never used it but it seems that UHD is expecting letters.



On Thu, May 2, 2019 at 10:52 AM Jorge Chen via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi, Neharika and All,
>
> I met some problems on controlling 2 N310s too.
>
> But first of all, the argument "second_addr" indicates the IP addr. of
> the second SFP+ port on that device, and is set in the case of dual 10G
> streaming.
> I think the first way you wrote is the right way to access the 2 N310s,
> even though it is not listed in the Multiple USRP Configuration page.
> (https://files.ettus.com/manual/page_multiple.html)
> With that, I can control them (set rf parameters and receive signal on al=
l
> 8 channels) without the error message you mentioned, what version of the
> UHD you're using? (UHD 3.13.1, 3.14 worked for me)
>
> My only problem is that they stop working (hang) at transmitting.
> An alternative way  is that I create 2 usrp objects to control them as th=
e
> commands below.
>
> *uhd::usrp::multi_usrp::sptr tx_usrp_1
> =3D uhd::usrp::multi_usrp::make("addr=3D192.168.30.3,master_clock_rate=3D=
122.88e6,clock_source=3Dexternal,time_source=3Dexternal") uhd::usrp::multi_=
usrp::sptr
> tx_usrp_2
> =3D uhd::usrp::multi_usrp::make("addr=3D192.168.40.3,master_clock_rate=3D=
122.88e6,clock_source=3Dexternal,time_source=3Dexternal")*
> Even though it works ( transmit signal simultaneously on all channels ), =
I
> don't think it's the best way (or right way) to use multiple USRPs.
>
> Has anyone done this before? or any suggestion?
>
> Thanks
> Jorge
>
>
>
> Neharika Valecha via USRP-users <usrp-users@lists.ettus.com> =E6=96=BC 20=
19=E5=B9=B45=E6=9C=882=E6=97=A5
> =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=889:20=E5=AF=AB=E9=81=93=EF=BC=9A
>
>> Hello,
>>
>> I am using two N310 USRP's to create an 8x8 MIMO setup. But, I am unable
>> to make both of them work together. I am using an example program from
>> the UHD driver - txrx_loopback_to_file.
>>
>> I give the following command:
>>
>> ./txrx_loopback_to_file --tx-rate 7.68e6 --rx-rate 7.68e6 --tx-freq
>> 2.60e9 --rx-freq 2.60e9 --tx-gain 70 --rx-gain 60 --tx-channels
>> "0,1,2,3" --rx-channels "0,1,2,3" --tx-args "addr=3D192.168.10.2,second_=
addr=3D192.168.20.2,time_source=3Dexternal,clock_source=3Dexternal,master_c=
lock_rate=3D122.88e6"
>> --rx-args
>> "addr=3D192.168.10.2,second_addr=3D192.168.20.2,time_source=3Dexternal,c=
lock_source=3Dexternal,master_clock_rate=3D122.88e6"
>> --settling 1
>>
>> and only one USRP turns on.
>> In USRP X300 there were two ways to use multiple USRP's,
>> 1. Use --tx-args and --rx-args to specify "addr0,addr1" to access two
>> different USRP's with --tx-channels and --rx-channels as "0,1". I tried
>> that here but it gives an error, "Error message: Someone tried to claim
>> this device again".
>>
>> 2. To define just one "addr" in --tx-args and --rx-args but have
>> --tx-channels and --rx-channels as "0,1,2,3" (as X300 is 2x2). When
>> tried with N310 with channel values "0,1,2,3,4,5,6,7" it gives an error
>> that Tx channels invalid.
>>
>> So, could you tell me what is the correct syntax to access two USRP's?
>>
>> Thank you
>> Neharika
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009909a80587f08847
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello fellow N310 users. My lab has =
6 N310&#39;s all operating and streaming to a single data server (10 Gbe li=
nks).</div><div><br></div><div>We use GNU Radio for everything. The softwar=
e is great for controlling multiple devices with many antennas easily (high=
ly recommended). My experience with native C++ UHD driver commands is rathe=
r limited.</div><div><br></div><div><br></div><div>Maybe RF mapping is the =
problem? There was a recent change where UHD 3.13=C2=A0+ redid that stuff.<=
/div><div><br></div><div>The N310 antenna mapping is available from here:</=
div><div><br></div><div><a href=3D"https://kb.ettus.com/USRP_N300/N310/N320=
/N321_Getting_Started_Guide#N310_2">https://kb.ettus.com/USRP_N300/N310/N32=
0/N321_Getting_Started_Guide#N310_2</a></div><div><br></div><div>Never used=
 it but it seems that UHD is expecting letters.</div><div><br></div><div><b=
r></div></div></div><br><div class=3D"gmail_quote"><div class=3D"gmail_attr=
" dir=3D"ltr">On Thu, May 2, 2019 at 10:52 AM Jorge Chen via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;padding-left:1ex;border-left-color:rgb(204,204,204);border-=
left-width:1px;border-left-style:solid"><div dir=3D"ltr"><div dir=3D"ltr"><=
div dir=3D"ltr">Hi,=C2=A0<span style=3D"color:rgb(0,0,0);font-family:arial,=
helvetica,sans-serif;display:inline;float:none">Neharika and All,</span><di=
v><span style=3D"color:rgb(0,0,0);font-family:arial,helvetica,sans-serif;di=
splay:inline;float:none"><br></span></div><div><span style=3D"color:rgb(0,0=
,0);font-family:arial,helvetica,sans-serif;display:inline;float:none">I met=
 some problems on controlling 2 N310s too.</span></div><div><span style=3D"=
color:rgb(0,0,0);font-family:arial,helvetica,sans-serif;display:inline;floa=
t:none"><br></span></div><div><span style=3D"color:rgb(0,0,0);font-family:a=
rial,helvetica,sans-serif;display:inline;float:none">But first of all, the=
=C2=A0argument &quot;<span style=3D"font-family:Roboto,sans-serif;font-size=
:14px;display:inline;float:none;background-color:rgb(255,255,255)">second_a=
ddr&quot; indicates the IP addr. of the=C2=A0<span style=3D"display:inline;=
float:none">second SFP+ port on that device, and is set in the case of dual=
 10G streaming.</span></span></span></div><div><span style=3D"color:rgb(0,0=
,0);font-family:arial,helvetica,sans-serif;display:inline;float:none"><span=
 style=3D"font-family:Roboto,sans-serif;font-size:14px;display:inline;float=
:none;background-color:rgb(255,255,255)"><span style=3D"display:inline;floa=
t:none">I think the first way you wrote is the right way to access the 2 N3=
10s, even though it is not listed in the Multiple USRP Configuration page.<=
br>(<a href=3D"https://files.ettus.com/manual/page_multiple.html" target=3D=
"_blank">https://files.ettus.com/manual/page_multiple.html</a>)<br>With tha=
t, I can control them (set rf parameters and receive signal on all 8 channe=
ls) without the error message you mentioned, what version of the UHD you&#3=
9;re using? (UHD 3.13.1, 3.14 worked for me)<br><br></span></span></span></=
div><div><span style=3D"color:rgb(0,0,0);font-family:arial,helvetica,sans-s=
erif;display:inline;float:none"><span style=3D"font-family:Roboto,sans-seri=
f;font-size:14px;display:inline;float:none;background-color:rgb(255,255,255=
)"><span style=3D"display:inline;float:none">My only problem is that they s=
top working (hang) at transmitting.<br>

<div style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;fo=
nt-size:small;background-color:rgb(255,255,255)">An alternative way=C2=A0 i=
s that I create 2 usrp objects to control them as the commands below.</div>=
<span class=3D"gmail-m_1366929011187976480gmail-im" style=3D"color:rgb(80,0=
,80);font-family:Arial,Helvetica,sans-serif;font-size:small;background-colo=
r:rgb(255,255,255)"><i><b><font size=3D"1">uhd::usrp::multi_usrp::sptr tx_u=
srp_1 =3D=C2=A0uhd::usrp::multi_usrp::make(&quot;addr=3D192.168.30.3<font f=
ace=3D"arial, helvetica, sans-serif">,<span style=3D"color:rgb(0,0,0);white=
-space:pre-wrap">master_clock_rate=3D122.88e6,clock_source=3Dexternal,time_=
source=3Dexternal&quot;</span></font>)<span>=C2=A0</span><br class=3D"gmail=
-m_1366929011187976480gmail-m_-1800548767396613609m_595261457471305121m_332=
2671819249650700gmail-m_-3888277657015760414gmail-Apple-interchange-newline=
">uhd::usrp::multi_usrp::sptr tx_usrp_2 =3D=C2=A0uhd::usrp::multi_usrp::mak=
e(&quot;addr=3D192.168.40.3<font face=3D"arial, helvetica, sans-serif">,<sp=
an style=3D"color:rgb(0,0,0);white-space:pre-wrap">master_clock_rate=3D122.=
88e6,clock_source=3Dexternal,time_source=3Dexternal&quot;</span></font>)</f=
ont></b></i></span>

<br><span style=3D"font-family:arial,helvetica,sans-serif;font-size:small;d=
isplay:inline;float:none;background-color:rgb(255,255,255)"><span style=3D"=
color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;display:inline;f=
loat:none">Even though it works ( transmit signal simultaneously on all cha=
nnels ),</span>=C2=A0I don&#39;t think it&#39;s the best way=C2=A0<span sty=
le=3D"display:inline;float:none">(or right way)</span>

 to use multiple USRPs.</span><br><br>Has anyone done this before? or any s=
uggestion?</span></span></span></div><div><span style=3D"color:rgb(0,0,0);f=
ont-family:arial,helvetica,sans-serif;display:inline;float:none"><span styl=
e=3D"font-family:Roboto,sans-serif;font-size:14px;display:inline;float:none=
;background-color:rgb(255,255,255)"><span style=3D"display:inline;float:non=
e"><br></span></span></span></div><div><span style=3D"color:rgb(0,0,0);font=
-family:arial,helvetica,sans-serif;display:inline;float:none"><span style=
=3D"font-family:Roboto,sans-serif;font-size:14px;display:inline;float:none;=
background-color:rgb(255,255,255)"><span style=3D"display:inline;float:none=
">Thanks</span></span></span></div><div><span style=3D"color:rgb(0,0,0);fon=
t-family:arial,helvetica,sans-serif;display:inline;float:none"><span style=
=3D"font-family:Roboto,sans-serif;font-size:14px;display:inline;float:none;=
background-color:rgb(255,255,255)"><span style=3D"display:inline;float:none=
">Jorge<br><br><br></span></span></span></div></div><br><div class=3D"gmail=
_quote"><div class=3D"gmail_attr" dir=3D"ltr">Neharika Valecha via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp=
-users@lists.ettus.com</a>&gt; =E6=96=BC 2019=E5=B9=B45=E6=9C=882=E6=97=A5 =
=E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=889:20=E5=AF=AB=E9=81=93=EF=BC=9A<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;padd=
ing-left:1ex;border-left-color:rgb(204,204,204);border-left-width:1px;borde=
r-left-style:solid"><div dir=3D"ltr"><font face=3D"arial, helvetica, sans-s=
erif"><span style=3D"color:rgb(0,0,0);font-size:13px">Hello,</span><br styl=
e=3D"margin:0px;padding:0px;color:rgb(0,0,0);font-size:13px"><br style=3D"m=
argin:0px;padding:0px;color:rgb(0,0,0);font-size:13px"><span style=3D"color=
:rgb(0,0,0);font-size:13px">I am using two N310 USRP&#39;s to create an 8x8=
 MIMO setup. But, I am unable to make both of=C2=A0</span><span style=3D"co=
lor:rgb(0,0,0);font-size:13px">them work together. I am using an example pr=
ogram from the UHD driver -=C2=A0</span><span style=3D"color:rgb(0,0,0);fon=
t-size:13px">txrx_loopback_to_file.</span><br style=3D"margin:0px;padding:0=
px;color:rgb(0,0,0);font-size:13px"><br style=3D"margin:0px;padding:0px;col=
or:rgb(0,0,0);font-size:13px"><span style=3D"color:rgb(0,0,0);font-size:13p=
x">I give the following command:</span><br style=3D"margin:0px;padding:0px;=
color:rgb(0,0,0);font-size:13px"><br style=3D"margin:0px;padding:0px;color:=
rgb(0,0,0);font-size:13px"><span style=3D"color:rgb(0,0,0);font-size:13px">=
./txrx_loopback_to_file --tx-rate 7.68e6 --rx-rate 7.68e6 --tx-freq 2.60e9 =
--rx-freq=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">2.60e=
9 --tx-gain 70 --rx-gain 60 --tx-channels &quot;0,1,2,3&quot; --rx-channels=
 &quot;0,1,2,3&quot;=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:=
13px">--tx-args=C2=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px"=
>&quot;addr=3D192.168.10.2,second_addr=3D192.168.20.2,time_source=3Dexterna=
l,clock_source=3Dexternal,master_clock_rate=3D122.88e6&quot; --rx-args=C2=
=A0</span><span style=3D"color:rgb(0,0,0);font-size:13px">&quot;addr=3D192.=
168.10.2,second_addr=3D192.168.20.2,time_source=3Dexternal,clock_source=3De=
xternal,master_clock_rate=3D122.88e6&quot;=C2=A0</span><span style=3D"color=
:rgb(0,0,0);font-size:13px">--settling=C2=A0</span><span style=3D"color:rgb=
(0,0,0);font-size:13px">1</span><br style=3D"margin:0px;padding:0px;color:r=
gb(0,0,0);font-size:13px"><br style=3D"margin:0px;padding:0px;color:rgb(0,0=
,0);font-size:13px"><span style=3D"color:rgb(0,0,0);font-size:13px">and onl=
y one USRP turns on.</span><br style=3D"margin:0px;padding:0px;color:rgb(0,=
0,0);font-size:13px"><span style=3D"color:rgb(0,0,0);font-size:13px">In USR=
P X300 there were two ways to use multiple USRP&#39;s,</span><br style=3D"m=
argin:0px;padding:0px;color:rgb(0,0,0);font-size:13px"><span style=3D"color=
:rgb(0,0,0);font-size:13px">1. Use --tx-args and --rx-args to specify &quot=
;addr0,addr1&quot; to access two different USRP&#39;s=C2=A0</span><span sty=
le=3D"color:rgb(0,0,0);font-size:13px">with --tx-channels and --rx-channels=
 as &quot;0,1&quot;. I tried that here but it gives an error,=C2=A0</span><=
span style=3D"color:rgb(0,0,0);font-size:13px">&quot;Error message: Someone=
 tried to claim this device again&quot;.</span><br style=3D"margin:0px;padd=
ing:0px;color:rgb(0,0,0);font-size:13px"><br style=3D"margin:0px;padding:0p=
x;color:rgb(0,0,0);font-size:13px"><span style=3D"color:rgb(0,0,0);font-siz=
e:13px">2. To define just one &quot;addr&quot; in --tx-args and --rx-args b=
ut have --tx-channels and=C2=A0</span><span style=3D"color:rgb(0,0,0);font-=
size:13px">--rx-channels as &quot;0,1,2,3&quot; (as X300 is 2x2). When trie=
d with N310 with channel values=C2=A0</span><span style=3D"color:rgb(0,0,0)=
;font-size:13px">&quot;0,1,2,3,4,5,6,7&quot; it gives an error that Tx chan=
nels invalid.</span><br style=3D"margin:0px;padding:0px;color:rgb(0,0,0);fo=
nt-size:13px"><br style=3D"margin:0px;padding:0px;color:rgb(0,0,0);font-siz=
e:13px"><span style=3D"color:rgb(0,0,0);font-size:13px">So, could you tell =
me what is the correct syntax to access two USRP&#39;s?</span><br style=3D"=
margin:0px;padding:0px;color:rgb(0,0,0);font-size:13px"><br style=3D"margin=
:0px;padding:0px;color:rgb(0,0,0);font-size:13px"><span style=3D"color:rgb(=
0,0,0);font-size:13px">Thank you</span><br style=3D"margin:0px;padding:0px;=
color:rgb(0,0,0);font-size:13px"><span style=3D"color:rgb(0,0,0);font-size:=
13px">Neharika</span></font></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009909a80587f08847--


--===============7834372245637376050==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7834372245637376050==--

