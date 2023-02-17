Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A240F69B2CC
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 20:00:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E121838480B
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 14:00:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676660458; bh=d7m0+1YnKOs9SbHAN85MNl2MZbuWqfE8yt8OyZ0a15w=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=h1/6sMmVaLLly1OVNdFLBdJCRkRMMQBylhtiswCQJEYH09XuRhBAqLiJ4QEzpoOIH
	 +v8OzFN2HNEpw/awSIrxap8nEmzQDTdTGUWvLYm6CBAHZnv3tU4o40IkfND/0ZCqYU
	 Sl/F0+NuJ94SxT5Gyo4XnJlQknoR6AdBwwYx7HhjKC96323dXSzJ2v9ofsNUkb7Kdx
	 m/KS9qsnLRzlxxpUExBkPHBDxMNsv9NGjZuTLi6vdw5DakX7nakJYQAiTQGRq7itOD
	 1VpD6IHwzgUvNdp81Bhkosaxw+r1iAqPjqrN0CIxJ1WMth9O/nWBZlwjx7wX5e8Rc+
	 ViZ3lPoiHCODQ==
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 7EDF338468B
	for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 14:00:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="N2Whkm1e";
	dkim-atps=neutral
Received: by mail-oi1-f181.google.com with SMTP id j3so1202445oig.10
        for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 11:00:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NSr2tNEPb+CGg81mbAVqiE+dgnuWqMeiQFNggqBKPv4=;
        b=N2Whkm1e8KvVZG0bVbYd6RJF7v2GN1nXF41tZ0YBDp+hGFOtHYVdmtuYFjj1nm5o7I
         9GLGW8kEhWvl9POqm6QVN1/MKnCY0qQppb+WUHUkEeMZ/E8Ey0/uufX1Yb45l6Fn8/rb
         9kzQDa+m7Gv5s2KT894WYtcl7jkxdT0WIHlFlzZQIsALTpKF4KWZcSJ71DWD/HY1JMfi
         wHLdToMU9Y+6aeXXS1PDx62Gn3hFGduzCXLrZwMzvlisMLfve/85HItGPcV8e7A2dx6z
         uZiCR3Hd7ETmjVRZk3uIYP4otp0DoQB7Xykm+Z8D41NAXfVTh4NLT061yRHTEicUk5Jg
         rxGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NSr2tNEPb+CGg81mbAVqiE+dgnuWqMeiQFNggqBKPv4=;
        b=S1Oj2WdUEikOfL6NvV/v6d2wGv2f4asdoZ33m330pX8tKK7gNFbRcoHhwDei84UA/a
         Yco9SMcCPnViJ1XbRMh7J6HQTEdAVXFkotS3XOITswxhZ3VwVPtdrgucMUdJAXK9Nccn
         yst4MRDKEh/YOtD0N4a24Pn9mEO4DQuo/Ukxb1X4FDdLaqHMI7+170XC2NtrwZCzIwwp
         UooqA07bT6ufnjYHy72c/6kgfXl+awNMbCP3AWWleiSpC3qg0QpSxtY6tb0NgAVE32FZ
         O9bVpvypvcmb/TBKiL78prfiHKc39lQrAgJ/HC5ZwrLMt9qcmPbhnhWwihFY+5p+kT6O
         ND9w==
X-Gm-Message-State: AO0yUKU5zQEUytk9gj0Eblptfv46CIkLjIjTjj6kHk8J+yRjCvU8+6bQ
	Hqmrcl7w7Ssr3gNMsqh4eQa+Mo3wkHnReRfiZZ+B22hVOJeiC4KE
X-Google-Smtp-Source: AK7set9TKxB1PEXjF8yPjzMYTZHVoURMQ4RdjfNdWW9VHuAjQ6/5l9IgbeBuCkvIh/kVCYKnULo6vRlf8fPdgSP3qAw=
X-Received: by 2002:a05:6808:1156:b0:378:80a9:7b91 with SMTP id
 u22-20020a056808115600b0037880a97b91mr513876oiu.20.1676660422640; Fri, 17 Feb
 2023 11:00:22 -0800 (PST)
MIME-Version: 1.0
References: <CANvw1+RzoBzytLFxQUvH1uYu03VpUNp97PXaqaKF6JvVAS5u6Q@mail.gmail.com>
 <d9568b3e-38a3-c32a-7808-e2529efa4f34@gmail.com>
In-Reply-To: <d9568b3e-38a3-c32a-7808-e2529efa4f34@gmail.com>
Date: Fri, 17 Feb 2023 14:00:11 -0500
Message-ID: <CANvw1+RgMMvjG6EFkyVLxqCfO_iC866HyJPSTxdv-XM_6zzW4w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: ALU4VBIUSTU6Q5YXAH7SZSE3RQXQPEWJ
X-Message-ID-Hash: ALU4VBIUSTU6Q5YXAH7SZSE3RQXQPEWJ
X-MailFrom: agurses@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Continuous stream receive process
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ALU4VBIUSTU6Q5YXAH7SZSE3RQXQPEWJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Anil Gurses via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anil Gurses <agurses@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============7114454789793084087=="

--===============7114454789793084087==
Content-Type: multipart/alternative; boundary="000000000000e6a15105f4e9ec60"

--000000000000e6a15105f4e9ec60
Content-Type: text/plain; charset="UTF-8"

Thanks for your quick response!

In general, your application absolutely, positively, needs to call
> recv() to consume samples as fast as they're produced, on average.
>    Short-term shortfalls are "soaked up" by buffers, but if your
> application cannot "keep up", no amount of buffering will save it.
>

This is why we have overflows. Then, my interpretation of continuous
streaming is correct.

To test this, I created a simple python script by putting delays(sleep)
between consecutive recv calls for b205 mini. The lights turned on only at
recv calls and not during delays. I checked the metadata time and USRP time
to see if the packets are buffered. There was a difference between them and
it proves that packets are buffered.  However, I still don't understand how
RX light is triggered on continuous streaming.

A.


On Fri, Feb 17, 2023 at 1:43 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 17/02/2023 13:34, Anil Gurses via USRP-users wrote:
> > Hi all,
> >
> > I have a simple question about the continuous stream. As you all know,
> > USRP RX lights indicate whether it's receiving samples or not. On
> > continuous streaming, these lights are turned on if the recv function
> > is called from the host computer(stay on until the end of recv
> > function call). In theory, the continuous streaming mode should
> > receive and buffer these samples. So, shouldn't the lights be on until
> > the continuous streaming stop(not until the end of recv function call)?
> >
> > If this is how it should be, then my understanding of continuous
> > stream is wrong. If I don't call recv function, doesn't USRP receive
> > samples and buffer them(on continuous streaming mode)?
> The light is turned on when a receive streamer is created, as far as I
> know.
>
> If your application doesn't call recv(), some number of samples will be
> buffered in various parts of the library and OS drivers, and
>    then they'll just start getting dropped.
>
> In general, your application absolutely, positively, needs to call
> recv() to consume samples as fast as they're produced, on average.
>    Short-term shortfalls are "soaked up" by buffers, but if your
> application cannot "keep up", no amount of buffering will save it.
>
>
>
>
> >
> >
> > Thanks,
> > A.
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e6a15105f4e9ec60
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Thanks for your quick response! <br></=
div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
In general, your application absolutely, positively, needs to call <br>
recv() to consume samples as fast as they&#39;re produced, on average.<br>
=C2=A0=C2=A0 Short-term shortfalls are &quot;soaked up&quot; by buffers, bu=
t if your <br><div>
application cannot &quot;keep up&quot;, no amount of buffering will save it=
.</div></blockquote><div><br></div><div>This is why we have overflows. Then=
, my interpretation of continuous streaming is correct. <br></div><div><br>=
</div><div>To test this, I created a simple python script by putting delays=
(sleep) between consecutive recv calls for b205 mini. The lights turned on =
only at recv calls and not during delays. I checked the metadata time and U=
SRP time to see if the packets are buffered. There was a difference between=
 them and it proves that packets are buffered.=C2=A0 However, I still don&#=
39;t understand how RX light is triggered on continuous streaming. <br></di=
v><div><br></div><div>A. <br></div><div><br></div>
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, Feb 17, 2023 at 1:43 PM Marcus D. Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">On 17/02/2023 13:34, Anil Gurses=
 via USRP-users wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I have a simple question about the continuous stream. As you all know,=
 <br>
&gt; USRP RX lights indicate whether it&#39;s receiving samples or not. On =
<br>
&gt; continuous streaming, these lights are turned on if the recv function =
<br>
&gt; is called from the host computer(stay on until the end of recv <br>
&gt; function call). In theory, the continuous streaming mode should <br>
&gt; receive and buffer these samples. So, shouldn&#39;t the lights be on u=
ntil <br>
&gt; the continuous streaming stop(not until the end of recv function call)=
?<br>
&gt;<br>
&gt; If this is how it should be, then my understanding of continuous <br>
&gt; stream is wrong. If I don&#39;t call recv function, doesn&#39;t USRP r=
eceive <br>
&gt; samples and buffer them(on continuous streaming mode)?<br>
The light is turned on when a receive streamer is created, as far as I know=
.<br>
<br>
If your application doesn&#39;t call recv(), some number of samples will be=
 <br>
buffered in various parts of the library and OS drivers, and<br>
=C2=A0=C2=A0 then they&#39;ll just start getting dropped.<br>
<br>
In general, your application absolutely, positively, needs to call <br>
recv() to consume samples as fast as they&#39;re produced, on average.<br>
=C2=A0=C2=A0 Short-term shortfalls are &quot;soaked up&quot; by buffers, bu=
t if your <br>
application cannot &quot;keep up&quot;, no amount of buffering will save it=
.<br>
<br>
<br>
<br>
<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt; A.<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e6a15105f4e9ec60--

--===============7114454789793084087==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7114454789793084087==--
