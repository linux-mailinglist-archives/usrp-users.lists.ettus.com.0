Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CC1229FFE
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 21:19:07 +0200 (CEST)
Received: from [::1] (port=53860 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyKGd-0002SU-Pa; Wed, 22 Jul 2020 15:19:03 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:44326)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jyKGZ-0002Jn-Km
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 15:18:59 -0400
Received: by mail-ot1-f43.google.com with SMTP id 5so2587535oty.11
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 12:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6Pq84db4N87FW/St9zwvJMxLCYReQWoq0BEVpy8v4HM=;
 b=VegMOOWsJb1+C7oQaD+NXRE9vBPHWCTsTWtJnFhwUCli7uCq/+xqgDORSq2jK71EuL
 lpcyyP1TW07b4N89oKH8AN2ZS/DJv7uKMTemgwkE+w9IyHxxizulty7VnhWeIVCtKy2j
 hHIVkb0EMI3HTOs2Qdz0ujpuLptzmdcCBhsRB21QG3h/pqaj3Cns3s01Z2MiFO0YYEbQ
 QSD3LtJE8aqHj6btlJRvoimcFA18qTRW/40rxuJpfrWUhO5wVErU26z3r6uOX1Dg+Pxd
 6UnW3Wh85ekB0gfxrDAJ4b3gVWCbdA38QfKKit0lazyOWQfk9GNP62Mx5yonSpI+Glnv
 /QyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6Pq84db4N87FW/St9zwvJMxLCYReQWoq0BEVpy8v4HM=;
 b=FwnzzIiEqjSusKclXsGLTgh2Jv9TiHuqb9PJJ12BGnAQ3BqUz58Sw7JM3IeNH86Spt
 Yj3c/6Os86MCGRbO8sixiyPdbPd+WF36S06TErM6MAFwypr3CGD/N2k0xZiDjHP/T7xL
 dXzggLx/zHSBX2FBfPbcrPPUh9nynpbDFpNIvxitQxGMnp/ezR1qZuqEPmjvYWKMv5r9
 vaPl00fj2iRfFwayUCm4SYQWG6iHjgtYHt8Pe2i5Sx4XIevLi/cp6EfZUm0VEQFKRSFY
 aCSQ3GMCiX4bX7w0thOc4wST/KlxKo1+lUeMAVKz/3GMGuMPREnbBiDe5AvJWgpBpW3i
 YHUA==
X-Gm-Message-State: AOAM5327e7e+MBs94mlrnbLx2vM4NTf2u2s7WBbDzl9GtDFou6O6sG5s
 Nw+2wo/gX6VBTQol2HYoJ1RBkko63kYMuPTCjTFm4A==
X-Google-Smtp-Source: ABdhPJwTMLztTsDBt2gjyK+zDogyA0Hxpe2ghkRy3jUGlONMx5aXTuU/+5/unHkS5V0s7C0MV24zlTLKaIiGI7GF6Y0=
X-Received: by 2002:a05:6830:1c6e:: with SMTP id
 s14mr1322548otg.58.1595445498810; 
 Wed, 22 Jul 2020 12:18:18 -0700 (PDT)
MIME-Version: 1.0
References: <CA+w2ZysadneVug92CO58wFPBKZBBtoK31xdAfV89rt73qVD3Cg@mail.gmail.com>
 <5F187365.7030104@gmail.com>
 <CA+w2ZytN3PA3TGCbrTZ2mED0rCsgyaOU57w8=pkKkAW=1oAR5Q@mail.gmail.com>
 <5F187873.2040206@gmail.com>
 <CA+w2ZytC0pPxp7GOCzE8m6m9FgUZLqDHwAgM1GzH8HLgV26O=A@mail.gmail.com>
 <5F187B7C.2090909@gmail.com>
In-Reply-To: <5F187B7C.2090909@gmail.com>
Date: Wed, 22 Jul 2020 15:18:08 -0400
Message-ID: <CAB__hTS2cwTwXdQSMoaE=d_je4sXaEUvwzz=JH36oD0TDksS=w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] C++ thread Priority.
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8943504333418176120=="
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

--===============8943504333418176120==
Content-Type: multipart/alternative; boundary="00000000000037584805ab0c9a30"

--00000000000037584805ab0c9a30
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you are using X310 or N310, you might try DPDK. Even though it is a
pain, it would be a whole lot easier than trying a new OS, I believe.
Using DPDK enabled my application (which was storing Rx samples to SSD) to
run a bunch faster than without DPDK.

On Wed, Jul 22, 2020 at 1:47 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 07/22/2020 01:40 PM, David Carsenat wrote:
>
> It just put received samples in a circular buffer and  transmit this
> buffer. A delay line.
> But the SR is 50 Msps... 8 bits.
>  Do you have ideas about OS ?
> Thanks.
>
> There are commercial real-time low-latency OS "out there" that aren't
> free, and UHD has not been ported to them as far as I know.
>
>
> Le mer. 22 juil. 2020 =C3=A0 19:33, Marcus D. Leech <patchvonbraun@gmail.=
com>
> a =C3=A9crit :
>
>> On 07/22/2020 01:22 PM, David Carsenat wrote:
>>
>> Ok thanks. The code is really simple and i don't think it can be
>> optimized.
>> Is there other linux OS i can try ?
>> Thanks again.
>>
>> If it's really simple, what is the sample-rate?  Is it trying to write
>> data to the filesystem at high rates?  No amount of code optimization ca=
n
>> get
>>   around the fact that the disk subsystem is very slow compared to other
>> parts of the computer, like memory, CPU, etc.
>>
>>
>> Le mer. 22 juil. 2020 =C3=A0 19:12, Marcus D. Leech via USRP-users <
>> usrp-users@lists.ettus.com> a =C3=A9crit :
>>
>>> On 07/22/2020 12:56 PM, David Carsenat via USRP-users wrote:
>>> > Hello, I have made a c++ code which sends samples in the main functio=
n
>>> > and receives samples in a thread launched in this main function.
>>> > I have read that we can set the real time priority with the
>>> > set_thread_priority function.
>>> > I have tried to call this function (with parameters (1,true) inside
>>> > the main function but it doesn't seem to change the priority of the
>>> > executable. When I launch another application, I have lots of U and O=
.
>>> >
>>> > Do you have an idea how to achieve what I want ? i.e. allocate almost
>>> > all computer resources to my uhd program ? What is the best way ?
>>> > I have already tuned my ubuntu with advice given on Ettus site.(
>>> > cpu-freq set etc...)
>>> >
>>> > Many thanks
>>> >
>>> > David
>>> >
>>> In general, applications have only very-rough control over the behavior
>>> of the scheduler.  This is true in most general-purpose operating syste=
m
>>>    environments, whether it's Windows, Linux, *BSD, MacOS, etc.
>>>
>>> If you've played with priorities, and starting up other programs causes
>>> OU to happen, you should probably consider:
>>>
>>> (A) Optimizing your code -- find out where the hot-spots are, and see i=
f
>>> they can be improved
>>> (B) Choosing a faster CPU
>>>
>>> The CPU usage of a DSP flow is roughly proportional to:
>>>
>>> inherent-per-sample-complexity X sample-rate
>>>
>>> Can you lower the sample rate and still achieve what you need to
>>> achieve?  Can you improve the main-path per-sample complexity?
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000037584805ab0c9a30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you are using X310 or N310, you might try DPDK. Even th=
ough it is a pain, it would be a whole lot easier than trying a new OS, I b=
elieve.=C2=A0 Using DPDK enabled my application (which was storing Rx sampl=
es to SSD) to run a bunch faster than without DPDK.</div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 22, 2020 at =
1:47 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 07/22/2020 01:40 PM, David Carsenat
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"auto">It just put received samples in a circular buffer
        and=C2=A0 transmit this buffer. A delay line.=C2=A0
        <div dir=3D"auto">But the SR is 50 Msps... 8 bits.</div>
        <div dir=3D"auto">=C2=A0Do you have ideas about OS ?</div>
        <div dir=3D"auto">Thanks.</div>
      </div>
      <br>
    </blockquote>
    There are commercial real-time low-latency OS &quot;out there&quot; tha=
t
    aren&#39;t free, and UHD has not been ported to them as far as I know.<=
br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">Le mer. 22 juil. 2020 =C3=A0 =
19:33,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          a =C3=A9crit=C2=A0:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 07/22/2020 01:22 PM, David Carsenat wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"auto">Ok thanks. The code is really simple and i
                don&#39;t think it can be optimized.=C2=A0
                <div dir=3D"auto">Is there other linux OS i can try ?</div>
                <div dir=3D"auto">Thanks again.</div>
              </div>
              <br>
            </blockquote>
            If it&#39;s really simple, what is the sample-rate?=C2=A0 Is it
            trying to write data to the filesystem at high rates?=C2=A0 No
            amount of code optimization can get<br>
            =C2=A0 around the fact that the disk subsystem is very slow
            compared to other parts of the computer, like memory, CPU,
            etc.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">Le mer. 22 juil. 2020
                  =C3=A0 19:12, Marcus D. Leech via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>&gt;

                  a =C3=A9crit=C2=A0:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
                  07/22/2020 12:56 PM, David Carsenat via USRP-users
                  wrote:<br>
                  &gt; Hello, I have made a c++ code which sends samples
                  in the main function <br>
                  &gt; and receives samples in a thread launched in this
                  main function.<br>
                  &gt; I have read that we can set the real time
                  priority with the <br>
                  &gt; set_thread_priority function.<br>
                  &gt; I have tried to call this function (with
                  parameters (1,true) inside <br>
                  &gt; the main function but it doesn&#39;t seem to change
                  the priority of the <br>
                  &gt; executable. When I launch another application, I
                  have lots of U and O.<br>
                  &gt;<br>
                  &gt; Do you have an idea how to achieve what I want ?
                  i.e. allocate almost <br>
                  &gt; all computer resources to my uhd program ? What
                  is the best way ?<br>
                  &gt; I have already tuned my ubuntu with advice given
                  on Ettus site.( <br>
                  &gt; cpu-freq set etc...)<br>
                  &gt;<br>
                  &gt; Many thanks<br>
                  &gt;<br>
                  &gt; David<br>
                  &gt;<br>
                  In general, applications have only very-rough control
                  over the behavior <br>
                  of the scheduler.=C2=A0 This is true in most
                  general-purpose operating system<br>
                  =C2=A0 =C2=A0environments, whether it&#39;s Windows, Linu=
x, *BSD,
                  MacOS, etc.<br>
                  <br>
                  If you&#39;ve played with priorities, and starting up
                  other programs causes <br>
                  OU to happen, you should probably consider:<br>
                  <br>
                  (A) Optimizing your code -- find out where the
                  hot-spots are, and see if <br>
                  they can be improved<br>
                  (B) Choosing a faster CPU<br>
                  <br>
                  The CPU usage of a DSP flow is roughly proportional
                  to:<br>
                  <br>
                  inherent-per-sample-complexity X sample-rate<br>
                  <br>
                  Can you lower the sample rate and still achieve what
                  you need to <br>
                  achieve?=C2=A0 Can you improve the main-path per-sample
                  complexity?<br>
                  <br>
                  <br>
                  <br>
                  _______________________________________________<br>
                  USRP-users mailing list<br>
                  <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
                  <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000037584805ab0c9a30--


--===============8943504333418176120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8943504333418176120==--

