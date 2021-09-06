Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38990401D81
	for <lists+usrp-users@lfdr.de>; Mon,  6 Sep 2021 17:18:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F3E6B3845F9
	for <lists+usrp-users@lfdr.de>; Mon,  6 Sep 2021 11:18:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CpMu5n/T";
	dkim-atps=neutral
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 3E80438373B
	for <usrp-users@lists.ettus.com>; Mon,  6 Sep 2021 11:17:47 -0400 (EDT)
Received: by mail-qv1-f50.google.com with SMTP id e18so2137509qvl.4
        for <usrp-users@lists.ettus.com>; Mon, 06 Sep 2021 08:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=0CaDdjLCyUd5TdCMBzuU67dpOQM8P9ZugYMAkLxK+0s=;
        b=CpMu5n/TUWFz/vfdAVlHk1i1uD01r7JzAtFQRJaE2KmwoBNuTMA3YXk4kNtJLTH9e1
         zn/1xN4aYjrWOlq/oM9dxqodPplpkk6nXL/DnUM3Hbkkgumb6/TAUKj3sRvgJuwtczT9
         THFzSaoqpAPw/C8z9KH41OFwBkagIOf3LVwhjz0Xd+/Ch+qWl1dF/9rri1uH3cyj8CI6
         BhqcVMoyjsfn174TEgYxx5e6zEvJSQ610OPy7yqfkKmGmncqGIiJOtuO96bQI/U7tavN
         Lzd3V0gQXdVbe4AI20flLkKhu4f5pvuuvWXUBk5syiqFSfkbw66KbbhwvjwgFXmAPkHB
         F27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=0CaDdjLCyUd5TdCMBzuU67dpOQM8P9ZugYMAkLxK+0s=;
        b=BAScvsBNYC25v5sW2YIcJO1J0zSdvEn9bonaKmBPeZPpjaz66r6jNGhP9XpeolDXPs
         Cc9C+5H7i24LXA+LqQX4S0diz7ocIR5adOYqz57BuC4AdTnlWn28WpVF5HoWGvQS/0a6
         7HuMguQdri3V787CdP6Sr1I9ojR8wn9CgEodPYwyucjaImorzrd/26wHA/EYz0l+KxC8
         fFslFkNRwfRvj2yJ/zLqzHWmLsILUJjSiz/hnamaMUwOoFAmqocWZroRu+woS/fNiBRI
         T/KsCtKuRtSRnaiGItt5b1Bv0Oiwwzo8t+Vb3fQWrzUaOGvQA0zOHBmFJr17jjw+AFnF
         tfDQ==
X-Gm-Message-State: AOAM530qTDaRa70+17llRzuQI3mrBpV1mtGfWzyq6lfxMtL3W0GDqWjj
	K4aqKmUoPFSN7nAgCJhmAGaeSxl2dZVx+A==
X-Google-Smtp-Source: ABdhPJyhnj7szAU7i51N0FS8TDMJV8TEamcAUkM6HGTukXz+d1gIv5Frg2khw3ezn3IM/1lI44t7iQ==
X-Received: by 2002:a0c:b2cc:: with SMTP id d12mr12480391qvf.64.1630941466385;
        Mon, 06 Sep 2021 08:17:46 -0700 (PDT)
Received: from [192.168.2.235] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id p123sm6903851qke.94.2021.09.06.08.17.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 08:17:46 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com>
 <78915145.1401871.1630855703615@mail.yahoo.com>
 <4afe8421-25a7-4607-cb3e-77de5a2e048f@gmail.com>
 <1905083994.1719552.1630939087195@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <048e44e1-7a98-3502-e0c9-d4f89aea1f15@gmail.com>
Date: Mon, 6 Sep 2021 11:17:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1905083994.1719552.1630939087195@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: ZWSSSKO5K7VMXGKIZB34LUVUQO3LALJK
X-Message-ID-Hash: ZWSSSKO5K7VMXGKIZB34LUVUQO3LALJK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4.10+X310USRP: Error in Rx in Final Stage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZWSSSKO5K7VMXGKIZB34LUVUQO3LALJK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8311749138370528257=="

This is a multi-part message in MIME format.
--===============8311749138370528257==
Content-Type: multipart/alternative;
 boundary="------------5896658AC4E3B43AC066F91F"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5896658AC4E3B43AC066F91F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-06 10:38 a.m., zhou wrote:
> Hi Marcus,
>
> Thanks for your comments.
> What is group-delay in FPGA? I had a guess that there was some delay=20
> between the time instance when FPGA issued Rx command and the time=20
> instance when ADC started to sample. Does group-delay mean this?
>
> I use time-based capture - specify a start time and specify the number=20
> of samples to capture,
> uhd::stream_cmd_t=20
> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
> stream_cmd.time_spec =3D time_spec
> stream_cmd.num_samps =3D num_requested_samples
>
> In a while loop, I keep calling rx_stream->recv() to receive samples.=20
> When the number of samples are received, capture is done.
>
> The samples are saved in buffer when calling recv(); after all samples=20
> are received, they will be saved into a file and processed offline.
>
> From the EVM results, I don't think the whole timing is shifted=20
> between the two UHD versions, otherwise, the whole EVM should become=20
> worse, but we only see the final EVM becomes worse. It looks to me=20
> that FPGA is "releasing" ADC earlier than it should. If I increase=20
> num_requested_samples, that seems to delay its release.
>
> Look forward to your further comments.
>
> Many thanks,
>
> Hongwei
>
Group delay is a property of any filtering element in a=20
signal-processing chain.=C2=A0 Whether it's an analog filter or digital=20
filter.=C2=A0 Any SDR=C2=A0 that has an ADC clock
 =C2=A0 that is higher than the host-side sample rate will need a digital=
=20
down-converter (DDC) and that involves a digital filter.=C2=A0 That digit=
al=20
filter has group delay
 =C2=A0 (usually on the order of 10s of sample times).=C2=A0 Different ve=
rsions of=20
UHD might employ slightly different versions in the DDC portion of the=20
FPGA, leading
 =C2=A0 to slightly-different group-delay behavior.

If you're calculating the number of samples you need based on something=20
like:

number-of-frames-I-want X number-of-samples-per-frame

Then there is ALWAYS the chance that the last frame will get cut off.

Just as you usually need to "pad" the TX side with a few trailing 0s, so=20
too should you extend your receive for a few samples beyond what you=20
exactly need.
 =C2=A0 This has always been true.=C2=A0 That you "got away" with it in U=
HD 3.10=20
was likely just a matter of luck.


>
>
> On Sunday, 5 September 2021, 20:47:39 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 2021-09-05 11:28 a.m., zhou via USRP-users wrote:
> Hi All,
>
> I have a problem in using X310 USRP after upgrading UHD from 3.10 to=20
> 4.1.0. I am using it to capture NR5G radio signal in UL. After=20
> analyzing the captured signal, the quality in the last subframe is=20
> worse than the earlier subframes.
> EVM =3D
> [1.014, 1.08, 1.055, 1.053, 0.954, 1.043, 1.145, 1.112, 1.162, 1.072,=20
> 1.131, 1.125, 1.038, 1.08, 1.003, 1.1, 0.972, 0.941, 1.046, 0.917,=20
> 1.01, 1.023, 1.025, 0.982, 1.101, 1.044, 1.089, 0.987, 0.923, 1.022,=20
> 1.012, 1.009, 1.021, 1.037, 0.998, 1.112, 1.112, 0.981, 0.987, *2.785*]
>
> When using UHD 3.10, I had no such problem.
>
> If I deliberately capture one more subframe with UHD 4.1.0 but ignore=20
> it when analyzing the signals, I will have good EVM.
>
> Is this a bug in FPGA for UHD4.1.0 in X310?
>
> Thanks for any input.
>
> Hongwei
>
>
> My guess is that there are just slight timing and/or group-delay=20
> deifferences between the two FPGA releases, and your capture time is=20
> just slightly too short
> =C2=A0 to account for that.
>
> It is inevitable that going from a quite-old release to very=C2=A0 much=
=20
> newer (latest) release that there will be subtle things like group=20
> delay differences between the
> =C2=A0 two FPGA implementations.
>
> How do you decide when you are "done" capturing? How are you=20
> capturing?=C2=A0 Do you do your processing in real-time, or do you capt=
ure=20
> to a file then
> =C2=A0 process the file.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com=20
> <mailto:usrp-users@lists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
> <mailto:usrp-users-leave@lists.ettus.com>


--------------5896658AC4E3B43AC066F91F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-06 10:38 a.m., zhou wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1905083994.1719552.1630939087195@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpe09f327fyahoo-style-wrap" style=3D"font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for your comments.<=
/div>
        <div dir=3D"ltr" data-setdir=3D"false">What is group-delay in FPG=
A?
          I had a guess that there was some delay between the time
          instance when FPGA issued Rx command and the time instance
          when ADC started to sample. Does group-delay mean this?</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I use time-based capture -
          specify a start time and specify the number of samples to
          capture,=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false">uhd::stream_cmd_t
          stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<=
br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span>stream_cmd.tim=
e_spec
              =3D time_spec</span><br>
          </span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span><span>stream_c=
md.num_samps
                =3D=C2=A0<span>num_requested_samples</span></span><br>
            </span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">In a while loop, I keep
          calling=C2=A0<span>rx_stream-&gt;recv() to receive samples.=C2=A0=
</span>When
          the number of samples are received, capture is done.=C2=A0</div=
>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">The samples are saved in
          buffer when calling recv(); after all samples are received,
          they will be saved into a file and processed offline.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">From the EVM results, I do=
n't
          think the whole timing is shifted between the two UHD
          versions, otherwise, the whole EVM should become worse, but we
          only see the final EVM becomes worse. It looks to me that FPGA
          is "releasing" ADC earlier than it should. If I increase=C2=A0<=
span><span
              style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue,
              Helvetica, Arial, sans-serif;">num_requested_samples, that
              seems to delay its release.</span></span>=C2=A0=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Look forward to your furth=
er
          comments.=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Many thanks,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Hongwei</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
      </div>
    </blockquote>
    Group delay is a property of any filtering element in a
    signal-processing chain.=C2=A0 Whether it's an analog filter or digit=
al
    filter.=C2=A0 Any SDR=C2=A0 that has an ADC clock<br>
    =C2=A0 that is higher than the host-side sample rate will need a digi=
tal
    down-converter (DDC) and that involves a digital filter.=C2=A0 That
    digital filter has group delay<br>
    =C2=A0 (usually on the order of 10s of sample times).=C2=A0 Different=
 versions
    of UHD might employ slightly different versions in the DDC portion
    of the FPGA, leading<br>
    =C2=A0 to slightly-different group-delay behavior.<br>
    <br>
    If you're calculating the number of samples you need based on
    something like:<br>
    <br>
    number-of-frames-I-want X number-of-samples-per-frame<br>
    <br>
    Then there is ALWAYS the chance that the last frame will get cut
    off.<br>
    <br>
    Just as you usually need to "pad" the TX side with a few trailing
    0s, so too should you extend your receive for a few samples beyond
    what you exactly need.<br>
    =C2=A0 This has always been true.=C2=A0 That you "got away" with it i=
n UHD
    3.10 was likely just a matter of luck.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1905083994.1719552.1630939087195@mail.yahoo.com">
      <div class=3D"ydpe09f327fyahoo-style-wrap" style=3D"font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica,
              Arial, sans-serif;"><br>
            </span></span></div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydpb3a0926yahoo_quoted_1405315321"
        class=3D"ydpb3a0926yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Sunday, 5 September 2021, 20:47:39 BST, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydpb3a0926yiv5783056899">
              <div class=3D"ydpb3a0926yiv5783056899yqt3445910838"
                id=3D"ydpb3a0926yiv5783056899yqt17672">
                <div>
                  <div class=3D"ydpb3a0926yiv5783056899moz-cite-prefix">O=
n
                    2021-09-05 11:28 a.m., zhou via USRP-users wrote:<br
                      clear=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div class=3D"ydpb3a0926yiv5783056899yahoo-style-wrap"
                    style=3D"font-family:Helvetica Neue, Helvetica, Arial=
,
                    sans-serif;font-size:13px;">
                    <div dir=3D"ltr">Hi All,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">I have a problem in using X310 USRP
                      after upgrading UHD from 3.10 to 4.1.0. I am using
                      it to capture NR5G radio signal in UL. After
                      analyzing the captured signal, the quality in the
                      last subframe is worse than the earlier subframes.<=
/div>
                    <div dir=3D"ltr">EVM =3D</div>
                    <div dir=3D"ltr"><span><span style=3D"color:rgb(23, 4=
3,
                          77);font-family:-apple-system,
                          BlinkMacSystemFont, Roboto, Oxygen, Ubuntu,
                          sans-serif;font-size:14px;background-color:rgb(=
244,
                          245, 247);">[1.014, 1.08, 1.055, 1.053, 0.954,
                          1.043, 1.145, 1.112, 1.162, 1.072, 1.131,
                          1.125, 1.038, 1.08, 1.003, 1.1, 0.972, 0.941,
                          1.046, 0.917, 1.01, 1.023, 1.025, 0.982,
                          1.101, 1.044, 1.089, 0.987, 0.923, 1.022,
                          1.012, 1.009, 1.021, 1.037, 0.998, 1.112,
                          1.112, 0.981, 0.987,=C2=A0</span><font
                          style=3D"font-family:-apple-system,
                          BlinkMacSystemFont, Roboto, Oxygen, Ubuntu,
                          sans-serif;font-size:14px;background-color:rgb(=
244,
                          245, 247);" color=3D"#de350b"><b>2.785</b></fon=
t><span
                          style=3D"color:rgb(23, 43,
                          77);font-family:-apple-system,
                          BlinkMacSystemFont, Roboto, Oxygen, Ubuntu,
                          sans-serif;font-size:14px;background-color:rgb(=
244,
                          245, 247);">]</span></span><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">When using UHD 3.10, I had no such
                      problem.<br clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">
                      <div>
                        <div dir=3D"ltr">If I deliberately capture one
                          more subframe with UHD 4.1.0 but ignore it
                          when analyzing the signals, I will have good
                          EVM.</div>
                      </div>
                      <div dir=3D"ltr"><br clear=3D"none">
                      </div>
                      <div dir=3D"ltr">Is this a bug in FPGA for UHD4.1.0
                        in X310?</div>
                      <div dir=3D"ltr"><br clear=3D"none">
                      </div>
                      <div dir=3D"ltr">Thanks for any input.</div>
                      <div dir=3D"ltr"><br clear=3D"none">
                      </div>
                      <div dir=3D"ltr">Hongwei</div>
                      <div dir=3D"ltr"><br clear=3D"none">
                      </div>
                      <br clear=3D"none">
                    </div>
                  </div>
                  My guess is that there are just slight timing and/or
                  group-delay deifferences between the two FPGA
                  releases, and your capture time is just slightly too
                  short<br clear=3D"none">
                  =C2=A0 to account for that.<br clear=3D"none">
                  <br clear=3D"none">
                  It is inevitable that going from a quite-old release
                  to very=C2=A0 much newer (latest) release that there wi=
ll
                  be subtle things like group delay differences between
                  the<br clear=3D"none">
                  =C2=A0 two FPGA implementations.=C2=A0 <br clear=3D"non=
e">
                  <br clear=3D"none">
                  How do you decide when you are "done" capturing?=C2=A0=C2=
=A0=C2=A0
                  How are you capturing?=C2=A0 Do you do your processing =
in
                  real-time, or do you capture to a file then<br
                    clear=3D"none">
                  =C2=A0 process the file.<br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"ydpb3a0926yqt3445910838" id=3D"ydpb3a0926yqt239=
32">_______________________________________________<br
                clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect"
                href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollo=
w"
                target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lis=
ts.ettus.com</a><br
                clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"tru=
e">usrp-users-leave@lists.ettus.com</a><br
                clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------5896658AC4E3B43AC066F91F--

--===============8311749138370528257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8311749138370528257==--
