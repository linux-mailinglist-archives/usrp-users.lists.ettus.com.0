Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3062C364D
	for <lists+usrp-users@lfdr.de>; Wed, 25 Nov 2020 02:43:21 +0100 (CET)
Received: from [::1] (port=37496 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khjq3-0003jB-Ev; Tue, 24 Nov 2020 20:43:19 -0500
Received: from mail-ot1-f52.google.com ([209.85.210.52]:36784)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1khjpz-0003d9-Rk
 for usrp-users@lists.ettus.com; Tue, 24 Nov 2020 20:43:15 -0500
Received: by mail-ot1-f52.google.com with SMTP id y24so818373otk.3
 for <usrp-users@lists.ettus.com>; Tue, 24 Nov 2020 17:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q5HvfGItbZXAZPYJBZXWzxiqFxes4+uNf8zXgOAt5tE=;
 b=SMDCPxppSn3/WCUhwTMwBX639fGZ21SZT0Fnpfr9OuvTpxxX/jqc3m5dZJilV1OatB
 89Qpu47oiE97kn5VXGTFAh3ngZUxlvwmo3MfDcf/1FStWUK6bP+GTafv55KblAkFZwAt
 VioTbkzWjapzrlvE73r/Pn7cRz/uPOGGP9KSoMVRIGov+XCpaj/t2XLGENBdXcr3uIdy
 MEitg+Bvk+kMOvtbC1ThSf1AJq7y+YIBFpylzNyaohIiyksZBj2Eoq04V96qLSVzN9bp
 XrmqAGJdEqvtaBplyioMG1pI6G1klhejDqTUaeZaEg6ZCas+FFUpVBwbdrC9suErhUkG
 L2wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q5HvfGItbZXAZPYJBZXWzxiqFxes4+uNf8zXgOAt5tE=;
 b=RW/tGXeFgUPph8hM/iwlCR5ae9h/imM4MB2ofhVb6DyPWwS0pak8mE7v6hmcQVosX4
 k7Hp1dqMCTDT/Nbf7IfaJz/qXzgIejdpR/0fKoXOEtTLfq7cJ1nJ+aHLYR2q6/53yI5Z
 yQB9ZWjbOU/UQ8I2R10GCpf/kQOCJH+gpH36UrNOm8xIjgBiCkgunGicEp/+RBPnzcf1
 QDrie8eaCdzD6l8q0g3y8Y9E30JdGUKpSIoPBz3tuWO2jAfOGWtQdsznkSaz5mN7SKMe
 vRaMa5NN44s98iGKWLe+UgdSHwrQsAzGbhACU4MY+2365Zs0TcE8l6y38xUcKdc5qPwG
 RocA==
X-Gm-Message-State: AOAM531jyGUdI/GeIVyqXmD2WnVtvubAwmRfCI+KTxIQilQEpI0pvl7A
 AtF1Pr4smckDFOMyEqclnE6tWybVf9nABGsSyAL8oD7O
X-Google-Smtp-Source: ABdhPJxtouZmwTX/cAaIubT1sfKAJLgEEbNKC4xvOTDE0xN1hyfL7Nhu/IEBLKY3eHukyd+ktwmI6Zl630LmsYVy274=
X-Received: by 2002:a9d:39b7:: with SMTP id y52mr1228414otb.28.1606268555041; 
 Tue, 24 Nov 2020 17:42:35 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQV0xTxQxPmFpBO_5q8Og03MWVhieY2VnBhK9UTE5fVfZw@mail.gmail.com>
 <CAFche=gpYoYXydtJkmVaGA9xA4e7u6a7R-FdQ894W0dj=2CaaA@mail.gmail.com>
 <CAG16vQUW56L2-uJnaszSdB+xq+hfn2TkJ21xe-s3yLCb3j1pPA@mail.gmail.com>
 <CAG16vQV9o_5WiD6BbDFOQn8EDYEeVoQ2c=RJa98MYeiMC4ysdg@mail.gmail.com>
In-Reply-To: <CAG16vQV9o_5WiD6BbDFOQn8EDYEeVoQ2c=RJa98MYeiMC4ysdg@mail.gmail.com>
Date: Tue, 24 Nov 2020 19:42:27 -0600
Message-ID: <CAFche=jEF=s1uGmj_W=QeD-RVgg=eBaNmU7LPpQhjskZBWGzxg@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Fwd: FPGA RFNoC Radio block with only one channel
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============3619331754105062666=="
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

--===============3619331754105062666==
Content-Type: multipart/alternative; boundary="000000000000a3368e05b4e48a17"

--000000000000a3368e05b4e48a17
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, that's correct. There's a radio_1x64.yml you can use to get a single
channel radio. You might consider removing the FIFO if you don't need it.

Wade

On Tue, Nov 24, 2020 at 8:46 AM Maria Mu=C3=B1oz via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
>
> ---------- Forwarded message ---------
> De: Maria Mu=C3=B1oz <mamuki92@gmail.com>
> Date: lun, 23 nov 2020 a las 10:05
> Subject: Re: [USRP-users] FPGA RFNoC Radio block with only one channel
> To: Wade Fife <wade.fife@ettus.com>
>
>
> Hi Wade,
>
> Thanks for your answer that helps me a lot.
>
> I have migrated to UHD 4.0 as you suggested so just a few questions to
> make sure I have understood how the YAML file and the tool work.
>
> I want to have a first image with radio, DUC, DDC and FIFO only using one
> channel of the radio. As I see on the e320_rfnoc_image_core YML file, the
> DDC, DUC, radio and a fifo block are instanced. And on the static
> connections part of the file are all the connections for each channel (I
> guess this is radio0(0) and radio0(1)). If I want to remove channel 1 for
> example, I must set  num ports to 1 on the instance of the DDC/DUC and th=
en
> remove the connections associated with the in/out_1. Is that correct?
> Should I also change num_ports on the yml radio block file?
> Then, to build the image I must run rfnoc_image_builder with option -y an=
d
> this modified yml file, that's all?
>
> Kind regards,
>
> Maria
>
>
> El vie., 20 nov. 2020 16:44, Wade Fife <wade.fife@ettus.com> escribi=C3=
=B3:
>
>> Hi Maria,
>>
>> I assume you're using UHD 3.15 or earlier, since you mentioned the "fpga
>> repository". I've never tried what you're suggesting, so I don't know wh=
at
>> challenges you'll run into. I think changing NUM_CHANNELS_PER_RADIO will=
 do
>> what you want, but it will have some side effects, like removing the GPI=
O
>> for that channel. I think it might be safer to just change the NUM_CHANN=
ELS
>> that gets passed to e320_core, since I think that will remove just the
>> radio and associated DDC/DUC while leaving all the other board signals
>> connected. Again, I haven't tried it, so I can't say for sure.
>>
>> In general, these kinds of changes need to be considered carefully, sinc=
e
>> it leaves signals undriven, which usually means they will be driven to 0=
 by
>> default. 0 is often the right value for something that's unused, but not
>> always. There may also be software implications.
>>
>> By the way, these kinds of changes are easier to make in UHD 4.0 since
>> it's described by a YAML file. So it's easy to say you just want one rad=
io
>> and to leave out the DDC/DUC, or DRAM FIFO, for example. The required
>> Verilog is then generated by rfnoc_image_builder.
>>
>> Thanks,
>>
>> Wade
>>
>> On Thu, Nov 19, 2020 at 8:52 AM Maria Mu=C3=B1oz via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi everyone,
>>>
>>> I'm using an USRP E320 using the RFNoC image to implement a code that
>>> requires too much FPGA resources. I only need to use one of the channel=
s of
>>> the USRP so I was wondering if it could be possible to eliminate the lo=
gic
>>> associated with the other channel to save resources on the FPGA and if
>>> there is a 'safe' way to do that.
>>>  I mean I have seen on the verilog source code, that there is a
>>> parameter 'NUM_CHANNELS_PER_RADIO' (e320.v on fpga repository) which
>>> configures the channels of the radio, but what happens with the tx_i1,
>>> tx_q1, rx_i1 and rx_1q signals that goes to the LVDS interface with the
>>> ADC? Can they be left unconnected?  Is there another parameter that I m=
ust
>>> change to use only one channel and eliminate the 'extra' logic?
>>>
>>> Kind Regards,
>>>
>>> Maria
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a3368e05b4e48a17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, that&#39;s correct. There&#39;s a radio_1x64.yml=
 you can use to get a single channel radio. You might consider removing the=
 FIFO if you don&#39;t need it. <br></div><div><br></div><div>Wade<br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Tue, Nov 24, 2020 at 8:46 AM Maria Mu=C3=B1oz via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">---------- Forwarded message ---------<br>De: <strong class=3D"gmail=
_sendername" dir=3D"auto">Maria Mu=C3=B1oz</strong> <span dir=3D"auto">&lt;=
<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com<=
/a>&gt;</span><br>Date: lun, 23 nov 2020 a las 10:05<br>Subject: Re: [USRP-=
users] FPGA RFNoC Radio block with only one channel<br>To: Wade Fife &lt;<a=
 href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com<=
/a>&gt;<br></div><br><br><div dir=3D"ltr"><div dir=3D"auto"><div>Hi Wade,</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks for your answer th=
at=C2=A0helps me a lot.</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
I have migrated to UHD 4.0 as you suggested so just a few questions to make=
 sure I have understood how the YAML file and the tool work.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">I want to have a first image with rad=
io, DUC, DDC and FIFO only using one channel of the radio. As I see on the =
e320_rfnoc_image_core YML file, the DDC, DUC, radio and a fifo block are in=
stanced. And on the static connections=C2=A0part=C2=A0of the file are all t=
he connections for each channel (I guess this is radio0(0) and radio0(1)). =
If I want to remove channel 1 for example, I must set=C2=A0 num ports to 1 =
on the instance of the DDC/DUC and then remove the connections associated w=
ith the in/out_1. Is that correct?</div><div dir=3D"auto">Should I also cha=
nge num_ports on the yml radio block file?=C2=A0=C2=A0</div><div dir=3D"aut=
o">Then, to build the image I must run rfnoc_image_builder with option -y a=
nd this modified yml file, that&#39;s all?</div><div dir=3D"auto"><br></div=
><div>Kind regards,</div><div><br></div><div>Maria</div><div dir=3D"auto"><=
br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gm=
ail_attr">El vie., 20 nov. 2020 16:44, Wade Fife &lt;<a href=3D"mailto:wade=
.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; escribi=C3=
=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>Hi Maria,</div><div><br></div><div>
I assume you&#39;re using UHD 3.15 or earlier, since you mentioned the &quo=
t;fpga repository&quot;.

I&#39;ve never tried what you&#39;re suggesting, so I don&#39;t know what c=
hallenges you&#39;ll run into. I think changing NUM_CHANNELS_PER_RADIO will=
 do what you want, but it will have some side effects, like removing the GP=
IO for that channel. I think it might be safer to just change the NUM_CHANN=
ELS that gets passed to e320_core, since I think that will remove just the =
radio and associated DDC/DUC while leaving all the other board signals conn=
ected. Again, I haven&#39;t tried it, so I can&#39;t say for sure.<br></div=
><div><br></div><div>In general, these kinds of changes need to be consider=
ed carefully, since it leaves signals undriven, which usually means they wi=
ll be driven to 0 by default. 0 is often the right value for something that=
&#39;s unused, but not always. There may also be software implications.<br>=
</div><div><br></div>By the way, these kinds of changes are easier to make =
in UHD 4.0 since it&#39;s described by a YAML file. So it&#39;s easy to say=
 you just want one radio and to leave out the DDC/DUC, or DRAM FIFO, for ex=
ample. The required Verilog is then generated by rfnoc_image_builder.<br><d=
iv><br></div><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, No=
v 19, 2020 at 8:52 AM Maria Mu=C3=B1oz via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">Hi everyone,<div><br></div><div>I&#39;m u=
sing an USRP E320=20

 using the RFNoC image

to implement a code that requires too much FPGA resources. I only need to u=
se one of the channels of the USRP so I was wondering if it could be possib=
le to eliminate the logic associated with the other channel=C2=A0to save re=
sources on the FPGA and if there is a &#39;safe&#39; way to do that.</div><=
div>=C2=A0I mean I have seen on the verilog source code, that there is a pa=
rameter &#39;NUM_CHANNELS_PER_RADIO&#39; (e320.v on fpga repository) which =
configures the channels of the radio, but what happens with the tx_i1, tx_q=
1, rx_i1 and rx_1q signals that goes to the LVDS interface with the ADC? Ca=
n they be left unconnected?=C2=A0 Is there another parameter that I must ch=
ange to use only one channel and eliminate the &#39;extra&#39; logic?</div>=
<div><br></div><div>Kind Regards,</div><div><br></div><div>Maria=C2=A0</div=
></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div></div>
</div>
</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a3368e05b4e48a17--


--===============3619331754105062666==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3619331754105062666==--

