Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA290787164
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 16:24:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05D01384B00
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 10:24:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692887083; bh=L+jMdUcgU4QVJj6pxK/2ZnVvsigHiL6lMwpn58dfgfY=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=uOVJNKDOhc3rMDVt7s/UnGOKvTTeBOd8ds+newXkDJlgjQ5FFNfAcdTkVFaeTcrHB
	 uG3r1KMdAbR1cq2jzvaUNDutH4lvFa97pg9hE4m60eOjNkNnG/pqnbCMibNO+A/gcP
	 xdVam827D3dlj2CXD7Egw8SQnqn6UkceNs3Ziys2sWMr2J8alK9s+P9gDavHIh+8VV
	 OXHX1HP+TdHH+cIcB8IWBz2OP09xJNK6hSL+p3F7URNLBvMcVa5PgTjqJ1Fpyj0iDd
	 Tl5Wz02JRlANfdLFq7+QEdml428x3tBPRpWC+MZDPnJ+1HNJfn1Bm8hXVHaIwhaacw
	 PjwUBRX7+XbBg==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 2C5AE3809B1
	for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 10:24:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="NYUqQiD1";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-522bd411679so8608342a12.0
        for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 07:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1692887046; x=1693491846;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Mzr8HprD065qgSUVvjuLMtV+NclKyCEOKDT5oQio7R0=;
        b=NYUqQiD1aVio+gkl59yHlZInygWDhEXYTn3T5aMbrJYobHeYF4l09+DwpxAaspx8+l
         uLDsZh8sCn5mstnjhvL3jnA7vjHL6OXMKzzaLtqJXKaGAL7bqTbs5Ou+dDWB7e7r9FUl
         /FBFw0+BRWx6JszeRq+t98ploOAyEgAlxdpNoENSJbSrsNK34OrY6eAw5e0SW2ao/zH0
         V1cu26l84QKCQioyMlu+O9HmLRhmLxVJUbUqwEhlMkRzwJTbt6NyRe4SWiFRu34FcZke
         CJGvrSfMw/OVt+W16OMm+QivIDREKZ5IJHEMpnGvtoemkDHCbi8yBCvbSBqOZuHGXuAl
         j+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692887046; x=1693491846;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mzr8HprD065qgSUVvjuLMtV+NclKyCEOKDT5oQio7R0=;
        b=MYApVGZzLIXWyOCAt4FcgWEIzivI/pUWxezkqAoyhtzYOWYnsRIxcg1e3gRRu9D9cP
         1Bwapl006ACc9UAGzXzdQzy/G5PtpcHQmBgXXD3oGgKRJOKxD6nslrsn+4LWSvuV5xhT
         nZPbcflZU7LYcl0pWPAX5mJk1kt8X2qxr4aJCa2NoR25IvurjvpqbupCTF6wo+07gWWO
         dsWpek/twOIL/kIIVvSWit1E89Ja0uV9JbCPuZqXacjVi8q/RM53TUu6PNrYfz8247G8
         FesryB4Vw51btno14aqqvdi/EPmjiY+L5/+4unPDRnaV68oRZ2gm5NfsyecGOzqJix9N
         BYuw==
X-Gm-Message-State: AOJu0YzdfoYyreVGoW6qpg7ZMG3LvsvzXnPlrQkoZJFAilRqxkEjy+KL
	llafx0q5QwTFFxiI4znfdp/oQEzl0jVJtzZR6OPxf7BNi39cZXTm
X-Google-Smtp-Source: AGHT+IEi0lFXZ7UqiiOUfYZ+yj+bhAKi4Cue4wT8PnKLCCF2SpTr8Ovu8Pv6QoRd7TyXjzI5KZGmQNmZLlUsZfr4h58=
X-Received: by 2002:a05:6402:648:b0:52a:8bb:4068 with SMTP id
 u8-20020a056402064800b0052a08bb4068mr11453288edx.29.1692887045787; Thu, 24
 Aug 2023 07:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <wdwzw97mfsKNjlOcBAPJ46kt5loLifQ6uew2bmDCE@lists.ettus.com> <CAB__hTSq3Yr6TZrwy5xLLdRtfpvpx+hrpmOuYc4UvdnLtkszdQ@mail.gmail.com>
In-Reply-To: <CAB__hTSq3Yr6TZrwy5xLLdRtfpvpx+hrpmOuYc4UvdnLtkszdQ@mail.gmail.com>
Date: Thu, 24 Aug 2023 10:23:54 -0400
Message-ID: <CAB__hTSBGwUJDheUHAjFJQ0eQs4DcmDbJXUBsZc45o+AyPQCFA@mail.gmail.com>
To: h57jafari@gmail.com
Message-ID-Hash: CCB65NCAOCPQ2KTYLDL4PNW4YNLJXE6B
X-Message-ID-Hash: CCB65NCAOCPQ2KTYLDL4PNW4YNLJXE6B
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: VCO can not operate for high sample rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CCB65NCAOCPQ2KTYLDL4PNW4YNLJXE6B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0789319757684891539=="

--===============0789319757684891539==
Content-Type: multipart/alternative; boundary="00000000000002cff40603abfb32"

--00000000000002cff40603abfb32
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Oh, I forgot to mention. With the existing Replay block, you should be able
to load your FMCW waveform in device memory and play it out continuously.
I don't know if the X410 has Replay memory bandwidth limitations that would
restrict your ultimate FMCW bandwidth.  But, you might want to try it out
using "rfnoc_replay_samples_from_file" which can play out any arbitrary
waveform (including FMCW if you create it).  If this generates a signal
that works for you, then you only need to figure out how to control it from
gnuradio.
Rob

On Thu, Aug 24, 2023 at 10:03=E2=80=AFAM Rob Kossler <rkossler@nd.edu> wrot=
e:

> I think that you could implement this transmit waveform in a custom RFNoC
> block such that you would never have any issue with underruns.  Although =
I
> don't use gnuradio myself, I believe that you could control your block
> easily from gnuradio.  And, although this requires some FPGA programming,
> this would likely be a straightforward FPGA implementation.
> Rob
>
> On Wed, Aug 9, 2023 at 11:54=E2=80=AFPM <h57jafari@gmail.com> wrote:
>
>> Hi,
>>
>> TX/RX benchmark works well even up to 245.76MHz of sample rate with my
>> USRPX410 (on 10GbE link).
>>
>> While USRPX410 receiver channel handle high sample rates even far more
>> than 100Msps (245.76MHz), I am not able to transmit high sample rate
>> triangular FMCW waveform with USRPX410 in GNU Radio (by employing VCO to
>> generate chirp signal). It seems VCO (and VCO complex) are not able to
>> generate FMCW signal in high sample rate more than 50Msps, and It issue
>> several underrun errors. Is there any solution to overcome it.
>>
>> Or without using VCO, what are the other solutions to transmit triangula=
r
>> FMCW waveform through GNU Radio and USRPX410? Thank you.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000002cff40603abfb32
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Oh, I forgot to mention. With the existing Replay block, y=
ou should be able to load your FMCW waveform in device memory and play it o=
ut continuously.=C2=A0 I don&#39;t know if the X410 has Replay memory bandw=
idth limitations that would restrict your ultimate FMCW bandwidth.=C2=A0 Bu=
t, you might want to try it out using &quot;rfnoc_replay_samples_from_file&=
quot; which can play out any arbitrary waveform (including FMCW if you crea=
te it).=C2=A0 If this generates a signal that works for you, then you only =
need to figure out how to control it from gnuradio.<div>Rob</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Au=
g 24, 2023 at 10:03=E2=80=AFAM Rob Kossler &lt;<a href=3D"mailto:rkossler@n=
d.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">I think that you could implement thi=
s transmit waveform in a custom RFNoC block such that you would never have =
any issue with underruns.=C2=A0 Although I don&#39;t use gnuradio myself, I=
 believe that you could control your block easily from gnuradio.=C2=A0 And,=
 although this requires some FPGA programming, this would likely be a strai=
ghtforward FPGA implementation.<div>Rob</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 9, 2023 at 11:54=
=E2=80=AFPM &lt;<a href=3D"mailto:h57jafari@gmail.com" target=3D"_blank">h5=
7jafari@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><p>Hi,</p><p>TX/RX benchmark works well even up to 245.76M=
Hz of sample rate with my USRPX410 (on 10GbE link). </p><p>While USRPX410 r=
eceiver channel handle high sample rates even far more than 100Msps (245.76=
MHz), I am not able to transmit high sample rate triangular FMCW waveform w=
ith USRPX410 in GNU Radio (by employing VCO to generate chirp signal). It s=
eems VCO (and VCO complex) are not able to generate FMCW signal in high sam=
ple rate more than 50Msps, and It issue several underrun errors. Is there a=
ny solution to overcome it.</p><p>Or without using VCO, what are the other =
solutions to transmit triangular FMCW waveform through GNU Radio and USRPX4=
10? Thank you.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000002cff40603abfb32--

--===============0789319757684891539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0789319757684891539==--
