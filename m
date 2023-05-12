Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41186700C84
	for <lists+usrp-users@lfdr.de>; Fri, 12 May 2023 18:04:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4519E38490F
	for <lists+usrp-users@lfdr.de>; Fri, 12 May 2023 12:04:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683907496; bh=PZwoCi+8xmhv97roeYJyYkdmsn8wdcl5JR5kqfXfx2c=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=qRYuFdu5uQCVZbUYV/V198J0sCTQiUGbRkWMP0F6ViP5zxinGTs80X7+7N6BIdkc9
	 V+cMJYDZs5vHTTJZLfTM5n/wQboFx5UFroQwIQZmHAdX0vVeQi1+WqQNQw9ueQrHGT
	 3HWuoEVvR4xkL2ih1cXPtzCCnEyc7WuJJcz5yJTn9RSOMFFvvH9eMnHEp/1Km/w7Mr
	 QSIP2TIXy/SxPAsszj4m7UM1WLcKyHa0cyXPKEJicwQ0ruJqzlmNLpBcvp3rxsSTdK
	 gPU2VmG1oIcK2KL4B+1ppKFLY4ybhTo7gUpJbmt+I0ESlyCSg7R/2j1h3/LM6WKLDG
	 xTSx8/pWLM9ZQ==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 11C2A384896
	for <usrp-users@lists.ettus.com>; Fri, 12 May 2023 12:03:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="jcfTD+2M";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-966400ee79aso1394490766b.0
        for <usrp-users@lists.ettus.com>; Fri, 12 May 2023 09:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1683907433; x=1686499433;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gLNKjLHS76k0lin1gg2bJ+3TYSZLkuhY7TELiizFQ/A=;
        b=jcfTD+2M/CYYc2SqO+rqeLRFyPnqlzPXHWY96cjzu+o2HTET8JpJZhof8HVNK8cDTp
         DMonDGK4ov++TlMJ+K7Fg/hWghYu6eSRMrA6OvXmFukuo/DSqTOOerALm2ZLDyzIjxo7
         vjBHwmUhhwfbzpLB+LtoPKVdmVxWEiTzrQZLH/uGMkh59ErQ8AJgej11LTB2bZUyZ2aB
         7C2L8EJHexZ1b/mlSPDC9mBGWfMfbf9T3/LeQj7yOEjI5R/FQJxS0lTqikDiHHZ/HmBc
         EuAtQKc+udFa0hNIvaIgr/H1fQj4XjrKa/3rud6+Jqa1nmFINA/WqFXpkdCQx2WP4BaU
         L3QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683907433; x=1686499433;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gLNKjLHS76k0lin1gg2bJ+3TYSZLkuhY7TELiizFQ/A=;
        b=GMwQhBYOHZBmLnScneRbcw5WWLXymGAKhdJ+1ug3Gsv1yIVrfda0NTdhykKZ6YHceR
         RUSVZK5G2kL1T+f5WIE5q9Zoul+ccncTpD9XgPDxUwFuHCVoB3s95U+KCXnt5DrumO2O
         TAXw7vM/2MJjR0fTq5J8VqjHsSZasxG58+bDP3Z2bwcHpx7w3dhDh12DDhIyn3NrXRtd
         3SFv/Z4eR8XAQ+6CTUgXoD1fQXqmmUGRhM51NkkGQs0NwhIKO8PzPuE/cPjo6C4phUhc
         iz8UsMMa/suiTTIbo6qQkQom53juOquY+EzHneQ2gKlTxk9g4XeK9ZS4WEhxPsRsNxCB
         GNAA==
X-Gm-Message-State: AC+VfDxuZQoNhJvnk66Gs1/63D2RhNeyahbXcdIfZwx0x2+KELhEG7V9
	cl3uTFXL6y3xdoiINb0ukKd0KRgkhMqcBLUkDtR/FQ==
X-Google-Smtp-Source: ACHHUZ7Gil77tfSOmSLLjVg/IrZqOKMIz3bflMJ6RweG3JQyHzahHdgLSUCI/0x0/F4YRHX7BNWvInPJUoR+9XaSNR0=
X-Received: by 2002:a17:907:2daa:b0:94e:dbf7:2dfe with SMTP id
 gt42-20020a1709072daa00b0094edbf72dfemr25632019ejc.11.1683907432508; Fri, 12
 May 2023 09:03:52 -0700 (PDT)
MIME-Version: 1.0
References: <0nTh9jMldPas9c4cQlsgkzBOI3y8AVV2nqnWdJUKPQ@lists.ettus.com>
In-Reply-To: <0nTh9jMldPas9c4cQlsgkzBOI3y8AVV2nqnWdJUKPQ@lists.ettus.com>
Date: Fri, 12 May 2023 12:03:41 -0400
Message-ID: <CAB__hTSB-chRhu02riXTsh3ZtfGbFDzH41Rd6WQwLe2kdUXyeg@mail.gmail.com>
To: david.fernandes@viveris.fr
Message-ID-Hash: OTMXGJDJ3UHHQSYXM5PIE3CTHBSRYCJB
X-Message-ID-Hash: OTMXGJDJ3UHHQSYXM5PIE3CTHBSRYCJB
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Manage multiple Tx streamers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OTMXGJDJ3UHHQSYXM5PIE3CTHBSRYCJB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0262999266321946347=="

--===============0262999266321946347==
Content-Type: multipart/alternative; boundary="00000000000059988b05fb81408c"

--00000000000059988b05fb81408c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi David,
You need to create two streamers - one with a channel list of {0} and the
other with a channel list of {1}.  Let me know if you have any questions.
Rob

On Fri, May 12, 2023 at 11:52=E2=80=AFAM <david.fernandes@viveris.fr> wrote=
:

> Hi everyone,
>
> I need to develop a system which streams independent samples at different
> moments to the differents channels (channel 0 and channel 1) of an USRP
> X310.
>
> To achieve that, I use the example codes available in the documentation
> which look like the following :
>
> // 1. Create the stream args object and initialize the data formats to
> fc32 and sc16:
> uhd::stream_args_t stream_args("fc32", "sc16");
> // 2. Set the channel list, we want 2 streamers coming from channels 0 an=
d
> 1, in that order
> stream_args.channels =3D {0, 1};
> // Now use these args to create a tx streamer (We assume that usrp is a
> valid uhd::usrp::multi_usrp)
> uhd::tx_streamer::sptr tx_stream =3D usrp->get_tx_stream(stream_args);
> // Now, any calls to rx_stream must provide a vector of 2 buffers, one pe=
r
> channel.
> // Ex: tx_stream->send(buffs, 1024, md); (assuming buffs is a vector of 2
> buffers)
>
> Then, I have created 2 threads, each thread will call the
> =E2=80=9Ctx_stream->send=E2=80=9D function at different moments to stream=
 samples through
> its corresponding channel (thread0 =3D=3D> channel0 and thread1 =3D=3D> c=
hannel1).
>
> My question is : how can I call the =E2=80=9Ctx_stream->send=E2=80=9D fun=
ction in each
> thread to send samples through only 1 of the channels ? Is there any othe=
r
> better method to achieve that ?
>
> Thank you very much for your support.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000059988b05fb81408c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi David,<div>You need to create two streamers - one with =
a channel list of {0} and the other with a channel list of {1}.=C2=A0 Let m=
e know if=C2=A0you have any questions.</div><div>Rob</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 12, 2=
023 at 11:52=E2=80=AFAM &lt;<a href=3D"mailto:david.fernandes@viveris.fr">d=
avid.fernandes@viveris.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><p>Hi everyone,</p><p>I need to develop a system w=
hich streams independent samples at different moments to the differents  ch=
annels (channel 0 and channel 1) of an USRP X310.</p><p>To achieve that, I =
use the example codes available in the documentation which look like the fo=
llowing :</p><p>// 1. Create the stream args object and initialize the data=
 formats to fc32 and sc16:<br>uhd::stream_args_t stream_args(&quot;fc32&quo=
t;, &quot;sc16&quot;);<br>// 2. Set the channel list, we want 2 streamers c=
oming from channels 0 and 1, in that order<br>stream_args.channels =3D {0, =
1};<br>// Now use these args to create a tx streamer (We assume that usrp i=
s a valid uhd::usrp::multi_usrp)<br>uhd::tx_streamer::sptr tx_stream =3D us=
rp-&gt;get_tx_stream(stream_args);<br>// Now, any calls to rx_stream must p=
rovide a vector of 2 buffers, one per channel.<br>// Ex: tx_stream-&gt;send=
(buffs, 1024, md); (assuming buffs is a vector of 2 buffers)</p><p>Then, I =
have created 2 threads, each thread will call the =E2=80=9Ctx_stream-&gt;se=
nd=E2=80=9D function at different moments to stream samples through  its co=
rresponding channel (thread0 =3D=3D&gt; channel0 and thread1 =3D=3D&gt; cha=
nnel1). </p><p>My question is : how can I call the =E2=80=9Ctx_stream-&gt;s=
end=E2=80=9D function in each thread to send samples through only 1 of the =
channels ? Is there any other better method to achieve that ? </p><p>Thank =
you very much for your support.</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000059988b05fb81408c--

--===============0262999266321946347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0262999266321946347==--
