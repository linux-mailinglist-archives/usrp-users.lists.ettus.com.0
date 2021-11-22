Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3E5459077
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 15:45:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7FE738414E
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 09:45:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Fjv7dLG/";
	dkim-atps=neutral
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 701DB383C51
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 09:44:46 -0500 (EST)
Received: by mail-ot1-f46.google.com with SMTP id b5-20020a9d60c5000000b0055c6349ff22so29063278otk.13
        for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 06:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MjJawtRBbJvvrIkGJvCUFRHN7cKs25+Imst+OfguP7U=;
        b=Fjv7dLG/wkdE7rp2VwP4j2gU0y2+0vqQi1TLPCRhrQLUuhk4IZMzL2HMvfcw13iZPG
         /PoDPNsYqhezzHzfjhYC25znlAG9PZXj0znFAzNzP4tGWv4VmINSmsDmFDGUgL3dYutr
         yOFvCA1K1TcqExN0sArT0NQBoQdgkJJ94U6gmQY0zReEMJvxkpTwq4992ZrLIqX9Iaus
         FViin6nriay7XyFRgnmZnfMtmZcPUuID/7LKziBJcsOo3rsGAtIQLKb62c16zDqPLqev
         hn04PCAZ/8vcclZNVTvmKc0yde80oE2gb3ePC5HDIXzB3uTEbQ/C2kZYSvY+VjFb8IgF
         jOoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MjJawtRBbJvvrIkGJvCUFRHN7cKs25+Imst+OfguP7U=;
        b=kAsgNCxOIadb+hve2v2BtNn4n/cTWPbrucj/fIi4t8pusPCCZd7TOJYaBp9+i1hy1W
         6e0tWIGRJ4Yot1T/TkoGEq2MLjMj70zHYMQBetA3+40/DrzBEkkGC/FnrPnBDNhYe/2B
         ZdqwA7j1NnWmEu2vKRGjHOhUedIVWlkkaA5MhpJv01s1OeGjqfE/J2ZTYFSLVeuCudHo
         vIBrpm09CjvBHxdu4Eqm9aceuKFkPJsg/hH2qzwlj2RNT7rDRrBVV8SHE8N8mW1iDtSj
         mHtlZHZ8jmRw2sTIf8tdz1wDPpg+uBIMbMk8Qgnqx/jC9eIVBXZkLbB/pnIEt/mLQ+DK
         aR3w==
X-Gm-Message-State: AOAM5301pV5g6DTvJsK3K42NUu5DXYuZ90OAO8FgQIRp6bL9YTpvbaUc
	oCvqBr6Nx1ok0l+7fRJmm9FIfrbk27qx/gUn/pBGMA==
X-Google-Smtp-Source: ABdhPJxs30WgDi3PANlsw6l8N7zA0zN3VcdV7Mq79gtPmYwC+Qrc5gtxHyq8etSlQ/Fyyao0VBoRDLvnvrVpSsg9JdE=
X-Received: by 2002:a05:6830:1301:: with SMTP id p1mr25172657otq.337.1637592285495;
 Mon, 22 Nov 2021 06:44:45 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTScPb2yKf9wUWBSSu6RiyKSwvrYXc-ZB-t7wK1fVdFaNQ@mail.gmail.com>
 <CAFOi1A6JC_nvEHfn4_3K6AEh2sVfd9LnwV4vh_YrmhqwT0fSFw@mail.gmail.com> <CAFOi1A45DpKkEu76wOgm1Bk0WQiGogFdT-hezKJqqGrsgg=2Sg@mail.gmail.com>
In-Reply-To: <CAFOi1A45DpKkEu76wOgm1Bk0WQiGogFdT-hezKJqqGrsgg=2Sg@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 22 Nov 2021 09:44:35 -0500
Message-ID: <CAB__hTQmUiumnFcqhU2YyOh7ZRVVnsHWhnCMp4NeckLRW24Gqw@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: 3VLYVH4E77YYS7YQJJFW3DU5Q5XT77BM
X-Message-ID-Hash: 3VLYVH4E77YYS7YQJJFW3DU5Q5XT77BM
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_graph->synchronize_devices()
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3VLYVH4E77YYS7YQJJFW3DU5Q5XT77BM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2940099606625926381=="

--===============2940099606625926381==
Content-Type: multipart/alternative; boundary="0000000000007721ce05d161aaed"

--0000000000007721ce05d161aaed
Content-Type: text/plain; charset="UTF-8"

Perfect.  Thanks for that explanation!

On Mon, Nov 22, 2021 at 7:15 AM Martin Braun <martin.braun@ettus.com> wrote:

> ...sorry, fat-fingered Gmail. I was saying, I had to check the code myself
> carefully to see why.
> In the rfnoc_graph constructor, we attempt to synchronize devices, so
> that's the relevant call.
>
> There's a bit of a catch here: If you are initializing the devices with
> internal ref and PPS, and then later set them to 'external',
> multi_usrp_rfnoc doesn't know you should be calling this method again.
> That's an issue we should be fixing.
>
> To summarize:
> - rfnoc_graph calls this function itself during construction. If you
> initialize your devices with time_source=external,clock_source=external,
> then this will work just fine.
> - If you're then, later only changing the time on your devices, calling
> set_time_unknown_pps() will suffice. Calling synchronize_devices() again is
> not required.
> - However, if you are initializing devices with internal clocks, and then
> later setting them to external, you should be calling this again. This is
> neither covered in the docs, nor in multi_usrp_rfnoc so I agree we have an
> issue here.
>
> --M
>
> On Mon, Nov 22, 2021 at 1:10 PM Martin Braun <martin.braun@ettus.com>
> wrote:
>
>> Hey Rob,
>>
>> thanks for asking -- this function is definitely under-documented. The
>> short answer is: This function should be called for synchronous operations,
>> but only on X3x0 will it make any difference if you don't call it.
>>
>> What does it do? This function provides additional synchronization on top
>> of the timekeeper synchronization. Currently, only X310 needs this for the
>> DAC synchronization.
>>
>> So why is not called in multi_usrp_rfnoc? To be honest, I had to
>> double-check the code myself
>>
>> On Wed, Nov 17, 2021 at 12:04 AM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi,
>>> I recently stumbled across this synchonize_devices() function and I'm
>>> wondering if I need to be calling it.  I ran grep in the UHD source folder
>>> and there are no examples of calling this function.  I read the help but
>>> it's not clear to me how this function differs from calling
>>> set_time_next_pps() on all of the motherboards (such as is done in the
>>> lib/multi_usrp_rfnoc.cpp code).  My thought process is: if multi_usrp_rfnoc
>>> does not need to call synchonize_devices(), why would my custom application
>>> need to call it?  Any help would be appreciated.
>>>
>>> Thanks.
>>> Rob
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--0000000000007721ce05d161aaed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Perfect.=C2=A0 Thanks for that explanation!</div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 22,=
 2021 at 7:15 AM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com"=
>martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div>...sorry, fat-fingered Gmail. =
I was saying, I had to check the code myself carefully to see why.</div><di=
v>In the rfnoc_graph constructor, we attempt to synchronize devices, so tha=
t&#39;s the relevant call.</div><div><br></div><div>There&#39;s a bit of a =
catch here: If you are initializing the devices with internal ref and PPS, =
and then later set them to &#39;external&#39;, multi_usrp_rfnoc doesn&#39;t=
 know you should be calling this method again. That&#39;s an issue we shoul=
d be fixing.</div><div><br></div><div>To summarize:</div><div>- rfnoc_graph=
 calls this function itself during construction. If you initialize your dev=
ices with time_source=3Dexternal,clock_source=3Dexternal, then this will wo=
rk just fine.</div><div>- If you&#39;re then, later only changing the time =
on your devices, calling set_time_unknown_pps() will suffice. Calling synch=
ronize_devices() again is not required.</div><div>- However, if you are ini=
tializing devices with internal clocks, and then later setting them to exte=
rnal, you should be calling this again. This is neither covered in the docs=
, nor in multi_usrp_rfnoc so I agree we have an issue here.</div><div><br><=
/div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, Nov 22, 2021 at 1:10 PM Martin Braun &lt;<a =
href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div>Hey Rob,</div><div><br></div><div>thanks for aski=
ng -- this function is definitely under-documented. The short answer is: Th=
is function should be called for synchronous operations, but only on X3x0 w=
ill it make any difference if you don&#39;t call it.</div><div><br></div><d=
iv>What does it do? This function provides additional synchronization on to=
p of the timekeeper synchronization. Currently, only X310 needs this for th=
e DAC synchronization.</div><div><br></div><div>So why is not called in mul=
ti_usrp_rfnoc? To be honest, I had to double-check the code myself<br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, Nov 17, 2021 at 12:04 AM Rob Kossler &lt;<a href=3D"mailto:rkossle=
r@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>I recen=
tly stumbled across this synchonize_devices() function and I&#39;m wonderin=
g if I need to be calling it.=C2=A0 I ran grep in the UHD source folder and=
 there are no examples of calling this function.=C2=A0 I read the help but =
it&#39;s not clear to me how this function differs from calling set_time_ne=
xt_pps() on all of the motherboards (such as is done in the lib/multi_usrp_=
rfnoc.cpp code).=C2=A0 My thought process is: if multi_usrp_rfnoc does not =
need to call synchonize_devices(), why would my custom application need to =
call it?=C2=A0 Any help would be appreciated.<div><br></div><div>Thanks.</d=
iv><div>Rob</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000007721ce05d161aaed--

--===============2940099606625926381==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2940099606625926381==--
