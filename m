Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA8828FB0E
	for <lists+usrp-users@lfdr.de>; Fri, 16 Oct 2020 00:17:38 +0200 (CEST)
Received: from [::1] (port=43704 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kTBZ2-0004mx-Cu; Thu, 15 Oct 2020 18:17:36 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:41033)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kTBYy-0004fd-Tc
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 18:17:32 -0400
Received: by mail-oi1-f175.google.com with SMTP id q136so204863oic.8
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 15:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HWBAbzUw/AbmaAKv38EHa5omtPnHgs5khdUqQ11MiT0=;
 b=am6ukcfg73knNYZsJgFqj83AcWWzgyLRp5c4uNRhl4FMX9S/Ijc6Qu9vh+gveNST6b
 jLJkviTMlVLxvsgt96Pf2tYh6tvY9qd+G2T2qVfHTjL0hNk9IKfDua6z5FeUrAuFgvNx
 gEI2XXkumC5fL0a8GpKJw74VDNRWQIB1g7SfgPfcUjxUpqC6wquP396p7lGWx7p5fZLW
 p3cm77bIvNRGPo6LAAMGIQShR8p0dlMOcp9RGaY3wPKFXMy2cEqxyPzKm6hyWKJFRWo8
 NWSc8Ps3L3ZcYFr8Mtbhfb5a9rK98h0XoYhYO7zFMO7ebeea2n80kNkx3Rw3CG2qr6A5
 YvBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HWBAbzUw/AbmaAKv38EHa5omtPnHgs5khdUqQ11MiT0=;
 b=sR5axSM1Or9jzz3ObcTF94zZAIIMpPO4q3nAK1HODjK5OLJixod6kiWH5/U6mJ2RFN
 FEXZuzcSzPWhQxxGZYcnJDUsD9WyRUC2+kvJpFd+CAUW2kcDQt4mQWfiig3WTxy8BC94
 aAvAJRNKoI6DMVJIXy4y7nlMObM0AjaynaRaEUiicV8J3UVBg80bCzXfvZ3x/nOsj6oA
 RreHXkOIo3y5vZDSxAJAQJTNIqBvu0ihd1gDhvTylxAgY86pAeyEWgaOt9ghoKM0NT8Q
 TdiygHZQwerOm/hVRYFHCvWNZWf4xvNv9w2U2/eLasMTClAM/y6c+xymA8iGHCFpqS0m
 1Mbg==
X-Gm-Message-State: AOAM533TgrN2MZDm25Ur1wVoDMlN3GI5MWKVa7taKaPIZ3stO0/Jd7GC
 DIq2iyy4EjjfqvKuVnE8IYvwY7cqXezWtsMbLH9ngg==
X-Google-Smtp-Source: ABdhPJwgzqHtaHjlL48Vuu5KOlfj+bxcFbE5NQCMiv0rLq6sfVASLjxPdIgJ74mJkXzYVKQSiPMCv4KCNrTMpYamV6Q=
X-Received: by 2002:aca:6501:: with SMTP id m1mr441417oim.124.1602800211929;
 Thu, 15 Oct 2020 15:16:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTQ3aXadTX5KELksuongMR4QJchXS9UdxSs9cNyBBRdTg@mail.gmail.com>
 <CAL7q81sXeHHHSHF+S9hdHk=827igYxQPiY7D070=Dr1yW4GXJg@mail.gmail.com>
 <CAB__hTRk1GcRNph1bW-kbPq9jy9K-8tAY=WRr62KePK03PAgig@mail.gmail.com>
 <CAL7q81sHKB02b7e6VNg9OTY543V+6BLRF-_baoUPUzdzpLMtrA@mail.gmail.com>
In-Reply-To: <CAL7q81sHKB02b7e6VNg9OTY543V+6BLRF-_baoUPUzdzpLMtrA@mail.gmail.com>
Date: Thu, 15 Oct 2020 18:16:41 -0400
Message-ID: <CAB__hTQrDajD3pnqTuaAZaYWMM24orOaj6JwJMnHdG-3E2hg6Q@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Failure: ERROR:add_1 must be in range [-1, DEPTH-1]
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
Content-Type: multipart/mixed; boundary="===============8723285710158379493=="
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

--===============8723285710158379493==
Content-Type: multipart/alternative; boundary="000000000000476b7f05b1bd013b"

--000000000000476b7f05b1bd013b
Content-Type: text/plain; charset="UTF-8"

I'm just using window.v, not the various noc block wrappers.  I don't see
any issue with it and when I run the testbench with just the Window enabled
(and FFT IP core disabled), it works fine.

I'm really struggling with this.  The results are bizarre and the testbench
takes forever to run (ok, maybe 5 min) so it is not simple to change 1
thing and check the result.  I can't seem to find any issue with failing to
drive inputs of the FFT core.  I've searched the web on this error and the
most common response does indicate a failure to drive inputs, but I can't
find any culprit.

Could it have anything to do with something like a race condition prior to
the first clock cycle? Or is that just nonsense.  I definitely don't have
the experience to even know if that is a possibility.
Rob


On Thu, Oct 15, 2020 at 4:23 PM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> The issue could be with the Window block then. Maybe it isn't getting
> properly initialized or something changed from RFNoC 3 to RFNoC 4.
>
> On Thu, Oct 15, 2020 at 3:44 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> OK. I'll check again.  One thing that's weird is that if I comment out
>> either the Window or the FFT (and insert appropriate assign statements to
>> replace the commented item), I don't get the error.  The error only occurs
>> if both are in place.
>> Rob
>>
>> On Thu, Oct 15, 2020 at 3:42 PM Jonathon Pendlum <
>> jonathon.pendlum@ettus.com> wrote:
>>
>>> Hey Rob,
>>>
>>> I've ran into that issue when simulating Xilinx IP that use DSP48s. From
>>> what I can tell, they don't handle X and U signal states properly. Try
>>> double checking that all your signals are all properly driven.
>>>
>>> Jonathon
>>>
>>> On Thu, Oct 15, 2020, 15:08 Rob Kossler via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi,
>>>> I am getting this error (from the subject line) in a custom block I
>>>> created that is effectively just the combination of a window block and a
>>>> xilinx fft ip core. I am using UHD-4.0 (and Vivado 2019.1).
>>>>
>>>> After searching the user's list, I found some old posts from Jonathan
>>>> Pendlum that indicated that this was a known issue related to the Xilinx
>>>> FFT IP core.  The solution in the previous posts was to copy a "wave.do"
>>>> file from the Ettus in-tree FFT tb folder.  I didn't find such a file in
>>>> UHD-4.0 and so I'm wondering if there is a solution that works for UHD-4.0.
>>>> Rob
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--000000000000476b7f05b1bd013b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m just using window.v, not the various noc block wra=
ppers.=C2=A0 I don&#39;t see any issue with it and when I run the testbench=
 with just the Window enabled (and FFT IP core disabled), it works fine.<di=
v><br></div><div>I&#39;m really struggling with this.=C2=A0 The results are=
 bizarre and the testbench takes forever to run (ok, maybe 5 min) so it is =
not simple to change 1 thing and check the result.=C2=A0 I can&#39;t seem t=
o find any issue with failing to drive inputs of the FFT core.=C2=A0 I&#39;=
ve searched the web on this error and the most common response=C2=A0does in=
dicate a failure to drive inputs, but I can&#39;t find any culprit.=C2=A0=
=C2=A0</div><div><br></div><div>Could it have anything to do with something=
 like a race condition prior to the first clock cycle? Or is that just nons=
ense.=C2=A0 I definitely don&#39;t have the experience to even know if that=
 is a possibility.</div><div>Rob</div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 15, 2020=
 at 4:23 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.c=
om">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr">The issue could be with the =
Window block then. Maybe it isn&#39;t getting properly initialized or somet=
hing changed from RFNoC 3 to RFNoC 4.</div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 15, 2020 at 3:44 PM Rob Ko=
ssler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.=
edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">OK. I&#39;ll check again.=C2=A0 One thing that&#39;s we=
ird is that if I comment out either the Window or the FFT (and insert appro=
priate assign statements to replace the commented item), I don&#39;t get th=
e error.=C2=A0 The error only occurs if both are in place.<div>Rob</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, Oct 15, 2020 at 3:42 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonatho=
n.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"auto">Hey Rob,<div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;ve ra=
n into that issue when simulating Xilinx IP that use DSP48s. From what I ca=
n tell, they don&#39;t handle X and U signal states properly. Try double ch=
ecking that all your signals are all properly driven.</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Jonathon</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 15, 2020, 15:08 Rob=
 Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I a=
m getting this error (from the subject line) in a custom block I created th=
at is effectively just the combination of a window block and a xilinx fft i=
p core. I am using UHD-4.0 (and Vivado 2019.1).=C2=A0 </div><div><br></div>=
<div>After searching the user&#39;s list, I found some old posts from Jonat=
han Pendlum that indicated that this was a known issue related to the Xilin=
x FFT IP core.=C2=A0 The solution in the previous posts was to copy a &quot=
;wave.do&quot; file from the Ettus in-tree FFT tb folder.=C2=A0 I didn&#39;=
t find such a file in UHD-4.0 and so I&#39;m wondering if there is a soluti=
on that works for UHD-4.0.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000476b7f05b1bd013b--


--===============8723285710158379493==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8723285710158379493==--

