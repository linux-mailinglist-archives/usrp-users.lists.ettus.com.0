Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F05251D49
	for <lists+usrp-users@lfdr.de>; Tue, 25 Aug 2020 18:37:31 +0200 (CEST)
Received: from [::1] (port=39444 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAbws-0005N4-E1; Tue, 25 Aug 2020 12:37:26 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:36032)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1kAbwo-0005Eo-0q
 for usrp-users@lists.ettus.com; Tue, 25 Aug 2020 12:37:22 -0400
Received: by mail-qk1-f173.google.com with SMTP id g26so11530169qka.3
 for <usrp-users@lists.ettus.com>; Tue, 25 Aug 2020 09:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TM6DLG4SSlnhhwPTA70r1BUo7beCmG8nLf19qVvP9R4=;
 b=HdnYVXkvsNnRh39J1unl8h3tsslkBehMgfewjZ53vJjlCFXV4Bme+umSG3hxGzpfng
 B9iX/k13QcseHnorxlz3bxSmBK+Bxpb1mCCBiZZGavn0RxM3IVof9QhVXqrJmDSQcBdi
 pvK+1jyq4ml57J7SitIwf+HpzO4aavgP5ZTD1pkoDHvbB1Yk0UfWQdwiu1T2vKNlIbct
 WHKF9AIOIEtGhPG62hHP8EaruhzNMJ6l/UI3xM+/LJ8IEu2Oqr+h3J6IWYVRgy5Hv1uv
 GAcbMn3AHvV6TsjCaHzmW7zDogiUZvztUHy8+xyMhrgP3pxqmCK0oPzk1yZIWzwe7dG/
 LaXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TM6DLG4SSlnhhwPTA70r1BUo7beCmG8nLf19qVvP9R4=;
 b=nDds9E1ygK6FHN4po5rfojYbcsmROj97uiPHsrytR0zBGyLx6JICZrJbDFuG8GvjjN
 yMUDVNLqSTjC/4PqwVSTWrlYEYObE+n4Rhdh+XINtmNAZ+brQDhPF1f9RpFehLrbaJtO
 jY7lNdThbqCtOm0zttpEHue7+IEKlExP71BN7dOp+EYepBS49oaDIcROqe8BqfXxxzsA
 IuHUyFujUAfVxHz2pvmodT8BoydEszWRuqyrDshdg+EueHSOgHLqIOfqy8Ib4yI/NmX4
 KPwHMTOda1eLk4aA4Dnw9vu9D/9vKf1KU1dRqTq0ftEnW+fLFDWj1FiKjgRseUI3EFbV
 +Xbg==
X-Gm-Message-State: AOAM533kIj3DELZkrZTjxJg/bpx7/droDjlTdrH46Bfi6zBcAvahpYZR
 8mt6t2atA63wie41e6EoabiUwL9BnXOUGLSUYOI=
X-Google-Smtp-Source: ABdhPJxi3iWn6rRmC5dia/HbTvR8Ms6jOUUbTGH+monfg8ETxZktwgGowdAae1mQZhKsj/gKzpGrCUAdC+0pynlwPKo=
X-Received: by 2002:ae9:f106:: with SMTP id k6mr9666240qkg.3.1598373401555;
 Tue, 25 Aug 2020 09:36:41 -0700 (PDT)
MIME-Version: 1.0
References: <CACjmV_=fW9LdJPb0TtAgP_QH19cSDD13BgRkvDzOd1JohUJ8TQ@mail.gmail.com>
 <CACjmV_kMaOvLJuaYv8rj0o1QcMjW2+9w1x9BK6BxHjufM348WA@mail.gmail.com>
 <CAB__hTTxVNg4WU8x3Pec2Q1M9HwWGj+_xHCaFFJMmrWSTnO0Dw@mail.gmail.com>
In-Reply-To: <CAB__hTTxVNg4WU8x3Pec2Q1M9HwWGj+_xHCaFFJMmrWSTnO0Dw@mail.gmail.com>
Date: Wed, 26 Aug 2020 00:36:29 +0800
Message-ID: <CACjmV_=WHoqSYzjMW4aBBvmFFkJNVAwobAWbw6vzuvty_b8QyQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 Damon Qiu <qiu.guowang007@gmail.com>
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
From: Damon qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Damon qiu <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============8090505448263638003=="
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

--===============8090505448263638003==
Content-Type: multipart/alternative; boundary="000000000000d175eb05adb64e2b"

--000000000000d175eb05adb64e2b
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

Thank you very much for your reply.I just read through your discussion with
Andreas about this issue.  However, your temporary solution is not suitable
for my case. I need to transmit signals in two channels with 200Msps sample
rate for each channel. I can only wait for the Ettus engineers to fix this
bug. It's not sure whether Ettus engineers are already investigating the
bug, as there are no official replies to two threads about this bug.

Best regards,
Damon

On Tue, 25 Aug 2020 at 03:35, Rob Kossler <rkossler@nd.edu> wrote:

> Hi Damon,
> See my other post today regarding "skip_dram=1".  I believe there is a
> bug.  But, if you can skip the Dma FIFO (if your sample rate is low
> enough), you can get around the bug.
> Rob
>
> On Mon, Aug 24, 2020 at 3:31 PM Damon qiu via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi all,
>>
>> After repeated tests, we feel that two of the four channels of two
>> devices will be randomly selected, and the probability of choosing the
>> correct channel is very low. It must be a bug.
>>
>> Hi Macus,
>>
>> > try:
>> >
>> > stream_args.channels.push_back(0);
>> > stream_args.channels.push_back(1):
>> >
>> > Instead of your:
>> >
>> > stream_args.channels = {0,1};
>>
>> > I think these should be equivalent, but my C++ fluency is low...
>>
>> Thank you for your reply, but your suggestion didn't work. Please don't
>> forget to cc it to me next time.
>>
>> Best regards,
>> Damon
>>
>>
>>
>> On Fri, 7 Aug 2020 at 01:32, Damon qiu <qiu.guowang007@gmail.com> wrote:
>>
>>> Hi all,
>>>
>>> I am using two USRP X310s to transmit signals on 2 channels. The two
>>> USRP are synchronized through a octoclock-g.
>>>
>>> A multi_usrp object is used to control those two USRP, device address is
>>> set to addr0=192.168.40.2,addr1=192.168.60.2. I want to set two USRP
>>> transmitting signal at RFA at the same time. I tried two ways to set up the
>>> tx channel and subdev spec:
>>>
>>> Method 1: The TX frontend specification is set to A:0 for both two
>>> mboard.
>>> d_dev->set_tx_subdev_spec("A:0");
>>> or
>>> d_dev->set_tx_subdev_spec("A:0", 0);
>>> d_dev->set_tx_subdev_spec("A:0", 1);
>>>
>>> uhd::stream_args_t stream_args(tx_cpu, tx_otw);
>>> stream_args.channels = {0, 1};
>>> uhd::tx_streamer::sptr tx_stream = d_dev->get_tx_stream(stream_args);
>>>
>>> Method 2: The TX frontend specification is set to "A:0 B:0"for both two
>>> mboard.
>>> d_dev->set_tx_subdev_spec("A:0 B:0");
>>> or
>>> d_dev->set_tx_subdev_spec("A:0 B:0", 0);
>>> d_dev->set_tx_subdev_spec("A:0 B:0", 1);
>>>
>>> uhd::stream_args_t stream_args(tx_cpu, tx_otw);
>>> stream_args.channels = {0, 2};
>>> uhd::tx_streamer::sptr tx_stream = d_dev->get_tx_stream(stream_args);
>>>
>>> In the above two methods, there is a certain probability (about 10% to
>>> 30%) that the two transmission channels are on the same motherboard. I
>>> guess this is a bug of UHD.
>>>
>>> OS: Ubuntu 18.04
>>> UHD: UHD-3.15.LTS
>>>
>>> Please CC me as I can only receive the daily digest of the mailing list.
>>>
>>> Best regards,
>>> Damon
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000d175eb05adb64e2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Rob,<div><br></div><div>Thank you very=
 much for your reply.I just read through=C2=A0your discussion with Andreas =
about this issue.=C2=A0 However, your temporary solution is not suitable fo=
r my case. I need to transmit signals in two channels with 200Msps=C2=A0sam=
ple rate for each channel. I can only wait for the Ettus engineers to fix t=
his bug. It&#39;s not sure whether Ettus engineers are already investigatin=
g the bug, as there are no official replies to two threads about this bug.<=
/div><br><div>Best regards,</div><div>Damon</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 25 Aug 2020 at 03:=
35, Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div dir=3D"ltr">Hi Damon,<div>See my other post today regardin=
g &quot;skip_dram=3D1&quot;.=C2=A0 I believe there is a bug.=C2=A0 But, if =
you can skip the Dma FIFO (if your sample rate is low enough), you can get =
around the bug.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 24, 2020 at 3:31 PM Damon qi=
u via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi =
all,<br></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">After repeated te=
sts, we feel that two of the four channels of two devices will be randomly =
selected, and the probability of choosing the correct channel is very low. =
It must be a bug.=C2=A0</div><div dir=3D"ltr"><br></div><div>Hi Macus,</div=
><div><br></div><div>&gt; try:<br>&gt;=C2=A0<br>&gt; stream_args.channels.p=
ush_back(0);<br>&gt; stream_args.channels.push_back(1):<br>&gt;=C2=A0<br>&g=
t; Instead of your:<br>&gt;=C2=A0<br>&gt; stream_args.channels =3D {0,1};<b=
r><br>&gt; I think these should be equivalent, but my C++ fluency is low...=
<br></div><div><br></div><div>Thank you for your reply, but your suggestion=
 didn&#39;t work. Please don&#39;t forget to cc it to me next time.</div><d=
iv><br></div><div>Best regards,</div><div>Damon</div><div dir=3D"ltr"><br><=
/div><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Fri, 7 Aug 2020 at 01:32, Damon qiu &lt;<a hre=
f=3D"mailto:qiu.guowang007@gmail.com" target=3D"_blank">qiu.guowang007@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr">Hi all,<br><br>I am using two USRP X310s=C2=A0to tran=
smit signals on 2 channels. The two USRP are synchronized through a octoclo=
ck-g.<br><br>A multi_usrp object is used to control those two USRP, device =
address is set to addr0=3D192.168.40.2,addr1=3D192.168.60.2. I want to set =
two USRP transmitting=C2=A0signal at RFA at the same time. I tried two ways=
 to set up the tx channel and subdev spec:<br><br>Method 1: The TX frontend=
 specification is set to A:0 for both two mboard.<br>d_dev-&gt;set_tx_subde=
v_spec(&quot;A:0&quot;);<br>or<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0&qu=
ot;, 0);<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0&quot;, 1);<br><br>uhd::s=
tream_args_t stream_args(tx_cpu, tx_otw);<br>stream_args.channels =3D {0, 1=
};<br>uhd::tx_streamer::sptr tx_stream =3D d_dev-&gt;get_tx_stream(stream_a=
rgs);<br><br>Method 2: The TX frontend specification is set to &quot;A:0 B:=
0&quot;for both two mboard.<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0 B:0&q=
uot;);<br>or<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0 B:0&quot;, 0);<br>d_=
dev-&gt;set_tx_subdev_spec(&quot;A:0 B:0&quot;, 1);<br><br>uhd::stream_args=
_t stream_args(tx_cpu, tx_otw);<br>stream_args.channels =3D {0, 2};<br>uhd:=
:tx_streamer::sptr tx_stream =3D d_dev-&gt;get_tx_stream(stream_args);<br><=
br>In the above two methods, there is a certain probability (about 10% to 3=
0%) that the two transmission channels are on the same motherboard. I guess=
 this is a bug of UHD.<br><br>OS: Ubuntu 18.04<br>UHD: UHD-3.15.LTS<br><br>=
Please CC me as I can only receive the daily digest of the mailing list.<br=
><br>Best regards,<br>Damon<br></div>
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

--000000000000d175eb05adb64e2b--


--===============8090505448263638003==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8090505448263638003==--

