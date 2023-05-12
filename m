Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1F7700CA6
	for <lists+usrp-users@lfdr.de>; Fri, 12 May 2023 18:10:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0415384896
	for <lists+usrp-users@lfdr.de>; Fri, 12 May 2023 12:10:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683907853; bh=Rne3lcHThH9+CERcdLmCCADIYwZTHcBxf2/qvVFWYMI=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=a7kA3pg7zFfHKoLs5xeihXxAf49uguvU0+84IJCARa/Y4imdIKJ7gcCowkXiCuutY
	 UZVaVH5i7Y3CZSDpxNApRCIxxR75H2TbsuAgO1voeOtQS6MNALsq9W+s0pAIUl1V0D
	 XMjvdIFE8tL/Qha3UUZKT5FKlQoa3H72tCxMMQZXgUSzz+KJPrHhLi5tOhI8md/4EO
	 /cx7RdGuIi5ikdkRGPkhGa8Yqc6EDp12keyfkoiwY1yJDEwzLYtof8Px+CTi8nzkBJ
	 LKQNWAmLCI1Mbt/Zqjkajr7UOMJskOGxYzRwfqp5pPnD9nXgI0zf+OziRwbXF/GCbI
	 gNEoEloW/uCMQ==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 74562384901
	for <usrp-users@lists.ettus.com>; Fri, 12 May 2023 12:09:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="aAUYH4Gj";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-9659e9bbff5so1861505466b.1
        for <usrp-users@lists.ettus.com>; Fri, 12 May 2023 09:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1683907783; x=1686499783;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=69GOo3AFmVvOHLuZDMHw/KO1qDtrXiYRpMq97fHD9Fc=;
        b=aAUYH4GjVz+7KwwUbCGZOVQ/CAavpntQCXee+w14hnWtA4W1oht0p2wcNii8bKw8MQ
         ZX74jv1flAWj+QZnP0YMb/+S/KuZjw78Ghb1TMN9XYFYpuKdy9x2jvp4letn8plCrCQs
         jI22QObV+bJsVJPZ0YAf6zMMz3o4p7EM726E9Yx49U+HF983PkMN2yaNKwOYH/PPE62s
         YCbEL7H8EMinS2jjlS0iibiemsHepqypMZGwH2ek9Xz7+CofOutCHP+5Q5AB+xkm6xDU
         9c1t+tr4TKzc/7JAdr19eoDgtu2XKGOjU8OISlnG2ZqyW5r4Sfx1Ic0U7xZywG/BSB/Y
         pRRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683907783; x=1686499783;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=69GOo3AFmVvOHLuZDMHw/KO1qDtrXiYRpMq97fHD9Fc=;
        b=WseQHtEu977xCRYu4ZIHG2UlRERHV5NA7MjCDO1H3YmG1MiAdEme5XmRn0s1OkZCGw
         Q4IB29J/O3udeL+G2zMzTuYOr3cueG911Jb7UMw25KHXcJVas2V27FfO7Y5iGZOGiaQY
         lalcGSlP3DPvdh9fu0alX8dhQ9zGS4Sumh1KTUyBe03G9d43rHUs00N3DpAABESA3102
         hqq6R+0/KLzFh4o9iRIdH7T1B3dkA0ELgGBxU+BTRRd/OAoHGSrFcqQsm7f2F6mmwFXp
         xnOjqpJKSRDmeIoGPfByu8EtTqz4osa7c0o1Ueam77WkfggWEv1B6FYpbhv3pIC8v3i4
         zY7A==
X-Gm-Message-State: AC+VfDxuj1k5m/K/29G3eA7hve4VbLO7l2TgKqsDlixEDBYLcyPpn+GN
	zY8H4OtQxKk+fVxfoXBPfJ2c7mNrsrbxCAgsS8AF4A==
X-Google-Smtp-Source: ACHHUZ44/g+1qEprSOoeW8hLxrTJ1CHz7S1QGNYYM2Iwo+n5JRprnh1Y3OnXB7GlxVvxCzWrUOusqUVYzpvCIn85/y4=
X-Received: by 2002:a17:907:3e9c:b0:966:471c:2565 with SMTP id
 hs28-20020a1709073e9c00b00966471c2565mr20186118ejc.48.1683907783171; Fri, 12
 May 2023 09:09:43 -0700 (PDT)
MIME-Version: 1.0
References: <0nTh9jMldPas9c4cQlsgkzBOI3y8AVV2nqnWdJUKPQ@lists.ettus.com> <CAB__hTSB-chRhu02riXTsh3ZtfGbFDzH41Rd6WQwLe2kdUXyeg@mail.gmail.com>
In-Reply-To: <CAB__hTSB-chRhu02riXTsh3ZtfGbFDzH41Rd6WQwLe2kdUXyeg@mail.gmail.com>
Date: Fri, 12 May 2023 12:09:31 -0400
Message-ID: <CAB__hTRon1EeGJpzLG7ZMA4kSQ06y0w8dA7P9W63LjjOnM_C6w@mail.gmail.com>
To: david.fernandes@viveris.fr
Message-ID-Hash: 7WEQ3ZQPD4FF5EE2WH66LYVJEFSKNJMX
X-Message-ID-Hash: 7WEQ3ZQPD4FF5EE2WH66LYVJEFSKNJMX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Manage multiple Tx streamers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7WEQ3ZQPD4FF5EE2WH66LYVJEFSKNJMX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2156367318829551925=="

--===============2156367318829551925==
Content-Type: multipart/alternative; boundary="000000000000405c2205fb815534"

--000000000000405c2205fb815534
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

By the way, the rx_samples_to_file.cpp example has a "multi_streamer"
command line option and the example has associated functionality to
implement separate streamers in the Rx direction. But, I don't think the tx
examples have this option although it should be roughly analogous to the Rx
case.
Rob

On Fri, May 12, 2023 at 12:03=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wrot=
e:

> Hi David,
> You need to create two streamers - one with a channel list of {0} and the
> other with a channel list of {1}.  Let me know if you have any questions.
> Rob
>
> On Fri, May 12, 2023 at 11:52=E2=80=AFAM <david.fernandes@viveris.fr> wro=
te:
>
>> Hi everyone,
>>
>> I need to develop a system which streams independent samples at differen=
t
>> moments to the differents channels (channel 0 and channel 1) of an USRP
>> X310.
>>
>> To achieve that, I use the example codes available in the documentation
>> which look like the following :
>>
>> // 1. Create the stream args object and initialize the data formats to
>> fc32 and sc16:
>> uhd::stream_args_t stream_args("fc32", "sc16");
>> // 2. Set the channel list, we want 2 streamers coming from channels 0
>> and 1, in that order
>> stream_args.channels =3D {0, 1};
>> // Now use these args to create a tx streamer (We assume that usrp is a
>> valid uhd::usrp::multi_usrp)
>> uhd::tx_streamer::sptr tx_stream =3D usrp->get_tx_stream(stream_args);
>> // Now, any calls to rx_stream must provide a vector of 2 buffers, one
>> per channel.
>> // Ex: tx_stream->send(buffs, 1024, md); (assuming buffs is a vector of =
2
>> buffers)
>>
>> Then, I have created 2 threads, each thread will call the
>> =E2=80=9Ctx_stream->send=E2=80=9D function at different moments to strea=
m samples through
>> its corresponding channel (thread0 =3D=3D> channel0 and thread1 =3D=3D> =
channel1).
>>
>> My question is : how can I call the =E2=80=9Ctx_stream->send=E2=80=9D fu=
nction in each
>> thread to send samples through only 1 of the channels ? Is there any oth=
er
>> better method to achieve that ?
>>
>> Thank you very much for your support.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000405c2205fb815534
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">By the way, the rx_samples_to_file.cpp example has a &quot=
;multi_streamer&quot; command line option and the example has associated fu=
nctionality to implement separate streamers in the Rx direction. But, I don=
&#39;t think the tx examples have this option although it should be roughly=
 analogous to the Rx case.<div>Rob</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 12, 2023 at 12:03=E2=80=
=AFPM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">Hi David,<div>You need to create two streamers - one with a c=
hannel list of {0} and the other with a channel list of {1}.=C2=A0 Let me k=
now if=C2=A0you have any questions.</div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 12, 2023=
 at 11:52=E2=80=AFAM &lt;<a href=3D"mailto:david.fernandes@viveris.fr" targ=
et=3D"_blank">david.fernandes@viveris.fr</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><p>Hi everyone,</p><p>I need to dev=
elop a system which streams independent samples at different moments to the=
 differents  channels (channel 0 and channel 1) of an USRP X310.</p><p>To a=
chieve that, I use the example codes available in the documentation which l=
ook like the following :</p><p>// 1. Create the stream args object and init=
ialize the data formats to fc32 and sc16:<br>uhd::stream_args_t stream_args=
(&quot;fc32&quot;, &quot;sc16&quot;);<br>// 2. Set the channel list, we wan=
t 2 streamers coming from channels 0 and 1, in that order<br>stream_args.ch=
annels =3D {0, 1};<br>// Now use these args to create a tx streamer (We ass=
ume that usrp is a valid uhd::usrp::multi_usrp)<br>uhd::tx_streamer::sptr t=
x_stream =3D usrp-&gt;get_tx_stream(stream_args);<br>// Now, any calls to r=
x_stream must provide a vector of 2 buffers, one per channel.<br>// Ex: tx_=
stream-&gt;send(buffs, 1024, md); (assuming buffs is a vector of 2 buffers)=
</p><p>Then, I have created 2 threads, each thread will call the =E2=80=9Ct=
x_stream-&gt;send=E2=80=9D function at different moments to stream samples =
through  its corresponding channel (thread0 =3D=3D&gt; channel0 and thread1=
 =3D=3D&gt; channel1). </p><p>My question is : how can I call the =E2=80=9C=
tx_stream-&gt;send=E2=80=9D function in each thread to send samples through=
 only 1 of the channels ? Is there any other better method to achieve that =
? </p><p>Thank you very much for your support.</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000405c2205fb815534--

--===============2156367318829551925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2156367318829551925==--
