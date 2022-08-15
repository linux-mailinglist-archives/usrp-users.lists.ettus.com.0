Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA3C593E99
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 23:04:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2B4B383A46
	for <lists+usrp-users@lfdr.de>; Mon, 15 Aug 2022 17:03:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660597439; bh=gKxeknwTRpd5NRaBPod9ny3SJBPWd5b4ByEg+LzyHAY=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=y5EpH5rAlhzlr3hHURRk8XyhyHN0AlH5X0G+/KDXuwd9iTzUIGoTXcdv0AYk3Tm0F
	 Ge1uCxeXNOWz8jEBnnUB+OKHTpt6ihoIqf74qivs+vQlMdEbW9/rZuCwFjwLAD520o
	 UZqB4dBv1su5jM2aVkIp4GfshR9NJrgNz+EPdOKQNf+mk74TpI0oSPpyfHbdnPimpl
	 fpcECLPnvqLGD6X2WYm6KmJKZbas3prWkhX7Yjp1qpvMmxh6yY+n2U/jiDdYuWiLRx
	 pJG5mTrHV+MsWzXUWy0lMl1Qn/t/jXAk7SQxs97r1QLiGYsyTfbDHFOvcH/+iKiqpR
	 yOdIwQoHQqn4w==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id A8D29380CE7
	for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 17:02:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SLEpx7ZH";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id cb8so6506578qtb.0
        for <usrp-users@lists.ettus.com>; Mon, 15 Aug 2022 14:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=m9ZXjBJg2nwO5sNGHaNPgpQbjEhkiLPyq93WocVaGVU=;
        b=SLEpx7ZHUH8pVwne2q1L49s0gjpw/R2kl1QchjkxlHypcR05TZxgdckYtGPGPctWbV
         wWnTI7uzEn5nM+by9TKo37/QmhNbt2KiN5FJvjjV2zXggEM/3r6xTkDX/PGvyvl9T5IA
         zfgcEZde4352r0bKO0kLnANVNMzlRYRc08DdDXXNBsNVLwUeNrTxGX+rpWIzlf0wvzQV
         bsXamtryh70My7nu/iR+hTP//HoJ5r/rMbjfKV+5PRjJcYVAcj2PMlp9vGbi3ffhrjB+
         6WJhhR5F6Zte1CqYmO6sURFdg2wtSRemNUkiEW3IsmJtKicEqrApRYAGF7gAHTNShFq+
         gk4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=m9ZXjBJg2nwO5sNGHaNPgpQbjEhkiLPyq93WocVaGVU=;
        b=6VwvDBdbaJ/8NyKdQBKcbT94LR989tjDwY9+Oua6nWsCE1E0voQ/zbaYEoZLwmvOvX
         zcGEzoEm7ShecNTMEM4e8javX30ybIJ/RFEW+Q5pzGRkV8R97NoMh9H5HAa2rFaGBace
         5IjYdERdp/w+MUjjt4/UX8QM1YadM6UVjgOhci/609amrvE6Z/dmU4te88BXU6ejnzuS
         0waj16nWEwbWN/uHWzfEeNN3ke1EBZGCl+SBa/2XQknKFYC6vCz1deBf8uNFkxDmsz7R
         rY8Ba549lfBHMdwM17NysW7hstNTerzpSvH5Y2nk052sHyS9XCvlKaIDZyznHmCfACsg
         Wbbg==
X-Gm-Message-State: ACgBeo2A1eAtNctfygyP8kEhLPSXw4GTQFontKby+gH4V8peZVkslaZ9
	K/cCAOdI8HGxKqpTSm8scJp7dDZXcaM=
X-Google-Smtp-Source: AA6agR6yZTN6+XZFHZ946D60ZbQNoWh8vDhU/2WKhru9yENfVZyYpawSKG3VlqtCWHLzwluommUL0w==
X-Received: by 2002:a05:622a:1207:b0:343:4a8:7580 with SMTP id y7-20020a05622a120700b0034304a87580mr15113062qtx.601.1660597356950;
        Mon, 15 Aug 2022 14:02:36 -0700 (PDT)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id h1-20020ac87141000000b00342f5408ea5sm9105939qtp.49.2022.08.15.14.02.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 14:02:36 -0700 (PDT)
Message-ID: <36d0a5d8-063a-ffdf-cbfc-d6a28ad97725@gmail.com>
Date: Mon, 15 Aug 2022 17:02:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Chris Wozny <woznych@gmail.com>
References: <B72xaKaRIC2UxRuWOmwCJi86KWNRsedQa7pmUfpHkg@lists.ettus.com>
 <CAAxXO2Gty2mtQD4sEEN7d5JUyCXocE=-2bKrV+_Lk=Ls48Ux-w@mail.gmail.com>
 <6f08d94a-a9bc-d2b0-3d6a-a429a16ca674@gmail.com>
 <CAEZoMYMQbJc0ccD0LH8Ex27VTx1rZxKVmR5bX-shJF-SZfoAKA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEZoMYMQbJc0ccD0LH8Ex27VTx1rZxKVmR5bX-shJF-SZfoAKA@mail.gmail.com>
Message-ID-Hash: NJUFR6NXX2QWHFINSXQSLHJYX7ERTK4N
X-Message-ID-Hash: NJUFR6NXX2QWHFINSXQSLHJYX7ERTK4N
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bus errors and UHD exceptions with simple I/Q recorder
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NJUFR6NXX2QWHFINSXQSLHJYX7ERTK4N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0281083828251719822=="

This is a multi-part message in MIME format.
--===============0281083828251719822==
Content-Type: multipart/alternative;
 boundary="------------a40tVPFSuxX6nFrv0oFEK909"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------a40tVPFSuxX6nFrv0oFEK909
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-08-15 16:50, Chris Wozny wrote:
> Marcus,
>
> I was specifying SC16 on host and SC12 over-the-wire via:
>
> uhd::stream_args_t stream_args("sc16","sc12"); // 16-bit integers on=20
> host, 12-bit over-the-wire
>
You might try sc16 on the wire-side as well--sc12 is actually somewhat=20
more computationally expensive
 =C2=A0 than using either sc16 or sc8 format "otw" because the code needs=
 to=20
"chop and reassemble".
 =C2=A0 With a modern USB3 controller, the difference in wire bandwidth=20
shouldn't make that much of
 =C2=A0 a difference...


> - Chris
>
> On Mon, Aug 15, 2022 at 10:25 AM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2022-08-14 20:57, Nikos Balkanas wrote:
>     > Aaaah, it's the dreaded max_samps_per_buffer:(
>     > Yup, you need to make your read buffer aligned to
>     max_samps_per_buffer...
>     >
>     > HTH
>     > Nikos
>     Also, could we confirm that the stream is being set-up for sc16 on
>     the
>     *host* side as well?=C2=A0 The default
>     =C2=A0=C2=A0 is, AFAIR, "fc32" for the *host* side...
>
>
>     >
>     > On Sun, Aug 14, 2022 at 9:24 PM <woznych@gmail.com> wrote:
>     >> Nikos,
>     >>
>     >> Thanks for the reply. I traced it to the =E2=80=9Crecv=E2=80=9D =
call which has
>     left me puzzled. I added a bunch of instrumentation to see if I
>     was walking off the end of my memory that was allocated to the
>     16-bit I/Q buffer.
>     >>
>     >> const std::int32_t startIndex =3D 2*num_accum_samps;
>     >>
>     >> const std::int32_t remainingSize =3D
>     2*sampleLength-(2*num_accum_samps);
>     >>
>     >> std::cout << "iq[" << startIndex << "] =3D " << iq[startIndex];
>     >>
>     >> std::cout << "\t" << remainingSize;
>     >>
>     >> std::cout << "\t" << startIndex + remainingSize;
>     >>
>     >> std::cout << "\t" << bufferSize << std::endl;
>     >>
>     >> num_accum_samps +=3D rx_stream->recv(&iq[startIndex],
>     remainingSize, meta, 5.0, true);
>     >>
>     >> And I can get it to faithfully crash every single time when I
>     don=E2=80=99t pad my array of 16-bit integers by an additional 2165
>     int16s. I included some output indicating where I=E2=80=99ve specif=
ied as
>     the start of the buffer for it to write to, followed by the
>     remaining size, followed by the sum of the two just to make sure I
>     can math, and finally the actual reserved buffer size plus the pad
>     of 2164 int16s.
>     >>
>     >> =E2=80=A6
>     >>
>     >> iq[1180480] =3D 0 19520 1200000 1202164
>     >>
>     >> iq[1185920] =3D 0 14080 1200000 1202164
>     >>
>     >> iq[1191360] =3D 0 8640 1200000 1202164
>     >>
>     >> iq[1196800] =3D 0 3200 1200000 1202164
>     >>
>     >> Segmentation fault (core dumped)
>     >>
>     >> If you=E2=80=99ll notice, I=E2=80=99ve specified for it to start=
 at index
>     1196800 and that the number of samples per buffer being passed to
>     recv() is 3200. I think I=E2=80=99m just being dense / misinterpret=
ing the
>     nsamps_per_buff (the second parameter of the =E2=80=9Crecv=E2=80=9D=
 call) because
>     it seems as if it is not respecting the remaining buffer size that
>     I am specifying and attempting to write beyond the bounds of the
>     memory I=E2=80=99ve allocated for the buffer.
>     >>
>     >> Is there some alignment or minimum buffer size that I=E2=80=99m =
not
>     aware of?
>     >>
>     >> Thanks,
>     >>
>     >> Chris
>     >>
>     >> _______________________________________________
>     >> USRP-users mailing list -- usrp-users@lists.ettus.com
>     >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     > _______________________________________________
>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>     > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------a40tVPFSuxX6nFrv0oFEK909
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-08-15 16:50, Chris Wozny wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEZoMYMQbJc0ccD0LH8Ex27VTx1rZxKVmR5bX-shJF-SZfoAKA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">Marcus,</div>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto">I was specifying SC16 on host and SC12
        over-the-wire via:</div>
      <div dir=3D"auto"><br>
      </div>
      <div dir=3D"auto">
        <div dir=3D"auto">uhd::stream_args_t stream_args("sc16","sc12");
          // 16-bit integers on host, 12-bit over-the-wire</div>
        <div dir=3D"auto"><br>
        </div>
      </div>
    </blockquote>
    You might try sc16 on the wire-side as well--sc12 is actually
    somewhat more computationally expensive<br>
    =C2=A0 than using either sc16 or sc8 format "otw" because the code ne=
eds
    to "chop and reassemble".<br>
    =C2=A0 With a modern USB3 controller, the difference in wire bandwidt=
h
    shouldn't make that much of<br>
    =C2=A0 a difference...<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAEZoMYMQbJc0ccD0LH8Ex27VTx1rZxKVmR5bX-shJF-SZfoAKA@mail.gmai=
l.com">
      <div dir=3D"auto">
        <div dir=3D"auto">- Chris</div>
      </div>
      <div><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 15, 2022 at
            10:25 AM Marcus D. Leech &lt;<a
              href=3D"mailto:patchvonbraun@gmail.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">pa=
tchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">On
            2022-08-14 20:57, Nikos Balkanas wrote:<br>
            &gt; Aaaah, it's the dreaded max_samps_per_buffer:(<br>
            &gt; Yup, you need to make your read buffer aligned to
            max_samps_per_buffer...<br>
            &gt;<br>
            &gt; HTH<br>
            &gt; Nikos<br>
            Also, could we confirm that the stream is being set-up for
            sc16 on the <br>
            *host* side as well?=C2=A0 The default<br>
            =C2=A0=C2=A0 is, AFAIR, "fc32" for the *host* side...<br>
            <br>
            <br>
            &gt;<br>
            &gt; On Sun, Aug 14, 2022 at 9:24 PM &lt;<a
              href=3D"mailto:woznych@gmail.com" target=3D"_blank"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">wo=
znych@gmail.com</a>&gt;
            wrote:<br>
            &gt;&gt; Nikos,<br>
            &gt;&gt;<br>
            &gt;&gt; Thanks for the reply. I traced it to the =E2=80=9Cre=
cv=E2=80=9D
            call which has left me puzzled. I added a bunch of
            instrumentation to see if I was walking off the end of my
            memory that was allocated to the 16-bit I/Q buffer.<br>
            &gt;&gt;<br>
            &gt;&gt; const std::int32_t startIndex =3D 2*num_accum_samps;=
<br>
            &gt;&gt;<br>
            &gt;&gt; const std::int32_t remainingSize =3D
            2*sampleLength-(2*num_accum_samps);<br>
            &gt;&gt;<br>
            &gt;&gt; std::cout &lt;&lt; "iq[" &lt;&lt; startIndex
            &lt;&lt; "] =3D " &lt;&lt; iq[startIndex];<br>
            &gt;&gt;<br>
            &gt;&gt; std::cout &lt;&lt; "\t" &lt;&lt; remainingSize;<br>
            &gt;&gt;<br>
            &gt;&gt; std::cout &lt;&lt; "\t" &lt;&lt; startIndex +
            remainingSize;<br>
            &gt;&gt;<br>
            &gt;&gt; std::cout &lt;&lt; "\t" &lt;&lt; bufferSize
            &lt;&lt; std::endl;<br>
            &gt;&gt;<br>
            &gt;&gt; num_accum_samps +=3D
            rx_stream-&gt;recv(&amp;iq[startIndex], remainingSize, meta,
            5.0, true);<br>
            &gt;&gt;<br>
            &gt;&gt; And I can get it to faithfully crash every single
            time when I don=E2=80=99t pad my array of 16-bit integers by =
an
            additional 2165 int16s. I included some output indicating
            where I=E2=80=99ve specified as the start of the buffer for i=
t to
            write to, followed by the remaining size, followed by the
            sum of the two just to make sure I can math, and finally the
            actual reserved buffer size plus the pad of 2164 int16s.<br>
            &gt;&gt;<br>
            &gt;&gt; =E2=80=A6<br>
            &gt;&gt;<br>
            &gt;&gt; iq[1180480] =3D 0 19520 1200000 1202164<br>
            &gt;&gt;<br>
            &gt;&gt; iq[1185920] =3D 0 14080 1200000 1202164<br>
            &gt;&gt;<br>
            &gt;&gt; iq[1191360] =3D 0 8640 1200000 1202164<br>
            &gt;&gt;<br>
            &gt;&gt; iq[1196800] =3D 0 3200 1200000 1202164<br>
            &gt;&gt;<br>
            &gt;&gt; Segmentation fault (core dumped)<br>
            &gt;&gt;<br>
            &gt;&gt; If you=E2=80=99ll notice, I=E2=80=99ve specified for=
 it to start at
            index 1196800 and that the number of samples per buffer
            being passed to recv() is 3200. I think I=E2=80=99m just bein=
g dense
            / misinterpreting the nsamps_per_buff (the second parameter
            of the =E2=80=9Crecv=E2=80=9D call) because it seems as if it=
 is not
            respecting the remaining buffer size that I am specifying
            and attempting to write beyond the bounds of the memory I=E2=80=
=99ve
            allocated for the buffer.<br>
            &gt;&gt;<br>
            &gt;&gt; Is there some alignment or minimum buffer size that
            I=E2=80=99m not aware of?<br>
            &gt;&gt;<br>
            &gt;&gt; Thanks,<br>
            &gt;&gt;<br>
            &gt;&gt; Chris<br>
            &gt;&gt;<br>
            &gt;&gt; _______________________________________________<br>
            &gt;&gt; USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            &gt;&gt; To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
            &gt; _______________________________________________<br>
            &gt; USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            &gt; To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------a40tVPFSuxX6nFrv0oFEK909--

--===============0281083828251719822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0281083828251719822==--
