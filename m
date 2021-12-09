Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EF546E146
	for <lists+usrp-users@lfdr.de>; Thu,  9 Dec 2021 04:25:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EAB7C384AB6
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 22:25:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pkTZH5/t";
	dkim-atps=neutral
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 61C133847BE
	for <usrp-users@lists.ettus.com>; Wed,  8 Dec 2021 22:24:15 -0500 (EST)
Received: by mail-qt1-f170.google.com with SMTP id q14so4141187qtx.10
        for <usrp-users@lists.ettus.com>; Wed, 08 Dec 2021 19:24:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=D2/fGP9rEBSlTxe+ZbVniiMHX1bscaDrjeDbaS0sCKQ=;
        b=pkTZH5/tvFnCPAGRwFmphkxAdMia3lyCnoLW+MWo7s5MbBu+4l79l4Y8Eh/BDTC1Kd
         FY5hNjpo/ivdGYcmo4pSzv86n11aDZzxybufqPFoDG7a1VGdJZ/dvWmJRv2W3AskJu5L
         7aODebPnDlYWuRYQczO9JbTCUp51a7+7kyABguJUNN4idR7FRbNd+UdSkGrM0A7zX5ww
         9t1464wzFG09QJfuO6DELRUmRYHT38FFrsW5XI/sFMrm5ExiNJjZ4DwcN3+JXfh8odLP
         FPg2rE4mi/+rQDn9AHDmHlQ/CFy25XZTD1lAimPgjepagYD4tIqXWB4kKcKXklR04fDT
         131g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=D2/fGP9rEBSlTxe+ZbVniiMHX1bscaDrjeDbaS0sCKQ=;
        b=37LbsQbb8YY5oiKbxCB57b55b2ZNyghDOjBBH2mWyqBUNlY6vbj7DuRNjmjFNbo5fF
         BKayd2iXDbpRd7fSn5DCXjjhHKK32rTs9cgH+b8bDj6Lebtsfzl58HhoV5ixjuGpsZwa
         dlsI283curn2F6IS0lCnwQaRv8tSKiNtuUTJoZo25JL3xoGEvxQi232EEIu5K4NNWzLL
         EutZhxGvX1ARZKzDmhsKdB9XKzPY5SOgxLhw1BLPkZoUuMvsgfX6kf9KZh//rXcadv2q
         E8CjNAFs/vi07Ag5ni5ftZqg89WegMYHPF14qsOuAyzgBfscsT2YrrolKepytNMv11R7
         hy0g==
X-Gm-Message-State: AOAM530CkdNiKw9cBu/U9DwPt3iXZKlSeLsK4OtMVFwVlj7wQbFSTKdI
	oerfQxG8cGXlwpvkPQJ+4hAXR62K0bQ=
X-Google-Smtp-Source: ABdhPJxiZ2Jf60QyjfQYazeg8dS4zePY5WiH86lIoDekveSeVIyJo3Sqo6xMfF4LzSR35i5tbgnNJQ==
X-Received: by 2002:ac8:7d95:: with SMTP id c21mr13434236qtd.433.1639020254295;
        Wed, 08 Dec 2021 19:24:14 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id x17sm2969420qta.66.2021.12.08.19.24.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Dec 2021 19:24:13 -0800 (PST)
Message-ID: <7ba3e402-a334-287a-5df2-1d6c56af2f75@gmail.com>
Date: Wed, 8 Dec 2021 22:24:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <B67BC271-3FD1-4728-ACFC-B1F0B655662C@egr.msu.edu>
 <CAB__hTQ1bfM1Nzu+Fmd8J7AMSDK-bFAkDOg+QwtSn9r3jHTFZg@mail.gmail.com>
 <57189909-1FD3-49D8-9AB7-4A8D9E64A737@egr.msu.edu>
 <CAB__hTRj7gNxyZTgnknG9e0YCUjcEGr-py2b-zhjOPPDymHEbA@mail.gmail.com>
 <56824AED-B725-49AB-9719-2AE5E82699E5@egr.msu.edu>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <56824AED-B725-49AB-9719-2AE5E82699E5@egr.msu.edu>
Message-ID-Hash: TLBDNW5HEQJVRQKOP6I3WALGKABSEPSH
X-Message-ID-Hash: TLBDNW5HEQJVRQKOP6I3WALGKABSEPSH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: In-place Local Clock Update
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TLBDNW5HEQJVRQKOP6I3WALGKABSEPSH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4584750234182388177=="

This is a multi-part message in MIME format.
--===============4584750234182388177==
Content-Type: multipart/alternative;
 boundary="------------MUC4d4Su04D9jD5Rnqwfyzae"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MUC4d4Su04D9jD5Rnqwfyzae
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-08 18:57, EGR Email wrote:
> The offset is computed based on the assumption that the radios can=20
> properly timestamp received messages and transmit messages accurate to=20
> the clock tick using schedule transmissions. =C2=A0This is done using b=
y=20
> performing scheduled RX bursts by filling the stream_cmd_t=C2=A0struct =
with=20
> a receive time spec before issuing the rx_streamer::issue_stream_cmd()=20
> to the rx_streamer, and similarly by filling the tx_metadata struct=20
> with a time spec before using the tx_streamer::send() command. From my=20
> testing this appears to properly schedule TX and RX bursts within one=20
> clock tick (which I believe is the intended function of these commands)=
.
>
> Because the synchronization bursts are happening via scheduled/timed=20
> commands from the FPGA, the latencies of the network layer and OS will=20
> have no effect on synchronization as the timing of the critical=20
> section is happening entirely within the FPGAs.=C2=A0 The host PC is on=
ly=20
> scheduling the synchronization bursts at some time in the future and=20
> performing the processing on the bursts after they=E2=80=99ve occurred.
>
> I am fairly confident this technique is working and the time bias=20
> offset is being computed correctly and with sufficient accuracy to=20
> align the clocks to a fraction of a clock cycle. Thus, the issue=20
> remains adding a delta to the local clock of the device with a=20
> deterministic latency to correct for the computed bias; This seems=20
> reasonable to achieve if it can be done on the FPGA, even if the=20
> implementation may be somewhat involved. =C2=A0Fundamentally it=E2=80=99=
s a fetch,=20
> add, and write back.
>
> Primarily, I=E2=80=99m concerned with if it is possible to instruct the=
 FPGA=20
> to do this via pre-existing API calls, or if I will need to implement=20
> my own RFNoC block to perform it (again I=E2=80=99m not too familiar wi=
th=20
> RFNoC, but this seems like it should be possible, if the time register=20
> can be accessed directly).
>
> Unfortunately, our desired applications wouldn=E2=80=99t allow for a Wh=
ite=20
> Rabbit implementation, this would be an alternative to White Rabbit as=20
> it will be infeasible to run fiber between the devices.
>
> Thanks,
> Jason
>
There's no "Clock, adjust thyself" primitive in the FPGA already. So it=20
would have to be added.

Normally, the TOD (time of day) clock is set either "right now" to the=20
value provided, or a holding register is loaded with the provided value,=20
and then when triggered by a 1PPS
 =C2=A0 even, the TOD clock is loaded from the "holding" register.
--------------MUC4d4Su04D9jD5Rnqwfyzae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-08 18:57, EGR Email wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:56824AED-B725-49AB-9719-2AE5E82699E5@egr.msu.edu">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"">The offset is computed based on the assumption that
        the radios can properly timestamp received messages and transmit
        messages accurate to the clock tick using schedule
        transmissions. =C2=A0This is done using by performing scheduled R=
X
        bursts by filling the=C2=A0<font class=3D"" face=3D"Menlo">stream=
_cmd_t</font>=C2=A0struct
        with a receive time spec before issuing the <font class=3D""
          face=3D"Menlo">rx_streamer::issue_stream_cmd()=C2=A0</font>to t=
he <font
          class=3D"" face=3D"Menlo">rx_streamer</font>, and similarly by
        filling the <font class=3D"" face=3D"Menlo">tx_metadata</font>
        struct with a time spec before using the <font class=3D""
          face=3D"Menlo">tx_streamer::send()</font> command. From my
        testing this appears to properly schedule TX and RX bursts
        within one clock tick (which I believe is the intended function
        of these commands).</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">Because the synchronization bursts are happening vi=
a
        scheduled/timed commands from the FPGA, the latencies of the
        network layer and OS will have no effect on synchronization as
        the timing of the critical section is happening entirely within
        the FPGAs.<font class=3D"" color=3D"#000000">=C2=A0 The host PC i=
s only
          scheduling the synchronization bursts at some time in the
          future and performing the processing on the bursts after
          they=E2=80=99ve occurred.</font></div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">I am fairly confident this technique is working and
        the time bias offset is being computed correctly and with
        sufficient accuracy to align the clocks to a fraction of a clock
        cycle. Thus, the issue remains adding a delta to the local clock
        of the device with a deterministic latency to correct for the
        computed bias; This seems reasonable to achieve if it can be
        done on the FPGA, even if the implementation may be somewhat
        involved. =C2=A0Fundamentally it=E2=80=99s a fetch, add, and writ=
e back.</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">Primarily, I=E2=80=99m concerned with if it is poss=
ible to
        instruct the FPGA to do this via pre-existing API calls, or if I
        will need to implement my own RFNoC block to perform it (again
        I=E2=80=99m not too familiar with RFNoC, but this seems like it s=
hould
        be possible, if the time register can be accessed directly).</div=
>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">Unfortunately, our desired applications wouldn=E2=80=
=99t
        allow for a White Rabbit implementation, this would be an
        alternative to White Rabbit as it will be infeasible to run
        fiber between the devices.</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">Thanks,</div>
      <div class=3D"">Jason</div>
      <br>
    </blockquote>
    There's no "Clock, adjust thyself" primitive in the FPGA already.=C2=A0
    So it would have to be added.<br>
    <br>
    Normally, the TOD (time of day) clock is set either "right now" to
    the value provided, or a holding register is loaded with the
    provided value, and then when triggered by a 1PPS<br>
    =C2=A0 even, the TOD clock is loaded from the "holding" register.<br>
  </body>
</html>
--------------MUC4d4Su04D9jD5Rnqwfyzae--

--===============4584750234182388177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4584750234182388177==--
