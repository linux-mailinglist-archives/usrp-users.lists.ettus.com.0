Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1BD1AE8AB
	for <lists+usrp-users@lfdr.de>; Sat, 18 Apr 2020 01:42:22 +0200 (CEST)
Received: from [::1] (port=44710 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jPack-0006vl-Ao; Fri, 17 Apr 2020 19:42:18 -0400
Received: from mail-io1-f53.google.com ([209.85.166.53]:35529)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1jPacg-0006r2-1m
 for usrp-users@lists.ettus.com; Fri, 17 Apr 2020 19:42:14 -0400
Received: by mail-io1-f53.google.com with SMTP id w20so4275184iob.2
 for <usrp-users@lists.ettus.com>; Fri, 17 Apr 2020 16:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vULxPKkARZ6xn3iyZ3NQjkm4qG7PTRXum/d790cJwso=;
 b=CgLMU/GvYs/rV2Mjv0unEx+1Fg8CTFagQN9AX+FsRkL0WJVYqu5b5I1M7Csi1kLrdF
 BsCf+9Z8uIsOnXm//XODz4bgfJT9wQiebQEKkL7wQzMlaLS8+iLlskPF4gq+SlubCgKn
 9rXXyQtrndyW2PTFrN68PzxcWTyaZm/C26QHzI5ThP9VFTQ3bLcRb8Wm3IBKuLXPqZ+x
 iqvqjs+aFl+/QEbGYj8h2Bl4YxFGEt4UhMFM5zCLUmpqe1t/B5/afjKQ6a5uO7MQKQ5L
 r6W6bfTX8+o9gYUo12tjpZrst4o0HIFPLJNMcZUvOvYFiCAoSzA2FTfcieYtRWEc9B7x
 5Kvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vULxPKkARZ6xn3iyZ3NQjkm4qG7PTRXum/d790cJwso=;
 b=XjkbExWxSu8vcKNsNZE1iPAb0eT/91ITlQGOzYbtE5M8XPshhfy473Q2Q/Km6B+zHc
 mgkaXcenckMcJqSBAkuIKd/NABNwvLSYW+huWp5mXueqqW60D6WCpRrziDXPXcZBz6cn
 obkORSHSaEKE4dF7d4pXivL+QiY/5MkaMxyVkqJAP2miIA+bkvLdoibq0+PyCtr8XsLP
 SgXxD6/+1cKNDQsVLzUFBDupolJK93PstwkR+/NAMPXoDOK5ry5hryGCw2vNyjfFxIoz
 e7sAxmryX2hKJruq8WCcElY9n3RX2BkYeZJ0NwQGFgnQ+KWX8QNlMdeixcXr7muBcOpA
 cNog==
X-Gm-Message-State: AGi0PubpRHtwY5wj7wBtfqSsr7l5KvdXYaBwkr3+fsY7W3Vb25CeWOT4
 jJ//bWbYB0LbdjfZ9CaTZy9OLQcfVmxaM4TOmJM=
X-Google-Smtp-Source: APiQypIHpa8dc9Fv1nYpJGaCSbrxWcwX8UALufWhJChU93r0OIoEddlNH3Rm3FUpTh7lKYpJrRisnHvPh/NF/KwmBtM=
X-Received: by 2002:a5d:8459:: with SMTP id w25mr5690029ior.35.1587166893190; 
 Fri, 17 Apr 2020 16:41:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxupfiy8YpfrZR_xfAq4jQdhQq-JaaF_CUK3B6X820F6=g@mail.gmail.com>
 <CAGNhwTP+9VjAP=NphtoFcJmNn7wd5Rhd3N7z5K1ugtMa+94FUg@mail.gmail.com>
 <CAB__hTRZbQAuzbnJ1vQX8ZszRpzqnUhO_ozu0nTOPzrkQ=PP0w@mail.gmail.com>
 <CAGNhwTOMH8Ef3pCu2pHc=Ww9ENaoHCUY6Dz0KJ76cd9kL-H1xQ@mail.gmail.com>
In-Reply-To: <CAGNhwTOMH8Ef3pCu2pHc=Ww9ENaoHCUY6Dz0KJ76cd9kL-H1xQ@mail.gmail.com>
Date: Sat, 18 Apr 2020 02:41:22 +0300
Message-ID: <CAPRRyxvAx3TMtG5fKR2A8-3NGsPd3=rZtSdcdqu8511=+KeB_Q@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Subject: Re: [USRP-users] GPIO setup via gnuradio
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>, Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8482623466267711925=="
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

--===============8482623466267711925==
Content-Type: multipart/alternative; boundary="000000000000de364705a38516a8"

--000000000000de364705a38516a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Honestly, I have worked very little with gnuradio and do not quite
understand what it means to transfer a UHD USRP object. If it does not make
it difficult for you to show how it works, I will greatly appreciate it.

=D0=BF=D1=82, 17 =D0=B0=D0=BF=D1=80. 2020 =D0=B3. =D0=B2 21:27, Michael Dic=
kens <michael.dickens@ettus.com>:

> Ohh ... nice! I didn't know gr-uhd provided that interface! A quick searc=
h
> shows it's in GR as of sometime in version 3.7 .. not sure how far back,
> but certainly in the current release. Good to know!
>
> Note that this gr-uhd GPIO API is available in Python (via SWIG) as well
> as C++ ... BUT: it is not exposed into GRC.
>
> Hence, to use the UHD GPIO API inside GRC, you'll still need to do what I
> wrote previously: provide the UHD USRP object to your custom GRC block
> (whether Python or C++), and then it can manipulate the USRP GPIO via the
> gr-uhd Python provided API, or directly in C++ via the UHD C++ API for GP=
IO.
>
> Fun fun fun! - MLD
>
>
> On Fri, Apr 17, 2020 at 1:36 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> The following link (GR documentation) shows some UHD GPIO functionality.
>> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.html
>>
>> On Fri, Apr 17, 2020 at 10:27 AM Michael Dickens via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi Ivan - I'm assuming you mean configure and control a USRP's GPIO via
>>> UHD in GNU Radio?
>>>
>>> In theory this should be possible, at least in C++ and of course it
>>> requires that the specific USRP have GPIO ...
>>>
>>> I'm not sure if there's a Python GPIO API as of UHD 3.15, but if there
>>> is then that method should work about the same as the C++ method.
>>>
>>> You'd have to get access to the instantiated USRP object, then you can
>>> use that object to issue GPIO related calls. See these pages for more i=
nfo
>>> about GPIO in UHD:
>>>
>>> < https://files.ettus.com/manual/page_gpio_api.html >
>>>
>>> <
>>> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_=
UHD#Example:_Using_Timed_Commands_to_Control_GPIO
>>>  >
>>>
>>> <
>>> https://github.com/EttusResearch/uhd/blob/master/host/examples/gpio.cpp
>>>  >
>>>
>>> I can't think of a current GNU Radio block that handles UHD USRP GPIO.
>>> If you look around & can't find one, then you'd need to create a custom=
 GNU
>>> Radio block to handle this. You would pass your new block the USRP obje=
ct,
>>> which you'd then use for the GPIO calls ... using Python or C++ dependi=
ng
>>> on which API is available for your specific UHD.
>>>
>>> Maybe there's another way that I don't know of? If so hopefully others
>>> will add to the discussion!
>>>
>>> Hope this is useful! - MLD
>>>
>>> On Fri, Apr 17, 2020 at 9:15 AM Ivan Zahartchuk via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hello. Please tell me if it is possible to configure GPIO using
>>>> gnuradio. I want to use RFNOC blocks and switch an external device usi=
ng
>>>> GPIO
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000de364705a38516a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br class=3D"gmail-Apple-interchange-newline"><span style=
=3D"font-family:arial,sans-serif;font-size:28px;white-space:pre-wrap;backgr=
ound-color:rgb(248,249,250)"></span>Honestly, I have worked very little wit=
h gnuradio and do not quite understand what it means to transfer a UHD USRP=
 object. If it does not make it difficult for you to show how it works, I w=
ill greatly appreciate it.<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">=D0=BF=D1=82, 17 =D0=B0=D0=BF=D1=80. 2020 =D0=
=B3. =D0=B2 21:27, Michael Dickens &lt;<a href=3D"mailto:michael.dickens@et=
tus.com">michael.dickens@ettus.com</a>&gt;:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" s=
tyle=3D"font-family:verdana,sans-serif">Ohh ... nice! I didn&#39;t know gr-=
uhd provided that interface! A quick search shows it&#39;s in GR as of some=
time in version 3.7 .. not sure how far back, but certainly in the current =
release. Good to know!</div><div class=3D"gmail_default" style=3D"font-fami=
ly:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font=
-family:verdana,sans-serif">Note that this gr-uhd GPIO API is available in =
Python (via SWIG) as well as C++ ... BUT: it is not exposed into GRC.</div>=
<div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br><=
/div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">=
Hence, to use the UHD GPIO API inside GRC, you&#39;ll still need to do what=
 I wrote previously: provide the UHD USRP object to your custom GRC block (=
whether Python or C++), and then it can manipulate the USRP GPIO via the gr=
-uhd Python provided API, or directly in C++ via the UHD C++ API for GPIO.<=
/div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">=
<br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif">Fun fun fun! - MLD</div><br></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 17, 2020 at 1:36 PM Rob Kossle=
r &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div>The following link (GR documentation) shows some UHD G=
PIO functionality.</div><a href=3D"https://www.gnuradio.org/doc/doxygen/cla=
ssgr_1_1uhd_1_1usrp__block.html" target=3D"_blank">https://www.gnuradio.org=
/doc/doxygen/classgr_1_1uhd_1_1usrp__block.html</a><br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 17, 2020=
 at 10:27 AM Michael Dickens via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div dir=3D"ltr">Hi Ivan - I&#39;m assuming you mean configure and con=
trol a USRP&#39;s GPIO via UHD in GNU Radio?</div><div dir=3D"ltr"><br></di=
v><div dir=3D"ltr">In theory this should be possible, at least in C++ and o=
f course it requires that the specific USRP have GPIO ...=C2=A0</div><div d=
ir=3D"ltr"><br></div><div dir=3D"ltr">I&#39;m not sure if there&#39;s a Pyt=
hon GPIO API as of UHD 3.15, but if there is then that method should work a=
bout the same as the C++ method.<div><br></div><div>You&#39;d have to get a=
ccess to the instantiated USRP object, then you can use that object to issu=
e GPIO related calls. See these pages for more info about GPIO in UHD:</div=
><div><br><div>&lt;=C2=A0<a href=3D"https://files.ettus.com/manual/page_gpi=
o_api.html" target=3D"_blank">https://files.ettus.com/manual/page_gpio_api.=
html</a> &gt;</div><div><br></div><div>&lt;=C2=A0<a href=3D"https://kb.ettu=
s.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD#Example:_Using_=
Timed_Commands_to_Control_GPIO" target=3D"_blank">https://kb.ettus.com/Sync=
hronizing_USRP_Events_Using_Timed_Commands_in_UHD#Example:_Using_Timed_Comm=
ands_to_Control_GPIO</a>=C2=A0&gt;<br></div><div><br></div><div>&lt;=C2=A0<=
a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples/gp=
io.cpp" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/=
host/examples/gpio.cpp</a>=C2=A0&gt;</div><div><br></div><div>I can&#39;t t=
hink of a current GNU Radio block that handles UHD USRP GPIO. If you look a=
round &amp; can&#39;t find one, then you&#39;d need to create a custom GNU =
Radio block to handle this. You would pass your new block the USRP object, =
which you&#39;d then use for the GPIO calls ... using Python or C++ dependi=
ng on which API is available for your specific UHD.</div><div><br></div><di=
v>Maybe there&#39;s another way that I don&#39;t know of? If so hopefully o=
thers will add to the discussion!</div><div><br></div><div>Hope this is use=
ful! - MLD</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Fri, Apr 17, 2020 at 9:15 AM Ivan Zahartchuk via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blan=
k">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">Hello. Please tell me if it i=
s possible to configure  GPIO using gnuradio. I want to use RFNOC blocks an=
d switch an external device using GPIO</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000de364705a38516a8--


--===============8482623466267711925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8482623466267711925==--

