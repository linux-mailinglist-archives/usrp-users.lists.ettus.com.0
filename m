Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCE12C0096
	for <lists+usrp-users@lfdr.de>; Mon, 23 Nov 2020 08:29:35 +0100 (CET)
Received: from [::1] (port=44996 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kh6Hz-0006Hn-7P; Mon, 23 Nov 2020 02:29:31 -0500
Received: from mail-il1-f171.google.com ([209.85.166.171]:36901)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cmdjbst@gmail.com>) id 1kh6Hv-0006Dl-Ju
 for USRP-users@lists.ettus.com; Mon, 23 Nov 2020 02:29:27 -0500
Received: by mail-il1-f171.google.com with SMTP id k8so4378065ilr.4
 for <USRP-users@lists.ettus.com>; Sun, 22 Nov 2020 23:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zdaeyr1Ha1t4HdagbMkt5bHAKanIaAm+OD6jKOgzW/k=;
 b=Q7esRHXUCM0ZclLwj+WFsgNgNHlxis4Pzi/m0c8J85eP4rixGW8JgUGqv/ltu+ggQj
 Z4qkrZ3pCFP0jx5QfuUy25YEGkum93CfDE7HPNUr6BxM4jXDlE1Oi+FGubjCjcGQFeoZ
 tJVLYYcHSanFLvZ7lCHQ7C144lRWanEeLZaaIjx3p5Z+cKqnvDQQfls8vCq87Gxh/YC5
 iVwhD9Ihanb+4z03VMPJkKYJwZLGzRa2EG291sB11ECT6aK939ftvtgykOU3vJy0FdYa
 VkmaVlcBt+Sb3OghnGGVrrkgXj7K/3pTFE0F9jOq3GcEceDTtf6utLYqKfHl0lFyzJKQ
 pgXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zdaeyr1Ha1t4HdagbMkt5bHAKanIaAm+OD6jKOgzW/k=;
 b=Her9zE2E+8OcCYQ87WucVtYhhREu2NMxnTGO01WBTQ0WmVyCW0YyG+JV2BCvwV6FX1
 nazJSZ+PDcN//IFuuS7Hex1AF0oOSjFN59I5utb6C7VhisU5rrpQ7bdsf9sYBR/DjWhC
 ItxigDzncq8Ox6ZKbRyV2AT4atANN/1mDh5r+c1d5FTJnEdIJaTlhk+mYxK1i01nfM21
 LX8IqKgKTHIr39CWdzEpMEObfkNNLMwQBCV3wtiYGYzjVjp2XRoNgALf+57sMiblakZ2
 GlRHOgSKpyy4GDe69IyxbbWiR/WPti0uMHRJCsVkcmL3pO48M0nTukLYu6P9YsnngLro
 ieZw==
X-Gm-Message-State: AOAM533OlGDPnDJ/nfYcvtPWb5ySaUR1P9IDxTWmlZeMeTSRKO3Prdx7
 d9xOXKvzJ4TmPg+9sFJUgIoC2J8ii31rQsHws3w=
X-Google-Smtp-Source: ABdhPJyhZ31ccBeOdRHHNvAH+X6VEcu2bT/ZWgySyVjM0Xe1JM87zu1K/f8/pGDhzQAmoROyVUybGQAFDY2mCYjBjxM=
X-Received: by 2002:a92:d205:: with SMTP id y5mr7123825ily.80.1606116526695;
 Sun, 22 Nov 2020 23:28:46 -0800 (PST)
MIME-Version: 1.0
References: <CACfkGzVeSYTphqtSXX=UU+Jk2qTJMUynTpphmxQRZN-ijH8OXw@mail.gmail.com>
 <5FB80E9C.1090303@gmail.com>
 <CAEhVi8QPisP5yfRGjUGfowCatssi=hBQMk5WNf=uYksbsaC2Rg@mail.gmail.com>
In-Reply-To: <CAEhVi8QPisP5yfRGjUGfowCatssi=hBQMk5WNf=uYksbsaC2Rg@mail.gmail.com>
Date: Mon, 23 Nov 2020 15:28:35 +0800
Message-ID: <CACfkGzWWHxDmK0UP980CKvFj8CwxA9bLwxs4safJw7vhudSYXg@mail.gmail.com>
To: Aaron Holtzman <aholtzma@gmail.com>
Cc: USRP-users@lists.ettus.com
Subject: Re: [USRP-users] B200 PPS signal question
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
From: =?utf-8?b?57+B5YGJ5ZC+IHZpYSBVU1JQLXVzZXJz?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?57+B5YGJ5ZC+?= <cmdjbst@gmail.com>
Content-Type: multipart/mixed; boundary="===============5460648854865429177=="
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

--===============5460648854865429177==
Content-Type: multipart/alternative; boundary="0000000000000aaa4f05b4c125d3"

--0000000000000aaa4f05b4c125d3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So there is a some difference  regarding the clock between b200 and
b200mini. At first I thought they are pretty much alike. Anyway, now I
understood. Thanks Aaron.

On Mon, 23 Nov 2020, 02:42 Aaron Holtzman via USRP-users, <
usrp-users@lists.ettus.com> wrote:

> On the b200mini, the 1pps actually *does* steer the internal reference.
> Which is different behaviour then the rest of the entire Ettus lineup I
> believe.
>
> For details on how it works, see
> uhd/fpga/usrp3/top/b2xxmini/b205_ref_pll.v. It autodetects the external
> reference type and applies the appropriate dividers and gain schedule.
>
> cheers,
> Aaron
>
>
> On Fri, Nov 20, 2020 at 1:45 PM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 11/20/2020 08:38 AM, =E7=BF=81=E5=81=89=E5=90=BE via USRP-users wrote=
:
>> > Hi,
>> >
>> > I have a question about the PPS inputs on b200 and b200mini models.
>> >
>> > I want to synchronize time for two b200 units. I connected the PPS to
>> > a external GPS module. The Ref port was left open(Not used). Then I
>> > set the system time with set_time_next_pps command.  On another b200,
>> > the configuration was the same. The problem is, after both device time
>> > has been set to PPS with the same time spec. Their system time start
>> > to drift away after a while. In other words, the PPS signal seems not
>> > regulating the system time on a second basis.
>> >
>> > BTW, I have measured the PPS timing between these gps devices and it
>> > was only 10ns off.
>> >
>> > I've read somewhere in the usrp maling list that the b200mini with
>> > only PPS input can be used to regulate internal PLL clock. Does this
>> > mean for every PPS edge it is adjusting the internal clock and make
>> > the system time stable between two units? Can we achieve the same
>> > regulation effect on b200?
>> >
>> > I already knew that using a GPSDO with b200 is the way to go for the
>> > best synchronization result. But I didn't go that way because 1.GPSDO
>> > can break my budget and 2. I only require hardware time sync on every
>> > PPS edge.
>> >
>> > I'm grateful for any suggestions. Thanks.
>> >
>> The PPS input is simply used as a trigger for doing
>> "set_time_next_pps()".  It DOES NOT provide any on-going clock
>> synchronization--that is
>>    what the 10MHz reference clock input is for.
>>
>>
>>
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

--0000000000000aaa4f05b4c125d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-family:sans-serif">So there is a some=
 difference=C2=A0 regarding the clock between b200 and b200mini. At first I=
 thought they are pretty much alike. Anyway, now I understood. Thanks Aaron=
.</span></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Mon, 23 Nov 2020, 02:42 Aaron Holtzman via USRP-users, &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr">On the b200mini, the 1pps actually=C2=A0<b>does</=
b> steer the internal reference. Which is different behaviour then the rest=
 of the entire Ettus lineup I believe.=C2=A0<div><br></div><div>For details=
 on how it works, see uhd/fpga/usrp3/top/b2xxmini/b205_ref_pll.v. It autode=
tects=C2=A0the external reference type and applies the appropriate dividers=
 and gain schedule.</div><div><br></div><div>cheers,</div><div>Aaron</div><=
div><br></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Fri, Nov 20, 2020 at 1:45 PM Marcus D. Leech v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_=
blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204)=
;padding-left:1ex">On 11/20/2020 08:38 AM, =E7=BF=81=E5=81=89=E5=90=BE via =
USRP-users wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I have a question about the PPS inputs on b200 and b200mini models.<br=
>
&gt;<br>
&gt; I want to synchronize time for two b200 units. I connected the PPS to =
<br>
&gt; a external GPS module. The Ref port was left open(Not used). Then I <b=
r>
&gt; set the system time with set_time_next_pps command.=C2=A0 On another b=
200, <br>
&gt; the configuration was the same. The problem is, after both device time=
 <br>
&gt; has been set to PPS with the same time spec. Their system time start <=
br>
&gt; to drift away after a while. In other words, the PPS signal seems not =
<br>
&gt; regulating the system time on a second basis.<br>
&gt;<br>
&gt; BTW, I have measured the PPS timing between these gps devices and it <=
br>
&gt; was only 10ns off.<br>
&gt;<br>
&gt; I&#39;ve read somewhere in the usrp maling list that the b200mini with=
 <br>
&gt; only PPS input can be used to regulate internal PLL clock. Does this <=
br>
&gt; mean for every PPS edge it is adjusting the internal clock and make <b=
r>
&gt; the system time stable between two units? Can we achieve the same <br>
&gt; regulation effect on b200?<br>
&gt;<br>
&gt; I already knew that using a GPSDO with b200 is the way to go for the <=
br>
&gt; best synchronization result. But I didn&#39;t go that way because 1.GP=
SDO <br>
&gt; can break my budget and 2. I only require hardware time sync on every =
<br>
&gt; PPS edge.<br>
&gt;<br>
&gt; I&#39;m grateful for any suggestions. Thanks.<br>
&gt;<br>
The PPS input is simply used as a trigger for doing <br>
&quot;set_time_next_pps()&quot;.=C2=A0 It DOES NOT provide any on-going clo=
ck <br>
synchronization--that is<br>
=C2=A0 =C2=A0what the 10MHz reference clock input is for.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000000aaa4f05b4c125d3--


--===============5460648854865429177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5460648854865429177==--

