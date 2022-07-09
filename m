Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6AE56CAC7
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 19:10:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A8EB43836CB
	for <lists+usrp-users@lfdr.de>; Sat,  9 Jul 2022 13:10:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657386655; bh=92tQbju7xoU3ndWLfBzB1sjFNBF8PsCwZmW1D34n0Nk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CiAnWMj5mt+MVWu6fCcE5hdXW6IfJNTMLYb035FyZ9omjbVzThmZhzK6aihYq9zLD
	 wYp0vgrK594dIhIHfBoeFDISUOGW/Q8knptI7Nsp4BHp6c94tJH4JjeH/GjRBEcrN5
	 mhodRuFDsNQU0kYjVgQf6+0xpiCTCp9O1hynMjPzvnCykngpffgdOq9i5wWy71rKbW
	 9fjKDkooy28duL/0Gt4WFDF8P2wwyF/Iie1h0EwdhPZhGMvRRYeuFSBJ06mcg7SBqe
	 L8DZyrrP7JREjq0C29Vh6vV3elvv+lkN295Eyh9yZEmO0b1ZMAEB+Gtys872SIOvtO
	 zHVXvg8d3j9fQ==
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 29DDF383F76
	for <usrp-users@lists.ettus.com>; Sat,  9 Jul 2022 13:08:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LVSz4/WM";
	dkim-atps=neutral
Received: by mail-yb1-f171.google.com with SMTP id 75so1199869ybf.4
        for <usrp-users@lists.ettus.com>; Sat, 09 Jul 2022 10:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qHwJA4Zi7DZHXjX2yA5DDG0vuVzwzqAKzpA/lEx4ng8=;
        b=LVSz4/WMl3ux/IgukGv27pc/et842XWD0DFbfrWfZBLIPdLMF3XRcxQBUcQk4gerS3
         lc7HJ2Ap6wPAxwQ5qLgYzmA7evOxXWtd2IEm0lfKjB6fLQKStlbJvB8O2JBQMbNtC7Oc
         CfeSuaaynkeHbSTHdD+dyBerJmqqKAIURuUnZwCJfDwcbRBA/l1Ad2lkH/pDr0upAx3G
         rNMcJ94zVMYwCdMAkWUJd6n6J08+DL8IrPiCnLtedHkSTO8etOpwuJ4ajdbT7UI6CwRv
         DFVhH2BhOermMbQsQPdw3j8MT7pB+UX5h1Imy/EZkMOIngn7ewR3olTU2wQm4jxGCoQG
         woxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qHwJA4Zi7DZHXjX2yA5DDG0vuVzwzqAKzpA/lEx4ng8=;
        b=klec3PUHDNhWuBxWMgKudociimbymBn+jFXa/mFzFjlpEzFPT+JDmomxQ9ls/9zDYz
         rkfS2MktmQbO7EC24eVSSuANH5IYiR0KM2pLeAYMU0lbBbRVuh70ajxpdhONes3Dm3IC
         RFBiGLTBq55b+cgCaOaMN67/GhwsvlfdiK36nd34UyUpSAHZWewbCj74S09J4mqAlBT0
         sYnHKrmh2DJPXmLQhjzqa0HWVbjYE78VSh9d+3ljtX/ECsDGTNmR0VFTSGr/y3ZDUvZW
         KqD516I/5Ls4hkLPECso3VcJ3WBdkVS6bcAPGdWHXPEiqEoSYLeL6yFRAO8U3RiWTkFO
         tYxA==
X-Gm-Message-State: AJIora+vUDZZW/XWFxoUtM4RSN8DBVN3Sp5Qf03IqP7QSsn/iUG6kzD3
	YYwnPoJeRSyxXhw1ZuwIxG2Y+ivdvnVwHeoCQHymN9KNEdTM0MOm
X-Google-Smtp-Source: AGRyM1uOJe6vPIOvLCz47OSDV5UHXoo/tR7WmnRrvmfGeyZs6mW+18S72md5OYagc2kHA2lXXLHUsmWTPpWhxwFLbFk=
X-Received: by 2002:a25:5f4a:0:b0:66e:e941:22ef with SMTP id
 h10-20020a255f4a000000b0066ee94122efmr3911968ybm.229.1657386511859; Sat, 09
 Jul 2022 10:08:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PvfCKbWK0S5eae5hZjQSoVnZPhmAHcs5VLYopU9Uh0GYA@mail.gmail.com>
 <CAAxXO2F7LkXVLBoeUw6-24B50BfyUnMWp7HOWOcGNt9gNrHnog@mail.gmail.com>
 <CAAxXO2EvypwZP2m=45_tLg-tmRdfgQyPf42UARCu1Bbad61jwg@mail.gmail.com>
 <e0f9bff7-90e0-f57f-ef7b-d3b68b535d52@gmail.com> <CAA=S3PsgydFNOz8wnFxCxRBC+poK-0LYMjqWOrcHUae+3dJmTA@mail.gmail.com>
 <3ea0b7a3-5b51-b9d0-40a1-c7387dea3b2f@gmail.com> <CAA=S3PvvofX-2FBfkDY06wEP3Xa7CJhs5kX3AzLOJFwKDDemfA@mail.gmail.com>
 <30276fe5-7145-adad-3647-4af5257eba5b@gmail.com>
In-Reply-To: <30276fe5-7145-adad-3647-4af5257eba5b@gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Sat, 9 Jul 2022 21:38:20 +0430
Message-ID: <CAA=S3PvaA-0JxDqTtq9KpbhQ7i6es3+fzfw7_4t4nyaJ9OyFEA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: TLM6LS4DUF2675VHEBW2VDXUP62PO6HI
X-Message-ID-Hash: TLM6LS4DUF2675VHEBW2VDXUP62PO6HI
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nikos Balkanas <nbalkanas@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How use convert class in UHD to convert complex float to complex sint16?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TLM6LS4DUF2675VHEBW2VDXUP62PO6HI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7086848716223719490=="

--===============7086848716223719490==
Content-Type: multipart/alternative; boundary="0000000000004b821605e3625e73"

--0000000000004b821605e3625e73
Content-Type: text/plain; charset="UTF-8"

Ok, thanks for the clarification.

On Sat, Jul 9, 2022 at 9:15 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-07-09 12:40, sp wrote:
>
> Marcus D. Leech  thanks very much. Your description is very useful for me.
> But I am not a communication engineer, I am a software developer, Can you
> introduce me to a reference book that discusses scaling in radio hardware?
> But, with your description, I think I should follow your method...
> simple Python program to re-scale it. of course in helping a communication
> engineer.
>
>
> My point is that re-scaling a data-set has NOTHING to do with
> communications, DSP, SDR, UHD, or even Gnu Radio.  It's a pretty-ordinary
> numerical thing
>   that anyone who has dealt with large data-sets that needs to re-scale
> them (for example, normalizing them) would need to understand.
>
> If the data-set is small, you can read the entire thing into a Numpy array
> in Python, for example, determine the required scaling, and re-scale and
> write the
>  array back out.   If it's larger, then you'd need to do it in chunks.
>
>
>
> On Sat, Jul 9, 2022 at 8:57 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 2022-07-09 12:01, sp wrote:
>>
>> I assume this already does ceil or floor, so your data needs to be
>>> already in the right scale:)
>>>
>> But all of my problems are related to scaling...
>>  want to use the converted class in USRP that can solve my
>> scaling problem and I am sure that my data is converted correctly..
>> So I want to use only the converter class not the c function on volk
>> functions...
>>
>> If the file was recorded from a HackRF using GNu Radio, then it is
>> already scaled appropriately.
>>
>> If not, then figure out what the largest sample amplitude is and re-scale
>> your file as appropriate.
>>
>> If you have a real-time, floating-point, sample-stream where the range of
>> the data-set is unknown in advance, then you have a serious problem
>>   that cannot be solved with converters.
>>
>> The reality is that the various SDR device drivers out there,
>> particularly in the context of Gnu Radio, will convert sample-sterams into
>> complex-floats
>>   in the appropriate {-1.0,+1.0} range appropriately.
>>
>> Any converter you write for UHD will *necessarily* need to take a scaling
>> parameter, and you have no way of knowing that in advance for a real-time
>>   sample stream from "weird" hardware.    For a pre-recorded file, you
>> have to evaluate the *entire* file anyway to determine what the scaling
>> factor should
>>   be, and you might as well, having evaluated the entire file, also do
>> the conversion on the file at the same time.  Again, this isn't SDR or DSP
>> or GnuRadio,
>>   or UHD specifically, it's just a data-scaling exercise that you might
>> find yourself in whenever dealing with *ANY* numerically-based discipline.
>>
>> Since it's a file, the conversion doesn't have to go in real-time, and
>> you could even use a simple Python program to re-scale it.
>>
>>
>>
>> On Sat, Jul 9, 2022 at 8:01 PM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 2022-07-09 11:02, Nikos Balkanas wrote:
>>> > Correction> These functions work on integers.
>>> >
>>> > So they go as:
>>> > int16 data = htobe16(le32toh(int32 data))
>>> > Or the associate functions,
>>> > htonl, htons
>>> >
>>> > So you need to already have converted your floats to ints...
>>> > If in doubt, test them first on a single data...
>>> > Sorry about the confusion.
>>> >
>>> > Nikos
>>> >
>>> >
>>> My question would be--why?
>>>
>>> UHD and Gnu Radio already do these conversions for you.
>>>
>>> The *single* case where being able to send sample data as big-endian
>>> SC16 without any intervening conversions is from a file.   Anything that
>>> involves computation-with-samples
>>>    on the host requires, necessarily, that those samples be in a format
>>> understood by the CPU on the host.
>>>
>>> Further, if there are bottlenecks, I would want to absolutely confirm
>>> that the major bottleneck in the UHD driver is in doing conversion to
>>> big-endian wire format before
>>>    venturing down the road of making that available "directly".     I
>>> have lost track of this thread, but my recollection is that this file
>>> originates in a capture from a HackRF
>>>    whose absolute-maximum sample-rate is 20e6SPS.   That's a rate that
>>> is *easily* handled by the existing UHD "stack" without resorting to
>>> this type of optimization, IMHO.
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>>
>

--0000000000004b821605e3625e73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok, thanks for the clarification.=C2=A0<br></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jul 9, =
2022 at 9:15 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.c=
om">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-07-09 12:40, sp wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Marcus D. Leech=C2=A0 thanks very much. Your descrip=
tion
        is very useful=C2=A0for me. But I am not a communication engineer, =
I
        am a software developer, Can you introduce=C2=A0me to a reference
        book that discusses=C2=A0scaling in radio hardware?
        <div>But, with your description, I think I should follow your
          method...</div>
        <div>simple Python program to re-scale it. of course=C2=A0in helpin=
g
          a communication engineer.<br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    My point is that re-scaling a data-set has NOTHING to do with
    communications, DSP, SDR, UHD, or even Gnu Radio.=C2=A0 It&#39;s a
    pretty-ordinary numerical thing<br>
    =C2=A0 that anyone who has dealt with large data-sets that needs to
    re-scale them (for example, normalizing them) would need to
    understand.<br>
    <br>
    If the data-set is small, you can read the entire thing into a Numpy
    array in Python, for example, determine the required scaling, and
    re-scale and write the<br>
    =C2=A0array back out.=C2=A0=C2=A0 If it&#39;s larger, then you&#39;d ne=
ed to do it in
    chunks.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jul 9, 2022 at 8:57 P=
M
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2022-07-09 12:01, sp wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I assume =
this
                  already does ceil or floor, so your data needs to be<br>
                  already in the right scale:)<br>
                </blockquote>
                <div>But all of my problems are related to scaling...</div>
                <div>=C2=A0want to use the converted class in USRP that can
                  solve my scaling=C2=A0problem and I am sure that my data =
is
                  converted correctly..</div>
                <div>So I want to use only the converter class not=C2=A0the=
=C2=A0c
                  function on volk functions...</div>
                <div><br>
                </div>
              </div>
            </blockquote>
            If the file was recorded from a HackRF using GNu Radio, then
            it is already scaled appropriately.<br>
            <br>
            If not, then figure out what the largest sample amplitude is
            and re-scale your file as appropriate.<br>
            <br>
            If you have a real-time, floating-point, sample-stream where
            the range of the data-set is unknown in advance, then you
            have a serious problem<br>
            =C2=A0 that cannot be solved with converters.<br>
            <br>
            The reality is that the various SDR device drivers out
            there, particularly in the context of Gnu Radio, will
            convert sample-sterams into complex-floats<br>
            =C2=A0 in the appropriate {-1.0,+1.0} range appropriately.<br>
            <br>
            Any converter you write for UHD will *necessarily* need to
            take a scaling parameter, and you have no way of knowing
            that in advance for a real-time<br>
            =C2=A0 sample stream from &quot;weird&quot; hardware.=C2=A0=C2=
=A0=C2=A0 For a pre-recorded
            file, you have to evaluate the *entire* file anyway to
            determine what the scaling factor should<br>
            =C2=A0 be, and you might as well, having evaluated the entire
            file, also do the conversion on the file at the same time.=C2=
=A0
            Again, this isn&#39;t SDR or DSP or GnuRadio,<br>
            =C2=A0 or UHD specifically, it&#39;s just a data-scaling exerci=
se
            that you might find yourself in whenever dealing with *ANY*
            numerically-based discipline.<br>
            <br>
            Since it&#39;s a file, the conversion doesn&#39;t have to go in
            real-time, and you could even use a simple Python program to
            re-scale it.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jul 9, 2022 a=
t
                  8:01 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 2022-0=
7-09
                  11:02, Nikos Balkanas wrote:<br>
                  &gt; Correction&gt; These functions work on integers.<br>
                  &gt;<br>
                  &gt; So they go as:<br>
                  &gt; int16 data =3D htobe16(le32toh(int32 data))<br>
                  &gt; Or the associate functions,<br>
                  &gt; htonl, htons<br>
                  &gt;<br>
                  &gt; So you need to already have converted your floats
                  to ints...<br>
                  &gt; If in doubt, test them first on a single data...<br>
                  &gt; Sorry about the confusion.<br>
                  &gt;<br>
                  &gt; Nikos<br>
                  &gt;<br>
                  &gt;<br>
                  My question would be--why?<br>
                  <br>
                  UHD and Gnu Radio already do these conversions for
                  you.<br>
                  <br>
                  The *single* case where being able to send sample data
                  as big-endian <br>
                  SC16 without any intervening conversions is from a
                  file.=C2=A0=C2=A0 Anything that <br>
                  involves computation-with-samples<br>
                  =C2=A0=C2=A0 on the host requires, necessarily, that thos=
e
                  samples be in a format <br>
                  understood by the CPU on the host.<br>
                  <br>
                  Further, if there are bottlenecks, I would want to
                  absolutely confirm <br>
                  that the major bottleneck in the UHD driver is in
                  doing conversion to <br>
                  big-endian wire format before<br>
                  =C2=A0=C2=A0 venturing down the road of making that avail=
able
                  &quot;directly&quot;.=C2=A0=C2=A0=C2=A0=C2=A0 I <br>
                  have lost track of this thread, but my recollection is
                  that this file <br>
                  originates in a capture from a HackRF<br>
                  =C2=A0=C2=A0 whose absolute-maximum sample-rate is 20e6SP=
S.=C2=A0=C2=A0
                  That&#39;s a rate that <br>
                  is *easily* handled by the existing UHD &quot;stack&quot;
                  without resorting to <br>
                  this type of optimization, IMHO.<br>
                  <br>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.c=
om</a><br>
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

--0000000000004b821605e3625e73--

--===============7086848716223719490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7086848716223719490==--
