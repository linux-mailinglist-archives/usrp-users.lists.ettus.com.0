Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B95964D03B9
	for <lists+usrp-users@lfdr.de>; Mon,  7 Mar 2022 17:10:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A105384870
	for <lists+usrp-users@lfdr.de>; Mon,  7 Mar 2022 11:10:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ST6luKuf";
	dkim-atps=neutral
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 7CAA1384A53
	for <usrp-users@lists.ettus.com>; Mon,  7 Mar 2022 11:09:03 -0500 (EST)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-2d07ae0b1c0so169763027b3.2
        for <usrp-users@lists.ettus.com>; Mon, 07 Mar 2022 08:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8jk7GOwWzqFMz92mSIAe/IzkSP/tZPf4E5b+Z/5a3pM=;
        b=ST6luKufd6xK1n3wQs/voktCPoSxM/6V8/Hzq1fg5F0rhfIK/xlwpWa5lkH3cfWPa9
         9pPZ8e1pln/YKRM5XJJmjqusUclKw4HZMV07+4ycDF7CUYfdnO8ZT7eWm8BR39nlNC2C
         ctF0ERu0TiXL2KxWBaKA+2ctcvwCoX5cDxnVoHNS/y3DbdmtblTaFRbvnrpDYGNIXRYh
         ceF0w5iRqclJozorHwt3ewOQT5ctepom/VmxxZdZ9USvEcaCHMnCDPknMi+JnqIIeYAn
         Vwv25Ru86YLITjHGd7s1vWoCw1DT6MiD8OtuABx7UPSw9FVSOLNq9CCSuvEbBABRmL3B
         HywA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8jk7GOwWzqFMz92mSIAe/IzkSP/tZPf4E5b+Z/5a3pM=;
        b=42HQPrhjlCEdhFiXjQms6p0IbTKgfxloV6SjtVwlK3QnY2avldKhnzVFFFTqaSkWQu
         bs+jRAPNes/PgRNA/VbUzu1bd7qhOEVQ2K/IEj72vh2XoJE7yq+qiSOVTMVPtAuH8ghn
         SbSXe/f0Z+f3UFfV45/0rMJN+Q2vdibYX9pvf7PNBo+xSEZ+9Vrmz3hYigU3eHaDP/5B
         /q09waG/P8v5Andl1K88H+vYBjILUe0jRQ51BQ7jEemOj3lLuK2vPeLn4B2EsuQcUuRZ
         CeY4v0vfbskKoqe/UeuXKXlzJacp0eyaBwocgARKUJpPTDRSiAL33yQM12kCi5vmhWtg
         2Qag==
X-Gm-Message-State: AOAM530bhSHMDp2lAJpFOed81ijnOLRu9WuLvbFRGT9OVEyrd6Q0hS1d
	07elOqcMPK9lLLR6gPUmuswEyol0IRp0OC89NALEpA==
X-Google-Smtp-Source: ABdhPJyJxQphTBrMp3bQIUMR8tBJN1GRqxwqtaa33hrhREBsVbgV5q5Y9vFiSJl+NL0YfHW/Vb3bxGo68IMM3j8qyPw=
X-Received: by 2002:a81:3544:0:b0:2dc:2cf:6bab with SMTP id
 c65-20020a813544000000b002dc02cf6babmr9088440ywa.369.1646669342424; Mon, 07
 Mar 2022 08:09:02 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PsLQHmSSRXKqZfuHZ+FgUyMV4Jtv5qVC+s75jLttmSAAQ@mail.gmail.com>
 <CAB__hTSJe7puQo0EoqbWZ2YBOy7wGXfwYUTqAbQaHJnnmSn5-Q@mail.gmail.com>
 <CAA=S3Pup0OazTdNr_SG=TBo4cKMCA8QFTnatU02wyQJkLHVUGA@mail.gmail.com>
 <CAA=S3Ps_XBpgjPJ7r3FqKK6iD_h+gCJgAs0Ny6=W9s6fmmiYtg@mail.gmail.com>
 <CAB__hTRcMAFJ4-=TLFXzYdPBuNUpqo5iVBKXFN+dAhL2eXp90A@mail.gmail.com> <CAA=S3PvpE69KaQb80y2xVym8RtCZMC40KEYYpzwc19CmxXPoSA@mail.gmail.com>
In-Reply-To: <CAA=S3PvpE69KaQb80y2xVym8RtCZMC40KEYYpzwc19CmxXPoSA@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 7 Mar 2022 11:08:51 -0500
Message-ID: <CAB__hTRk=KXTKXX1D8wszStjmquLFkRNFzTtR8OfXW0a0oyzWQ@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: L344WTCTRWPPCKCFITS77CVPXYZLV6IV
X-Message-ID-Hash: L344WTCTRWPPCKCFITS77CVPXYZLV6IV
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can create an RFNOC correlate block for USRP?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L344WTCTRWPPCKCFITS77CVPXYZLV6IV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0200152271805378628=="

--===============0200152271805378628==
Content-Type: multipart/alternative; boundary="00000000000038136605d9a315ba"

--00000000000038136605d9a315ba
Content-Type: text/plain; charset="UTF-8"

It's not clear to me what you want to implement on the FPGA. The USRP
typically digitizes and streams continuously. It is not possible to
implement a cross correlation of infinite length sequences. Even if finite,
you would need to buffer all of the finite samples in order to perform the
xcorr.  So, perhaps you can discuss further what you are hoping to
implement.
Rob

On Mon, Mar 7, 2022 at 3:24 AM sp h <stackprogramer@gmail.com> wrote:

> Awesome, thanks! But how can implement xcorrelate in RFNOC blocks??  It is
> very hard to implemented in Verilog
>
>
> On Fri, Feb 25, 2022 at 5:43 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> The MATLAB function xcorr() can be implemented in the time domain as a
>> convolution (or similarly an FIR filter) or in the frequency domain as a
>> multiplication. So, if the function is "z = xcorr(x,y)", then you can
>> implement this as "z = ifft(X.*conj(Y))" where X and Y are the FFTs of x
>> and y but with the FFT zero-padded to have length (Lx + Ly).  You also need
>> to apply a circular shift.  Here is MATLAB code that shows the equivalence.
>> For long sequences, it might consume less FPGA resources to implement in
>> the frequency domain using FFT/IFFT pairs.
>>
>> >> L = 500;
>> >> x = randn(L,1) + 1i*randn(L,1);
>> >> y = randn(L,1) + 1i*randn(L,1);
>> >> z = xcorr(x,y);
>> >> Lfft = 2^nextpow2(2*L-1);
>> >> z2 = circshift(ifft(fft(x,Lfft).*conj(fft(y,Lfft)),Lfft),L-1);
>> >> plot(abs(z-z2(1:2*L-1)))
>>
>> On Fri, Feb 25, 2022 at 2:30 AM sp h <stackprogramer@gmail.com> wrote:
>>
>>> Thanks, I know that I can use FFT but I want to implement Xcorrelate
>>> like xcorr Matlab directly...as an independent RFNOC blocks
>>>
>>>
>>> On Wed, Feb 23, 2022 at 10:56 AM sp h <stackprogramer@gmail.com> wrote:
>>>
>>>> Thanks, I know that I can use FFT but I want to implement Xcorrelate
>>>> like xcorr matlab directly...as a  independent RFNOC blocks
>>>>
>>>>
>>>> On Mon, Feb 21, 2022 at 7:40 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>> is there a specific function (such as MATLAB 'xcorr') you want to
>>>>> implement?  You can implement 'cconv' with a pair of FFT/IFFT and complex
>>>>> multiplication.  If you zero-pad and use 2x length FFTs, you can
>>>>> alternatively obtain linear convolution using an overlap-and-add
>>>>> configuration.  I haven't looked at 'xcorr' specifically, but my guess is
>>>>> that you could do what you want with an FFT/IFFT pair.
>>>>> Rob
>>>>>
>>>>> On Mon, Feb 21, 2022 at 6:36 AM sp h <stackprogramer@gmail.com> wrote:
>>>>>
>>>>>> How can create an RFNOC correlate block for USRP?
>>>>>> This thread is created to share results on searching how we can
>>>>>> correlate RFNOC blocks...
>>>>>> Anyone that had an idea, I'm glad to hear it...
>>>>>> thanks in advance
>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>>

--00000000000038136605d9a315ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s not clear to me what you want to implement on the=
 FPGA. The USRP typically digitizes and streams continuously. It is not pos=
sible to implement a cross correlation of infinite length sequences. Even i=
f finite, you would need to buffer all of the finite samples in order to pe=
rform the xcorr.=C2=A0 So, perhaps you can discuss further what you are hop=
ing to implement.<div>Rob</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Mon, Mar 7, 2022 at 3:24 AM sp h &lt;<a h=
ref=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr">Awesome, thanks! But how can implement=C2=A0xcorrelate in RFNOC block=
s??=C2=A0 It is very hard to implemented in Verilog<br><div><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, Feb 25, 2022 at 5:43 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.ed=
u" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">The MATLAB function xc=
orr() can be implemented in the time domain as a convolution (or similarly =
an FIR filter) or in the frequency domain as a multiplication. So, if the f=
unction is &quot;z =3D xcorr(x,y)&quot;, then you can implement this as &qu=
ot;z =3D ifft(X.*conj(Y))&quot; where X and Y are the FFTs of x and y but w=
ith the FFT zero-padded to have length (Lx=C2=A0+ Ly).=C2=A0 You also need =
to apply a circular shift.=C2=A0 Here is MATLAB code that shows the equival=
ence. For long sequences, it might consume less FPGA resources to implement=
 in the frequency domain using FFT/IFFT pairs.<div><br><div><font face=3D"m=
onospace">&gt;&gt; L =3D 500;<br>&gt;&gt; x =3D randn(L,1) + 1i*randn(L,1);=
<br>&gt;&gt; y =3D randn(L,1) + 1i*randn(L,1);<br>&gt;&gt; z =3D xcorr(x,y)=
;<br>&gt;&gt; Lfft =3D 2^nextpow2(2*L-1);<br>&gt;&gt; z2 =3D circshift(ifft=
(fft(x,Lfft).*conj(fft(y,Lfft)),Lfft),L-1);<br>&gt;&gt; plot(abs(z-z2(1:2*L=
-1)))</font><br></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Feb 25, 2022 at 2:30 AM sp h &lt;<a h=
ref=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackprogramer@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Thanks, I know that I can use FFT =
but I want to implement=C2=A0Xcorrelate like xcorr Matlab directly...as an =
independent RFNOC blocks<div style=3D"outline:none;padding:10px 0px;width:2=
2px;margin:2px 0px 0px"><br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 23, 2022 at 10:56 AM sp h &lt=
;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackprogram=
er@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr">Thanks, I know that I can use FFT but I want t=
o implement=C2=A0Xcorrelate like xcorr matlab directly...as a=C2=A0 indepen=
dent RFNOC blocks<div><br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 21, 2022 at 7:40 PM Rob Kossler=
 &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">is there a specific function (such as MATLAB &#39;xcorr&#39;=
) you want to implement?=C2=A0 You can implement &#39;cconv&#39; with a pai=
r of FFT/IFFT and complex multiplication.=C2=A0 If you zero-pad and use 2x =
length FFTs, you can alternatively obtain linear convolution using an overl=
ap-and-add configuration.=C2=A0 I haven&#39;t looked at &#39;xcorr&#39; spe=
cifically, but my guess is that you could do what you want with an FFT/IFFT=
 pair.<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Mon, Feb 21, 2022 at 6:36 AM sp h &lt;<a href=3D"mai=
lto:stackprogramer@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">How can create an RFNOC correlate block for USRP?<div>This th=
read is created to share results on searching how we can correlate RFNOC bl=
ocks...</div><div>Anyone that had an idea, I&#39;m glad=C2=A0to hear it...<=
/div><div>thanks in advance</div><div><br></div></div>
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
</blockquote></div>

--00000000000038136605d9a315ba--

--===============0200152271805378628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0200152271805378628==--
