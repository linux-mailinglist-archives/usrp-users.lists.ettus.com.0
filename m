Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A10DA4CF380
	for <lists+usrp-users@lfdr.de>; Mon,  7 Mar 2022 09:25:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C747384744
	for <lists+usrp-users@lfdr.de>; Mon,  7 Mar 2022 03:25:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lA/ZyOAV";
	dkim-atps=neutral
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id D9C5D384744
	for <usrp-users@lists.ettus.com>; Mon,  7 Mar 2022 03:24:47 -0500 (EST)
Received: by mail-yb1-f178.google.com with SMTP id l2so9863116ybe.8
        for <usrp-users@lists.ettus.com>; Mon, 07 Mar 2022 00:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Jx86Z61OeLHiI2Pg/HQz+JCmognDM8zbS8rIl4r1MEg=;
        b=lA/ZyOAVdlgj0vLivwWveZpGWQin1NRPLyPaxJg7tFcA1MmUDLaGk6Q92VRl4Ks+Os
         aw1L72upv51STy3gyOe+u9i6KCO6f6Z/URfoJqs4CYe+/+K5ZCNafEeeRdj0q+77n9FK
         loBKKww5FZO96tFwWAvuq6uf24b9qyn8iY/B+PGAMoNmH5mlLx5lq8mHxqge+HE8u/xH
         Emz8qjE0/a4QzLN2CPZXxv7szLzo9/3027ZkTLWhtXY6BVMG8UDo1BEfDl8lH24FgUeB
         +oSzDWnD+YDOGTaPUnUKy0oKAu7TXO1NJvVHyoQIYOj2A2MaZBEt/ei7CF7DTLT+CXEh
         qXHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Jx86Z61OeLHiI2Pg/HQz+JCmognDM8zbS8rIl4r1MEg=;
        b=lilP8fYoZw9g8Q7YFnfE9CB2ysY6TbZt8zKfQvg3wM69cCeuViuJZDh4m0ZMWprOrB
         acvM7hzIR5I9CsaXAbK36iJZPFX7ZN5L5GQB5fOeQ29cqvmQwZ1UuJ5ZCZe5zj7qWl+Q
         Lle84va5gbKylSKNTrclrub5f65ILjLVPptl0PazfIyfjDUkQz/Oa7pxvAllyQWV1k6o
         FDb6Hr8LR8uXeHBDgitXuGHVf71jU1bgq1A8ek3NiZmtwyQWO7ph/R3ne65ymMNhAjhl
         93gSdjvMBTomCJC99psXiTkeV5L4ngcuToTqse8NIuocIaViXLtIBfh/HYIPit+bJHHL
         K1dA==
X-Gm-Message-State: AOAM532Pr4fpo45MnuWiN3UvL+N2XAOy60iGFSP8QSKWpCTPcqli8HnY
	SHl25W4JANM1uWf9DjONS7fg+ilE4rW5XUx6zLGdWFvbW8t2NACp
X-Google-Smtp-Source: ABdhPJw8NncNwU4N2fZQB8GUA9+Wn0IU10RyM4xCKoSRa6K/dP52kwIcRfyVD7Aixys6Px0X2WR0bQj96KDxS9Gd4XE=
X-Received: by 2002:a25:cbc2:0:b0:628:e1cd:60d1 with SMTP id
 b185-20020a25cbc2000000b00628e1cd60d1mr7157180ybg.368.1646641486561; Mon, 07
 Mar 2022 00:24:46 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PsLQHmSSRXKqZfuHZ+FgUyMV4Jtv5qVC+s75jLttmSAAQ@mail.gmail.com>
 <CAB__hTSJe7puQo0EoqbWZ2YBOy7wGXfwYUTqAbQaHJnnmSn5-Q@mail.gmail.com>
 <CAA=S3Pup0OazTdNr_SG=TBo4cKMCA8QFTnatU02wyQJkLHVUGA@mail.gmail.com>
 <CAA=S3Ps_XBpgjPJ7r3FqKK6iD_h+gCJgAs0Ny6=W9s6fmmiYtg@mail.gmail.com> <CAB__hTRcMAFJ4-=TLFXzYdPBuNUpqo5iVBKXFN+dAhL2eXp90A@mail.gmail.com>
In-Reply-To: <CAB__hTRcMAFJ4-=TLFXzYdPBuNUpqo5iVBKXFN+dAhL2eXp90A@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Mon, 7 Mar 2022 11:52:45 +0330
Message-ID: <CAA=S3PvpE69KaQb80y2xVym8RtCZMC40KEYYpzwc19CmxXPoSA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: X36SE5XUJU2VCM2NOON3W4HLLP3J7URO
X-Message-ID-Hash: X36SE5XUJU2VCM2NOON3W4HLLP3J7URO
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can create an RFNOC correlate block for USRP?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X36SE5XUJU2VCM2NOON3W4HLLP3J7URO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5230812095696238256=="

--===============5230812095696238256==
Content-Type: multipart/alternative; boundary="000000000000e1038e05d99c98ad"

--000000000000e1038e05d99c98ad
Content-Type: text/plain; charset="UTF-8"

Awesome, thanks! But how can implement xcorrelate in RFNOC blocks??  It is
very hard to implemented in Verilog


On Fri, Feb 25, 2022 at 5:43 PM Rob Kossler <rkossler@nd.edu> wrote:

> The MATLAB function xcorr() can be implemented in the time domain as a
> convolution (or similarly an FIR filter) or in the frequency domain as a
> multiplication. So, if the function is "z = xcorr(x,y)", then you can
> implement this as "z = ifft(X.*conj(Y))" where X and Y are the FFTs of x
> and y but with the FFT zero-padded to have length (Lx + Ly).  You also need
> to apply a circular shift.  Here is MATLAB code that shows the equivalence.
> For long sequences, it might consume less FPGA resources to implement in
> the frequency domain using FFT/IFFT pairs.
>
> >> L = 500;
> >> x = randn(L,1) + 1i*randn(L,1);
> >> y = randn(L,1) + 1i*randn(L,1);
> >> z = xcorr(x,y);
> >> Lfft = 2^nextpow2(2*L-1);
> >> z2 = circshift(ifft(fft(x,Lfft).*conj(fft(y,Lfft)),Lfft),L-1);
> >> plot(abs(z-z2(1:2*L-1)))
>
> On Fri, Feb 25, 2022 at 2:30 AM sp h <stackprogramer@gmail.com> wrote:
>
>> Thanks, I know that I can use FFT but I want to implement Xcorrelate like
>> xcorr Matlab directly...as an independent RFNOC blocks
>>
>>
>> On Wed, Feb 23, 2022 at 10:56 AM sp h <stackprogramer@gmail.com> wrote:
>>
>>> Thanks, I know that I can use FFT but I want to implement Xcorrelate
>>> like xcorr matlab directly...as a  independent RFNOC blocks
>>>
>>>
>>> On Mon, Feb 21, 2022 at 7:40 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> is there a specific function (such as MATLAB 'xcorr') you want to
>>>> implement?  You can implement 'cconv' with a pair of FFT/IFFT and complex
>>>> multiplication.  If you zero-pad and use 2x length FFTs, you can
>>>> alternatively obtain linear convolution using an overlap-and-add
>>>> configuration.  I haven't looked at 'xcorr' specifically, but my guess is
>>>> that you could do what you want with an FFT/IFFT pair.
>>>> Rob
>>>>
>>>> On Mon, Feb 21, 2022 at 6:36 AM sp h <stackprogramer@gmail.com> wrote:
>>>>
>>>>> How can create an RFNOC correlate block for USRP?
>>>>> This thread is created to share results on searching how we can
>>>>> correlate RFNOC blocks...
>>>>> Anyone that had an idea, I'm glad to hear it...
>>>>> thanks in advance
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>>

--000000000000e1038e05d99c98ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Awesome, thanks! But how can implement=C2=A0xcorrelate in =
RFNOC blocks??=C2=A0 It is very hard to implemented in Verilog<br><div><br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Fri, Feb 25, 2022 at 5:43 PM Rob Kossler &lt;<a href=3D"mailto:rko=
ssler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">The MATLAB function xcorr() c=
an be implemented in the time domain as a convolution (or similarly an FIR =
filter) or in the frequency domain as a multiplication. So, if the function=
 is &quot;z =3D xcorr(x,y)&quot;, then you can implement this as &quot;z =
=3D ifft(X.*conj(Y))&quot; where X and Y are the FFTs of x and y but with t=
he FFT zero-padded to have length (Lx=C2=A0+ Ly).=C2=A0 You also need to ap=
ply a circular shift.=C2=A0 Here is MATLAB code that shows the equivalence.=
 For long sequences, it might consume less FPGA resources to implement in t=
he frequency domain using FFT/IFFT pairs.<div><br><div><font face=3D"monosp=
ace">&gt;&gt; L =3D 500;<br>&gt;&gt; x =3D randn(L,1) + 1i*randn(L,1);<br>&=
gt;&gt; y =3D randn(L,1) + 1i*randn(L,1);<br>&gt;&gt; z =3D xcorr(x,y);<br>=
&gt;&gt; Lfft =3D 2^nextpow2(2*L-1);<br>&gt;&gt; z2 =3D circshift(ifft(fft(=
x,Lfft).*conj(fft(y,Lfft)),Lfft),L-1);<br>&gt;&gt; plot(abs(z-z2(1:2*L-1)))=
</font><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Fri, Feb 25, 2022 at 2:30 AM sp h &lt;<a href=3D"=
mailto:stackprogramer@gmail.com" target=3D"_blank">stackprogramer@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div dir=3D"ltr">Thanks, I know that I can use FFT but I w=
ant to implement=C2=A0Xcorrelate like xcorr Matlab directly...as an indepen=
dent RFNOC blocks<div style=3D"outline:none;padding:10px 0px;width:22px;mar=
gin:2px 0px 0px"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Feb 23, 2022 at 10:56 AM sp h &lt;<a hre=
f=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackprogramer@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">Thanks, I know that I can use FFT but I want to imple=
ment=C2=A0Xcorrelate like xcorr matlab directly...as a=C2=A0 independent RF=
NOC blocks<div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Mon, Feb 21, 2022 at 7:40 PM Rob Kossler &lt;<a=
 href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">is there a specific function (such as MATLAB &#39;xcorr&#39;) you =
want to implement?=C2=A0 You can implement &#39;cconv&#39; with a pair of F=
FT/IFFT and complex multiplication.=C2=A0 If you zero-pad and use 2x length=
 FFTs, you can alternatively obtain linear convolution using an overlap-and=
-add configuration.=C2=A0 I haven&#39;t looked at &#39;xcorr&#39; specifica=
lly, but my guess is that you could do what you want with an FFT/IFFT pair.=
<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Feb 21, 2022 at 6:36 AM sp h &lt;<a href=3D"mailto:=
stackprogramer@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">How can create an RFNOC correlate block for USRP?<div>This thread=
 is created to share results on searching how we can correlate RFNOC blocks=
...</div><div>Anyone that had an idea, I&#39;m glad=C2=A0to hear it...</div=
><div>thanks in advance</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--000000000000e1038e05d99c98ad--

--===============5230812095696238256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5230812095696238256==--
