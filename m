Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9475F364CE9
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 23:14:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E1A938477A
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 17:14:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="FJzAJzSo";
	dkim-atps=neutral
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 127AD3839BF
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 17:13:50 -0400 (EDT)
Received: by mail-ua1-f48.google.com with SMTP id a12so7622914uak.6
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 14:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=enPzovRDhNTruhjz9Nq+vu8dpvuYWsCA14P35SL3shA=;
        b=FJzAJzSoCtBPV8PZVRl/ENT3E9y7t1dW7TY4J6URtk3sBL436nqUai4BGeroEzPR15
         LGO6iLcYOHegQNZKEqVDgcYbDlEnrfHQxs29youyUXEGfyLofq0owLeGS/ZAv/rdNeYB
         E40paRhqeAxhM4Nnz08LYs1PFI9KFzPiGh2auhhCuy41fjpK5XRfMtlOOQn25S6vpSID
         RhuN75jvF9eei906AoaXQRyr6c/1ijPL0M5d2rBVn9ycQsgaP420FHw0GUcgHRPzRHSS
         5MJX1oJRArzN88AdPBoACwBTGpKqvwFsWw5WytweYJ9hdfHPUHo+s9jnM2o+Peg4drWR
         dztQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=enPzovRDhNTruhjz9Nq+vu8dpvuYWsCA14P35SL3shA=;
        b=sPojTvRK9zGdscWl5CPtd/vdzg7p7dE1HLgsUcsa1fEflU22qyUnPwQqHHG1CBZSbz
         b6jsNDYqBqtIslp3SJIxkSv/DykFWpmdiMg43rtunxyq0WtGsQULsTySGMqFIE17gU2c
         0CQPZNMCiGd0HfbChxTjNgpV3lSmJ8f1wmTGLk0E/5oa/X0rTQcJ1ogM9AuAV4YQmHmX
         7uaAXEhqMHx2AOQruBYyM2EeMYxy4yELdO6j1bzQkTQAuDN6PXaDQwjm7b/nkvOJwUfy
         QsdxrzXuLoYwAMDxReWFHo8oGCyI2MRhUdQvnOimPTNQ+Z4LQf23BooSpSHx8byq2mEd
         qn6g==
X-Gm-Message-State: AOAM530WSPCKUR68RtDCuJQXJj8EVkWT7lc9Wwy/vLhpngYblfzl5b4I
	NV44GrxLsj/ZU7dqidYA2z0T6E1RC83FB6t7XJyg+Q==
X-Google-Smtp-Source: ABdhPJxCkO1f6qL345mwe7DWIoQZLYOdwn1Bgbhpb7Z291SuWQmtCXBi/a24i9ldxxLMSuFlS8yTchULipdxOMlro8w=
X-Received: by 2002:a9f:3f09:: with SMTP id h9mr9193390uaj.139.1618866829648;
 Mon, 19 Apr 2021 14:13:49 -0700 (PDT)
MIME-Version: 1.0
References: <CADjF3PwZ4DQ5aQG7KsKV3=ZMG4zB_2GORZgKb0mBBgV_kwpXqQ@mail.gmail.com>
 <FE685529-0728-4EC7-B265-2221EF88808B@gmail.com> <CADjF3Py=7anwN+VG+ykyiwGosad45ypJdGSzYbcKVtDUWFV8CQ@mail.gmail.com>
 <607D8B28.1080200@gmail.com>
In-Reply-To: <607D8B28.1080200@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Tue, 20 Apr 2021 07:13:37 +1000
Message-ID: <CALNMZ8VfXZZu1t8tb-GwReQVfBwZL-uBL_eXUjdjLXLfzRio7A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: JWOZ7NWVP4F7I56ZQVZBFKZB3OCJP5VU
X-Message-ID-Hash: JWOZ7NWVP4F7I56ZQVZBFKZB3OCJP5VU
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Martin Elfvelin <marelf-5@student.ltu.se>, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reflected power on USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JWOZ7NWVP4F7I56ZQVZBFKZB3OCJP5VU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2306167634355902388=="

--===============2306167634355902388==
Content-Type: multipart/alternative; boundary="00000000000051f96f05c059cee6"

--00000000000051f96f05c059cee6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Martin, Marcus,

I don't see how adding a circulator will protect the Rx port of the USRP
without blocking the signal from the CubeSat as well.

Are you transmitting and receiving on different frequencies? If so, you
could insert a filter between the Rx port and the switch to block the Tx
frequencies.

On the other hand, if your Tx and Rx signals are in the same band, you can
add a second switch in cascade with the first one to increase the Tx-Rx
isolation. You can keep adding switches if necessary, until your isolation
target is met.

Regards,
Brendan.

On Mon, 19 Apr 2021, 23:52 Marcus D. Leech, <patchvonbraun@gmail.com> wrote=
:

> On 04/19/2021 09:49 AM, Martin Elfvelin wrote:
>
> Thank you for your input. Do you suggest adding a circulator to the syste=
m
> or rather replacing the switch with a circulator?
>
> Best regards,
> Martin
>
> I'd say add a circulator in addition to your switch.
>
>
> On Mon, Apr 19, 2021 at 3:43 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> A circulator can give you an additional 20dB isolation.
>>
>> Putting 5d!m into the RX2 port will likely destroy the RX amplifier in
>> the AD9361.
>>
>> Sent from my iPhone
>>
>> > On Apr 19, 2021, at 9:12 AM, Martin Elfvelin via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>> >
>> > =EF=BB=BF
>> > Hello all,
>> >
>> > I am planning on using a USRP B200 in a half-duplex communication
>> system to communicate with a CubeSat. The TX/RX port will be used for
>> transmitting and the RX2 port for receiving. The transmitting port will =
be
>> connected to a power amplifier with a 60W output, this will in turn conn=
ect
>> to an RF switch which will switch between the TX/RX (transmitting) and R=
X2
>> (receiving). The RF switch has an isolation of ~40-43 dB which means fro=
m
>> the 47.78 dBm transmitted we will have roughly 5-8 dBm reflected to RX2.
>> Since the SDR is only rated to receive maximum 0 dBm I'm wondering if
>> someone has any ideas on how to handle this. I'm unsure if this power wi=
ll
>> simply fry the board and I should implement a power limiter or if there =
are
>> other workarounds.
>> >
>> > Appreciate any help you can provide.
>> > Best regards,
>> > Martin Elfvelin
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000051f96f05c059cee6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Martin, Marcus,<div dir=3D"auto"><br></div><div dir=3D"au=
to">I don&#39;t see how adding a circulator will protect the Rx port of the=
 USRP without blocking the signal from the CubeSat as well.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Are you transmitting and receiving on=
 different frequencies? If so, you could insert a filter between the Rx por=
t and the switch to block the Tx frequencies.</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">On the other hand, if your Tx and Rx signals are in t=
he same band, you can add a second switch in cascade with the first one to =
increase the Tx-Rx isolation. You can keep adding switches if necessary, un=
til your isolation target is met.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Regards,</div><div dir=3D"auto">Brendan.=C2=A0</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 19 Ap=
r 2021, 23:52 Marcus D. Leech, &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
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
target=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt;
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
          USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt;
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
s.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.co=
m</a><br>
          &gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users=
-leave@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-lea=
ve@lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--00000000000051f96f05c059cee6--

--===============2306167634355902388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2306167634355902388==--
