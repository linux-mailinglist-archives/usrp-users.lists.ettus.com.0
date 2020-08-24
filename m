Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D971250970
	for <lists+usrp-users@lfdr.de>; Mon, 24 Aug 2020 21:36:05 +0200 (CEST)
Received: from [::1] (port=56068 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAIGB-0005mX-3C; Mon, 24 Aug 2020 15:36:03 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:37863)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kAIG6-0005ev-F5
 for usrp-users@lists.ettus.com; Mon, 24 Aug 2020 15:35:58 -0400
Received: by mail-ot1-f54.google.com with SMTP id k2so1761185ots.4
 for <usrp-users@lists.ettus.com>; Mon, 24 Aug 2020 12:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KEivSk3QaoJJV2QtDiknVeHa3PGDFvBImPLJ56T54i4=;
 b=hw2Va4Lit9Yy70k/2PoDl1BTqdvAx8wt4xtHSCaiMbp9VyM2VN78xwVPBow34nAECM
 k2onqI/oEcVa165V+2xZrYxyujNUpPXH66TMYMDCTd1ol/ffCbXVAnN3UR47GlKZUijA
 62bdD24CrRdObZpdlOfhAHQlPxxYKVCFkrVk38uVtuzofj3bH5R3i8XupS90ReE2kNWs
 PRNl5m305UrBDvRlKi3oKyB2i//r+RzEYSnaFBV04eK0vJwCe+pdwyt2XCil1DyCZEPo
 oIT1Ni1QapaJYs2mnH+Xbur8XlmZNi1owOR7vW5o10R4WwR/l9XyFxtnVcrjbUGNFspX
 t9mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KEivSk3QaoJJV2QtDiknVeHa3PGDFvBImPLJ56T54i4=;
 b=YnDtzVvGIzz+Yq1ch9dCBCUnN4zNawhqPaKPa60wGRfn3tuWEMDxoVZZa4k/sqcILy
 YMpy2o7yPYCw6Tu6bA9M+vLVvRg19jhYQi0yHKfb0h+QUVvWJRKYiuMw/LIgSOSKeZKe
 uwJbLYJOVg8H6j+NEYIkm1mn/3raa70qqCViHa3SYEqdBkdIAqWjX6Prbfp4ZAXItWFj
 2WRh4ZXkA1sA9ci/boi/XI13Y5nbr1A5mqmcodYjVzG8S6h4fFaO8KaIgtt5WdU8leJj
 eEdfBDhYritf4uVYis7kCKlIQN0ONv4mSMCyuwKbImHQb51iniKcBNnHAt9MHOBgXyKp
 fJEQ==
X-Gm-Message-State: AOAM533ZezfEYf9Uuy48O5sObLoqL2w3EbMETOwo0/n8fCr311ItWx3x
 1TJuqZHB4fVBShwuqPXttBiHIA9oAz7vhQC95cygDQ==
X-Google-Smtp-Source: ABdhPJzj4Fdx30dpGT6Js7KuVifAybSg5zXHgDxBhtYDaT34dQFhVd5EGjuFPJT+wLmJz5PpKIYfcEpoU3pjg40nj9E=
X-Received: by 2002:a9d:6b84:: with SMTP id b4mr4581917otq.302.1598297717578; 
 Mon, 24 Aug 2020 12:35:17 -0700 (PDT)
MIME-Version: 1.0
References: <CACjmV_=fW9LdJPb0TtAgP_QH19cSDD13BgRkvDzOd1JohUJ8TQ@mail.gmail.com>
 <CACjmV_kMaOvLJuaYv8rj0o1QcMjW2+9w1x9BK6BxHjufM348WA@mail.gmail.com>
In-Reply-To: <CACjmV_kMaOvLJuaYv8rj0o1QcMjW2+9w1x9BK6BxHjufM348WA@mail.gmail.com>
Date: Mon, 24 Aug 2020 15:35:06 -0400
Message-ID: <CAB__hTTxVNg4WU8x3Pec2Q1M9HwWGj+_xHCaFFJMmrWSTnO0Dw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6999429484395985273=="
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

--===============6999429484395985273==
Content-Type: multipart/alternative; boundary="000000000000b3dd9905ada4afb4"

--000000000000b3dd9905ada4afb4
Content-Type: text/plain; charset="UTF-8"

Hi Damon,
See my other post today regarding "skip_dram=1".  I believe there is a
bug.  But, if you can skip the Dma FIFO (if your sample rate is low
enough), you can get around the bug.
Rob

On Mon, Aug 24, 2020 at 3:31 PM Damon qiu via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> After repeated tests, we feel that two of the four channels of two devices
> will be randomly selected, and the probability of choosing the correct
> channel is very low. It must be a bug.
>
> Hi Macus,
>
> > try:
> >
> > stream_args.channels.push_back(0);
> > stream_args.channels.push_back(1):
> >
> > Instead of your:
> >
> > stream_args.channels = {0,1};
>
> > I think these should be equivalent, but my C++ fluency is low...
>
> Thank you for your reply, but your suggestion didn't work. Please don't
> forget to cc it to me next time.
>
> Best regards,
> Damon
>
>
>
> On Fri, 7 Aug 2020 at 01:32, Damon qiu <qiu.guowang007@gmail.com> wrote:
>
>> Hi all,
>>
>> I am using two USRP X310s to transmit signals on 2 channels. The two USRP
>> are synchronized through a octoclock-g.
>>
>> A multi_usrp object is used to control those two USRP, device address is
>> set to addr0=192.168.40.2,addr1=192.168.60.2. I want to set two USRP
>> transmitting signal at RFA at the same time. I tried two ways to set up the
>> tx channel and subdev spec:
>>
>> Method 1: The TX frontend specification is set to A:0 for both two mboard.
>> d_dev->set_tx_subdev_spec("A:0");
>> or
>> d_dev->set_tx_subdev_spec("A:0", 0);
>> d_dev->set_tx_subdev_spec("A:0", 1);
>>
>> uhd::stream_args_t stream_args(tx_cpu, tx_otw);
>> stream_args.channels = {0, 1};
>> uhd::tx_streamer::sptr tx_stream = d_dev->get_tx_stream(stream_args);
>>
>> Method 2: The TX frontend specification is set to "A:0 B:0"for both two
>> mboard.
>> d_dev->set_tx_subdev_spec("A:0 B:0");
>> or
>> d_dev->set_tx_subdev_spec("A:0 B:0", 0);
>> d_dev->set_tx_subdev_spec("A:0 B:0", 1);
>>
>> uhd::stream_args_t stream_args(tx_cpu, tx_otw);
>> stream_args.channels = {0, 2};
>> uhd::tx_streamer::sptr tx_stream = d_dev->get_tx_stream(stream_args);
>>
>> In the above two methods, there is a certain probability (about 10% to
>> 30%) that the two transmission channels are on the same motherboard. I
>> guess this is a bug of UHD.
>>
>> OS: Ubuntu 18.04
>> UHD: UHD-3.15.LTS
>>
>> Please CC me as I can only receive the daily digest of the mailing list.
>>
>> Best regards,
>> Damon
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b3dd9905ada4afb4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Damon,<div>See my other post today reg=
arding &quot;skip_dram=3D1&quot;.=C2=A0 I believe there is a bug.=C2=A0 But=
, if you can skip the Dma FIFO (if your sample rate is low enough), you can=
 get around the bug.</div><div>Rob</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 24, 2020 at 3:31 PM Dam=
on qiu via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi all,<br></div><=
div dir=3D"ltr"><br></div><div dir=3D"ltr">After repeated tests, we feel th=
at two of the four channels of two devices will be randomly selected, and t=
he probability of choosing the correct channel is very low. It must be a bu=
g.=C2=A0</div><div dir=3D"ltr"><br></div><div>Hi Macus,</div><div><br></div=
><div>&gt; try:<br>&gt;=C2=A0<br>&gt; stream_args.channels.push_back(0);<br=
>&gt; stream_args.channels.push_back(1):<br>&gt;=C2=A0<br>&gt; Instead of y=
our:<br>&gt;=C2=A0<br>&gt; stream_args.channels =3D {0,1};<br><br>&gt; I th=
ink these should be equivalent, but my C++ fluency is low...<br></div><div>=
<br></div><div>Thank you for your reply, but your suggestion didn&#39;t wor=
k. Please don&#39;t forget to cc it to me next time.</div><div><br></div><d=
iv>Best regards,</div><div>Damon</div><div dir=3D"ltr"><br></div><div dir=
=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, 7 Aug 2020 at 01:32, Damon qiu &lt;<a href=3D"mailto:q=
iu.guowang007@gmail.com" target=3D"_blank">qiu.guowang007@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi all,<br><br>I am using two USRP X310s=C2=A0to transmit signals =
on 2 channels. The two USRP are synchronized through a octoclock-g.<br><br>=
A multi_usrp object is used to control those two USRP, device address is se=
t to addr0=3D192.168.40.2,addr1=3D192.168.60.2. I want to set two USRP tran=
smitting=C2=A0signal at RFA at the same time. I tried two ways to set up th=
e tx channel and subdev spec:<br><br>Method 1: The TX frontend specificatio=
n is set to A:0 for both two mboard.<br>d_dev-&gt;set_tx_subdev_spec(&quot;=
A:0&quot;);<br>or<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0&quot;, 0);<br>d=
_dev-&gt;set_tx_subdev_spec(&quot;A:0&quot;, 1);<br><br>uhd::stream_args_t =
stream_args(tx_cpu, tx_otw);<br>stream_args.channels =3D {0, 1};<br>uhd::tx=
_streamer::sptr tx_stream =3D d_dev-&gt;get_tx_stream(stream_args);<br><br>=
Method 2: The TX frontend specification is set to &quot;A:0 B:0&quot;for bo=
th two mboard.<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0 B:0&quot;);<br>or<=
br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0 B:0&quot;, 0);<br>d_dev-&gt;set_t=
x_subdev_spec(&quot;A:0 B:0&quot;, 1);<br><br>uhd::stream_args_t stream_arg=
s(tx_cpu, tx_otw);<br>stream_args.channels =3D {0, 2};<br>uhd::tx_streamer:=
:sptr tx_stream =3D d_dev-&gt;get_tx_stream(stream_args);<br><br>In the abo=
ve two methods, there is a certain probability (about 10% to 30%) that the =
two transmission channels are on the same motherboard. I guess this is a bu=
g of UHD.<br><br>OS: Ubuntu 18.04<br>UHD: UHD-3.15.LTS<br><br>Please CC me =
as I can only receive the daily digest of the mailing list.<br><br>Best reg=
ards,<br>Damon<br></div>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000b3dd9905ada4afb4--


--===============6999429484395985273==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6999429484395985273==--

