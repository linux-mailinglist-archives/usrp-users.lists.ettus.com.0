Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBF81AE4BB
	for <lists+usrp-users@lfdr.de>; Fri, 17 Apr 2020 20:28:13 +0200 (CEST)
Received: from [::1] (port=41696 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jPVik-0001LT-Va; Fri, 17 Apr 2020 14:28:10 -0400
Received: from mail-vk1-f195.google.com ([209.85.221.195]:39866)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1jPVig-0001ES-Vx
 for usrp-users@lists.ettus.com; Fri, 17 Apr 2020 14:28:07 -0400
Received: by mail-vk1-f195.google.com with SMTP id y129so821206vkf.6
 for <usrp-users@lists.ettus.com>; Fri, 17 Apr 2020 11:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GV60jKLnxDUSqdXFjrUn9StaA6249n81j+b+uSJYvkw=;
 b=b0fmsngTIp2MNNevDKyqM3v9vWC9jp902q9/jr6G56EbxuRQcuprorzVxyZ8GYi0d0
 vf1sbZvnP//+F4OK+oboC1v62BpoLHpyean3+Uof9H7psc0D9qJsRl7nQDqZru/d989E
 30d9953kTJ0Zf+aLwkbKdm3CXTvsN1qBS7rfJjiu0dtKSi9ZLtqtX7VzNQ2ZIzxS9u+c
 Jl4uGuXjbej1BcnHSTfRa7wdO7n8qZx0nkFy+ic2lVujluPi9lBzm2H1CDKWHByZ1pL7
 yh+vJ8QE+YrjA/hCcJGMR8cb/2NDYN4rtXFTa+P+BoIG4PoWxCZaSpLOdSqibEWL/YAx
 5hAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GV60jKLnxDUSqdXFjrUn9StaA6249n81j+b+uSJYvkw=;
 b=DG+2NqOlhwwPsEdeoTXdi1Bds/In1xh4h3Yk7opWrfIA5gTx4cVE3ZIAzvrwPKGFJd
 YMlR/JaxRchv0y2DUCDHFZ0Ff9atQgH7lpxpr3cVgB6dDXILNCyzPL6xvohDJL561Npu
 YHD/KWJo2RiwjfGjweKB9AdtB9bI+BipfeVBwzKNxFBSGmZFF14rfoKOO4dQPKqjlD68
 MzVCE/wzjQQ0+YNqIgy/2/fahwHayeDCFM1WLKONe/7z6ZmLQR7fhjFaFQaQdQd8hCyv
 E8mg6SCtRNaDPva4Ql4lMFN3/oXJaK/4VxdMhRYwEUu8mzZg2cyfmZnuVgunyphFFkBt
 l25w==
X-Gm-Message-State: AGi0PuadC5wLesfUKkFonaQasR58h56hhx9CdFifnp1m5Pmb5/BnGuOD
 QXr1weseugABsorf+1jGn8wzElurVHXNGT+gmDLQ0sho
X-Google-Smtp-Source: APiQypJ3JLJ1xTjh7qjxpu3qV7z7F1c1q6+wTF2U/sjzfGOKM2m9shSh3xDrPKxCNsh60XDj4+E2M3peLRWchMbSgz4=
X-Received: by 2002:a1f:1fc7:: with SMTP id f190mr3588251vkf.84.1587148046182; 
 Fri, 17 Apr 2020 11:27:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxupfiy8YpfrZR_xfAq4jQdhQq-JaaF_CUK3B6X820F6=g@mail.gmail.com>
 <CAGNhwTP+9VjAP=NphtoFcJmNn7wd5Rhd3N7z5K1ugtMa+94FUg@mail.gmail.com>
 <CAB__hTRZbQAuzbnJ1vQX8ZszRpzqnUhO_ozu0nTOPzrkQ=PP0w@mail.gmail.com>
In-Reply-To: <CAB__hTRZbQAuzbnJ1vQX8ZszRpzqnUhO_ozu0nTOPzrkQ=PP0w@mail.gmail.com>
Date: Fri, 17 Apr 2020 14:27:15 -0400
Message-ID: <CAGNhwTOMH8Ef3pCu2pHc=Ww9ENaoHCUY6Dz0KJ76cd9kL-H1xQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
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
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="===============2742952852495464869=="
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

--===============2742952852495464869==
Content-Type: multipart/alternative; boundary="0000000000007fbd1805a380b361"

--0000000000007fbd1805a380b361
Content-Type: text/plain; charset="UTF-8"

Ohh ... nice! I didn't know gr-uhd provided that interface! A quick search
shows it's in GR as of sometime in version 3.7 .. not sure how far back,
but certainly in the current release. Good to know!

Note that this gr-uhd GPIO API is available in Python (via SWIG) as well as
C++ ... BUT: it is not exposed into GRC.

Hence, to use the UHD GPIO API inside GRC, you'll still need to do what I
wrote previously: provide the UHD USRP object to your custom GRC block
(whether Python or C++), and then it can manipulate the USRP GPIO via the
gr-uhd Python provided API, or directly in C++ via the UHD C++ API for GPIO.

Fun fun fun! - MLD


On Fri, Apr 17, 2020 at 1:36 PM Rob Kossler <rkossler@nd.edu> wrote:

> The following link (GR documentation) shows some UHD GPIO functionality.
> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.html
>
> On Fri, Apr 17, 2020 at 10:27 AM Michael Dickens via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Ivan - I'm assuming you mean configure and control a USRP's GPIO via
>> UHD in GNU Radio?
>>
>> In theory this should be possible, at least in C++ and of course it
>> requires that the specific USRP have GPIO ...
>>
>> I'm not sure if there's a Python GPIO API as of UHD 3.15, but if there is
>> then that method should work about the same as the C++ method.
>>
>> You'd have to get access to the instantiated USRP object, then you can
>> use that object to issue GPIO related calls. See these pages for more info
>> about GPIO in UHD:
>>
>> < https://files.ettus.com/manual/page_gpio_api.html >
>>
>> <
>> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD#Example:_Using_Timed_Commands_to_Control_GPIO
>>  >
>>
>> < https://github.com/EttusResearch/uhd/blob/master/host/examples/gpio.cpp
>>  >
>>
>> I can't think of a current GNU Radio block that handles UHD USRP GPIO. If
>> you look around & can't find one, then you'd need to create a custom GNU
>> Radio block to handle this. You would pass your new block the USRP object,
>> which you'd then use for the GPIO calls ... using Python or C++ depending
>> on which API is available for your specific UHD.
>>
>> Maybe there's another way that I don't know of? If so hopefully others
>> will add to the discussion!
>>
>> Hope this is useful! - MLD
>>
>> On Fri, Apr 17, 2020 at 9:15 AM Ivan Zahartchuk via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hello. Please tell me if it is possible to configure GPIO using
>>> gnuradio. I want to use RFNOC blocks and switch an external device using
>>> GPIO
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000007fbd1805a380b361
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Ohh ... nice! I didn&#39;t know gr-uhd provided that interface!=
 A quick search shows it&#39;s in GR as of sometime in version 3.7 .. not s=
ure how far back, but certainly in the current release. Good to know!</div>=
<div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br><=
/div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">=
Note that this gr-uhd GPIO API is available in Python (via SWIG) as well as=
 C++ ... BUT: it is not exposed into GRC.</div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif">Hence, to use the UHD GPIO A=
PI inside GRC, you&#39;ll still need to do what I wrote previously: provide=
 the UHD USRP object to your custom GRC block (whether Python or C++), and =
then it can manipulate the USRP GPIO via the gr-uhd Python provided API, or=
 directly in C++ via the UHD C++ API for GPIO.</div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmai=
l_default" style=3D"font-family:verdana,sans-serif">Fun fun fun! - MLD</div=
><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Fri, Apr 17, 2020 at 1:36 PM Rob Kossler &lt;<a href=3D"mailto:rkos=
sler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>The following link (GR do=
cumentation) shows some UHD GPIO functionality.</div><a href=3D"https://www=
.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.html" target=3D"_bl=
ank">https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.htm=
l</a><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Fri, Apr 17, 2020 at 10:27 AM Michael Dickens via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Ivan - I&#39;m assumi=
ng you mean configure and control a USRP&#39;s GPIO via UHD in GNU Radio?</=
div><div dir=3D"ltr"><br></div><div dir=3D"ltr">In theory this should be po=
ssible, at least in C++ and of course it requires that the specific USRP ha=
ve GPIO ...=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">I&#39;m =
not sure if there&#39;s a Python GPIO API as of UHD 3.15, but if there is t=
hen that method should work about the same as the C++ method.<div><br></div=
><div>You&#39;d have to get access to the instantiated USRP object, then yo=
u can use that object to issue GPIO related calls. See these pages for more=
 info about GPIO in UHD:</div><div><br><div>&lt;=C2=A0<a href=3D"https://fi=
les.ettus.com/manual/page_gpio_api.html" target=3D"_blank">https://files.et=
tus.com/manual/page_gpio_api.html</a> &gt;</div><div><br></div><div>&lt;=C2=
=A0<a href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Co=
mmands_in_UHD#Example:_Using_Timed_Commands_to_Control_GPIO" target=3D"_bla=
nk">https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_=
UHD#Example:_Using_Timed_Commands_to_Control_GPIO</a>=C2=A0&gt;<br></div><d=
iv><br></div><div>&lt;=C2=A0<a href=3D"https://github.com/EttusResearch/uhd=
/blob/master/host/examples/gpio.cpp" target=3D"_blank">https://github.com/E=
ttusResearch/uhd/blob/master/host/examples/gpio.cpp</a>=C2=A0&gt;</div><div=
><br></div><div>I can&#39;t think of a current GNU Radio block that handles=
 UHD USRP GPIO. If you look around &amp; can&#39;t find one, then you&#39;d=
 need to create a custom GNU Radio block to handle this. You would pass you=
r new block the USRP object, which you&#39;d then use for the GPIO calls ..=
. using Python or C++ depending on which API is available for your specific=
 UHD.</div><div><br></div><div>Maybe there&#39;s another way that I don&#39=
;t know of? If so hopefully others will add to the discussion!</div><div><b=
r></div><div>Hope this is useful! - MLD</div></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 17, 2020 at =
9:15 AM Ivan Zahartchuk via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hello. Please tell me if it is possible to configure  GPIO using gnuradio. =
I want to use RFNOC blocks and switch an external device using GPIO</div>
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

--0000000000007fbd1805a380b361--


--===============2742952852495464869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2742952852495464869==--

