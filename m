Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5EA642C8B
	for <lists+usrp-users@lfdr.de>; Mon,  5 Dec 2022 17:09:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A2FDF384202
	for <lists+usrp-users@lfdr.de>; Mon,  5 Dec 2022 11:09:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670256585; bh=6D6+p137XaPolGu6fq2FL/pwfKJeSauxn0YZHcwcssk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WdPRLuLtRSLXOeGzRs5iJXH0ZMEYVxArXSy0iUvUK5ABDNFAC1i/h4HiQBqTdrBiX
	 bgvZkde9dbCQW6ti0OrOaLIP5NE8gcDY3SpdYwsfDAsZYAFg6fX5DtRswIs2WLSj2g
	 LotHB0KAIYXTpn+d6qPgj9FkxkcnXl51/eLTOB1NQiPw7SvgU7L7JozprACsHExvBv
	 aFoXfmiuXXEc7a69HFHIkaMc5yOh/Jw+O1W20gNepKhQ+DKBsW/mzopY7Oqcgzg30G
	 364WSkTbbrWmvY3hh3lBP6T5gJat/O6Xh09rkp/nDPSnc3Yn+ZsaZoFYIbbRUhMBJq
	 6AhRzXbHbuoEQ==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id C9D5C3841D2
	for <usrp-users@lists.ettus.com>; Mon,  5 Dec 2022 11:08:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZOfRdjgn";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id b2so28974089eja.7
        for <usrp-users@lists.ettus.com>; Mon, 05 Dec 2022 08:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IhqG3+d4/o/xEMvyqvIk8+3Nev/foDlQhp/wCgmK2RQ=;
        b=ZOfRdjgn3GissFFei2G2/WsLuT3llOhP/pB9lcu5sd53V3KPY1WD+EQsnFi3ubMTzu
         cl+5inqxwOy1/bSKjg0fVBm2DOOkHebTv5nDZQ5gK3JG8jd7vtoc6WkoC5ka+j3bM3c9
         8fOuz58IGLqoVm00pWbmK+CBM0P5B+GJk+fB+FdtwE4tAt2g/iwb1kI+UHbPPKu8wqUY
         mIIz5koXDjYM0zMZI2NWPW7jkI+wFtzR+OsMejNZ5d1qpnBqIOhvtNVERU3hvGuNLyz+
         Uu48sSOPYG8U+ineVr/3sP9oxGskVrb4BS5EfMycaLer1MrT4I1/KaNji6guPCCec9Cg
         1JHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IhqG3+d4/o/xEMvyqvIk8+3Nev/foDlQhp/wCgmK2RQ=;
        b=fwgurf75LarxH3q03BfdCg2DDeAJ4LBhHjtnZFmCEHKmdb2QOs1C21DIbgBzzTo8Nl
         wPfVsWV0mJrlfzsm2vnnc+rJyXIC7o31a/3QEaHc3uiaBcztcf2UJ/v4fV3izLwf9wIb
         ht56b2a0JrcHnuajIAEdevUS58VUBO2i7o2iArP+OxuQEwQA+p/0+191+gIVmfRKWr51
         uKMqZ/J0WMX7ApqhFak++OiesB99BuWzy47CNK9IV7aF2qUcJlSECd8kpjncGzJlsoGw
         bRe7XstJAHBlFx+arHH4zjPd5UqRa02zUsexCxByKojEM8eaUgenElH6NGHJJK5oayZU
         /uqA==
X-Gm-Message-State: ANoB5pl8O+HAnrf+U3LVconoo2LBYBOGDgByVXk++BNXfCyPnGPFuNcp
	JM3nqxbw0qaoCgYEjQWg7GgNBqBP4jWB0VZyrpA3dxM=
X-Google-Smtp-Source: AA0mqf7tLGKqr09Ag9gB+1sJFddFxhBNUPMaZoCmvDSwu6KG2q1D4NJadTfPvdBc24LCh2+6Hkd4dbCVKdFt7GxvRXE=
X-Received: by 2002:a17:906:be9:b0:78d:3e11:1036 with SMTP id
 z9-20020a1709060be900b0078d3e111036mr71421348ejg.76.1670256496804; Mon, 05
 Dec 2022 08:08:16 -0800 (PST)
MIME-Version: 1.0
References: <CANV7_JNctBkVjQX2gaQYnwbD2OxdWyCta14=d_75Rah92mZkxA@mail.gmail.com>
 <CAB__hTSw1TWoGqdW+ARytxWG_Va8q9_Cx3xCxUmB5v9_8ifqHw@mail.gmail.com>
 <CANV7_JPioLmC9yFM-N+vX=ZBYHYryypUjsLQd-i2ep7-et60tQ@mail.gmail.com> <ee226ecd-5acc-0ee3-55ca-4ef0435ce2a0@gmail.com>
In-Reply-To: <ee226ecd-5acc-0ee3-55ca-4ef0435ce2a0@gmail.com>
From: Roberto Rigamonti <roberto.rigamonti@gmail.com>
Date: Mon, 5 Dec 2022 17:08:05 +0100
Message-ID: <CANV7_JPJ=ZAQZkQx3e35ba=gQFD9XMu+g1M9JVFEmHctiSAG5w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: F4TQ6GEW4YR372NKLS5PL3JQS35APJRI
X-Message-ID-Hash: F4TQ6GEW4YR372NKLS5PL3JQS35APJRI
X-MailFrom: roberto.rigamonti@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Single multi-usrp or multiple, synchronised usrp -- which is best ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F4TQ6GEW4YR372NKLS5PL3JQS35APJRI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3097628928984541898=="

--===============3097628928984541898==
Content-Type: multipart/alternative; boundary="0000000000002d0b5f05ef16e5d1"

--0000000000002d0b5f05ef16e5d1
Content-Type: text/plain; charset="UTF-8"

Ok, I'll stick to a single multi-usrp then!
Thanks!! =)

Best,
Rob

On Mon, 5 Dec 2022 at 17:03, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 05/12/2022 10:14, Roberto Rigamonti wrote:
>
> Hello,
>
> Thank for your quick reply! I've never considered creating multiple
> streamers for sub-sets of channels in a multi-usrp configuration (I either
> had used a single streamer for a multi-usrp, or per-boards streamers in
> separate threads), and I hadn't thought having a look at UHD sources for
> inspiration (from a quick glance, I would say that multi-usrp basically
> does the job for me...)... Thanks for the suggestions ! :)
>
> Best,
> Rob
>
> A single multi_usrp object is also a "synchronization container" -- UHD
> will try to ensure that all the streams within it are
>   timestamp-aligned.  It doesn't do that across multiple multi_usrp
> objects.
>
>
>
> On Mon, 5 Dec 2022 at 15:55, Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Rob,
>> I don't know the direct answer to your question about whether it is
>> better to use a single "device" instance or to handle multiple boards in
>> different threads. But, I'm wondering if perhaps the only thing that is
>> critical is the handling of streamers.  In either case you mentioned, you
>> can have multiple streamer threads (one for each channel if you want). In
>> the past, I experienced better performance by running each streamer in its
>> own thread, but I can't confirm if that is still true in more recent
>> versions of UHD.  On a side note, you might want to take a look at the
>> Ettus file host/lib/usrp/multi_usrp_rfnoc.cpp. This file shows how Ettus
>> implements the multi_usrp object using the lower level commands of the
>> RFNoC API.
>> Rob
>>
>> On Mon, Dec 5, 2022 at 9:32 AM Roberto Rigamonti <
>> roberto.rigamonti@gmail.com> wrote:
>>
>>> Hello,
>>>
>>> I have a mix of N320/N321 boards, and I would like to make synchronised
>>> acquisitions using White Rabbit.
>>> I have already achieved that using a custom software that creates a
>>> single multi-usrp that encompasses all my boards (as it is suggested in
>>> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD),
>>> but I've just stumbled upon Ettus Multichannel RF Reference Architecture (
>>> https://kb.ettus.com/Multichannel_RF_Reference_Architecture) where
>>> individual boards have their acquisitions made by separate threads.
>>>
>>> I was wondering which of the two approaches is best --- I would have bet
>>> on the former, since it leaves the burden of dealing with multiple boards
>>> to UHD (more elegant, less error-prone), but the other one is THE reference
>>> architecture...
>>>
>>> Thanks in advance for your help! :)
>>>
>>> Best,
>>> Rob
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002d0b5f05ef16e5d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ok, I&#39;ll stick to a single multi-usrp then!</div>=
<div>Thanks!! =3D)<br></div><div><br></div><div>Best,</div><div>Rob<br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Mon, 5 Dec 2022 at 17:03, Marcus D. Leech &lt;<a href=3D"mailto:patchv=
onbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
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

--0000000000002d0b5f05ef16e5d1--

--===============3097628928984541898==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3097628928984541898==--
