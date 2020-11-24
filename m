Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F582C2A00
	for <lists+usrp-users@lfdr.de>; Tue, 24 Nov 2020 15:46:56 +0100 (CET)
Received: from [::1] (port=60850 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khZal-0005v9-Ir; Tue, 24 Nov 2020 09:46:51 -0500
Received: from mail-ed1-f48.google.com ([209.85.208.48]:42317)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mamuki92@gmail.com>) id 1khZah-0005op-PU
 for usrp-users@lists.ettus.com; Tue, 24 Nov 2020 09:46:47 -0500
Received: by mail-ed1-f48.google.com with SMTP id v22so21139377edt.9
 for <usrp-users@lists.ettus.com>; Tue, 24 Nov 2020 06:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=w8kZlpPuSfJZrSpfV0T5F6rmvhznvAlV7ClMENc3FIw=;
 b=Uf/CRElgRK1LFp2aJJR69f++s47T+1Xcz+e7ANUBYGlfaUYV+LZpczQ60J9xU89p6F
 QuilbO1/Z+ttZVSALAbqENe9Fo+BvMciOseSfFXBc96w4bf6sRx+lcuBsqyOH/hOuc9l
 88ccOR01OLAvQ2qfYf2VdlbeAljZPOFkLIeB4fj3dq1ZkivvdCnhwTnyH8IL7dWCV3dL
 ZTnsoOtFn++/E7FHB3V5JI4oi7Q8FiruBYHemmD72WKsODrjaqW6UFcbr4uf1ypZIjV6
 8ZOqWI14h+yLYQMal59rWt5mQ8ct2IO3h8q/p7CAd+pMV1lmJUfr3ctV+fP+jMhA8Jx/
 jgFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=w8kZlpPuSfJZrSpfV0T5F6rmvhznvAlV7ClMENc3FIw=;
 b=JyLjU/fiKBkjKp3ePnanhr73L+T/voJyGZyijuH7Syuu533b1P68XfbKo5us0qr5/U
 hYDow804Lf46QrVQQfh/gAupmJXna1wMyaViKVNx7PKeN9cHoy55V1n6bMS/8qGG/Fze
 jHIW5Rlf+Ly4rgspBO9zoBDynVOr9HSUvRiq1JFYNe7dPDG8ojXcvAEWsEgg8vXp6XTO
 MO3m7jvmuOqpBq18bV7pzIa1gEiYWN0NyEHP/ZTcpsz6a+pmgUj4b61iFowGuvAnuFlN
 iotrfoUe+40VHN/b3gzFVPR62byz43QD0xMLwisgmRKJVP4sWW2lS2xLEj+Px4XVT9lk
 AMqQ==
X-Gm-Message-State: AOAM532m/nmFKdZg92dWp7eJ8F1CgpOUuLWpQsjIwtO5yUxmeEKOPLa5
 8Kdqyq0B3GKj8P9V7yqVxyfx66qkcfQa9E+1Y2nIwC/BqEk=
X-Google-Smtp-Source: ABdhPJysE5fEGGgDUBFG03MhisRq0bWR+9dLKQ7+ZDP+Pz3+Ac9WGoqTYb9elsGG99xPztBKiDpcxw/gnyhsN+hp89I=
X-Received: by 2002:a05:6402:150d:: with SMTP id
 f13mr4169303edw.119.1606229165901; 
 Tue, 24 Nov 2020 06:46:05 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQV0xTxQxPmFpBO_5q8Og03MWVhieY2VnBhK9UTE5fVfZw@mail.gmail.com>
 <CAFche=gpYoYXydtJkmVaGA9xA4e7u6a7R-FdQ894W0dj=2CaaA@mail.gmail.com>
 <CAG16vQUW56L2-uJnaszSdB+xq+hfn2TkJ21xe-s3yLCb3j1pPA@mail.gmail.com>
In-Reply-To: <CAG16vQUW56L2-uJnaszSdB+xq+hfn2TkJ21xe-s3yLCb3j1pPA@mail.gmail.com>
Date: Tue, 24 Nov 2020 15:45:53 +0100
Message-ID: <CAG16vQV9o_5WiD6BbDFOQn8EDYEeVoQ2c=RJa98MYeiMC4ysdg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Fwd:  FPGA RFNoC Radio block with only one channel
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
From: =?utf-8?q?Maria_Mu=C3=B1oz_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Content-Type: multipart/mixed; boundary="===============0438121186531999974=="
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

--===============0438121186531999974==
Content-Type: multipart/alternative; boundary="000000000000dc89df05b4db5e67"

--000000000000dc89df05b4db5e67
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
De: Maria Mu=C3=B1oz <mamuki92@gmail.com>
Date: lun, 23 nov 2020 a las 10:05
Subject: Re: [USRP-users] FPGA RFNoC Radio block with only one channel
To: Wade Fife <wade.fife@ettus.com>


Hi Wade,

Thanks for your answer that helps me a lot.

I have migrated to UHD 4.0 as you suggested so just a few questions to make
sure I have understood how the YAML file and the tool work.

I want to have a first image with radio, DUC, DDC and FIFO only using one
channel of the radio. As I see on the e320_rfnoc_image_core YML file, the
DDC, DUC, radio and a fifo block are instanced. And on the static
connections part of the file are all the connections for each channel (I
guess this is radio0(0) and radio0(1)). If I want to remove channel 1 for
example, I must set  num ports to 1 on the instance of the DDC/DUC and then
remove the connections associated with the in/out_1. Is that correct?
Should I also change num_ports on the yml radio block file?
Then, to build the image I must run rfnoc_image_builder with option -y and
this modified yml file, that's all?

Kind regards,

Maria


El vie., 20 nov. 2020 16:44, Wade Fife <wade.fife@ettus.com> escribi=C3=B3:

> Hi Maria,
>
> I assume you're using UHD 3.15 or earlier, since you mentioned the "fpga
> repository". I've never tried what you're suggesting, so I don't know wha=
t
> challenges you'll run into. I think changing NUM_CHANNELS_PER_RADIO will =
do
> what you want, but it will have some side effects, like removing the GPIO
> for that channel. I think it might be safer to just change the NUM_CHANNE=
LS
> that gets passed to e320_core, since I think that will remove just the
> radio and associated DDC/DUC while leaving all the other board signals
> connected. Again, I haven't tried it, so I can't say for sure.
>
> In general, these kinds of changes need to be considered carefully, since
> it leaves signals undriven, which usually means they will be driven to 0 =
by
> default. 0 is often the right value for something that's unused, but not
> always. There may also be software implications.
>
> By the way, these kinds of changes are easier to make in UHD 4.0 since
> it's described by a YAML file. So it's easy to say you just want one radi=
o
> and to leave out the DDC/DUC, or DRAM FIFO, for example. The required
> Verilog is then generated by rfnoc_image_builder.
>
> Thanks,
>
> Wade
>
> On Thu, Nov 19, 2020 at 8:52 AM Maria Mu=C3=B1oz via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi everyone,
>>
>> I'm using an USRP E320 using the RFNoC image to implement a code that
>> requires too much FPGA resources. I only need to use one of the channels=
 of
>> the USRP so I was wondering if it could be possible to eliminate the log=
ic
>> associated with the other channel to save resources on the FPGA and if
>> there is a 'safe' way to do that.
>>  I mean I have seen on the verilog source code, that there is a paramete=
r
>> 'NUM_CHANNELS_PER_RADIO' (e320.v on fpga repository) which configures th=
e
>> channels of the radio, but what happens with the tx_i1, tx_q1, rx_i1 and
>> rx_1q signals that goes to the LVDS interface with the ADC? Can they be
>> left unconnected?  Is there another parameter that I must change to use
>> only one channel and eliminate the 'extra' logic?
>>
>> Kind Regards,
>>
>> Maria
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000dc89df05b4db5e67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>De: <strong class=
=3D"gmail_sendername" dir=3D"auto">Maria Mu=C3=B1oz</strong> <span dir=3D"a=
uto">&lt;<a href=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.com</a>&gt;</=
span><br>Date: lun, 23 nov 2020 a las 10:05<br>Subject: Re: [USRP-users] FP=
GA RFNoC Radio block with only one channel<br>To: Wade Fife &lt;<a href=3D"=
mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt;<br></div><br><br><d=
iv dir=3D"ltr"><div dir=3D"auto"><div>Hi Wade,</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">Thanks for your answer that=C2=A0helps me a lot.</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">I have migrated to UHD 4.0 =
as you suggested so just a few questions to make sure I have understood how=
 the YAML file and the tool work.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">I want to have a first image with radio, DUC, DDC and FIFO only u=
sing one channel of the radio. As I see on the e320_rfnoc_image_core YML fi=
le, the DDC, DUC, radio and a fifo block are instanced. And on the static c=
onnections=C2=A0part=C2=A0of the file are all the connections for each chan=
nel (I guess this is radio0(0) and radio0(1)). If I want to remove channel =
1 for example, I must set=C2=A0 num ports to 1 on the instance of the DDC/D=
UC and then remove the connections associated with the in/out_1. Is that co=
rrect?</div><div dir=3D"auto">Should I also change num_ports on the yml rad=
io block file?=C2=A0=C2=A0</div><div dir=3D"auto">Then, to build the image =
I must run rfnoc_image_builder with option -y and this modified yml file, t=
hat&#39;s all?</div><div dir=3D"auto"><br></div><div>Kind regards,</div><di=
v><br></div><div>Maria</div><div dir=3D"auto"><br><br><div class=3D"gmail_q=
uote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">El vie., 20 nov. 2=
020 16:44, Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_=
blank">wade.fife@ettus.com</a>&gt; escribi=C3=B3:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div dir=3D"ltr"><div>Hi Maria,</div><div><br></div><div>
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

--000000000000dc89df05b4db5e67--


--===============0438121186531999974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0438121186531999974==--

