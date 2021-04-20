Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D261A365370
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 09:42:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 807763849A8
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 03:42:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=student-ltu-se.20150623.gappssmtp.com header.i=@student-ltu-se.20150623.gappssmtp.com header.b="dktir/ix";
	dkim-atps=neutral
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C47A3843DC
	for <USRP-users@lists.ettus.com>; Tue, 20 Apr 2021 03:41:47 -0400 (EDT)
Received: by mail-pl1-f170.google.com with SMTP id g16so2355631plq.3
        for <USRP-users@lists.ettus.com>; Tue, 20 Apr 2021 00:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=student-ltu-se.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bSa746Np5e4Zq9AeC1LNe57drCAnjJSD9YLa94FP2FE=;
        b=dktir/ix0VubtPccP14hDQHNgebZK5NS9gV0+K5Junadm7G8+A6EMWFrfGraY0siRM
         CWoSlNeDIRvEFXf+iHjQu9P6JZC8NkM0DFwcCn/L8Y1SWaZ8/KZjQjmSXqCiPj+CTl71
         LMqsZrSAumiRMYR0ySinsva+Y+Uz/UTPLVw0j4hd8bxwtrTIGa0qn2AYZ4Sjkz5yzywW
         1eOkzMX1hFxhXA2YBTTUvMIOPbK/nPkeiZ3O2a5duGrW8zTgBVP2J6UJLqg4RAwuwv8e
         TB4yC9fg5jYQAVlc747hV8VJO7Uh9P5EES1SLoBJA/ZQchZh4gcAgVe7VommZ2bRrsp2
         sDwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bSa746Np5e4Zq9AeC1LNe57drCAnjJSD9YLa94FP2FE=;
        b=HdSMPATFc63dQRQGKPfHv/W91ta2rr5FCS0Qgj48g8K5GrM1VxhzWUQcUYMtLs1fqb
         kahtazAZAcQEiAgEss1Cw/leBNFiQMxmuKZ9yCHs/+uxMqlomu7dFOeWXxD/GCt6R3YO
         BOJSXQagsbPIU2zJgBBkYs1kl90Qesw4DvycZ+WX4HMFLJll495G8k/jDqLs+ABDw5+9
         Z+/LVcguVD4j6kjqqh9yNZk5sZ36eD4DUX7cECucsYgMmCGRlq86RTCbK2k1y7ScjEEl
         ZQCCFeTVCkNmV4pucUPk4sssu8qtFS5U/r0SweF7Ty8bNkmzRVhYSXvdG+cwT0M1w1gT
         xkFQ==
X-Gm-Message-State: AOAM530+q/wxUcPbxEmJko3mYNKacENb6RsFQquNHMTPtcX9gV681jBJ
	F1qjCP/daE0gf3YlrwoSlaW4GpLtBkXe0kFtrBmGEQFQMW8ISrZg
X-Google-Smtp-Source: ABdhPJx6mvAj/zv/NC1p5Z4+z6szozIoPqOesAj+wKt/q3MQC/GZHWOLiyQwybPCHoARVa7qUvfm5GS63EXFp+gJIx0=
X-Received: by 2002:a17:90a:d3c6:: with SMTP id d6mr3520705pjw.25.1618904507012;
 Tue, 20 Apr 2021 00:41:47 -0700 (PDT)
MIME-Version: 1.0
References: <CALNMZ8VfXZZu1t8tb-GwReQVfBwZL-uBL_eXUjdjLXLfzRio7A@mail.gmail.com>
 <5224C2E3-1238-45F5-9DA9-5C01954A4F4A@gmail.com>
In-Reply-To: <5224C2E3-1238-45F5-9DA9-5C01954A4F4A@gmail.com>
Date: Tue, 20 Apr 2021 09:41:36 +0200
Message-ID: <CADjF3PywuoFeK7F0nRpjw6esMhUfYdsFxdEwa=xG6Sg5Z1ugLg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>,
	Brendan Horsfield <brendan.horsfield@vectalabs.com>, Kent.Torell@gd-ms.com
Message-ID-Hash: SPNWWIAGXFJEEEYVV3EZUIH265IDZ6W6
X-Message-ID-Hash: SPNWWIAGXFJEEEYVV3EZUIH265IDZ6W6
X-MailFrom: marelf-5@student.ltu.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reflected power on USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SPNWWIAGXFJEEEYVV3EZUIH265IDZ6W6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Martin Elfvelin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Elfvelin <marelf-5@student.ltu.se>
Content-Type: multipart/mixed; boundary="===============5613725079336437902=="

--===============5613725079336437902==
Content-Type: multipart/alternative; boundary="00000000000010ebee05c062948f"

--00000000000010ebee05c062948f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks everyone for your input. Transmitting and receiving will be on the
same frequency. I'm leaning towards using the ZFLM-252-1WL-S+ power limiter
as Kent Torell suggested to keep down the number of active components.

Best regards,
Martin Elfvelin

On Mon, Apr 19, 2021 at 11:33 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> I was thinking a switch would get moved to the RX port of the circulator,
> which would see the TX power reduced by 20dB. Then into a switch that
> switched the RX port of the circulator between a 50 ohm load and the RX
> port.
>
> Sent from my iPhone
>
> On Apr 19, 2021, at 5:13 PM, Brendan Horsfield <
> brendan.horsfield@vectalabs.com> wrote:
>
> =EF=BB=BF
> Martin, Marcus,
>
> I don't see how adding a circulator will protect the Rx port of the USRP
> without blocking the signal from the CubeSat as well.
>
> Are you transmitting and receiving on different frequencies? If so, you
> could insert a filter between the Rx port and the switch to block the Tx
> frequencies.
>
> On the other hand, if your Tx and Rx signals are in the same band, you ca=
n
> add a second switch in cascade with the first one to increase the Tx-Rx
> isolation. You can keep adding switches if necessary, until your isolatio=
n
> target is met.
>
> Regards,
> Brendan.
>
> On Mon, 19 Apr 2021, 23:52 Marcus D. Leech, <patchvonbraun@gmail.com>
> wrote:
>
>> On 04/19/2021 09:49 AM, Martin Elfvelin wrote:
>>
>> Thank you for your input. Do you suggest adding a circulator to the
>> system or rather replacing the switch with a circulator?
>>
>> Best regards,
>> Martin
>>
>> I'd say add a circulator in addition to your switch.
>>
>>
>> On Mon, Apr 19, 2021 at 3:43 PM Marcus D Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> A circulator can give you an additional 20dB isolation.
>>>
>>> Putting 5d!m into the RX2 port will likely destroy the RX amplifier in
>>> the AD9361.
>>>
>>> Sent from my iPhone
>>>
>>> > On Apr 19, 2021, at 9:12 AM, Martin Elfvelin via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>> >
>>> > =EF=BB=BF
>>> > Hello all,
>>> >
>>> > I am planning on using a USRP B200 in a half-duplex communication
>>> system to communicate with a CubeSat. The TX/RX port will be used for
>>> transmitting and the RX2 port for receiving. The transmitting port will=
 be
>>> connected to a power amplifier with a 60W output, this will in turn con=
nect
>>> to an RF switch which will switch between the TX/RX (transmitting) and =
RX2
>>> (receiving). The RF switch has an isolation of ~40-43 dB which means fr=
om
>>> the 47.78 dBm transmitted we will have roughly 5-8 dBm reflected to RX2=
.
>>> Since the SDR is only rated to receive maximum 0 dBm I'm wondering if
>>> someone has any ideas on how to handle this. I'm unsure if this power w=
ill
>>> simply fry the board and I should implement a power limiter or if there=
 are
>>> other workarounds.
>>> >
>>> > Appreciate any help you can provide.
>>> > Best regards,
>>> > Martin Elfvelin
>>> > _______________________________________________
>>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000010ebee05c062948f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks everyone for your input. Transmitting and rece=
iving will be on the same frequency. I&#39;m leaning towards using the=20
ZFLM-252-1WL-S+ power limiter as Kent Torell suggested to keep down the num=
ber of active components.</div><div><br></div><div>Best regards,</div><div>=
Martin Elfvelin<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Mon, Apr 19, 2021 at 11:33 PM Marcus D Leech &l=
t;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"auto">I was thinking a switch would get moved to the RX port of the ci=
rculator, which would see the TX power reduced by 20dB. Then into a switch =
that switched the RX port of the circulator between a 50 ohm load and the R=
X port.=C2=A0<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"=
ltr"><br><blockquote type=3D"cite">On Apr 19, 2021, at 5:13 PM, Brendan Hor=
sfield &lt;<a href=3D"mailto:brendan.horsfield@vectalabs.com" target=3D"_bl=
ank">brendan.horsfield@vectalabs.com</a>&gt; wrote:<br><br></blockquote></d=
iv><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"auto">Ma=
rtin, Marcus,<div dir=3D"auto"><br></div><div dir=3D"auto">I don&#39;t see =
how adding a circulator will protect the Rx port of the USRP without blocki=
ng the signal from the CubeSat as well.</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">Are you transmitting and receiving on different frequencies=
? If so, you could insert a filter between the Rx port and the switch to bl=
ock the Tx frequencies.</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
On the other hand, if your Tx and Rx signals are in the same band, you can =
add a second switch in cascade with the first one to increase the Tx-Rx iso=
lation. You can keep adding switches if necessary, until your isolation tar=
get is met.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</di=
v><div dir=3D"auto">Brendan.=C2=A0</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 19 Apr 2021, 23:52 Marcus D=
. Leech, &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">p=
atchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 04/19/2021 09:49 AM, Martin Elfvelin
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Thank you for your input. Do you suggest adding a
          circulator to the system or rather replacing the switch with a
          circulator?</div>
        <div><br>
        </div>
        <div>Best regards,</div>
        <div>Martin<br>
        </div>
      </div>
    </blockquote>
    I&#39;d say add a circulator in addition to your switch.<br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 19, 2021 at 3:43
          PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" =
rel=3D"noreferrer" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">A
          circulator can give you an additional 20dB isolation. <br>
          <br>
          Putting 5d!m into the RX2 port will likely destroy the RX
          amplifier in the AD9361. <br>
          <br>
          Sent from my iPhone<br>
          <br>
          &gt; On Apr 19, 2021, at 9:12 AM, Martin Elfvelin via
          USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=
=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
          &gt; <br>
          &gt; =EF=BB=BF<br>
          &gt; Hello all,<br>
          &gt; <br>
          &gt; I am planning on using a USRP B200 in a half-duplex
          communication system to communicate with a CubeSat. The TX/RX
          port will be used for transmitting and the RX2 port for
          receiving. The transmitting port will be connected to a power
          amplifier with a 60W output, this will in turn connect to an
          RF switch which will switch between the TX/RX (transmitting)
          and RX2 (receiving). The RF switch has an isolation of ~40-43
          dB which means from the 47.78 dBm transmitted we will have
          roughly 5-8 dBm reflected to RX2. Since the SDR is only rated
          to receive maximum 0 dBm I&#39;m wondering if someone has any
          ideas on how to handle this. I&#39;m unsure if this power will
          simply fry the board and I should implement a power limiter or
          if there are other workarounds.<br>
          &gt; <br>
          &gt; Appreciate any help you can provide.<br>
          &gt; Best regards,<br>
          &gt; Martin Elfvelin<br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.co=
m</a><br>
          &gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users=
-leave@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-lea=
ve@lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>
</div></blockquote></div></blockquote></div>

--00000000000010ebee05c062948f--

--===============5613725079336437902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5613725079336437902==--
