Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FD4458E14
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 13:16:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 15421383F1B
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 07:16:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="yXwYu4jn";
	dkim-atps=neutral
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by mm2.emwd.com (Postfix) with ESMTPS id ED236383DDF
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 07:15:46 -0500 (EST)
Received: by mail-io1-f47.google.com with SMTP id c3so23044121iob.6
        for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 04:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=R0nGIj74e7fIXO3odA0EZLYn/2p38+jCpXfRa+8nX+k=;
        b=yXwYu4jn/8v+7l+wMeKXMVaRstU84a3CYGeRcqonJAjtELP0IqXrvW8oekoI4E6jVW
         JGogQdo2eAB0hj3nEA7tIzqiB4PmXM7NZcsrSIguToCYQziTmkjtZtGPabTtGAGI00xd
         WttOilBAOtRjeU8wK9RE1X8lLC9bPvn6fifTdTHjOtqozIvl8AQEFryo34tWGhqiWD9v
         FvWFevCmVFkJJW4rKa0qTdf6OMLTRdHjj3IhJFEhAY/wV97tAqOW5Cl1wpIGaQ3/KJAN
         mLtAHI0RoLblZpl68OlV/wvcBk8X36UHqpHNYlBKXlVNUWrQemBZF72WHXazfjJW/8S6
         fMMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=R0nGIj74e7fIXO3odA0EZLYn/2p38+jCpXfRa+8nX+k=;
        b=ow65ZficdwVDKq+rHKkEGWJYSw1Iylo2Dw0+Kr5QPHKGXxM2T3Gqo9WlGFiOsLb7kW
         /ek+lUTxCcYpTWOx6uTsUqpmdbcp9F8liHjdbdlKCfYfz4QxQxk8U5KtArMHmqJR/mGD
         Nh9+Tg9hQZK6YEhBe1LHTPecJIkw1xgWA56vH2S0UpQ396kcu6AYYVrkUZC6FZBS2/r6
         NgqMWpPAyBt0A3BJwVs5FIGxOmow7itGTFkr1HX4rRKiePIQAHQpa6XjT3G6I6TVj7Yh
         tvFbM41Zxrsf6cMDhkuWt7zRPecLolXUbIEyFun1kSIPw3k1DkfP+yV8wDyiJC0vAueU
         z7SA==
X-Gm-Message-State: AOAM532Ju1iXDoTqQk4mTxbq6ecZMLziywufcGApvscx4E8Psk2CdpGi
	USo+yrYPfCCGFne5fbUIRxQxchMoR3EE6YTzuhSlcQMxzhCUM2ci
X-Google-Smtp-Source: ABdhPJzxZj72FyqtJJw9CJvytSZ80BSWNADLQqUMxPvxAjXepYCIilUW043CV+LHGqg6R7RcWfQEGHH44YTr7kPZbts=
X-Received: by 2002:a05:6602:25d4:: with SMTP id d20mr16308812iop.72.1637583346248;
 Mon, 22 Nov 2021 04:15:46 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTScPb2yKf9wUWBSSu6RiyKSwvrYXc-ZB-t7wK1fVdFaNQ@mail.gmail.com>
 <CAFOi1A6JC_nvEHfn4_3K6AEh2sVfd9LnwV4vh_YrmhqwT0fSFw@mail.gmail.com>
In-Reply-To: <CAFOi1A6JC_nvEHfn4_3K6AEh2sVfd9LnwV4vh_YrmhqwT0fSFw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 22 Nov 2021 13:15:35 +0100
Message-ID: <CAFOi1A45DpKkEu76wOgm1Bk0WQiGogFdT-hezKJqqGrsgg=2Sg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: VWDBQR6SCM5DZYD7MMSJAGOZ2IEU4UL6
X-Message-ID-Hash: VWDBQR6SCM5DZYD7MMSJAGOZ2IEU4UL6
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_graph->synchronize_devices()
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VWDBQR6SCM5DZYD7MMSJAGOZ2IEU4UL6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2391521120623198933=="

--===============2391521120623198933==
Content-Type: multipart/alternative; boundary="000000000000a4bf6805d15f95e7"

--000000000000a4bf6805d15f95e7
Content-Type: text/plain; charset="UTF-8"

...sorry, fat-fingered Gmail. I was saying, I had to check the code myself
carefully to see why.
In the rfnoc_graph constructor, we attempt to synchronize devices, so
that's the relevant call.

There's a bit of a catch here: If you are initializing the devices with
internal ref and PPS, and then later set them to 'external',
multi_usrp_rfnoc doesn't know you should be calling this method again.
That's an issue we should be fixing.

To summarize:
- rfnoc_graph calls this function itself during construction. If you
initialize your devices with time_source=external,clock_source=external,
then this will work just fine.
- If you're then, later only changing the time on your devices, calling
set_time_unknown_pps() will suffice. Calling synchronize_devices() again is
not required.
- However, if you are initializing devices with internal clocks, and then
later setting them to external, you should be calling this again. This is
neither covered in the docs, nor in multi_usrp_rfnoc so I agree we have an
issue here.

--M

On Mon, Nov 22, 2021 at 1:10 PM Martin Braun <martin.braun@ettus.com> wrote:

> Hey Rob,
>
> thanks for asking -- this function is definitely under-documented. The
> short answer is: This function should be called for synchronous operations,
> but only on X3x0 will it make any difference if you don't call it.
>
> What does it do? This function provides additional synchronization on top
> of the timekeeper synchronization. Currently, only X310 needs this for the
> DAC synchronization.
>
> So why is not called in multi_usrp_rfnoc? To be honest, I had to
> double-check the code myself
>
> On Wed, Nov 17, 2021 at 12:04 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi,
>> I recently stumbled across this synchonize_devices() function and I'm
>> wondering if I need to be calling it.  I ran grep in the UHD source folder
>> and there are no examples of calling this function.  I read the help but
>> it's not clear to me how this function differs from calling
>> set_time_next_pps() on all of the motherboards (such as is done in the
>> lib/multi_usrp_rfnoc.cpp code).  My thought process is: if multi_usrp_rfnoc
>> does not need to call synchonize_devices(), why would my custom application
>> need to call it?  Any help would be appreciated.
>>
>> Thanks.
>> Rob
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000a4bf6805d15f95e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>...sorry, fat-fingered Gmail. I was saying, I had to =
check the code myself carefully to see why.</div><div>In the rfnoc_graph co=
nstructor, we attempt to synchronize devices, so that&#39;s the relevant ca=
ll.</div><div><br></div><div>There&#39;s a bit of a catch here: If you are =
initializing the devices with internal ref and PPS, and then later set them=
 to &#39;external&#39;, multi_usrp_rfnoc doesn&#39;t know you should be cal=
ling this method again. That&#39;s an issue we should be fixing.</div><div>=
<br></div><div>To summarize:</div><div>- rfnoc_graph calls this function it=
self during construction. If you initialize your devices with time_source=
=3Dexternal,clock_source=3Dexternal, then this will work just fine.</div><d=
iv>- If you&#39;re then, later only changing the time on your devices, call=
ing set_time_unknown_pps() will suffice. Calling synchronize_devices() agai=
n is not required.</div><div>- However, if you are initializing devices wit=
h internal clocks, and then later setting them to external, you should be c=
alling this again. This is neither covered in the docs, nor in multi_usrp_r=
fnoc so I agree we have an issue here.</div><div><br></div><div>--M<br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Mon, Nov 22, 2021 at 1:10 PM Martin Braun &lt;<a href=3D"mailto:martin=
.braun@ettus.com">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hey Rob,</div=
><div><br></div><div>thanks for asking -- this function is definitely under=
-documented. The short answer is: This function should be called for synchr=
onous operations, but only on X3x0 will it make any difference if you don&#=
39;t call it.</div><div><br></div><div>What does it do? This function provi=
des additional synchronization on top of the timekeeper synchronization. Cu=
rrently, only X310 needs this for the DAC synchronization.</div><div><br></=
div><div>So why is not called in multi_usrp_rfnoc? To be honest, I had to d=
ouble-check the code myself<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 17, 2021 at 12:04 AM Rob K=
ossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd=
.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">Hi,<div>I recently stumbled across this synchonize_dev=
ices() function and I&#39;m wondering if I need to be calling it.=C2=A0 I r=
an grep in the UHD source folder and there are no examples of calling this =
function.=C2=A0 I read the help but it&#39;s not clear to me how this funct=
ion differs from calling set_time_next_pps() on all of the motherboards (su=
ch as is done in the lib/multi_usrp_rfnoc.cpp code).=C2=A0 My thought proce=
ss is: if multi_usrp_rfnoc does not need to call synchonize_devices(), why =
would my custom application need to call it?=C2=A0 Any help would be apprec=
iated.<div><br></div><div>Thanks.</div><div>Rob</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000a4bf6805d15f95e7--

--===============2391521120623198933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2391521120623198933==--
