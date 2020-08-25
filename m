Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D455251DEB
	for <lists+usrp-users@lfdr.de>; Tue, 25 Aug 2020 19:14:16 +0200 (CEST)
Received: from [::1] (port=39686 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAcWT-0008UY-6A; Tue, 25 Aug 2020 13:14:13 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:39094)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kAcWO-0008K4-JR
 for usrp-users@lists.ettus.com; Tue, 25 Aug 2020 13:14:08 -0400
Received: by mail-oi1-f180.google.com with SMTP id z195so9242554oia.6
 for <usrp-users@lists.ettus.com>; Tue, 25 Aug 2020 10:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=itDsnPvYTszl3cbQkZ8Xb19GXsj3MF2Ylzi4uHsIyT0=;
 b=QVQKkyPJ75W9cgkAh+SHgudqoqTUqyUs2GhRyFXFPArwteKHnTvKgJLfK7S3taKTfO
 /dKm6KjdmuazE7P9Zywub6JtjwTjlD+JSXlVqgMIii1vMMlVLbFy+wV9VjZUT2Nl+97D
 /dLhGZNm8itgHqmnPj9m3uaUwSJHfY/iUMO7zWhovgDAY4MVubqR2HmmZuqjG1zs/ySb
 8yrtkSEIcC0OdcYrcNZ5zzXC2hzgTVXmQUmq+K1ZenQhfFKPF7jlyD9FSwHkYNWpQ1jO
 crM6WtQkBX9zWS/KMASTeMp1vgr0hA4ruiA5iKv1hWTHxW2cxEEe/rIglC7tnHnVQazt
 +kcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=itDsnPvYTszl3cbQkZ8Xb19GXsj3MF2Ylzi4uHsIyT0=;
 b=UUYDgU7W9Gb3fQ6JeENVK6fFQ3j8FDFVCHED2C03UVm8iUmLckSHA3xnF50ggUlrvV
 FEYxcZgEQ5W5EgBrU0zEs0CAw6lQKXSOSR+7QCk2UsRHqYT39rrojzNN+r9Ynt1406Ks
 wyNryKVBumgLPUVrv8Hu1WF5z9JGnksLTN4ZyXnLuNbmfhpAYd0ai1TGOmgb695g5y6p
 7GoAH1atZVsM/oAslCYYkirLNLt7rn+70si7VdbYMA/1ldZr9vL4JI0u/P+dBf+fsy98
 g6ybqXeHwgC72KeodhRb9i9hlRnz5P9+0llCyS3GcgW4E91hOQlqfUfYJz+DxdKj3tDn
 0j2Q==
X-Gm-Message-State: AOAM5304sWBkyNum2VRKLagyHs1v0xyJeo/X68rWX3A+UQMP2aNByC80
 i3M62uAvmw+R9z12GnN5GIa1tBAlu7d3MP3nnQFwSg==
X-Google-Smtp-Source: ABdhPJw9WaYpnkQnx6tQDLhiQktaKGRn4nBRdaQIjPDTwf1M9pWoAdaBwQkEnu2MmxtY4oGSxHJkeZpAm58IiPTDVh0=
X-Received: by 2002:a05:6808:4d3:: with SMTP id
 a19mr1546926oie.150.1598375607674; 
 Tue, 25 Aug 2020 10:13:27 -0700 (PDT)
MIME-Version: 1.0
References: <CACjmV_=fW9LdJPb0TtAgP_QH19cSDD13BgRkvDzOd1JohUJ8TQ@mail.gmail.com>
 <CACjmV_kMaOvLJuaYv8rj0o1QcMjW2+9w1x9BK6BxHjufM348WA@mail.gmail.com>
 <CAB__hTTxVNg4WU8x3Pec2Q1M9HwWGj+_xHCaFFJMmrWSTnO0Dw@mail.gmail.com>
 <CACjmV_=WHoqSYzjMW4aBBvmFFkJNVAwobAWbw6vzuvty_b8QyQ@mail.gmail.com>
In-Reply-To: <CACjmV_=WHoqSYzjMW4aBBvmFFkJNVAwobAWbw6vzuvty_b8QyQ@mail.gmail.com>
Date: Tue, 25 Aug 2020 13:13:16 -0400
Message-ID: <CAB__hTRjGBQDXxmeTigO3nZnu+5P5Y=q4GdYnOX1mHw3rW233g@mail.gmail.com>
To: Damon qiu <qiu.guowang007@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] issue about subdev spec
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
Content-Type: multipart/mixed; boundary="===============1107248684846859021=="
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

--===============1107248684846859021==
Content-Type: multipart/alternative; boundary="00000000000050681705adb6d2e2"

--00000000000050681705adb6d2e2
Content-Type: text/plain; charset="UTF-8"

Hi Damon,
Transmitting at 200 MS/s is very challenging. I'm assuming that you are
using two X310s with only 1 channel active on each X310 because it is not
possible to transmit 2 channels @ 200 MS/s with a single X310 using
cpu-to-host streaming. Is this correct?

Is it possible for your transmission to be implemented in the FPGA using
either a fixed length arbitrary waveform (such as with the Replay block) or
with a on-the-fly calculated waveform (such as with SigGen block or perhaps
your own custom block)? Or does your transmission require continuously
updated calculations on the CPU?
Rob

On Tue, Aug 25, 2020 at 12:36 PM Damon qiu <qiu.guowang007@gmail.com> wrote:

> Hi Rob,
>
> Thank you very much for your reply.I just read through your discussion
> with Andreas about this issue.  However, your temporary solution is not
> suitable for my case. I need to transmit signals in two channels with
> 200Msps sample rate for each channel. I can only wait for the Ettus
> engineers to fix this bug. It's not sure whether Ettus engineers are
> already investigating the bug, as there are no official replies to two
> threads about this bug.
>
> Best regards,
> Damon
>
> On Tue, 25 Aug 2020 at 03:35, Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Damon,
>> See my other post today regarding "skip_dram=1".  I believe there is a
>> bug.  But, if you can skip the Dma FIFO (if your sample rate is low
>> enough), you can get around the bug.
>> Rob
>>
>> On Mon, Aug 24, 2020 at 3:31 PM Damon qiu via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi all,
>>>
>>> After repeated tests, we feel that two of the four channels of two
>>> devices will be randomly selected, and the probability of choosing the
>>> correct channel is very low. It must be a bug.
>>>
>>> Hi Macus,
>>>
>>> > try:
>>> >
>>> > stream_args.channels.push_back(0);
>>> > stream_args.channels.push_back(1):
>>> >
>>> > Instead of your:
>>> >
>>> > stream_args.channels = {0,1};
>>>
>>> > I think these should be equivalent, but my C++ fluency is low...
>>>
>>> Thank you for your reply, but your suggestion didn't work. Please don't
>>> forget to cc it to me next time.
>>>
>>> Best regards,
>>> Damon
>>>
>>>
>>>
>>> On Fri, 7 Aug 2020 at 01:32, Damon qiu <qiu.guowang007@gmail.com> wrote:
>>>
>>>> Hi all,
>>>>
>>>> I am using two USRP X310s to transmit signals on 2 channels. The two
>>>> USRP are synchronized through a octoclock-g.
>>>>
>>>> A multi_usrp object is used to control those two USRP, device address
>>>> is set to addr0=192.168.40.2,addr1=192.168.60.2. I want to set two USRP
>>>> transmitting signal at RFA at the same time. I tried two ways to set up the
>>>> tx channel and subdev spec:
>>>>
>>>> Method 1: The TX frontend specification is set to A:0 for both two
>>>> mboard.
>>>> d_dev->set_tx_subdev_spec("A:0");
>>>> or
>>>> d_dev->set_tx_subdev_spec("A:0", 0);
>>>> d_dev->set_tx_subdev_spec("A:0", 1);
>>>>
>>>> uhd::stream_args_t stream_args(tx_cpu, tx_otw);
>>>> stream_args.channels = {0, 1};
>>>> uhd::tx_streamer::sptr tx_stream = d_dev->get_tx_stream(stream_args);
>>>>
>>>> Method 2: The TX frontend specification is set to "A:0 B:0"for both two
>>>> mboard.
>>>> d_dev->set_tx_subdev_spec("A:0 B:0");
>>>> or
>>>> d_dev->set_tx_subdev_spec("A:0 B:0", 0);
>>>> d_dev->set_tx_subdev_spec("A:0 B:0", 1);
>>>>
>>>> uhd::stream_args_t stream_args(tx_cpu, tx_otw);
>>>> stream_args.channels = {0, 2};
>>>> uhd::tx_streamer::sptr tx_stream = d_dev->get_tx_stream(stream_args);
>>>>
>>>> In the above two methods, there is a certain probability (about 10% to
>>>> 30%) that the two transmission channels are on the same motherboard. I
>>>> guess this is a bug of UHD.
>>>>
>>>> OS: Ubuntu 18.04
>>>> UHD: UHD-3.15.LTS
>>>>
>>>> Please CC me as I can only receive the daily digest of the mailing list.
>>>>
>>>> Best regards,
>>>> Damon
>>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--00000000000050681705adb6d2e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Damon,<div>Transmitting at 200 MS/s is=
 very challenging. I&#39;m assuming that you are using two X310s with only =
1 channel active on each X310 because it is not possible to transmit 2 chan=
nels=C2=A0@ 200 MS/s with a single X310 using cpu-to-host streaming. Is thi=
s correct?</div><div><br></div><div>Is it possible for your transmission to=
 be implemented in the FPGA using either a fixed length arbitrary waveform =
(such as with the Replay block) or with a on-the-fly calculated waveform (s=
uch as with SigGen block or perhaps your own custom block)? Or does your tr=
ansmission require continuously updated calculations on the CPU?</div><div>=
Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Tue, Aug 25, 2020 at 12:36 PM Damon qiu &lt;<a href=3D"mailto:q=
iu.guowang007@gmail.com">qiu.guowang007@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr">Hi Rob,<div><br></div><div>Thank you very much for your reply.I ju=
st read through=C2=A0your discussion with Andreas about this issue.=C2=A0 H=
owever, your temporary solution is not suitable for my case. I need to tran=
smit signals in two channels with 200Msps=C2=A0sample rate for each channel=
. I can only wait for the Ettus engineers to fix this bug. It&#39;s not sur=
e whether Ettus engineers are already investigating the bug, as there are n=
o official replies to two threads about this bug.</div><br><div>Best regard=
s,</div><div>Damon</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, 25 Aug 2020 at 03:35, Rob Kossler &lt;<a hr=
ef=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div dir=3D"ltr">Hi Damon,<div>See my other post today regarding &quot=
;skip_dram=3D1&quot;.=C2=A0 I believe there is a bug.=C2=A0 But, if you can=
 skip the Dma FIFO (if your sample rate is low enough), you can get around =
the bug.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Aug 24, 2020 at 3:31 PM Damon qiu via=
 USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi all,<=
br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">After repeated tests, =
we feel that two of the four channels of two devices will be randomly selec=
ted, and the probability of choosing the correct channel is very low. It mu=
st be a bug.=C2=A0</div><div dir=3D"ltr"><br></div><div>Hi Macus,</div><div=
><br></div><div>&gt; try:<br>&gt;=C2=A0<br>&gt; stream_args.channels.push_b=
ack(0);<br>&gt; stream_args.channels.push_back(1):<br>&gt;=C2=A0<br>&gt; In=
stead of your:<br>&gt;=C2=A0<br>&gt; stream_args.channels =3D {0,1};<br><br=
>&gt; I think these should be equivalent, but my C++ fluency is low...<br><=
/div><div><br></div><div>Thank you for your reply, but your suggestion didn=
&#39;t work. Please don&#39;t forget to cc it to me next time.</div><div><b=
r></div><div>Best regards,</div><div>Damon</div><div dir=3D"ltr"><br></div>=
<div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, 7 Aug 2020 at 01:32, Damon qiu &lt;<a href=3D"=
mailto:qiu.guowang007@gmail.com" target=3D"_blank">qiu.guowang007@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">Hi all,<br><br>I am using two USRP X310s=C2=A0to transmit =
signals on 2 channels. The two USRP are synchronized through a octoclock-g.=
<br><br>A multi_usrp object is used to control those two USRP, device addre=
ss is set to addr0=3D192.168.40.2,addr1=3D192.168.60.2. I want to set two U=
SRP transmitting=C2=A0signal at RFA at the same time. I tried two ways to s=
et up the tx channel and subdev spec:<br><br>Method 1: The TX frontend spec=
ification is set to A:0 for both two mboard.<br>d_dev-&gt;set_tx_subdev_spe=
c(&quot;A:0&quot;);<br>or<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0&quot;, =
0);<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0&quot;, 1);<br><br>uhd::stream=
_args_t stream_args(tx_cpu, tx_otw);<br>stream_args.channels =3D {0, 1};<br=
>uhd::tx_streamer::sptr tx_stream =3D d_dev-&gt;get_tx_stream(stream_args);=
<br><br>Method 2: The TX frontend specification is set to &quot;A:0 B:0&quo=
t;for both two mboard.<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0 B:0&quot;)=
;<br>or<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0 B:0&quot;, 0);<br>d_dev-&=
gt;set_tx_subdev_spec(&quot;A:0 B:0&quot;, 1);<br><br>uhd::stream_args_t st=
ream_args(tx_cpu, tx_otw);<br>stream_args.channels =3D {0, 2};<br>uhd::tx_s=
treamer::sptr tx_stream =3D d_dev-&gt;get_tx_stream(stream_args);<br><br>In=
 the above two methods, there is a certain probability (about 10% to 30%) t=
hat the two transmission channels are on the same motherboard. I guess this=
 is a bug of UHD.<br><br>OS: Ubuntu 18.04<br>UHD: UHD-3.15.LTS<br><br>Pleas=
e CC me as I can only receive the daily digest of the mailing list.<br><br>=
Best regards,<br>Damon<br></div>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div></div>
</blockquote></div></div>

--00000000000050681705adb6d2e2--


--===============1107248684846859021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1107248684846859021==--

