Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA623B6730
	for <lists+usrp-users@lfdr.de>; Wed, 18 Sep 2019 17:33:58 +0200 (CEST)
Received: from [::1] (port=38572 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iAbxs-0004Kk-DZ; Wed, 18 Sep 2019 11:33:56 -0400
Received: from mail-vs1-f46.google.com ([209.85.217.46]:33771)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <keithkotyk@gmail.com>)
 id 1iAbxo-0004Bh-Kn
 for usrp-users@lists.ettus.com; Wed, 18 Sep 2019 11:33:52 -0400
Received: by mail-vs1-f46.google.com with SMTP id p13so125332vso.0
 for <usrp-users@lists.ettus.com>; Wed, 18 Sep 2019 08:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NBlkKT1a13h8Y1J2YTfYdsqzDwVYLUocJx5ksZmwH40=;
 b=X5oyxgrdnK2r7RPL4eUoLoBT9Oin1MZ8B7ZZM0ppq9g0Ic3UrQGZMw2HM/02U31RrV
 drgpAQ3HbFh7gbnZxhIoSOmYCU1Jn7zZtUGfxvGL9YU0HdysDgvSAR8lwSM1VumJclGl
 XUotYwTXUPA+0swDy8KAOUb2z9rJulUEd6OGMmkhcETyza61yGlApySXugZ58B9j8NVJ
 7T0zHsNZXn4BKz9uwI4Ij5+YKMERaBozhJAgBl2r9HEPu829rZH/Zhc741dJEneks1yT
 cnARRcXlTfgzYHdKee0fqDZYlkVKtZ6ildexFhb5nydO14vPg/Poa60fo7n/Ued/SWHs
 R8zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NBlkKT1a13h8Y1J2YTfYdsqzDwVYLUocJx5ksZmwH40=;
 b=Co2ocCbSdxz8gqMg+gR+uO283eZQ9/hO765DybjaeEvi/2CiubYBkMYHkY8/bkn0XU
 nGFmwAboZX96QA5FF4Y7O2T+xtmLMXYXz0xdQiHQYHQXrEd9aSiWDwv+A1YfdGDXqlIj
 VXQOE8APBMdLAj253t5XPOgpZsXRmVk79gEjRQ63ucziXAoY7AHoDYTc/dLTC9mlZpoX
 v5Y2ZTnMKP1ZQqcvweNTzvv51CXuSdqWqOfm2FwjKTaKgrBn51EDE+j9dYdhcKIQ00uU
 iBNypq6o68Hhj0E0DJp1XQfrlswOMvuvVNlkvPJaJ2+QhM34mDVo7N2UMbqwxL5Ur0f+
 3AeQ==
X-Gm-Message-State: APjAAAXILY1GkjULKBB4ArQ0D9zPVxHQ21sAUHNxzbZLMi983ngA6yKE
 v3ZMmSSvj2AYyvQ8mXu+hhyMYujdBt13lUy9qGs=
X-Google-Smtp-Source: APXvYqwJ0wnS1P5x+D7VQpoLJkPt7cDr85kAlZ+pEtOkKXWllXELe9QAEpi3SlVL27/uNhPiOe78lPIobOR59/veBiE=
X-Received: by 2002:a05:6102:7b2:: with SMTP id
 x18mr2634603vsg.176.1568820791960; 
 Wed, 18 Sep 2019 08:33:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAFGMRUATp9FjkDGctvOFqjyh7EEgEaVFSgcf_jUdwsSFe3FLvg@mail.gmail.com>
 <caa9b984bd17d4029187d88077594ec6397104b0.camel@ettus.com>
 <CAFGMRUBVtRxObbLv4sNG1jYNMNKkLM1SVuyLjm0BtwVEXHjV4w@mail.gmail.com>
 <CAPnVNRU=e+sYFgBTTmoYJn4=cn2U=9KA35W92aL_Q_LhD5VDvA@mail.gmail.com>
In-Reply-To: <CAPnVNRU=e+sYFgBTTmoYJn4=cn2U=9KA35W92aL_Q_LhD5VDvA@mail.gmail.com>
Date: Wed, 18 Sep 2019 15:32:45 +0000
Message-ID: <CAFGMRUAqnSaTKJh2rDvmiMohA+aKBqdzksbPzVC+UL8jqkBAVA@mail.gmail.com>
To: Anders Wallin <anders.e.e.wallin@gmail.com>
Subject: Re: [USRP-users] University of Saskatchewan N200 Rack
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
From: Keith k via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Keith k <keithkotyk@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2613756474317503176=="
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

--===============2613756474317503176==
Content-Type: multipart/alternative; boundary="00000000000005773c0592d58e1c"

--00000000000005773c0592d58e1c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Do you have experience creating a multi-usrp object in the code using pairs
of MIMO connected devices? I just never assumed that would be possible to
configure codewise. I've been mainly working off the info from this page:
https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices

Thanks for the plot. I'll forward that off to my colleagues with more
knowledge in that domain.

On Wed, Sep 18, 2019 at 4:43 AM Anders Wallin via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Could you use a MIMO-cable between pairs of USRPs and avoid half of the
> 1PPS/10MHz (I'm guessing..) wiring in your rack?
>
> FWIW I tested some distribution amps a while ago, the OctoClock (I'm
> guessing this is what you use) is economical but not high performance in
> terms of phase-noise.
>
> http://www.anderswallin.net/wp-content/uploads/2016/09/fda_2016-09-12_PN.=
png
>
> Anders
>
>
> On Tue, Sep 17, 2019 at 8:19 PM Keith k via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hey Marcus
>>
>> The additional connector on the front is so that we can connect both RX
>> channels and a TX channel. The ones in the back are for GPIO breakouts.
>>
>> Vertical, tool-less mount is the way to go.
>>
>> On Tue, Sep 17, 2019 at 4:54 PM Marcus M=C3=BCller <marcus.mueller@ettus=
.com>
>> wrote:
>>
>>> Hey Keith,
>>>
>>> I quite enjoyed your email :) May I ask what the individual added SMAs
>>> do?
>>>
>>> I like the vertical mounting, and the additional LEDs :)
>>>
>>> Best regards,
>>> Marcus
>>>
>>> On Mon, 2019-09-16 at 18:04 +0000, Keith k via USRP-users wrote:
>>> > Hey all
>>> >
>>> > I thought I would offer a break from the endless bugs and dev
>>> > questions to share what our N200 rack looks like. These N200s are
>>> > going to be used for a radar installation. We've made some custom
>>> > modifications to each N200, such as adding brighter and more detailed
>>> > ATR status LEDs, adding more SMA connector ports(1 in front, 4 in
>>> > back with a dsub as well).
>>> >
>>> > The Ettus N200 rackmount is quite frankly not very well designed, so
>>> > we designed our own. It allows for tool-less fasteners for quick
>>> > install/release of the devices, vertical mount to allow for more room
>>> > between devices, and several holes for better cable routing and
>>> > management.
>>> > _______________________________________________
>>> > USRP-users mailing list
>>> > USRP-users@lists.ettus.com
>>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>
>>
>> --
>> -Keith Kotyk
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20
-Keith Kotyk

--00000000000005773c0592d58e1c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Do you have experience creating a multi-usrp object i=
n the code using pairs of MIMO connected devices? I just never assumed that=
 would be possible to configure codewise. I&#39;ve been mainly working off =
the info from this page:</div><div> <a href=3D"https://kb.ettus.com/Synchro=
nization_and_MIMO_Capability_with_USRP_Devices">https://kb.ettus.com/Synchr=
onization_and_MIMO_Capability_with_USRP_Devices</a></div><div><br></div><di=
v>Thanks for the plot. I&#39;ll forward that off to my colleagues with more=
 knowledge in that domain.<br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 18, 2019 at 4:43 AM Anders =
Wallin via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Could you use a MIMO-cable between =
pairs of USRPs and avoid half of the 1PPS/10MHz (I&#39;m guessing..) wiring=
 in your rack?<div><br></div><div>FWIW I tested some distribution amps a wh=
ile ago, the OctoClock (I&#39;m guessing this is what you use) is economica=
l but not high performance in terms of phase-noise.</div><div><a href=3D"ht=
tp://www.anderswallin.net/wp-content/uploads/2016/09/fda_2016-09-12_PN.png"=
 target=3D"_blank">http://www.anderswallin.net/wp-content/uploads/2016/09/f=
da_2016-09-12_PN.png</a><br></div><div><br></div><div>Anders</div><div><br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Sep 17, 2019 at 8:19 PM Keith k via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>Hey Marcus</div><div><br></div><div>The addition=
al connector on the front is so that we can connect both RX channels and a =
TX channel. The ones in the back are for GPIO breakouts.</div><div><br></di=
v><div>Vertical, tool-less mount is the way to go. <br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 17=
, 2019 at 4:54 PM Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@e=
ttus.com" target=3D"_blank">marcus.mueller@ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">Hey Keith,<br>
<br>
I quite enjoyed your email :) May I ask what the individual added SMAs<br>
do?<br>
<br>
I like the vertical mounting, and the additional LEDs :)<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On Mon, 2019-09-16 at 18:04 +0000, Keith k via USRP-users wrote:<br>
&gt; Hey all<br>
&gt; <br>
&gt; I thought I would offer a break from the endless bugs and dev<br>
&gt; questions to share what our N200 rack looks like. These N200s are<br>
&gt; going to be used for a radar installation. We&#39;ve made some custom<=
br>
&gt; modifications to each N200, such as adding brighter and more detailed<=
br>
&gt; ATR status LEDs, adding more SMA connector ports(1 in front, 4 in<br>
&gt; back with a dsub as well). <br>
&gt; <br>
&gt; The Ettus N200 rackmount is quite frankly not very well designed, so<b=
r>
&gt; we designed our own. It allows for tool-less fasteners for quick<br>
&gt; install/release of the devices, vertical mount to allow for more room<=
br>
&gt; between devices, and several holes for better cable routing and<br>
&gt; management. <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail-m_949878247541364308gmail-m_1429741422317319278gmail_signature"><div d=
ir=3D"ltr">-Keith Kotyk</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr">-Keith Kotyk</div></div>

--00000000000005773c0592d58e1c--


--===============2613756474317503176==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2613756474317503176==--

