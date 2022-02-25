Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDAC4C472A
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 15:14:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A7673850B8
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 09:14:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="FdS0XNdG";
	dkim-atps=neutral
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E69038455E
	for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 09:13:00 -0500 (EST)
Received: by mail-yb1-f171.google.com with SMTP id g6so6089298ybe.12
        for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 06:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2UUFooKvTi10WQfAqxKfpSqvH5x150cngn15hou2DNo=;
        b=FdS0XNdGkD/CuLe3097wtTM1SnQcfBuOXMOa2gaEWXJvUFlXtljVUjDvidYFDIj4KH
         v5jN69xqGWf+VNAbMBCw5EtC9MRA4wddlPECskxvewHlgkrszQqQzQ/m3+fla+Kj0Hny
         sVRz9oRSwlISd3jCqN1VKTYu/lYC2ijhVelXpAklPQQ1tUnB1jGaNX7/Axf6NivCCPWM
         zcT3PVd9Ws6F+lLmBiJ5lgJPJBm8VKoPYQpGXUED9BS2Duxb5Fi4CB+xoIAwNh4TH2//
         SP6drdw1z68IZlq6jszt5mlUY0YslkQDcaxYrBdVVwE/XB0yQS0jB83uF3kuOKki/38P
         OM8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2UUFooKvTi10WQfAqxKfpSqvH5x150cngn15hou2DNo=;
        b=kQ4bJ5AckrpwnrejrSfJJ3awk22qbsyJkA+dkQlePja3vEPLyTtTk9z26rZEQKYRL6
         HOJoQLFD0llQl1/S+j9oY1+yf+5JbI2iILwKHBudYtTMGlyYFz/QUt9Po+qzX8pwfvkE
         wvQLGGkaYJJH7ZCOlWkWHNL9SMtnoOi5JO2mwgLtyKH0wSjzw/WXWQBZXywZNaGXg7h0
         xdRtAAA4rpEeEfD8/9MKOynpH3DGFK+4fPm8tfK9Z4XzjVi4oMRQZl/Hps1a9rUb14F9
         G+AwtUlAQ132WV5lAFfEtNwBmK28g0eqgRNsYwpBNJBmQNjFNcsWoIq0z07Xw0DHM8wb
         TSwg==
X-Gm-Message-State: AOAM530NqE7ypa89T9Pju5ofFSg+dT5RqA1AL39Az6A6sxBQHiTU90U1
	/n9GHeIjgWYjRsxtCMgvqcStF/y9+/g9uOiceFOYww==
X-Google-Smtp-Source: ABdhPJyFOvzb8ETdvcu+4+szmt248AC7Ed5yrB3JOFaC3UKWcWTU+ZhoNHVc3zNQkSwlgjQcW9dXvE5vKFoY/5wIKrU=
X-Received: by 2002:a25:3814:0:b0:623:a445:a40a with SMTP id
 f20-20020a253814000000b00623a445a40amr7522680yba.80.1645798378609; Fri, 25
 Feb 2022 06:12:58 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PsLQHmSSRXKqZfuHZ+FgUyMV4Jtv5qVC+s75jLttmSAAQ@mail.gmail.com>
 <CAB__hTSJe7puQo0EoqbWZ2YBOy7wGXfwYUTqAbQaHJnnmSn5-Q@mail.gmail.com>
 <CAA=S3Pup0OazTdNr_SG=TBo4cKMCA8QFTnatU02wyQJkLHVUGA@mail.gmail.com> <CAA=S3Ps_XBpgjPJ7r3FqKK6iD_h+gCJgAs0Ny6=W9s6fmmiYtg@mail.gmail.com>
In-Reply-To: <CAA=S3Ps_XBpgjPJ7r3FqKK6iD_h+gCJgAs0Ny6=W9s6fmmiYtg@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 25 Feb 2022 09:12:47 -0500
Message-ID: <CAB__hTRcMAFJ4-=TLFXzYdPBuNUpqo5iVBKXFN+dAhL2eXp90A@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: ASPTKGOU6XPTDLI6NDVQ6ME7Q2ENQPVX
X-Message-ID-Hash: ASPTKGOU6XPTDLI6NDVQ6ME7Q2ENQPVX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can create an RFNOC correlate block for USRP?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ASPTKGOU6XPTDLI6NDVQ6ME7Q2ENQPVX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5354583708650935583=="

--===============5354583708650935583==
Content-Type: multipart/alternative; boundary="000000000000bd9e2805d8d84b35"

--000000000000bd9e2805d8d84b35
Content-Type: text/plain; charset="UTF-8"

The MATLAB function xcorr() can be implemented in the time domain as a
convolution (or similarly an FIR filter) or in the frequency domain as a
multiplication. So, if the function is "z = xcorr(x,y)", then you can
implement this as "z = ifft(X.*conj(Y))" where X and Y are the FFTs of x
and y but with the FFT zero-padded to have length (Lx + Ly).  You also need
to apply a circular shift.  Here is MATLAB code that shows the equivalence.
For long sequences, it might consume less FPGA resources to implement in
the frequency domain using FFT/IFFT pairs.

>> L = 500;
>> x = randn(L,1) + 1i*randn(L,1);
>> y = randn(L,1) + 1i*randn(L,1);
>> z = xcorr(x,y);
>> Lfft = 2^nextpow2(2*L-1);
>> z2 = circshift(ifft(fft(x,Lfft).*conj(fft(y,Lfft)),Lfft),L-1);
>> plot(abs(z-z2(1:2*L-1)))

On Fri, Feb 25, 2022 at 2:30 AM sp h <stackprogramer@gmail.com> wrote:

> Thanks, I know that I can use FFT but I want to implement Xcorrelate like
> xcorr Matlab directly...as an independent RFNOC blocks
>
>
> On Wed, Feb 23, 2022 at 10:56 AM sp h <stackprogramer@gmail.com> wrote:
>
>> Thanks, I know that I can use FFT but I want to implement Xcorrelate like
>> xcorr matlab directly...as a  independent RFNOC blocks
>>
>>
>> On Mon, Feb 21, 2022 at 7:40 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> is there a specific function (such as MATLAB 'xcorr') you want to
>>> implement?  You can implement 'cconv' with a pair of FFT/IFFT and complex
>>> multiplication.  If you zero-pad and use 2x length FFTs, you can
>>> alternatively obtain linear convolution using an overlap-and-add
>>> configuration.  I haven't looked at 'xcorr' specifically, but my guess is
>>> that you could do what you want with an FFT/IFFT pair.
>>> Rob
>>>
>>> On Mon, Feb 21, 2022 at 6:36 AM sp h <stackprogramer@gmail.com> wrote:
>>>
>>>> How can create an RFNOC correlate block for USRP?
>>>> This thread is created to share results on searching how we can
>>>> correlate RFNOC blocks...
>>>> Anyone that had an idea, I'm glad to hear it...
>>>> thanks in advance
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

--000000000000bd9e2805d8d84b35
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The MATLAB function xcorr() can be implemented in the time=
 domain as a convolution (or similarly an FIR filter) or in the frequency d=
omain as a multiplication. So, if the function is &quot;z =3D xcorr(x,y)&qu=
ot;, then you can implement this as &quot;z =3D ifft(X.*conj(Y))&quot; wher=
e X and Y are the FFTs of x and y but with the FFT zero-padded to have leng=
th (Lx=C2=A0+ Ly).=C2=A0 You also need to apply a circular shift.=C2=A0 Her=
e is MATLAB code that shows the equivalence. For long sequences, it might c=
onsume less FPGA resources to implement in the frequency domain using FFT/I=
FFT pairs.<div><br><div><font face=3D"monospace">&gt;&gt; L =3D 500;<br>&gt=
;&gt; x =3D randn(L,1) + 1i*randn(L,1);<br>&gt;&gt; y =3D randn(L,1) + 1i*r=
andn(L,1);<br>&gt;&gt; z =3D xcorr(x,y);<br>&gt;&gt; Lfft =3D 2^nextpow2(2*=
L-1);<br>&gt;&gt; z2 =3D circshift(ifft(fft(x,Lfft).*conj(fft(y,Lfft)),Lfft=
),L-1);<br>&gt;&gt; plot(abs(z-z2(1:2*L-1)))</font><br></div></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, =
Feb 25, 2022 at 2:30 AM sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com=
">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Thanks, I know =
that I can use FFT but I want to implement=C2=A0Xcorrelate like xcorr Matla=
b directly...as an independent RFNOC blocks<div style=3D"outline:none;paddi=
ng:10px 0px;width:22px;margin:2px 0px 0px"><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 23, 2022=
 at 10:56 AM sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com" target=3D=
"_blank">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks, I know that I can=
 use FFT but I want to implement=C2=A0Xcorrelate like xcorr matlab directly=
...as a=C2=A0 independent RFNOC blocks<div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 21, 2022=
 at 7:40 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_b=
lank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">is there a specific function (such as=
 MATLAB &#39;xcorr&#39;) you want to implement?=C2=A0 You can implement &#3=
9;cconv&#39; with a pair of FFT/IFFT and complex multiplication.=C2=A0 If y=
ou zero-pad and use 2x length FFTs, you can alternatively obtain linear con=
volution using an overlap-and-add configuration.=C2=A0 I haven&#39;t looked=
 at &#39;xcorr&#39; specifically, but my guess is that you could do what yo=
u want with an FFT/IFFT pair.<div>Rob</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 21, 2022 at 6:36 AM =
sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stac=
kprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">How can create an RFNOC correlate bloc=
k for USRP?<div>This thread is created to share results on searching how we=
 can correlate RFNOC blocks...</div><div>Anyone that had an idea, I&#39;m g=
lad=C2=A0to hear it...</div><div>thanks in advance</div><div><br></div></di=
v>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--000000000000bd9e2805d8d84b35--

--===============5354583708650935583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5354583708650935583==--
