Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B2369B2E1
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 20:15:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4669B384235
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 14:15:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676661311; bh=iHrIoXhA3FSZhC6/wgSgXh+ta9W448KPBXsDFgwiHgI=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=aK3oOlOYZKs0LDOptUaLCkVEfDbOm8apxzmiowsIcu3bmcxIBfLb6LLIxLUyIBYFP
	 SbZi812oBEgOKMJIdEU4GtWw4HCvs+RqZLqddxWd+iEBm26gyFrG92ciYSJYouGyAK
	 wya0v7PS45WKL7AzdIzZWLMp4BapxkMgg+UQ/lpF0zj3LGgMsaiAy56o3hZriFuG6v
	 XX+6xlVFEmf/25n9JTDY+IfyPRuKuMU5me4lljK+nYxmTik9UVoGXW9Fag0zFVyvWK
	 7rCg+KirlOviwdG54gdabkA9kWF3hq8JCK95EJaDKLOGo2wYUeVP/JchhNfD4Kqik6
	 zseqRXdJNxTwQ==
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 8FC8D3818F4
	for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 14:14:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="Jhq2KnT9";
	dkim-atps=neutral
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-17068acb0c2so2657505fac.6
        for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 11:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kdsQBsWK3qXnXgYTYktmCPABk5Vcj4OyV3RSFBqVsUw=;
        b=Jhq2KnT95GHjHEcQY7O8ri4ZMa24s/Yd4ILYnBzAJo28jf19stiU3uUSwv/PffHtct
         QiaQsA43PeGMFctqUDfyvUHFKcN1CXmo3rBGo22qxnCltsSb0e3uGi+YfDoAxzowiQ/V
         HGiJMzbglhRig0cNTWSJeLjyefMDLsz6nsedyQDuNiO4O21j9ixnfH9VmhKII5z679Gt
         S1p20PQKJLP7BBISLkN5H5joU6lZXyCDD8WROh5UvPSNgpXCJQ46iJrH7VOlHCR6sfh9
         K7YGxxWUbE2Y0IiRWEMoHqriavs937MhXXuMKZoLtzoopI8c3YlkYzadMgJyDXpRQ1cw
         XafQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kdsQBsWK3qXnXgYTYktmCPABk5Vcj4OyV3RSFBqVsUw=;
        b=n+dRzafRBHZ0BLmbO97+BoFr4j4XCA3cZ96XVOK/mUU7EpTB4N8/Jk3jvdj7iC/Ws4
         /rW79fFkaAYLKSGWULun/tEQBNCDVEWOMS7+f3UjKlBpeHL27r9BTwYdctiTHwFcnBvk
         +ZzZHqh83QHvvtm6X+OssEcR4ID3FphZsWLDU9bjjuj9/5W7ehalbQv+kOMLjPX84q2Y
         QoJiJYKwZPgCD7kM/wRubhPYCifLaDVSRImOD3XS/Plq/1D0QBOtZYBgLfJKqmVRkEB3
         q1Yer1hwDcYT+aIP+/rDGaeWvIN9DeAyIEg+aljQBA8zopU7OauYfnqVJfX4HhRM7Hil
         8o3w==
X-Gm-Message-State: AO0yUKUAH3/SSYUExd0ZirGWTT/5NVK4IY7W8Nb5RywTpuKUiW0YXnEl
	6Hu14tAxcEl8EWYn0fLetmbRBgU4FaFJEwIfNdGQYA==
X-Google-Smtp-Source: AK7set9BXMDKrtG3YWhbE57QrtWD5YuEv2FGXtsnTzd817Xx8T7zelI9kIo4zKpop04PABG8UC1St5EA/TG9tKs87XY=
X-Received: by 2002:a05:6870:24a1:b0:16e:83dc:c4be with SMTP id
 s33-20020a05687024a100b0016e83dcc4bemr429555oaq.20.1676661272635; Fri, 17 Feb
 2023 11:14:32 -0800 (PST)
MIME-Version: 1.0
References: <CANvw1+RzoBzytLFxQUvH1uYu03VpUNp97PXaqaKF6JvVAS5u6Q@mail.gmail.com>
 <d9568b3e-38a3-c32a-7808-e2529efa4f34@gmail.com> <CANvw1+RgMMvjG6EFkyVLxqCfO_iC866HyJPSTxdv-XM_6zzW4w@mail.gmail.com>
 <2ce67fb3-d776-534c-1f38-4421da3c5d3a@gmail.com>
In-Reply-To: <2ce67fb3-d776-534c-1f38-4421da3c5d3a@gmail.com>
Date: Fri, 17 Feb 2023 14:14:21 -0500
Message-ID: <CANvw1+Rqk-sMaiswCL4=iggm04mrMYgXt50aTEjuuzMq9yYrTA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: WQAI2AH45UZWGZOEK4HYORDM2PQ7KQYR
X-Message-ID-Hash: WQAI2AH45UZWGZOEK4HYORDM2PQ7KQYR
X-MailFrom: agurses@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Continuous stream receive process
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WQAI2AH45UZWGZOEK4HYORDM2PQ7KQYR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Anil Gurses via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anil Gurses <agurses@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============2680576532408522746=="

--===============2680576532408522746==
Content-Type: multipart/alternative; boundary="000000000000908f1c05f4ea1f89"

--000000000000908f1c05f4ea1f89
Content-Type: text/plain; charset="UTF-8"

Do you know any documentation about USRP continuous streaming? It might be
more useful if I check those documents. I couldn't find anything about it
in the UHD/USRP manual.


A.

On Fri, Feb 17, 2023 at 2:06 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 17/02/2023 14:00, Anil Gurses wrote:
>
>
> Thanks for your quick response!
>
> In general, your application absolutely, positively, needs to call
>> recv() to consume samples as fast as they're produced, on average.
>>    Short-term shortfalls are "soaked up" by buffers, but if your
>> application cannot "keep up", no amount of buffering will save it.
>>
>
> This is why we have overflows. Then, my interpretation of continuous
> streaming is correct.
>
> To test this, I created a simple python script by putting delays(sleep)
> between consecutive recv calls for b205 mini. The lights turned on only at
> recv calls and not during delays. I checked the metadata time and USRP time
> to see if the packets are buffered. There was a difference between them and
> it proves that packets are buffered.  However, I still don't understand how
> RX light is triggered on continuous streaming.
>
> A.
>
> The light may turn off when over-runs are happening.  I don't know the
> detailed logic behind the lights.
>
> Ah:
>
> https://files.ettus.com/manual/page_usrp_b200.html#b200_hw_ref_leds
>
> I'll point out that using Python to do DSP at anything other than
> "trivial" rates is a near-guarantee of overruns.  Even if you're
>    using high-performance underlying libraries like Numpy, the
> data-marshalling costs in Python make it unsuitable for anything
>    but low-sample-rate experiments.
>
> Gnu Radio does much better in this regard.  While it does use Python as a
> kind of "control plane", the "sample plane" is
>   all handled in C++ land, and nearly-ALL of the packaged DSP blocks are
> written in C++ using SIMD optimizations wherever
>   possible.
>
>
>
>
> On Fri, Feb 17, 2023 at 1:43 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 17/02/2023 13:34, Anil Gurses via USRP-users wrote:
>> > Hi all,
>> >
>> > I have a simple question about the continuous stream. As you all know,
>> > USRP RX lights indicate whether it's receiving samples or not. On
>> > continuous streaming, these lights are turned on if the recv function
>> > is called from the host computer(stay on until the end of recv
>> > function call). In theory, the continuous streaming mode should
>> > receive and buffer these samples. So, shouldn't the lights be on until
>> > the continuous streaming stop(not until the end of recv function call)?
>> >
>> > If this is how it should be, then my understanding of continuous
>> > stream is wrong. If I don't call recv function, doesn't USRP receive
>> > samples and buffer them(on continuous streaming mode)?
>> The light is turned on when a receive streamer is created, as far as I
>> know.
>>
>> If your application doesn't call recv(), some number of samples will be
>> buffered in various parts of the library and OS drivers, and
>>    then they'll just start getting dropped.
>>
>> In general, your application absolutely, positively, needs to call
>> recv() to consume samples as fast as they're produced, on average.
>>    Short-term shortfalls are "soaked up" by buffers, but if your
>> application cannot "keep up", no amount of buffering will save it.
>>
>>
>>
>>
>> >
>> >
>> > Thanks,
>> > A.
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--000000000000908f1c05f4ea1f89
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Do you know any documentation about USRP continuous s=
treaming? It might be more useful if I check those documents. I couldn&#39;=
t find anything about it in the UHD/USRP manual. <br></div><div><br></div><=
div><br></div><div>A.<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Feb 17, 2023 at 2:06 PM Marcus D. Le=
ech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 17/02/2023 14:00, Anil Gurses wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Thanks for your quick response! <br>
        </div>
        <div><br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          In general, your application absolutely, positively, needs to
          call <br>
          recv() to consume samples as fast as they&#39;re produced, on
          average.<br>
          =C2=A0=C2=A0 Short-term shortfalls are &quot;soaked up&quot; by b=
uffers, but if
          your <br>
          <div>
            application cannot &quot;keep up&quot;, no amount of buffering =
will
            save it.</div>
        </blockquote>
        <div><br>
        </div>
        <div>This is why we have overflows. Then, my interpretation of
          continuous streaming is correct. <br>
        </div>
        <div><br>
        </div>
        <div>To test this, I created a simple python script by putting
          delays(sleep) between consecutive recv calls for b205 mini.
          The lights turned on only at recv calls and not during delays.
          I checked the metadata time and USRP time to see if the
          packets are buffered. There was a difference between them and
          it proves that packets are buffered.=C2=A0 However, I still don&#=
39;t
          understand how RX light is triggered on continuous streaming.
          <br>
        </div>
        <div><br>
        </div>
        <div>A. <br>
        </div>
      </div>
    </blockquote>
    The light may turn off when over-runs are happening.=C2=A0 I don&#39;t =
know
    the detailed logic behind the lights.=C2=A0 <br>
    <br>
    Ah:<br>
    <br>
    <a href=3D"https://files.ettus.com/manual/page_usrp_b200.html#b200_hw_r=
ef_leds" target=3D"_blank">https://files.ettus.com/manual/page_usrp_b200.ht=
ml#b200_hw_ref_leds</a><br>
    <br>
    I&#39;ll point out that using Python to do DSP at anything other than
    &quot;trivial&quot; rates is a near-guarantee of overruns.=C2=A0 Even i=
f you&#39;re<br>
    =C2=A0=C2=A0 using high-performance underlying libraries like Numpy, th=
e
    data-marshalling costs in Python make it unsuitable for anything<br>
    =C2=A0=C2=A0 but low-sample-rate experiments.<br>
    <br>
    Gnu Radio does much better in this regard.=C2=A0 While it does use Pyth=
on
    as a kind of &quot;control plane&quot;, the &quot;sample plane&quot; is=
<br>
    =C2=A0 all handled in C++ land, and nearly-ALL of the packaged DSP bloc=
ks
    are written in C++ using SIMD optimizations wherever<br>
    =C2=A0 possible.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 17, 2023 at 1:43
          PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          17/02/2023 13:34, Anil Gurses via USRP-users wrote:<br>
          &gt; Hi all,<br>
          &gt;<br>
          &gt; I have a simple question about the continuous stream. As
          you all know, <br>
          &gt; USRP RX lights indicate whether it&#39;s receiving samples o=
r
          not. On <br>
          &gt; continuous streaming, these lights are turned on if the
          recv function <br>
          &gt; is called from the host computer(stay on until the end of
          recv <br>
          &gt; function call). In theory, the continuous streaming mode
          should <br>
          &gt; receive and buffer these samples. So, shouldn&#39;t the
          lights be on until <br>
          &gt; the continuous streaming stop(not until the end of recv
          function call)?<br>
          &gt;<br>
          &gt; If this is how it should be, then my understanding of
          continuous <br>
          &gt; stream is wrong. If I don&#39;t call recv function, doesn&#3=
9;t
          USRP receive <br>
          &gt; samples and buffer them(on continuous streaming mode)?<br>
          The light is turned on when a receive streamer is created, as
          far as I know.<br>
          <br>
          If your application doesn&#39;t call recv(), some number of
          samples will be <br>
          buffered in various parts of the library and OS drivers, and<br>
          =C2=A0=C2=A0 then they&#39;ll just start getting dropped.<br>
          <br>
          In general, your application absolutely, positively, needs to
          call <br>
          recv() to consume samples as fast as they&#39;re produced, on
          average.<br>
          =C2=A0=C2=A0 Short-term shortfalls are &quot;soaked up&quot; by b=
uffers, but if
          your <br>
          application cannot &quot;keep up&quot;, no amount of buffering wi=
ll save
          it.<br>
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
          &gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          &gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users=
-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com<=
/a><br>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000908f1c05f4ea1f89--

--===============2680576532408522746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2680576532408522746==--
