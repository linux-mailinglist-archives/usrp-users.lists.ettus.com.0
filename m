Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B7A1B08BE
	for <lists+usrp-users@lfdr.de>; Mon, 20 Apr 2020 14:07:12 +0200 (CEST)
Received: from [::1] (port=45798 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQVCd-000091-6F; Mon, 20 Apr 2020 08:07:07 -0400
Received: from mail-vs1-f50.google.com ([209.85.217.50]:39720)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1jQVCY-0008WA-SS
 for usrp-users@lists.ettus.com; Mon, 20 Apr 2020 08:07:02 -0400
Received: by mail-vs1-f50.google.com with SMTP id l25so3068365vso.6
 for <usrp-users@lists.ettus.com>; Mon, 20 Apr 2020 05:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WxOxceAwQnYUAzNP2kINxkO9jY3vep+uGBGdq9f/Yfk=;
 b=oFkyNM/GmS26DxDAmzhHbb5MMwKoMtzsTGtszx23xjB7xCrALB3SfYQ/fVz4ue3dD6
 ZFc+jgJPgqV8UOCuKPCDdBSg0koPo0oJmHSvOxaBBuqmEx8iXQ0gjNXdY9EsX7kqF8DR
 9QiR7sMvm4E1Kn3slGlJEabReEpdgdMImjwdVHjHJ1QRD7jX73jW7uGtTqOOzapRCTZK
 x6ySZN4zoOmEtFApr+a+87COZ29JNnGu/roFasgMutcIK/EtM2PVoUiVjzeyCPfFTRhE
 ERbKMyo8KbvHr6YJog7JNZIZhQiY9s8rDHOd/n6YumD+8PFqjDuhpIiHRAUGKGwQSjLc
 L9QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WxOxceAwQnYUAzNP2kINxkO9jY3vep+uGBGdq9f/Yfk=;
 b=a7NIT4QnuwnR4MWr53X8937sX+FEY+lFdPWkGx99kGo6qeTL1AMZdqd37e0W9Xr/VP
 e8Y4vP52xOCbXr7pI5HVlh3tUeoyk/hjxdaUScYRjDU1IDsNe+Rn/J2VfP9vAPdgVTnp
 wVGjpy/QsUNYM0IEL0drZ2RDgjh8csBFBXzepe5sZDiqV7sP8xPD4i+QQsFJg7M5wunB
 NH+rBsqlnInuqcjDRnelUZ0JqhKPpJc0Qxmd1Gt/KEFDroNKNUspUCQXev6GKxxczd34
 PpmIJhjueHlZyMguw6ulRHdU4wYm27x0oTvU3HrzVai6vC4zB+XMcp3v9wTPVei6uzxC
 /a6g==
X-Gm-Message-State: AGi0PuaCzgUCUUcLaYsLKe95NDSRUQ1OfktV5/bEkQTil8Vih/h45t9O
 FRQtHeTkCoH7QSZ6ydylsqtirnQkfgGk+PplRjmUQzhv
X-Google-Smtp-Source: APiQypIf+KtNa7qankVVqGOtS82jeQOFMd0yyF/51Up8aCjbTnYw6eMBroT34IGX+Ql597EC+KAxIKn800IgoEeOU8w=
X-Received: by 2002:a67:d606:: with SMTP id n6mr3644972vsj.86.1587384382127;
 Mon, 20 Apr 2020 05:06:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxupfiy8YpfrZR_xfAq4jQdhQq-JaaF_CUK3B6X820F6=g@mail.gmail.com>
 <CAGNhwTP+9VjAP=NphtoFcJmNn7wd5Rhd3N7z5K1ugtMa+94FUg@mail.gmail.com>
 <CAB__hTRZbQAuzbnJ1vQX8ZszRpzqnUhO_ozu0nTOPzrkQ=PP0w@mail.gmail.com>
 <CAGNhwTOMH8Ef3pCu2pHc=Ww9ENaoHCUY6Dz0KJ76cd9kL-H1xQ@mail.gmail.com>
 <CAPRRyxvAx3TMtG5fKR2A8-3NGsPd3=rZtSdcdqu8511=+KeB_Q@mail.gmail.com>
In-Reply-To: <CAPRRyxvAx3TMtG5fKR2A8-3NGsPd3=rZtSdcdqu8511=+KeB_Q@mail.gmail.com>
Date: Mon, 20 Apr 2020 08:06:11 -0400
Message-ID: <CAGNhwTNkb83rHpm1M_CEg7sGUsKGCCFuJB_pmcmr37mKdCQDog@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>, Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3436989159818753160=="
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

--===============3436989159818753160==
Content-Type: multipart/alternative; boundary="0000000000003817c505a3b7ba65"

--0000000000003817c505a3b7ba65
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ivan - I'll work with you off-list on this topic. If we figure out
something useful, we can report back to the lists here. - MLD



On Fri, Apr 17, 2020 at 7:41 PM Ivan Zahartchuk <adray0001@gmail.com> wrote=
:

>
> Honestly, I have worked very little with gnuradio and do not quite
> understand what it means to transfer a UHD USRP object. If it does not ma=
ke
> it difficult for you to show how it works, I will greatly appreciate it.
>
> =D0=BF=D1=82, 17 =D0=B0=D0=BF=D1=80. 2020 =D0=B3. =D0=B2 21:27, Michael D=
ickens <michael.dickens@ettus.com>:
>
>> Ohh ... nice! I didn't know gr-uhd provided that interface! A quick
>> search shows it's in GR as of sometime in version 3.7 .. not sure how fa=
r
>> back, but certainly in the current release. Good to know!
>>
>> Note that this gr-uhd GPIO API is available in Python (via SWIG) as well
>> as C++ ... BUT: it is not exposed into GRC.
>>
>> Hence, to use the UHD GPIO API inside GRC, you'll still need to do what =
I
>> wrote previously: provide the UHD USRP object to your custom GRC block
>> (whether Python or C++), and then it can manipulate the USRP GPIO via th=
e
>> gr-uhd Python provided API, or directly in C++ via the UHD C++ API for G=
PIO.
>>
>> Fun fun fun! - MLD
>>
>>
>> On Fri, Apr 17, 2020 at 1:36 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> The following link (GR documentation) shows some UHD GPIO functionality=
.
>>> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.html
>>>
>>> On Fri, Apr 17, 2020 at 10:27 AM Michael Dickens via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi Ivan - I'm assuming you mean configure and control a USRP's GPIO vi=
a
>>>> UHD in GNU Radio?
>>>>
>>>> In theory this should be possible, at least in C++ and of course it
>>>> requires that the specific USRP have GPIO ...
>>>>
>>>> I'm not sure if there's a Python GPIO API as of UHD 3.15, but if there
>>>> is then that method should work about the same as the C++ method.
>>>>
>>>> You'd have to get access to the instantiated USRP object, then you can
>>>> use that object to issue GPIO related calls. See these pages for more =
info
>>>> about GPIO in UHD:
>>>>
>>>> < https://files.ettus.com/manual/page_gpio_api.html >
>>>>
>>>> <
>>>> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in=
_UHD#Example:_Using_Timed_Commands_to_Control_GPIO
>>>>  >
>>>>
>>>> <
>>>> https://github.com/EttusResearch/uhd/blob/master/host/examples/gpio.cp=
p
>>>>  >
>>>>
>>>> I can't think of a current GNU Radio block that handles UHD USRP GPIO.
>>>> If you look around & can't find one, then you'd need to create a custo=
m GNU
>>>> Radio block to handle this. You would pass your new block the USRP obj=
ect,
>>>> which you'd then use for the GPIO calls ... using Python or C++ depend=
ing
>>>> on which API is available for your specific UHD.
>>>>
>>>> Maybe there's another way that I don't know of? If so hopefully others
>>>> will add to the discussion!
>>>>
>>>> Hope this is useful! - MLD
>>>>
>>>> On Fri, Apr 17, 2020 at 9:15 AM Ivan Zahartchuk via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Hello. Please tell me if it is possible to configure GPIO using
>>>>> gnuradio. I want to use RFNOC blocks and switch an external device us=
ing
>>>>> GPIO
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--0000000000003817c505a3b7ba65
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ivan - I&#39;ll work with you off-list on this topic. I=
f we figure out something useful, we can report back to the lists here. - M=
LD<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"l=
tr"><div dir=3D"ltr"><div dir=3D"ltr"><br></div></div></div></div></div></d=
iv></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Apr 17, 2020 at 7:41 PM Ivan Zahartchuk &lt;<a href=3D=
"mailto:adray0001@gmail.com">adray0001@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br><span =
style=3D"font-family:arial,sans-serif;font-size:28px;white-space:pre-wrap;b=
ackground-color:rgb(248,249,250)"></span>Honestly, I have worked very littl=
e with gnuradio and do not quite understand what it means to transfer a UHD=
 USRP object. If it does not make it difficult for you to show how it works=
, I will greatly appreciate it.<br></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D1=82, 17 =D0=B0=D0=BF=D1=80. 202=
0 =D0=B3. =D0=B2 21:27, Michael Dickens &lt;<a href=3D"mailto:michael.dicke=
ns@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt;:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cl=
ass=3D"gmail_default" style=3D"font-family:verdana,sans-serif">Ohh ... nice=
! I didn&#39;t know gr-uhd provided that interface! A quick search shows it=
&#39;s in GR as of sometime in version 3.7 .. not sure how far back, but ce=
rtainly in the current release. Good to know!</div><div class=3D"gmail_defa=
ult" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail=
_default" style=3D"font-family:verdana,sans-serif">Note that this gr-uhd GP=
IO API is available in Python (via SWIG) as well as C++ ... BUT: it is not =
exposed into GRC.</div><div class=3D"gmail_default" style=3D"font-family:ve=
rdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:verdana,sans-serif">Hence, to use the UHD GPIO API inside GRC, you&#39;l=
l still need to do what I wrote previously: provide the UHD USRP object to =
your custom GRC block (whether Python or C++), and then it can manipulate t=
he USRP GPIO via the gr-uhd Python provided API, or directly in C++ via the=
 UHD C++ API for GPIO.</div><div class=3D"gmail_default" style=3D"font-fami=
ly:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font=
-family:verdana,sans-serif">Fun fun fun! - MLD</div><br></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 17, 202=
0 at 1:36 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_=
blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr"><div>The following link (GR document=
ation) shows some UHD GPIO functionality.</div><a href=3D"https://www.gnura=
dio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.html" target=3D"_blank">h=
ttps://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.html</a><=
br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Fri, Apr 17, 2020 at 10:27 AM Michael Dickens via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Ivan - I&#39;m assuming you=
 mean configure and control a USRP&#39;s GPIO via UHD in GNU Radio?</div><d=
iv dir=3D"ltr"><br></div><div dir=3D"ltr">In theory this should be possible=
, at least in C++ and of course it requires that the specific USRP have GPI=
O ...=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">I&#39;m not su=
re if there&#39;s a Python GPIO API as of UHD 3.15, but if there is then th=
at method should work about the same as the C++ method.<div><br></div><div>=
You&#39;d have to get access to the instantiated USRP object, then you can =
use that object to issue GPIO related calls. See these pages for more info =
about GPIO in UHD:</div><div><br><div>&lt;=C2=A0<a href=3D"https://files.et=
tus.com/manual/page_gpio_api.html" target=3D"_blank">https://files.ettus.co=
m/manual/page_gpio_api.html</a> &gt;</div><div><br></div><div>&lt;=C2=A0<a =
href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands=
_in_UHD#Example:_Using_Timed_Commands_to_Control_GPIO" target=3D"_blank">ht=
tps://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD#Ex=
ample:_Using_Timed_Commands_to_Control_GPIO</a>=C2=A0&gt;<br></div><div><br=
></div><div>&lt;=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/=
master/host/examples/gpio.cpp" target=3D"_blank">https://github.com/EttusRe=
search/uhd/blob/master/host/examples/gpio.cpp</a>=C2=A0&gt;</div><div><br><=
/div><div>I can&#39;t think of a current GNU Radio block that handles UHD U=
SRP GPIO. If you look around &amp; can&#39;t find one, then you&#39;d need =
to create a custom GNU Radio block to handle this. You would pass your new =
block the USRP object, which you&#39;d then use for the GPIO calls ... usin=
g Python or C++ depending on which API is available for your specific UHD.<=
/div><div><br></div><div>Maybe there&#39;s another way that I don&#39;t kno=
w of? If so hopefully others will add to the discussion!</div><div><br></di=
v><div>Hope this is useful! - MLD</div></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 17, 2020 at 9:15 A=
M Ivan Zahartchuk via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello.=
 Please tell me if it is possible to configure  GPIO using gnuradio. I want=
 to use RFNOC blocks and switch an external device using GPIO</div>
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
</blockquote></div>

--0000000000003817c505a3b7ba65--


--===============3436989159818753160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3436989159818753160==--

