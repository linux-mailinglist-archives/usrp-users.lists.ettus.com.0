Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5DC25095A
	for <lists+usrp-users@lfdr.de>; Mon, 24 Aug 2020 21:31:15 +0200 (CEST)
Received: from [::1] (port=56026 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAIBU-0005Rn-CF; Mon, 24 Aug 2020 15:31:12 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:37825)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1kAIBQ-0005Kp-NM
 for usrp-users@lists.ettus.com; Mon, 24 Aug 2020 15:31:08 -0400
Received: by mail-qt1-f171.google.com with SMTP id d27so7131615qtg.4
 for <usrp-users@lists.ettus.com>; Mon, 24 Aug 2020 12:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i10OUeD1BxrY0npHFu3eeOCBTsKcSyPFhSWPPLALDCI=;
 b=MvLbmb3eVEvLWn2lTZ+vMoiLEKzryaQ/yanarSSFiqixFZz95dQ3+YtTrZ5lp7aj7g
 i/1TBk5r3DCwnNBqKiH8gqJYLhPJLiqG8WeOnk/R4N/BSuuImlrKlueF+HOfD1GUC7LK
 4rS91Pe86JwzvwNoiS0Z6pTBUrTV4AIIGqHaLdefluX3IVOf3STXK9oRpzcGbVmk7E7F
 H4PZnq7HpMcIpnsVPAqjKMzU/s+8jVh8RkWku9LOHs9PSnTT0xJx4IjWjsYManiapn+F
 USVAN+RWRYkjQZcq7+wI5vJ8W8IufTXxQe7J2hVnWrGvdOL3k2DuxUSRXlRxViRFNws+
 sJGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i10OUeD1BxrY0npHFu3eeOCBTsKcSyPFhSWPPLALDCI=;
 b=YZyAt0LE9WjUVGLE5J8V+ObQKSecP6bus/IjYipSfKS+D2pao8I49U6ULNvx0amYzB
 bk/hYlXiVLu8QbkZ6xmh4XLCxdnbuFqXFV3gmYYnnPpHNRSrJPV7nnH1DPIVk1GqVFJL
 ajWe2MyPaZWFpR2WwMiMacuRLskeKJYs7iz8xra7BmSe2OKf6Lcu+uBHyBaRDJfWECQC
 RJ323cTVnvPiHlDvOPw8A8fbag2vsd78MxzK5e6P3cOJPnghh4TzlNjTd1OWGAc/kmQh
 StwWJHSGnrnkVy1JVOegS6zSQ1UkH41xWUFAuIxSaKh6UUoi6HGdtlOaiHgnRdv+yjiN
 z+5A==
X-Gm-Message-State: AOAM533aY9JIvxISrjrcgKmFAP46SQeKqAKqDII/P88EO8JZ5A89jToW
 Qzyr6Bs5HsFColOYgP/X5fIS3Fy8E+5gfdoouhT4mYXjbMA=
X-Google-Smtp-Source: ABdhPJx7+EkjmkF6uM56CwqMyIcCxtZZVacrdJ7CTDcsMaHAOOe0RfwwaX4Db3kvGZi+Zv4FJLGDVx0c08LNchtHGhM=
X-Received: by 2002:ac8:6b84:: with SMTP id z4mr6300031qts.279.1598297424054; 
 Mon, 24 Aug 2020 12:30:24 -0700 (PDT)
MIME-Version: 1.0
References: <CACjmV_=fW9LdJPb0TtAgP_QH19cSDD13BgRkvDzOd1JohUJ8TQ@mail.gmail.com>
In-Reply-To: <CACjmV_=fW9LdJPb0TtAgP_QH19cSDD13BgRkvDzOd1JohUJ8TQ@mail.gmail.com>
Date: Tue, 25 Aug 2020 03:30:13 +0800
Message-ID: <CACjmV_kMaOvLJuaYv8rj0o1QcMjW2+9w1x9BK6BxHjufM348WA@mail.gmail.com>
To: usrp-users@lists.ettus.com
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
Cc: Damon Qiu <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============0654607676132456245=="
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

--===============0654607676132456245==
Content-Type: multipart/alternative; boundary="00000000000034cc1d05ada49e59"

--00000000000034cc1d05ada49e59
Content-Type: text/plain; charset="UTF-8"

Hi all,

After repeated tests, we feel that two of the four channels of two devices
will be randomly selected, and the probability of choosing the correct
channel is very low. It must be a bug.

Hi Macus,

> try:
>
> stream_args.channels.push_back(0);
> stream_args.channels.push_back(1):
>
> Instead of your:
>
> stream_args.channels = {0,1};

> I think these should be equivalent, but my C++ fluency is low...

Thank you for your reply, but your suggestion didn't work. Please don't
forget to cc it to me next time.

Best regards,
Damon



On Fri, 7 Aug 2020 at 01:32, Damon qiu <qiu.guowang007@gmail.com> wrote:

> Hi all,
>
> I am using two USRP X310s to transmit signals on 2 channels. The two USRP
> are synchronized through a octoclock-g.
>
> A multi_usrp object is used to control those two USRP, device address is
> set to addr0=192.168.40.2,addr1=192.168.60.2. I want to set two USRP
> transmitting signal at RFA at the same time. I tried two ways to set up the
> tx channel and subdev spec:
>
> Method 1: The TX frontend specification is set to A:0 for both two mboard.
> d_dev->set_tx_subdev_spec("A:0");
> or
> d_dev->set_tx_subdev_spec("A:0", 0);
> d_dev->set_tx_subdev_spec("A:0", 1);
>
> uhd::stream_args_t stream_args(tx_cpu, tx_otw);
> stream_args.channels = {0, 1};
> uhd::tx_streamer::sptr tx_stream = d_dev->get_tx_stream(stream_args);
>
> Method 2: The TX frontend specification is set to "A:0 B:0"for both two
> mboard.
> d_dev->set_tx_subdev_spec("A:0 B:0");
> or
> d_dev->set_tx_subdev_spec("A:0 B:0", 0);
> d_dev->set_tx_subdev_spec("A:0 B:0", 1);
>
> uhd::stream_args_t stream_args(tx_cpu, tx_otw);
> stream_args.channels = {0, 2};
> uhd::tx_streamer::sptr tx_stream = d_dev->get_tx_stream(stream_args);
>
> In the above two methods, there is a certain probability (about 10% to
> 30%) that the two transmission channels are on the same motherboard. I
> guess this is a bug of UHD.
>
> OS: Ubuntu 18.04
> UHD: UHD-3.15.LTS
>
> Please CC me as I can only receive the daily digest of the mailing list.
>
> Best regards,
> Damon
>

--00000000000034cc1d05ada49e59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi all,<br></div><div dir=3D"ltr"><br></d=
iv><div dir=3D"ltr">After repeated tests, we feel that two of the four chan=
nels of two devices will be randomly selected, and the probability of choos=
ing the correct channel is very low. It must be a bug.=C2=A0</div><div dir=
=3D"ltr"><br></div><div>Hi Macus,</div><div><br></div><div>&gt; try:<br>&gt=
;=C2=A0<br>&gt; stream_args.channels.push_back(0);<br>&gt; stream_args.chan=
nels.push_back(1):<br>&gt;=C2=A0<br>&gt; Instead of your:<br>&gt;=C2=A0<br>=
&gt; stream_args.channels =3D {0,1};<br><br>&gt; I think these should be eq=
uivalent, but my C++ fluency is low...<br></div><div><br></div><div>Thank y=
ou for your reply, but your suggestion didn&#39;t work. Please don&#39;t fo=
rget to cc it to me next time.</div><div><br></div><div>Best regards,</div>=
<div>Damon</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 7 A=
ug 2020 at 01:32, Damon qiu &lt;<a href=3D"mailto:qiu.guowang007@gmail.com"=
>qiu.guowang007@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<br><br>I am using two USR=
P X310s=C2=A0to transmit signals on 2 channels. The two USRP are synchroniz=
ed through a octoclock-g.<br><br>A multi_usrp object is used to control tho=
se two USRP, device address is set to addr0=3D192.168.40.2,addr1=3D192.168.=
60.2. I want to set two USRP transmitting=C2=A0signal at RFA at the same ti=
me. I tried two ways to set up the tx channel and subdev spec:<br><br>Metho=
d 1: The TX frontend specification is set to A:0 for both two mboard.<br>d_=
dev-&gt;set_tx_subdev_spec(&quot;A:0&quot;);<br>or<br>d_dev-&gt;set_tx_subd=
ev_spec(&quot;A:0&quot;, 0);<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0&quot=
;, 1);<br><br>uhd::stream_args_t stream_args(tx_cpu, tx_otw);<br>stream_arg=
s.channels =3D {0, 1};<br>uhd::tx_streamer::sptr tx_stream =3D d_dev-&gt;ge=
t_tx_stream(stream_args);<br><br>Method 2: The TX frontend specification is=
 set to &quot;A:0 B:0&quot;for both two mboard.<br>d_dev-&gt;set_tx_subdev_=
spec(&quot;A:0 B:0&quot;);<br>or<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0 =
B:0&quot;, 0);<br>d_dev-&gt;set_tx_subdev_spec(&quot;A:0 B:0&quot;, 1);<br>=
<br>uhd::stream_args_t stream_args(tx_cpu, tx_otw);<br>stream_args.channels=
 =3D {0, 2};<br>uhd::tx_streamer::sptr tx_stream =3D d_dev-&gt;get_tx_strea=
m(stream_args);<br><br>In the above two methods, there is a certain probabi=
lity (about 10% to 30%) that the two transmission channels are on the same =
motherboard. I guess this is a bug of UHD.<br><br>OS: Ubuntu 18.04<br>UHD: =
UHD-3.15.LTS<br><br>Please CC me as I can only receive the daily digest of =
the mailing list.<br><br>Best regards,<br>Damon<br></div>
</blockquote></div></div>

--00000000000034cc1d05ada49e59--


--===============0654607676132456245==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0654607676132456245==--

