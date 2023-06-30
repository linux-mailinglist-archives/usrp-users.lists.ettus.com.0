Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D50743D55
	for <lists+usrp-users@lfdr.de>; Fri, 30 Jun 2023 16:21:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4CDF83848C3
	for <lists+usrp-users@lfdr.de>; Fri, 30 Jun 2023 10:21:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688134896; bh=cJ+7dZwcxaQHQHAVyTL1wwXIzfPJMtvfCB3sM8YD9do=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=FAmz/uS0nNsP/YbgSqhNPfD4oY5Vcn4/7+S4mxwJnhz7ftkNDMRhTl09GEBiMFSPY
	 dPkFihangXbG74lYi4hpexUqFS6GGlIWmp5kdoD3z/LTNwD2wTFfOhotEYQDp5pCRA
	 cjO7ZLK7H429tJx1jp14FJ/inpXmx6lZ5Ba+w0z+V04rIToJkkTmqo3Y3RC2reJPHz
	 u2YKZvGVsBPJmNUCGq25sm5TgP3K7h4k8JmzsXXtLFlBfVyxqbI+0yqrplii0ZSF0O
	 mn/7MH3+v/bHSq3+UtNVSg/Ppj0hDSNr0qJn7pcNlVoFvOjqcwvX+ybF3iJ1S2n2hJ
	 PQzzWPeHNRVuw==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 437E73849FA
	for <usrp-users@lists.ettus.com>; Fri, 30 Jun 2023 10:20:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mwSjaxmB";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-635e372679bso13480306d6.2
        for <usrp-users@lists.ettus.com>; Fri, 30 Jun 2023 07:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688134839; x=1690726839;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pQfk/R/HMCip4T2JBEjgUHR6wzXu1GFpIckZ4VstnXs=;
        b=mwSjaxmBO3ir3OSqxJ8YXqNC5q9W5Zq1o6oGjpp6oMxIerJ0gwU6JQ8VCUCISo8V0I
         xhiNKSiPR1ry8vD4p/YVLu17vWB0Wvt6M0DhCPSZVX9wS/zZ0ai3H+WPJOkGUeISrPPS
         NoxcEgCRbD/qruO7IO2Npj3q/jY2zzLXeKJBGJVmqcsaG5qlRZLeLGEBnO6oPVq1pIKT
         hMxZ606ZBNS4Qy3HKXRFtppo7mD7K8JwfqrV31Zzv7QXWPA2p6opz59V52eKwUABEcm5
         XM/HyB5p5659xsDOjoHI7F8S/yFHorjTdQboGUAb9FbrhBmpFxiz3Q3hYW1uYy8JAIZ/
         HKdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688134839; x=1690726839;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pQfk/R/HMCip4T2JBEjgUHR6wzXu1GFpIckZ4VstnXs=;
        b=JtmShuh3Qjv153KgE0Gi24/pZJirIlGzyoWdyuXgunO9BZ7xiPjvkfyVx1EXj8tIyF
         9t0wQhkyNGMMWOihq//ul31uSz5YhLEmJ6VN3zkoNIySk/UAEdIZ9ZlbTv3tOY7T7cUN
         10ocy+Nj+UEEZanRWfDY0tbkXeWAZS4azjJIPl5DSHw8IW4BN0ZjwLHkWzM7wl1XtiTS
         cIFFRsLnBCZZZmuCOedK+cqpLGwyYJNDdv1iiPtjON+SSv9vvQfOsbXiV9S3WkCTHXr/
         mkZctVb3tDXGJIowgg+Yk/lzuGPSY+3hCivrF7aT+fkx7+9vX4nmTzc2S6dUIcR8bhYj
         QJzA==
X-Gm-Message-State: ABy/qLbr24HA9V2X7ORl895pab0+YASBNJuhimVe6zWoC1YNwd0sjW2N
	DSX9vQWiosFEYXEWhhNCWIARcAiLui8=
X-Google-Smtp-Source: APBJJlGEwsEs6k+oooS/WucDpHi7I4aQzZOKZA3v2qttgrQFqUc9UFB981fCiWcrpLpXlgo/WskHDA==
X-Received: by 2002:a05:6214:5005:b0:635:ce65:38b2 with SMTP id jo5-20020a056214500500b00635ce6538b2mr3714481qvb.62.1688134839400;
        Fri, 30 Jun 2023 07:20:39 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id q3-20020ad44023000000b00630164a9992sm7976967qvp.73.2023.06.30.07.20.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jun 2023 07:20:38 -0700 (PDT)
Message-ID: <7b652d8d-b64d-93bf-f7c3-94e00fddf974@gmail.com>
Date: Fri, 30 Jun 2023 10:20:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: zhou <hwzhou@yahoo.com>, Rob Kossler <rkossler@nd.edu>
References: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com>
 <ed80e51a-be7f-d6c0-7a25-3c0c7d19e4d6@gmail.com>
 <1346881245.172465.1688045768643@mail.yahoo.com>
 <e3300a45-cc33-2c9c-1c80-ebb3dfe9a2c3@gmail.com>
 <CAB__hTR1QV=7qdSNsZLSD6hq_3Uk_buTae6tNYeo1iXBNCvFHQ@mail.gmail.com>
 <c1998c9a-8fdd-b4e7-3908-24dd44262c1a@gmail.com>
 <1137522437.419358.1688124879387@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1137522437.419358.1688124879387@mail.yahoo.com>
Message-ID-Hash: XQK2PHGG7ZPTW54CQSNAB5I65UIMOKF7
X-Message-ID-Hash: XQK2PHGG7ZPTW54CQSNAB5I65UIMOKF7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LO carrier phase difference
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XQK2PHGG7ZPTW54CQSNAB5I65UIMOKF7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7288129575366575832=="

This is a multi-part message in MIME format.
--===============7288129575366575832==
Content-Type: multipart/alternative;
 boundary="------------wc7kk6jU7X8OLw7yjSjjfsLa"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------wc7kk6jU7X8OLw7yjSjjfsLa
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 30/06/2023 07:34, zhou wrote:
> Thanks a lot for your discussion, Rob and Marcus. It is very informativ=
e.
> I am using=C2=A0UBX-160 daughterboard.
>
> Yes, my transmission is continuous during the entire test. The signal=20
> length is 40ms, and the same signal is repeatedly transmitted in an=20
> endless loop. Timestamp is updated in each loop and is applied to the=20
> packets.
> Captures were not continuous. Each capture started at a specific time=20
> and had limited length. The time gap between captures was random.
>
> I think the timed Tx and Rx commands are not related to LO because Tx=20
> and Rx in digital domain and LO is in analogue domain.
Timed commands are actually used when tuning to assert a "resynch"=20
feature in the LOs to allow for phase coherence
 =C2=A0 across multiple LOs.=C2=A0 An RF synthesizer won't necessarily "l=
ock" to=20
some exact phase with respect to the reference
 =C2=A0 clock, and some modern synthesizers have a "resynch" feature that=
 in=20
UHD is driven by timed commands.

>
> I am interested in knowing if there is a way to make Tx LO and Rx LO=20
> phase coherent within the same USRP.
The RX and TX LOs need to be re-tuned at exactly the same time, and=20
ideally, you should use INTEGER-N tuning.

https://files.ettus.com/manual/structuhd_1_1tune__request__t.html#aeaaf97=
e9272ff453174e1be3dd468167


>
>
>
>
> On Thursday, 29 June 2023 at 17:19:32 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 29/06/2023 11:38, Rob Kossler wrote:
> > On Thu, Jun 29, 2023 at 11:09=E2=80=AFAM Marcus D. Leech
> > <patchvonbraun@gmail.com> wrote:
> >> On 29/06/2023 09:36, zhou via USRP-users wrote:
> >> I am using X310 USRPs. I did a loopback test with this USRP, that=20
> is, Tx was connected to Rx (with a 20dB attenuator between them). This=20
> is for checking the channel status.
> >> In my test, Tx is free running without stop, and Rx is occasional.=20
> Both transmission and capture are time-based, that is, signals are=20
> transmitted at specified time, and capture starts at specified time.
> >>
> >> Master clock rate: 184.32MHz
> >> Sampling rate: 184.32MHz
> >>
> >> Using the captured signals, I can calculate the channel=20
> coefficient. A few captures were made.
> >>
> >> I expected constant channel because it was cable connection and it=20
> was in the same USRP, but I found that the constellations of the pilot=20
> signals rotated when comparing different captures. I think this can be=20
> caused by the phase difference between Tx LO and Rx LO, but not sure.
> >>
> >> Questions:
> >> 1. are there independent LOs for Tx and Rx in a USRP?
> >>
> >> Yes.=C2=A0 In fact, in any realistic on-the-air scenario, your RX an=
d TX=20
> will never be phase aligned, or even phase-coherent.
> > Although there are separate LOs, they are both disciplined to the 10
> > MHz reference. If they are set using timed commands, they can provide
> > repeatable phase (at least for some daughterboards like UBX and SBX).
> > In radar applications, phase coherent Rx/Tx is common.
> >
> >> 2. Is the Rx LO on and off in test, that is, it starts when capture=20
> starts and stops when capture is completed? So, the LO phase offset=20
> between Tx and Rx is random?
> >>
> >> I would expect the RX LO phase to random with respect to the TX=20
> every time you start/stop the RX.
> > In the description above, you mentioned free-running Tx but you also
> > mentioned timed transmission and capture. If you are using timed Tx
> > and Rx along with the timed tuning commands, I would expect a
> > consistent phase offset (depending again on daughterboard).=C2=A0 If =
you
> > have free running Tx, then I would expect it to be random.
> Something else to note about X310 is that in order for timed tuning to
> work with the DDCs, there has to be a stream running
> =C2=A0 through it at the time, because it gets its notions of time from=
 the
> radio block and uses tagged samples running through it to
> =C2=A0 time re-tunes precise-to-the-sample.
>
> In this case, I think we're just talking about timed *streaming*, which
> shouldn't touch the LOs/DDC/DUC at all.=C2=A0 However, if
> =C2=A0 the TX is continuous, and the RX is discontinuous, the RX will b=
e
> picking up the TX at some random phase.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------wc7kk6jU7X8OLw7yjSjjfsLa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 30/06/2023 07:34, zhou wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1137522437.419358.1688124879387@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpfb9a8ed8yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Thanks a lot for your
          discussion, Rob and Marcus. It is very informative.</div>
        <div dir=3D"ltr" data-setdir=3D"false">I am using=C2=A0UBX-160
          daughterboard.=C2=A0<br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Yes, my transmission is
          continuous during the entire test. The signal length is 40ms,
          and the same signal is repeatedly transmitted in an endless
          loop. Timestamp is updated in each loop and is applied to the
          packets.</div>
        <div dir=3D"ltr" data-setdir=3D"false">Captures were not continuo=
us.
          Each capture started at a specific time and had limited
          length. The time gap between captures was random.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I think the timed Tx and R=
x
          commands are not related to LO because Tx and Rx in digital
          domain and LO is in analogue domain. <br>
        </div>
      </div>
    </blockquote>
    Timed commands are actually used when tuning to assert a "resynch"
    feature in the LOs to allow for phase coherence<br>
    =C2=A0 across multiple LOs.=C2=A0 An RF synthesizer won't necessarily=
 "lock"
    to some exact phase with respect to the reference<br>
    =C2=A0 clock, and some modern synthesizers have a "resynch" feature t=
hat
    in UHD is driven by timed commands.<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1137522437.419358.1688124879387@mail.yahoo.com">
      <div class=3D"ydpfb9a8ed8yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I am interested in knowing=
 if
          there is a way to make Tx LO and Rx LO phase coherent within
          the same USRP. <br>
        </div>
      </div>
    </blockquote>
    The RX and TX LOs need to be re-tuned at exactly the same time, and
    ideally, you should use INTEGER-N tuning.<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/structuhd_1_1tune__request__t.html#aeaaf97e9272ff453174e1be3dd468167">ht=
tps://files.ettus.com/manual/structuhd_1_1tune__request__t.html#aeaaf97e9=
272ff453174e1be3dd468167</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1137522437.419358.1688124879387@mail.yahoo.com">
      <div class=3D"ydpfb9a8ed8yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydpd26af6c6yahoo_quoted_8415392998"
        class=3D"ydpd26af6c6yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Thursday, 29 June 2023 at 17:19:32 BST, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div dir=3D"ltr">On 29/06/2023 11:38, Rob Kossler wrote:<br
                clear=3D"none">
              &gt; On Thu, Jun 29, 2023 at 11:09=E2=80=AFAM Marcus D. Lee=
ch<br
                clear=3D"none">
              &gt; &lt;<a shape=3D"rect"
                href=3D"mailto:patchvonbraun@gmail.com" rel=3D"nofollow"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</=
a>&gt;
              wrote:<br clear=3D"none">
              &gt;&gt; On 29/06/2023 09:36, zhou via USRP-users wrote:<br
                clear=3D"none">
              &gt;&gt; I am using X310 USRPs. I did a loopback test with
              this USRP, that is, Tx was connected to Rx (with a 20dB
              attenuator between them). This is for checking the channel
              status.<br clear=3D"none">
              &gt;&gt; In my test, Tx is free running without stop, and
              Rx is occasional. Both transmission and capture are
              time-based, that is, signals are transmitted at specified
              time, and capture starts at specified time.<br
                clear=3D"none">
              &gt;&gt;<br clear=3D"none">
              &gt;&gt; Master clock rate: 184.32MHz<br clear=3D"none">
              &gt;&gt; Sampling rate: 184.32MHz<br clear=3D"none">
              &gt;&gt;<br clear=3D"none">
              &gt;&gt; Using the captured signals, I can calculate the
              channel coefficient. A few captures were made.<br
                clear=3D"none">
              &gt;&gt;<br clear=3D"none">
              &gt;&gt; I expected constant channel because it was cable
              connection and it was in the same USRP, but I found that
              the constellations of the pilot signals rotated when
              comparing different captures. I think this can be caused
              by the phase difference between Tx LO and Rx LO, but not
              sure.<br clear=3D"none">
              &gt;&gt;<br clear=3D"none">
              &gt;&gt; Questions:<br clear=3D"none">
              &gt;&gt; 1. are there independent LOs for Tx and Rx in a
              USRP?<br clear=3D"none">
              &gt;&gt;<br clear=3D"none">
              &gt;&gt; Yes.=C2=A0 In fact, in any realistic on-the-air
              scenario, your RX and TX will never be phase aligned, or
              even phase-coherent.<br clear=3D"none">
              &gt; Although there are separate LOs, they are both
              disciplined to the 10<br clear=3D"none">
              &gt; MHz reference. If they are set using timed commands,
              they can provide<br clear=3D"none">
              &gt; repeatable phase (at least for some daughterboards
              like UBX and SBX).<br clear=3D"none">
              &gt; In radar applications, phase coherent Rx/Tx is
              common.<br clear=3D"none">
              &gt;<br clear=3D"none">
              &gt;&gt; 2. Is the Rx LO on and off in test, that is, it
              starts when capture starts and stops when capture is
              completed? So, the LO phase offset between Tx and Rx is
              random?<br clear=3D"none">
              &gt;&gt;<br clear=3D"none">
              &gt;&gt; I would expect the RX LO phase to random with
              respect to the TX every time you start/stop the RX.<br
                clear=3D"none">
              &gt; In the description above, you mentioned free-running
              Tx but you also<br clear=3D"none">
              &gt; mentioned timed transmission and capture. If you are
              using timed Tx<br clear=3D"none">
              &gt; and Rx along with the timed tuning commands, I would
              expect a<br clear=3D"none">
              &gt; consistent phase offset (depending again on
              daughterboard).=C2=A0 If you<br clear=3D"none">
              &gt; have free running Tx, then I would expect it to be
              random.<br clear=3D"none">
              Something else to note about X310 is that in order for
              timed tuning to <br clear=3D"none">
              work with the DDCs, there has to be a stream running<br
                clear=3D"none">
              =C2=A0 through it at the time, because it gets its notions =
of
              time from the <br clear=3D"none">
              radio block and uses tagged samples running through it to<b=
r
                clear=3D"none">
              =C2=A0 time re-tunes precise-to-the-sample.<br clear=3D"non=
e">
              <br clear=3D"none">
              In this case, I think we're just talking about timed
              *streaming*, which <br clear=3D"none">
              shouldn't touch the LOs/DDC/DUC at all.=C2=A0 However, if<b=
r
                clear=3D"none">
              =C2=A0 the TX is continuous, and the RX is discontinuous, t=
he
              RX will be <br clear=3D"none">
              picking up the TX at some random phase.
              <div class=3D"ydpd26af6c6yqt1316621178"
                id=3D"ydpd26af6c6yqtfd74140"><br clear=3D"none">
                <br clear=3D"none">
                _______________________________________________<br
                  clear=3D"none">
                USRP-users mailing list -- <a shape=3D"rect"
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"t=
rue"
                  class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.=
com</a><br
                  clear=3D"none">
                To unsubscribe send an email to <a shape=3D"rect"
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"t=
rue"
                  class=3D"moz-txt-link-freetext">usrp-users-leave@lists.=
ettus.com</a><br
                  clear=3D"none">
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------wc7kk6jU7X8OLw7yjSjjfsLa--

--===============7288129575366575832==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7288129575366575832==--
