Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F407642CFF
	for <lists+usrp-users@lfdr.de>; Mon,  5 Dec 2022 17:36:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34F38384231
	for <lists+usrp-users@lfdr.de>; Mon,  5 Dec 2022 11:36:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670258212; bh=V3JUS5CtGSqBd8XTWHBQJKfPweQWhjsFJP9828Af9+s=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=QGssX8oPF5Njtk2pc94Y+boFCrRLLX6HFYQMhKUltHzE3+g/Z818L4mUzIR4DEAtB
	 qH+zvxnCuyRsuN/POh/TqcU5Z46K9dXwlNfj8CcW78zJ7xOzIQzHb6UteiQo4LQTEN
	 FxSA4vrzL11L8Tc/Ms3wNOp4IXWykDfUNlPJa95xVCloTu2a9cjwGZvTSYxR2pZc3g
	 tIPQoS4vi7IVd/qSFNOoCWtTqC3eSIHfhwwXUlcaa5gqAAwn5tIq+8lqKPScibQ6o7
	 vmh3yC5kXsJPKv5nAYV21ayCCFZvCoG78+lH13WcqOhrjJ3X32ogxXB9l7jQnmEfkM
	 HOG7JbEHE0vOA==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 97F5138418B
	for <usrp-users@lists.ettus.com>; Mon,  5 Dec 2022 11:36:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="AoDtQ1R0";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id ud5so29174482ejc.4
        for <usrp-users@lists.ettus.com>; Mon, 05 Dec 2022 08:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dBKMjHfx9ysmyStizopu6R0aw2HBU/jIFaaeVu5SqfM=;
        b=AoDtQ1R0b+1+tR3Pi7IlksDGxZTX1Ym5dI0wxRnxDTvJsUORGHamRGSMBBdvMtbgQ7
         YZPzG1Y0DO77pKC9j1zZs3dFnDYMvKM2TwAXcfglB2us73iSEaBnjjrc/dIC6B1ugJEe
         RW3Hq5YPXXjL6FdJcTvu2M989Ro8BWimQyOolR4SKh3RepMKkXpMHzOLy5MccGGO3U0m
         OUwIiP6r9Tbs9xd8aikKdUva494gtiPP/lfpE4qYZ0wC9KTh1pqOT3mHxusYLuJ6e9VZ
         2R6dpdnr+FMMFHheTt5E5RrrfkQH/CZ6QCylKDl+NgVqA2zNX0rYA6D5C7N3WWHrnjBQ
         rI3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dBKMjHfx9ysmyStizopu6R0aw2HBU/jIFaaeVu5SqfM=;
        b=mYx4KVd6uZcHvEavHRVe5wTEh8MjsF+n+B5J9aOb+rwum6cy/VETdkxMjiwHrUKcaB
         N79Hx5F9WqPvRrxyXtlmcXEddhMmPagWjjMP+GnI1m07bSz9tpCCq4ao8m7l/VunYX3V
         HJcMt6zfL3VzyorHzb/QDKQU4/gXdAKdxfEQyGxPCw3ytKZq9ecqYd5fR+vSYyG1jAjZ
         t+E6fG40RhGf+pqGRV+bKIlnLhUVV7c6PJVbY3IvDeElu5yGitYqHbP3Zqw4yGenasEM
         HfuWSERPgioZ0WToPjWgHF0eHI9J1D5ozGu9jMmR0gGK/smNv7BJ5LGC7aCH9ACnABYm
         F7tA==
X-Gm-Message-State: ANoB5pnxa17CRs3QIe6LGHjWwYhc45kjxVzaNTKomsbo/ElOIfJmu2oZ
	EnAOszN6P3IQA8KnpXVDlchbeZk6W+GqIlUvpJhMRIqiteBzcw==
X-Google-Smtp-Source: AA0mqf7u54UEKuwKvMslgI/5YlGOGybSNv15TuOMSs9JB8/Usxp6Izfad6+E9NvxCvZgnKdfvCXj7nlP/U5w9VHIbbI=
X-Received: by 2002:a17:906:2ac3:b0:7ad:f2f9:2b49 with SMTP id
 m3-20020a1709062ac300b007adf2f92b49mr56301135eje.94.1670258203380; Mon, 05
 Dec 2022 08:36:43 -0800 (PST)
MIME-Version: 1.0
References: <CANV7_JNctBkVjQX2gaQYnwbD2OxdWyCta14=d_75Rah92mZkxA@mail.gmail.com>
 <CAB__hTSw1TWoGqdW+ARytxWG_Va8q9_Cx3xCxUmB5v9_8ifqHw@mail.gmail.com>
 <CANV7_JPioLmC9yFM-N+vX=ZBYHYryypUjsLQd-i2ep7-et60tQ@mail.gmail.com>
 <ee226ecd-5acc-0ee3-55ca-4ef0435ce2a0@gmail.com> <CANV7_JPJ=ZAQZkQx3e35ba=gQFD9XMu+g1M9JVFEmHctiSAG5w@mail.gmail.com>
In-Reply-To: <CANV7_JPJ=ZAQZkQx3e35ba=gQFD9XMu+g1M9JVFEmHctiSAG5w@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 5 Dec 2022 11:36:32 -0500
Message-ID: <CAB__hTSwws+TzXsXRiKh2y8RyrjT16CrVLSe09xs+NzmOsmy0g@mail.gmail.com>
To: Roberto Rigamonti <roberto.rigamonti@gmail.com>
Message-ID-Hash: 5HCUSHG2U4UKF4DMLDXI2EJTFZCBK55B
X-Message-ID-Hash: 5HCUSHG2U4UKF4DMLDXI2EJTFZCBK55B
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Single multi-usrp or multiple, synchronised usrp -- which is best ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5HCUSHG2U4UKF4DMLDXI2EJTFZCBK55B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2750756528732003739=="

--===============2750756528732003739==
Content-Type: multipart/alternative; boundary="000000000000e5b10b05ef174acc"

--000000000000e5b10b05ef174acc
Content-Type: text/plain; charset="UTF-8"

By the way, the benchmark_rate example has a "multi_streamer" option that
allows the user to select whether all the transmit or receive channels are
handled in 1 thread or in 1 thread per channel. Take a look at the source
to see how it is implemented.
Rob

On Mon, Dec 5, 2022 at 11:09 AM Roberto Rigamonti <
roberto.rigamonti@gmail.com> wrote:

> Ok, I'll stick to a single multi-usrp then!
> Thanks!! =)
>
> Best,
> Rob
>
> On Mon, 5 Dec 2022 at 17:03, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 05/12/2022 10:14, Roberto Rigamonti wrote:
>>
>> Hello,
>>
>> Thank for your quick reply! I've never considered creating multiple
>> streamers for sub-sets of channels in a multi-usrp configuration (I either
>> had used a single streamer for a multi-usrp, or per-boards streamers in
>> separate threads), and I hadn't thought having a look at UHD sources for
>> inspiration (from a quick glance, I would say that multi-usrp basically
>> does the job for me...)... Thanks for the suggestions ! :)
>>
>> Best,
>> Rob
>>
>> A single multi_usrp object is also a "synchronization container" -- UHD
>> will try to ensure that all the streams within it are
>>   timestamp-aligned.  It doesn't do that across multiple multi_usrp
>> objects.
>>
>>
>>
>> On Mon, 5 Dec 2022 at 15:55, Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi Rob,
>>> I don't know the direct answer to your question about whether it is
>>> better to use a single "device" instance or to handle multiple boards in
>>> different threads. But, I'm wondering if perhaps the only thing that is
>>> critical is the handling of streamers.  In either case you mentioned, you
>>> can have multiple streamer threads (one for each channel if you want). In
>>> the past, I experienced better performance by running each streamer in its
>>> own thread, but I can't confirm if that is still true in more recent
>>> versions of UHD.  On a side note, you might want to take a look at the
>>> Ettus file host/lib/usrp/multi_usrp_rfnoc.cpp. This file shows how Ettus
>>> implements the multi_usrp object using the lower level commands of the
>>> RFNoC API.
>>> Rob
>>>
>>> On Mon, Dec 5, 2022 at 9:32 AM Roberto Rigamonti <
>>> roberto.rigamonti@gmail.com> wrote:
>>>
>>>> Hello,
>>>>
>>>> I have a mix of N320/N321 boards, and I would like to make synchronised
>>>> acquisitions using White Rabbit.
>>>> I have already achieved that using a custom software that creates a
>>>> single multi-usrp that encompasses all my boards (as it is suggested in
>>>> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD),
>>>> but I've just stumbled upon Ettus Multichannel RF Reference Architecture (
>>>> https://kb.ettus.com/Multichannel_RF_Reference_Architecture) where
>>>> individual boards have their acquisitions made by separate threads.
>>>>
>>>> I was wondering which of the two approaches is best --- I would have
>>>> bet on the former, since it leaves the burden of dealing with multiple
>>>> boards to UHD (more elegant, less error-prone), but the other one is THE
>>>> reference architecture...
>>>>
>>>> Thanks in advance for your help! :)
>>>>
>>>> Best,
>>>> Rob
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e5b10b05ef174acc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">By the way, the benchmark_rate example has a &quot;multi_s=
treamer&quot; option that allows the user to select whether all the transmi=
t or receive channels are handled in 1 thread or in 1 thread per channel. T=
ake a look at the source to see how it is implemented.<div>Rob</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Dec 5, 2022 at 11:09 AM Roberto Rigamonti &lt;<a href=3D"mailto:roberto.ri=
gamonti@gmail.com">roberto.rigamonti@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Ok, I&#=
39;ll stick to a single multi-usrp then!</div><div>Thanks!! =3D)<br></div><=
div><br></div><div>Best,</div><div>Rob<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 5 Dec 2022 at 17:03=
, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"=
_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 05/12/2022 10:14, Roberto Rigamonti
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hello,</div>
        <div><br>
        </div>
        <div>Thank for your quick reply! I&#39;ve never considered creating
          multiple streamers for sub-sets of channels in a multi-usrp
          configuration (I either had used a single streamer for a
          multi-usrp, or per-boards streamers in separate threads), and
          I hadn&#39;t thought having a look at UHD sources for inspiration
          (from a quick glance, I would say that multi-usrp basically
          does the job for me...)... Thanks for the suggestions ! :)</div>
        <div><br>
        </div>
        <div>Best,</div>
        <div>Rob<br>
        </div>
      </div>
    </blockquote>
    A single multi_usrp object is also a &quot;synchronization container&qu=
ot; --
    UHD will try to ensure that all the streams within it are<br>
    =C2=A0 timestamp-aligned.=C2=A0 It doesn&#39;t do that across multiple =
multi_usrp
    objects.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, 5 Dec 2022 at 15:55,
          Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_bla=
nk">rkossler@nd.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div dir=3D"ltr">Hi Rob,
              <div>I don&#39;t know the direct answer to your question abou=
t
                whether it is better to use a single &quot;device&quot; ins=
tance
                or to handle multiple boards in different threads. But,
                I&#39;m wondering=C2=A0if perhaps the only thing that is cr=
itical
                is the handling of streamers.=C2=A0 In either case you
                mentioned, you can have multiple streamer threads (one
                for each channel if you want). In the past, I
                experienced better performance by running each streamer
                in its own thread, but I can&#39;t confirm if that is still
                true in more recent versions of UHD.=C2=A0 On a side note,
                you might want to take a look at the Ettus file
                host/lib/usrp/multi_usrp_rfnoc.cpp. This file shows how
                Ettus implements the multi_usrp object using the lower
                level commands of the RFNoC API.</div>
              <div>Rob</div>
            </div>
            <br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 5, 2022 at
                9:32 AM Roberto Rigamonti &lt;<a href=3D"mailto:roberto.rig=
amonti@gmail.com" target=3D"_blank">roberto.rigamonti@gmail.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                <div dir=3D"ltr">
                  <div>Hello,</div>
                  <div><br>
                  </div>
                  <div>I have a mix of N320/N321 boards, and I would
                    like to make synchronised acquisitions using White
                    Rabbit. <br>
                  </div>
                  <div>I have already achieved that using a custom
                    software that creates a single multi-usrp that
                    encompasses all my boards (as it is suggested in <a hre=
f=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in=
_UHD" target=3D"_blank">https://kb.ettus.com/Synchronizing_USRP_Events_Usin=
g_Timed_Commands_in_UHD</a>),
                    but I&#39;ve just stumbled upon Ettus Multichannel RF
                    Reference Architecture (<a href=3D"https://kb.ettus.com=
/Multichannel_RF_Reference_Architecture" target=3D"_blank">https://kb.ettus=
.com/Multichannel_RF_Reference_Architecture</a>)
                    where individual boards have their acquisitions made
                    by separate threads.</div>
                  <div><br>
                  </div>
                  <div>I was wondering which of the two approaches is
                    best --- I would have bet on the former, since it
                    leaves the burden of dealing with multiple boards to
                    UHD (more elegant, less error-prone), but the other
                    one is THE reference architecture...</div>
                  <div><br>
                  </div>
                  <div>Thanks in advance for your help! :)</div>
                  <div><br>
                  </div>
                  <div>Best,</div>
                  <div>Rob<br>
                  </div>
                </div>
                _______________________________________________<br>
                USRP-users mailing list -- <a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                To unsubscribe send an email to <a href=3D"mailto:usrp-user=
s-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com=
</a><br>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e5b10b05ef174acc--

--===============2750756528732003739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2750756528732003739==--
