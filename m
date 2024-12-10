Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F609EB695
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2024 17:36:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 72212385F02
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2024 11:36:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733848577; bh=hoO/Nq/JaPkoQGMN4z+YVvPPaCWstCv59RfsPDx/wMs=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zG3YCrwVtLSEJcS8czfncwhIJIlxWb2U3denzEaB95iolqxbUWSOnwEbcBS1zHtDN
	 iwkD6ZfGTc9fEdGfmqNopRf+Q3/AyoA/mk2rgHcairsHNGMIcH67Exuj6vlaUEibhx
	 3IX5yffRxOiA4Vq44IwYvVvIZEvF35CcDcEg18mbvSjgAelTlxbjpTwSULXx6qQhIl
	 JP09lOpVIrFabWzOcQV8R+7tb8wckvNaqn4Ewzac8z9Q0Ty42KeSOlpeyIVCvO/cPL
	 WLaqGLvqvG2PU2oBSACnTkpQfG4ZlcDxlt9m2dcZOuKI482SwmfanEdB6awpiMegfe
	 hxs7Y0qpgt9Mg==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id A4FF6385EBF
	for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2024 11:35:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="wl9upije";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5d3d2a30afcso6514599a12.3
        for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2024 08:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1733848521; x=1734453321; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TTzIZnzxrDP0TBGDqje11GcRtCn3Lgvx6B7SzRTF5Bc=;
        b=wl9upijeAG0e2P5FVXzlmmGKlUpTDZIAz6m7hEvmvaL1uHVskXMNb6ByTrc+09Tzeh
         Nw8rdhhaQYO08txHLj7tXn4Jfe08Fy2BxZsjYn/jCXsKvYy/RPC1RFZ+oD2YhzieImfj
         m9Seukz4+Iv35oukEMuPukcIyDMECGGc9VedB333JLX94RH75uaq/7oDOkdfF/Sjf7z5
         X9u6TS1vAuaZvbEGVL4JrPukdFvVqlj/1XNHGHKA3xT4UR5vTpdOBibSzpi+E2OVyrGM
         pg68t8SvVgyvqf3aNAOLLYZzXI0xaCM0+kqnTu7BuDyCzLHDQ2nuUzQEs9AAZ8l2/prx
         7nwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733848521; x=1734453321;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TTzIZnzxrDP0TBGDqje11GcRtCn3Lgvx6B7SzRTF5Bc=;
        b=dNOBVU7OLFaMnt5NzmJVIlTmAmUK3z1AGHnTrdJoa44Y5iCXmSliSszxfImD/0ldMb
         78dei+44w82E6uvVuEFpZED2Bb1RheKxohtAO48HfHUQ2YRRl//fDBYRT8/+MDZfzolD
         kNj2d+xWYMePcyJ2ZKyn/mOWcyLjI3MGVlwpnwjHVZ/5wFdX9BLf3XjK36ule8S8jUo9
         8Bw6LBH+fcpub8QHPE7GOd5TFes/QpoT5Vnzfc97xffbm32YLZZeawbaKt+WuzzDwK9j
         9Ovbz1o2By7h5VEEfnx1UCvQx/x9tkK1UMELNZut/4hYOPdmChvrhdX17hxZvNydJ+nt
         C9TQ==
X-Gm-Message-State: AOJu0Yz9J3u8zQ6QtN+LxgCZFQzamfcUCgesYAyRlBOu49Vl9Bf0Ogne
	HJxUJQJIP8/KmcjSNVXF29B7Uyew0CyLdZnyzCIdY0M/oUQoWmfT2o5K6mdTHMk2giaHaCpOgcc
	ao0hcZO7V4S4VtUysRuqXWFKzhTzeka25q58QtjOdPapL3wiXf7aQOA==
X-Gm-Gg: ASbGncv8ENDaZylS+pU/kgLJeJonQwW+Pas+MMUpAcSdIwPdktxFhOO+14j5NJRkvm3
	WyFRLdqLFu6f9Lw3r9UOxvwM2cbmXfFk7gQ==
X-Google-Smtp-Source: AGHT+IEaG4lKMF3e+bRF5hBM87Rxo6xgGTFfSCLBM+4gVfXvNM3HZ1vggFm/DAh4QOoOcJAx+8t0vH4s6UmopUPQ+zk=
X-Received: by 2002:a05:6402:210a:b0:5d0:9081:792f with SMTP id
 4fb4d7f45d1cf-5d3be699fc8mr18714363a12.16.1733848521291; Tue, 10 Dec 2024
 08:35:21 -0800 (PST)
MIME-Version: 1.0
References: <PN1P287MB3561AD211545E254E6DD27A897312@PN1P287MB3561.INDP287.PROD.OUTLOOK.COM>
 <PN3P287MB029100B601063D556709482893312@PN3P287MB0291.INDP287.PROD.OUTLOOK.COM>
 <CAB__hTQ8c4MJVgg5=Pk23WBhV1GcBGxZxNiPV9smFp4hOpu4+w@mail.gmail.com> <CAB__hTS-0xJoFhMouYH4hqDORA1x27EW=Jw73dqvgM2SuOd8Nw@mail.gmail.com>
In-Reply-To: <CAB__hTS-0xJoFhMouYH4hqDORA1x27EW=Jw73dqvgM2SuOd8Nw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 10 Dec 2024 17:35:10 +0100
Message-ID: <CAFOi1A76Vsu4PZXW3mXZfNT4Ot4MBAMNFHk5Tjw9+fNJDXRagA@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 7YPMOXHAANSAX65XMSM2HP7RMRTBV47J
X-Message-ID-Hash: 7YPMOXHAANSAX65XMSM2HP7RMRTBV47J
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with Starting Transmitter on USRP N300 without Using Streamers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7YPMOXHAANSAX65XMSM2HP7RMRTBV47J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3670774454651390919=="

--===============3670774454651390919==
Content-Type: multipart/alternative; boundary="00000000000034d7ae0628ed1105"

--00000000000034d7ae0628ed1105
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 6, 2024 at 4:53=E2=80=AFPM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
>
> On Fri, Dec 6, 2024 at 9:44=E2=80=AFAM Rob Kossler <rkossler@nd.edu> wrot=
e:
>
>>
>> You might want to look at the Ettus c++ example "rfnoc_radio_loopback".
>> You could also try just running it.  Note that it does not include the
>> DMAFifo block but it does allow you to choose which Rx Radio and Tx Radi=
o
>> block to use. After quickly reviewing your attachment, I would mention t=
hat
>> you shouldn't have to send Tx streaming commands. Once you send the Rx
>> streaming command, the data will flow.  However, if you use a "timed"
>> receive command, then the streaming data will have a time tag such that
>> when it arrives at the Transmit radio, it will by definition be late.  Y=
ou
>> will need to do one of the following: either use non-timed receive
>> streaming commands or else create a custom RFNoC block that manipulates =
the
>> time tag to add some delay in order to account for the number of clock
>> cycles that it takes for the data to propagate from Rx to Tx.
>>
>
Whoops, should read the whole thread before responding. Thanks Rob for
raising this!


> And, one question for the Ettus dev team: is there an easy way to
> configure this kind of graph such that the host will receive the "Late"
> messages?  Since the host is not involved in the streaming, it's not
> obvious to the user that all of the streaming is arriving Late to the Tx
> radio as it would be in a host-based streaming application.  But, it woul=
d
> be nice if the host did receive these Late (or Underrun) messages (at lea=
st
> in many situations).
>
>
That's a great question.... sadly the answer is no. Of course, you can
stare at the screen but that's not what you're looking for.

As is, the late message will get passed down the chain, and then eventually
reach the Tx radio block which doesn't know what to do with that message
and then drops it. We'd need some kind of way to redirect the messages, or
at least put them into some queue. Interesting suggestion, but not
something we have in the pipe.

--M

--00000000000034d7ae0628ed1105
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 6, =
2024 at 4:53=E2=80=AFPM Rob Kossler via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div d=
ir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Dec 6, 2024 at 9:44=E2=80=AFAM Rob Kossler &lt;<a h=
ref=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote"><div>You might =
want to look at the Ettus c++ example &quot;rfnoc_radio_loopback&quot;.=C2=
=A0 You could also try just running it.=C2=A0 Note that it does not include=
 the DMAFifo block but it does allow you to choose which Rx Radio and Tx Ra=
dio block to use. After quickly reviewing your attachment, I would mention =
that you shouldn&#39;t have to send Tx streaming commands. Once you send th=
e Rx streaming command, the data will flow.=C2=A0 However, if you use a &qu=
ot;timed&quot; receive command, then the streaming data will have a time ta=
g such that when it arrives at the Transmit radio, it will by definition be=
 late.=C2=A0 You will need to do one of the following: either use non-timed=
 receive streaming commands or else create a custom RFNoC block that manipu=
lates the time tag to add some delay in order to account for the number of =
clock cycles that it takes for the data to propagate from Rx to Tx.</div></=
div></div></blockquote></div></div></blockquote><div><br></div><div>Whoops,=
 should read the whole thread before responding. Thanks Rob for raising thi=
s!</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div class=3D"gmail_quote"><div><br></div><div>And, one ques=
tion for the Ettus dev team: is there an easy way to configure this kind of=
 graph such that the host will receive the &quot;Late&quot; messages?=C2=A0=
 Since the host is not involved in the streaming, it&#39;s not obvious to t=
he user that all of the streaming is arriving Late to the Tx radio as it wo=
uld be in a host-based streaming application.=C2=A0 But, it would be nice i=
f the host did receive these Late (or Underrun) messages (at least in many =
situations).</div><div><br></div></div></div></blockquote><div><br></div><d=
iv>That&#39;s a great question.... sadly the answer is no. Of course, you c=
an stare at the screen but that&#39;s not what you&#39;re looking for.</div=
><div><br></div><div>As is, the late message will get passed down the chain=
, and then eventually reach the Tx radio block which doesn&#39;t know what =
to do with that message and then drops it. We&#39;d need some kind of way t=
o redirect the messages, or at least put them into some queue. Interesting =
suggestion, but not something we have in the pipe.</div><div><br></div><div=
>--M<br></div><div><br></div></div></div>

--00000000000034d7ae0628ed1105--

--===============3670774454651390919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3670774454651390919==--
