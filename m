Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB1EA3AFC5
	for <lists+usrp-users@lfdr.de>; Wed, 19 Feb 2025 03:45:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 58CFB385E80
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 21:45:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739933145; bh=aTm++2OvgDv+X1So2liVjllHQwJtbP59A0OFsTXu3HM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=PFZFB8v3AbQH7EwMKzbVGbKThZ7YxuyvhJEGBv8iHxfESvD1sIBI2a+dI8aSaFMtU
	 EfCRrWOiz2BrOeQw3LFvLIc432vhs8/71WIPpEBwS62y6BW4aqtFJYJFXIH0JMzfnV
	 o3WS0HCBsD3ojQgpOQz8hvSYO1i9Ydyia/IinSowUDcJr4vHHioDuRn3Vt0xkY/8sl
	 pTy+3sJ4PY7lW0VYZUq+WzNN/wY3te6L0cQujZXgb7WmdEfe/m/LOdhKufrt7IVB70
	 YIct05vYUrvMUxuX375VT8qDo4+ReyDw4rjHZuzvnBDqnwjTWhfB/2rOoEWVy/BHGP
	 g217CQu60qEmg==
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 9AB44385E33
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 21:45:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=vectalabs-com.20230601.gappssmtp.com header.i=@vectalabs-com.20230601.gappssmtp.com header.b="p4jcx17S";
	dkim-atps=neutral
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-30a2d4b61e4so24292221fa.1
        for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 18:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20230601.gappssmtp.com; s=20230601; t=1739933138; x=1740537938; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GsbTt65hfEBVKmtTR2uRnf0jqPdurnW7wkvLMWVvQtE=;
        b=p4jcx17Sz1yHO8k7Xsu/OM3XcKg54lSd2tD9IRJbNw9nR2C/bjFfmSSg2uZ6L4fg32
         VRITzo3bTTbDQBAVighOBg/cXI0iJOreiVvE2XXSJeaL9Wr4P3kZTW90QAPb108Rkayg
         VZSMmOMsba7BvNKWn7MQu9aa2rLXY3pPMLNS3Mbo77AMJqe7REkb2Q55HNVFMx+a6NM2
         pRhpP6DkHhMTpHWEq4oVCYC688ZiE3WlbNGav9WvKYq2CQRNng2tCixixeZz7fYgR+km
         OQ+v27cLhplL/eA0aoY75qpiwSBJpRYfv8nIldvFZj0ZUf311s8mx6ftCGgvkOZ2VD93
         ZpUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739933138; x=1740537938;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GsbTt65hfEBVKmtTR2uRnf0jqPdurnW7wkvLMWVvQtE=;
        b=cy2YNKehiEAQc+PnJjtQLsrQAPq2uG6p5NheO7jXqQvsHF7vejrpGCRQz2SzAbYdcv
         c71C/DuUZDkvckmgOJkDUGsbQxbrVOyomlLywvgW21YPOH1eq20XDRwdGI8b3KBUBExU
         2s5ipOWXIur+AGveDEF2zKV4hPUmdrgK62S0YN5tUHUERidHqEoJJWylxSqolb+ZB5z6
         AGeqEjzbMpbEdOFwv22Y2golS8uE1sWcTOt8cbcBXGWIhqyo5ZzUIc/2AMbCEZuYZPgX
         BYyDPovEG63EyKhtk7He4lVig8Z4S6QI0ByCGigpU4wicE2o3+72YKEX/41qFUvOQBT2
         BV5Q==
X-Gm-Message-State: AOJu0YzjAeWno4QHA4P4NEf6NvN48CqHg5iCsmA8qc4rbBZbIqJKO71E
	Su1hAAKeHAj9CJ07R8KRJh8B3VpsnQyA78Q+wv8yMyZ45tDB4wBM6qGP+ZWDEb6qDTUZSlCRzu/
	qqZC034xcYivjyXf6iw5KzqxWRqG76UMjWhc5LQ==
X-Gm-Gg: ASbGncsWyJFrATzws03D0vGf8VfUBmUbv6Oc+dU3py9jauOq5ILJ7U3YIx0pc2ncjoN
	NHsHibsGzIdQ9If6HFea8uhSK6KWAbnTPXa1Vz/K35lU9pXjyxo1hqxrvuCxj1XQlNWqG0EKZ
X-Google-Smtp-Source: AGHT+IHhFsZKTvQdDqfyz8qegsQl7C21Yd3cB5uqq5LfLaOCHsWPs9Su40wxxHeA7GPWI5wG5b7o3TKWtBmfTpBQPBU=
X-Received: by 2002:a2e:800c:0:b0:308:ec6f:7022 with SMTP id
 38308e7fff4ca-30a44ed019cmr5257151fa.17.1739933138054; Tue, 18 Feb 2025
 18:45:38 -0800 (PST)
MIME-Version: 1.0
References: <CALNMZ8V-5SpmYTthV86m96Cwq1=4OUQpUtwrr3ZPUAzNTS+CRg@mail.gmail.com>
 <28CC5603-8F9C-4D93-A8B9-EA912307AE8A@gmail.com> <CALNMZ8WZpZ9hm7pTNUZ+fQ4TN-icBeU4iUAGJF9VDQm=T_Mvxw@mail.gmail.com>
 <7fc34db8-89e4-4e72-beda-cbdd872e3f19@gmail.com> <CALNMZ8UYp42D=Tdyy1+EramVAN_LdmeWuDhvnBWLKz-jeoZhBA@mail.gmail.com>
 <d3a8592f-30fb-45b3-870d-95b6d1b64f2e@gmail.com> <CALNMZ8XRt+4iLNhb7fV5DiLrFz+pqNc33F=A4JGJEDykSq4QvQ@mail.gmail.com>
 <de3fefcd-8095-4537-9efb-8414ec7a24d8@gmail.com>
In-Reply-To: <de3fefcd-8095-4537-9efb-8414ec7a24d8@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Wed, 19 Feb 2025 12:45:26 +1000
X-Gm-Features: AWEUYZk4oG40AUx0gDwWhmxt9jNTcBSgaPTZbh5QjPQ-FwytuViUZP0qMW6pSsg
Message-ID: <CALNMZ8U5pY=Rm_b5N_kCmsHBV0utfMx5LgtivK=uW_c7rMbYbg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: SFPT3MO4YFZYVJGDRXRNTETMXE663AN2
X-Message-ID-Hash: SFPT3MO4YFZYVJGDRXRNTETMXE663AN2
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Usable bandwidth of X300 USRP with UBX-160 daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SFPT3MO4YFZYVJGDRXRNTETMXE663AN2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3089926274335669329=="

--===============3089926274335669329==
Content-Type: multipart/alternative; boundary="000000000000a08b17062e75c0db"

--000000000000a08b17062e75c0db
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Point taken.  At this stage we are mainly interested in straight IQ
recording & playback with minimal processing.  However, in the future it
would be desirable to be able to display a real-time spectrum trace &
waterfall plot during recording/playback, using GNU Radio or something like
it.

As you suggest, I am assuming our host machine will need a dual-10Gbe
adaptor card and a high-spec CPU, memory, SSD etc.  This is a complex
procurement exercise all by itself.



On Wed, 19 Feb 2025 at 10:58, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 18/02/2025 19:26, Brendan Horsfield wrote:
>
> I thought your name sounded familiar! =F0=9F=99=82
>
> Overall the X310+UBX-160 appears to be a good fit to our requirements.  M=
y
> original question was really about ensuring that our host PC & network
> interface have sufficient bandwidth to ingest the IQ data from a pair of
> UBX-160s.  It would be nice (although not essential) if we could run one
> channel at 100 Msps, and the other at 200 Msps, to reduce the bandwidth
> requirements on the backend hardware.
>
> You'd need to have separate streamers to support two different sample
> rates, and two 10Gbe interfaces.
>
> But in terms of "what kind of PC hardware do I need?". There's no
> closed-form answer to that question.  There's no
>   handy-dandy "engineering worksheet" that tells you how much "grunt" you
> need for different DSP "flows" at
>   a given sample-rate--so very much depends on what you're doing, and how
> you're doing it.  Generally, as you scale up
>   in sample-rate, you have to scale up in:
>
>    o CPU base clock rate
>
>    o Memory bandwidth
>
>    o Number of CPUs
>
>
>
>
>
>
>
> On Wed, 19 Feb 2025 at 10:17, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 18/02/2025 19:13, Brendan Horsfield wrote:
>>
>> Thanks for the suggestion about the noise source -- that's what I would
>> normally do.  Unfortunately I haven't actually purchased the hardware ye=
t
>> -- I was hoping to clarify this issue before raising a purchase order.
>>
>> Perhaps I should follow this up with one of the application engineers at
>> NI?  They might have access to an X310+UBX-160 system that they can use =
to
>> answer my question directly.
>>
>> Thanks again for your help in this matter.
>>
>> Regards,
>> Brendan.
>>
>> I actually do work for NI on USRP devices (on a very very very part-time
>> basis).  My X310 is currently elsewhere, and not populated
>>   with a UBX-160.
>>
>>
>>
>>
>> On Wed, 19 Feb 2025 at 09:55, Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 18/02/2025 18:45, Brendan Horsfield wrote:
>>>
>>> Yes, I assumed that was the case.  However, it is not clear from the
>>> X300 documentation how sharp those filters are.  Can you tell me how wi=
de
>>> the transition band is at the lower sample rates?
>>>
>>> To give you some context, I would like to use an X300 (or X310) with a
>>> UBX-160 daughterboard to digitise the entire 2.4 GHz Wi-Fi band, which =
is
>>> 83.5 MHz wide.  Ideally I would like to use a sample rate of 100 Msps t=
o
>>> minimise the data rate between the USRP and the host PC.  However, befo=
re I
>>> do this I need to be certain that the usable bandwidth at this sample r=
ate
>>> will be greater than 83.5 MHz.  Is this information documented somewher=
e?
>>>
>>>
>>> It somewhat depends on the decimation.  If the decimation has a factor
>>> of two or 4, the edge roll-off is fairly sharp.  Otherwise,
>>>   there's a half-band filter in-place that causes a less-desirable
>>> pass-band.
>>>
>>> But I don't know, precisely, what the transition band is in the "nicer"
>>> filter shapes.
>>>
>>>
>>> If you have an X310+UBX-160, you can always just use a noise source, an=
d
>>> measure it yourself to see if it's appropriate for
>>>   your application.
>>>
>>>
>>>
>>>
>>> On Tue, 18 Feb 2025 at 23:11, Marcus D Leech <patchvonbraun@gmail.com>
>>> wrote:
>>>
>>>> There will always be some edge roll off. Decimation includes filtering
>>>> and those filters cannot be infinitely steep.
>>>> Sent from my iPhone
>>>>
>>>> > On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan Horsfield <
>>>> brendan.horsfield@vectalabs.com> wrote:
>>>> >
>>>> > =EF=BB=BF
>>>> > Hi All,
>>>> >
>>>> > I have a question about the usable bandwidth of the X300 USRP /
>>>> UBX-160 daughterboard combo at sampling rates below 200 Msps:
>>>> >
>>>> > As I understand it, the UBX-160 receiver has an analog (hardware)
>>>> filter before the ADC that limits the usable bandwidth to 160 MHz, whi=
le
>>>> the ADC runs at 200 Msps.  Therefore the usable bandwidth is around 80=
% of
>>>> the sample rate.
>>>> >
>>>> > My question is:  What is the usable bandwidth at lower sampling
>>>> rates?  Does the 80% factor always apply?
>>>> >
>>>> > For example, if I set the decimation factor to 4, so that my samplin=
g
>>>> rate is 50 Msps, does this mean that the usable bandwidth will be 40 M=
Hz?
>>>> >
>>>> > Thanks & Regards,
>>>> > Brendan.
>>>> >
>>>> > _______________________________________________
>>>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>
>>>
>>
>

--000000000000a08b17062e75c0db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Point taken.=C2=A0 At this stage we are mainly interested =
in straight IQ recording &amp; playback with minimal processing.=C2=A0 Howe=
ver, in the future it would be desirable to be able to display a real-time =
spectrum trace &amp; waterfall plot during recording/playback, using GNU Ra=
dio or something like it.<div><br></div><div>As you suggest, I am assuming =
our=C2=A0host machine will need a dual-10Gbe adaptor card and a high-spec C=
PU, memory, SSD etc.=C2=A0 This is a complex procurement exercise all by it=
self.=C2=A0<div><br></div><div><br></div></div></div><br><div class=3D"gmai=
l_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, 19 Feb 2025 at 10:58, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun=
@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 18/02/2025 19:26, Brendan Horsfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">I thought your name sounded familiar!=C2=A0=F0=9F=99=
=82
        <div><br>
        </div>
        <div>Overall the X310+UBX-160 appears to be a good fit to our
          requirements.=C2=A0 My original question was really about ensurin=
g
          that our host PC &amp; network interface have sufficient
          bandwidth to ingest the IQ data from a pair of UBX-160s.=C2=A0 It
          would be nice (although not essential) if we could run one
          channel at 100 Msps, and the other at 200 Msps, to reduce the
          bandwidth requirements on the backend hardware.</div>
      </div>
    </blockquote>
    You&#39;d need to have separate streamers to support two different
    sample rates, and two 10Gbe interfaces.<br>
    <br>
    But in terms of &quot;what kind of PC hardware do I need?&quot;. There&=
#39;s no
    closed-form answer to that question.=C2=A0 There&#39;s no<br>
    =C2=A0 handy-dandy &quot;engineering worksheet&quot; that tells you how=
 much
    &quot;grunt&quot; you need for different DSP &quot;flows&quot; at<br>
    =C2=A0 a given sample-rate--so very much depends on what you&#39;re doi=
ng,
    and how you&#39;re doing it.=C2=A0 Generally, as you scale up<br>
    =C2=A0 in sample-rate, you have to scale up in:<br>
    <br>
    =C2=A0=C2=A0 o CPU base clock rate<br>
    <br>
    =C2=A0=C2=A0 o Memory bandwidth<br>
    <br>
    =C2=A0=C2=A0 o Number of CPUs<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>=C2=A0=C2=A0</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025 at 10:17,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 18/02/2025 19:13, Brendan Horsfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Thanks for the suggestion about the noise
                source -- that&#39;s what I would normally=C2=A0do.=C2=A0
                Unfortunately I haven&#39;t actually purchased the hardware
                yet -- I was hoping to clarify this issue before raising
                a purchase order.
                <div><br>
                </div>
                <div>Perhaps I should follow this up with one of the
                  application engineers at NI?=C2=A0 They might have access
                  to an X310+UBX-160 system that they can use to answer
                  my question directly.</div>
                <div><br>
                </div>
                <div>Thanks again for your help in this matter.</div>
                <div><br>
                </div>
                <div>Regards,</div>
                <div>Brendan.</div>
              </div>
            </blockquote>
            I actually do work for NI on USRP devices (on a very very
            very part-time basis).=C2=A0 My X310 is currently elsewhere, an=
d
            not populated<br>
            =C2=A0 with a UBX-160.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>=C2=A0 =C2=A0</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Feb 2025 a=
t
                  09:55, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbrau=
n@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 18/02/2025 18:45, Brendan Horsfield wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">Yes, I assumed that was the case.=C2=
=A0
                        However, it is not clear from the X300
                        documentation how sharp those filters are.=C2=A0 Ca=
n
                        you tell me how wide the transition band is at
                        the lower sample rates?
                        <div><br>
                        </div>
                        <div>To give you some context, I would like to
                          use an X300 (or X310) with a UBX-160
                          daughterboard to digitise the entire 2.4 GHz
                          Wi-Fi band, which is 83.5 MHz wide.=C2=A0 Ideally=
 I
                          would like to use a sample rate of 100 Msps to
                          minimise the data rate between the USRP and
                          the host PC.=C2=A0 However, before I do this I ne=
ed
                          to be certain that the usable bandwidth at
                          this sample rate will be greater than 83.5
                          MHz.=C2=A0 Is this information documented
                          somewhere?=C2=A0=C2=A0</div>
                        <div><br>
                        </div>
                        <div><br>
                        </div>
                      </div>
                    </blockquote>
                    It somewhat depends on the decimation.=C2=A0 If the
                    decimation has a factor of two or 4, the edge
                    roll-off is fairly sharp.=C2=A0 Otherwise,<br>
                    =C2=A0 there&#39;s a half-band filter in-place that cau=
ses a
                    less-desirable pass-band.<br>
                    <br>
                    But I don&#39;t know, precisely, what the transition
                    band is in the &quot;nicer&quot; filter shapes.<br>
                    <br>
                    <br>
                    If you have an X310+UBX-160, you can always just use
                    a noise source, and measure it yourself to see if
                    it&#39;s appropriate for<br>
                    =C2=A0 your application.<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div>=C2=A0</div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 18 Fe=
b
                          2025 at 23:11, Marcus D Leech &lt;<a href=3D"mail=
to:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&g=
t;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">T=
here
                          will always be some edge roll off. Decimation
                          includes filtering and those filters cannot be
                          infinitely steep. <br>
                          Sent from my iPhone<br>
                          <br>
                          &gt; On Feb 18, 2025, at 2:12=E2=80=AFAM, Brendan
                          Horsfield &lt;<a href=3D"mailto:brendan.horsfield=
@vectalabs.com" target=3D"_blank">brendan.horsfield@vectalabs.com</a>&gt;
                          wrote:<br>
                          &gt; <br>
                          &gt; =EF=BB=BF<br>
                          &gt; Hi All,<br>
                          &gt; <br>
                          &gt; I have a question about the usable
                          bandwidth of the X300 USRP / UBX-160
                          daughterboard combo at sampling rates below
                          200 Msps:<br>
                          &gt; <br>
                          &gt; As I understand it, the UBX-160 receiver
                          has an analog (hardware) filter before the ADC
                          that limits the usable bandwidth to 160 MHz,
                          while the ADC runs at 200 Msps.=C2=A0 Therefore t=
he
                          usable bandwidth is around 80% of the sample
                          rate.<br>
                          &gt; <br>
                          &gt; My question is:=C2=A0 What is the usable
                          bandwidth at lower sampling rates?=C2=A0 Does the
                          80% factor always apply?=C2=A0 <br>
                          &gt; <br>
                          &gt; For example, if I set the decimation
                          factor to 4, so that my sampling rate is 50
                          Msps, does this mean that the usable bandwidth
                          will be 40 MHz?<br>
                          &gt; <br>
                          &gt; Thanks &amp; Regards,<br>
                          &gt; Brendan.<br>
                          &gt; <br>
                          &gt;
                          _______________________________________________<b=
r>
                          &gt; USRP-users mailing list -- <a href=3D"mailto=
:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</=
a><br>
                          &gt; To unsubscribe send an email to <a href=3D"m=
ailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@=
lists.ettus.com</a><br>
                        </blockquote>
                      </div>
                    </blockquote>
                    <br>
                  </div>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000a08b17062e75c0db--

--===============3089926274335669329==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3089926274335669329==--
