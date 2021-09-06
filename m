Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0B140210B
	for <lists+usrp-users@lfdr.de>; Mon,  6 Sep 2021 23:18:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00C3C3818CD
	for <lists+usrp-users@lfdr.de>; Mon,  6 Sep 2021 17:18:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Dk4Lt/9f";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 6309E383F67
	for <usrp-users@lists.ettus.com>; Mon,  6 Sep 2021 17:17:28 -0400 (EDT)
Received: by mail-qv1-f49.google.com with SMTP id s16so4604865qvt.13
        for <usrp-users@lists.ettus.com>; Mon, 06 Sep 2021 14:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=PL1IZV/IrtGJMdJTYedefu57AmRYSpnd/9uqpjNiHiE=;
        b=Dk4Lt/9fkWKea6qcdn0M2hyKYmbhfTKV2XQMny2+VuJEpkcvPg+lEjKNr3lIVkQzHA
         9I4DhHpIZGefL+lrtE+QnTuXfl/nHHkloSM2HEdEJED87Odbn/hm1GBNLbP6Osszi8bX
         OwVzVcVeqDkhymM8i0jkq7xc/Yhj5kDPzsnWpPrkOnM1bmmOuIRJwJL9UA5YYkmdcoVN
         25s9y9lO99DYw2SK5jrnHF70yag4hZtq41ygde0EBzLs4ltXrrzd3OU3DkpdJFyd8cXq
         XWZmTifGP6ZvCr3Vl580MabBD6GkA6JpXifupZBWrP7nSSnbcCGm1/OLjyByF73Dv1yt
         HMIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=PL1IZV/IrtGJMdJTYedefu57AmRYSpnd/9uqpjNiHiE=;
        b=OhavfmtFYpLUsSkdHF3sYegJxPqqfxk6Fwta+zyeDqyjT/t1LUWnxojDEM8uZxiptp
         k3bwYxNkr9DdDKFU3maWtZVPl6RjmoVpBSBadQQJb3/Y6+rZbd1Q2vjDV6BjwqZWBt2z
         t3gjnJSTwcO5M6V5LdgOcHPHcGe9pgOFTBHfnjEBU9ULCxRDfMb8ZXGxTFYzj1sXYBsh
         c23DaquQefZ/wv+pOXydY5k5Ab5RSifQhp/mJMH6o7FKt4YpHDjTqUd2lHhRES9hFR02
         YzvVf0LVZaY+bajRma8pIHerofAbJF4HVEfQ5ScAbGJWoV5EOj6EQKcg73j81ai83MWc
         +r4g==
X-Gm-Message-State: AOAM533ljyhyi+GXrQHfaqCL46pbLYGZKcJ4FaVCXg93x0Ix/aQ/sUaS
	YStuiS4zcSX7jYSmJTJ7yn69eg9PWlL3MQ==
X-Google-Smtp-Source: ABdhPJxmRuStcyQfNM9iun5smTGemv2/ZJ2HaEsMbOxNcdTwpec9w3ZD57+4l9qDnBBNQIwoKZw5Ag==
X-Received: by 2002:a0c:80ce:: with SMTP id 72mr4136115qvb.39.1630963047473;
        Mon, 06 Sep 2021 14:17:27 -0700 (PDT)
Received: from [192.168.2.239] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id 90sm6035488qte.89.2021.09.06.14.17.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 14:17:27 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <78915145.1401871.1630855703615.ref@mail.yahoo.com>
 <78915145.1401871.1630855703615@mail.yahoo.com>
 <4afe8421-25a7-4607-cb3e-77de5a2e048f@gmail.com>
 <1905083994.1719552.1630939087195@mail.yahoo.com>
 <048e44e1-7a98-3502-e0c9-d4f89aea1f15@gmail.com>
 <985193204.1564657.1630962787077@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <81367c38-e66a-538f-8cac-8645794e2bbe@gmail.com>
Date: Mon, 6 Sep 2021 17:17:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <985193204.1564657.1630962787077@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: VEVMYP7TGXSN5YCQNQC2K5DILGRKYLVZ
X-Message-ID-Hash: VEVMYP7TGXSN5YCQNQC2K5DILGRKYLVZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4.10+X310USRP: Error in Rx in Final Stage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VEVMYP7TGXSN5YCQNQC2K5DILGRKYLVZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6948086816417137389=="

This is a multi-part message in MIME format.
--===============6948086816417137389==
Content-Type: multipart/alternative;
 boundary="------------93881F748F10C1F559EC234D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------93881F748F10C1F559EC234D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-06 5:13 p.m., zhou wrote:
> Thanks for your explanation, Marcus.
>
> The number of samples is based on the sampling rate. I am using X310=20
> USRP. Its sampling rate is equal to its master clock, 184.32MHz.=20
> Usually I capture signal for 20ms, so the number of samples =3D 20*1843=
20.
> We have many X310 USRPs and have been using UHD3.10 for a few years.=20
> We have been capturing signals without extra trailing 0s. There is no=20
> problem so far. Because it is stable, we don't upgrade UHD even though=20
> new UHD versions come out.
> Only until recently, we need to use higher sampling rate for new=20
> signals with wider band. I am using N321 USRP for this. We use the=20
> latest UHD for this USRP. Though the new system is intended for the=20
> new USRP, I also try to use it on the old X310 USRP, then I find this=20
> capture problem. Not all test cases fail with this new UHD. In some=20
> cases, the EVMs are all good; only in some test cases, the last EVM is=20
> bad.
>
> I haven't observed this EVM issue in the UHD4.1.0+N321 combination. It=20
> only happens in UHD4.1.0+X310 sometimes, and it is repeatable. At the=20
> moment, my workaround is to do 1ms extra capture for UHD4.1.0+X310=20
> combination.
>
> I do have other problem with N321. I will start another thread for it.=20
> Hope you can continue to help.
>
I would suggest that you look at the time-domain signal in raw form near=20
the end of your capture, and that might well give you good hints about
 =C2=A0 what is going on.=C2=A0 The N321 and X310 are different platforms=
, and=20
will have slightly-different fine-scale behavior.


>
>
> On Monday, 6 September 2021, 16:18:00 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 2021-09-06 10:38 a.m., zhou wrote:
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
> Group delay is a property of any filtering element in a=20
> signal-processing chain.=C2=A0 Whether it's an analog filter or digital=
=20
> filter.=C2=A0 Any SDR=C2=A0 that has an ADC clock
> =C2=A0 that is higher than the host-side sample rate will need a digita=
l=20
> down-converter (DDC) and that involves a digital filter.=C2=A0 That dig=
ital=20
> filter has group delay
> =C2=A0 (usually on the order of 10s of sample times). Different version=
s of=20
> UHD might employ slightly different versions in the DDC portion of the=20
> FPGA, leading
> =C2=A0 to slightly-different group-delay behavior.
>
> If you're calculating the number of samples you need based on=20
> something like:
>
> number-of-frames-I-want X number-of-samples-per-frame
>
> Then there is ALWAYS the chance that the last frame will get cut off.
>
> Just as you usually need to "pad" the TX side with a few trailing 0s,=20
> so too should you extend your receive for a few samples beyond what=20
> you exactly need.
> =C2=A0 This has always been true.=C2=A0 That you "got away" with it in =
UHD 3.10=20
> was likely just a matter of luck.
>
>
>
>>
>>
>> On Sunday, 5 September 2021, 20:47:39 BST, Marcus D. Leech=20
>> <patchvonbraun@gmail.com> <mailto:patchvonbraun@gmail.com> wrote:
>>
>>
>> On 2021-09-05 11:28 a.m., zhou via USRP-users wrote:
>> Hi All,
>>
>> I have a problem in using X310 USRP after upgrading UHD from 3.10 to=20
>> 4.1.0. I am using it to capture NR5G radio signal in UL. After=20
>> analyzing the captured signal, the quality in the last subframe is=20
>> worse than the earlier subframes.
>> EVM =3D
>> [1.014, 1.08, 1.055, 1.053, 0.954, 1.043, 1.145, 1.112, 1.162, 1.072,=20
>> 1.131, 1.125, 1.038, 1.08, 1.003, 1.1, 0.972, 0.941, 1.046, 0.917,=20
>> 1.01, 1.023, 1.025, 0.982, 1.101, 1.044, 1.089, 0.987, 0.923, 1.022,=20
>> 1.012, 1.009, 1.021, 1.037, 0.998, 1.112, 1.112, 0.981, 0.987, *2.785*=
]
>>
>> When using UHD 3.10, I had no such problem.
>>
>> If I deliberately capture one more subframe with UHD 4.1.0 but ignore=20
>> it when analyzing the signals, I will have good EVM.
>>
>> Is this a bug in FPGA for UHD4.1.0 in X310?
>>
>> Thanks for any input.
>>
>> Hongwei
>>
>>
>> My guess is that there are just slight timing and/or group-delay=20
>> deifferences between the two FPGA releases, and your capture time is=20
>> just slightly too short
>> =C2=A0 to account for that.
>>
>> It is inevitable that going from a quite-old release to very=C2=A0 muc=
h=20
>> newer (latest) release that there will be subtle things like group=20
>> delay differences between the
>> =C2=A0 two FPGA implementations.
>>
>> How do you decide when you are "done" capturing?=C2=A0=C2=A0=C2=A0 How=
 are you=20
>> capturing?=C2=A0 Do you do your processing in real-time, or do you cap=
ture=20
>> to a file then
>> =C2=A0 process the file.
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com=20
>> <mailto:usrp-users@lists.ettus.com>
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
>> <mailto:usrp-users-leave@lists.ettus.com>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com=20
> <mailto:usrp-users@lists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
> <mailto:usrp-users-leave@lists.ettus.com>


--------------93881F748F10C1F559EC234D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-06 5:13 p.m., zhou wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:985193204.1564657.1630962787077@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp861463e0yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for your explanatio=
n,
          Marcus.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">The number of samples is
          based on the sampling rate. I am using X310 USRP. Its sampling
          rate is equal to its master clock, 184.32MHz. Usually I
          capture signal for 20ms, so the number of samples =3D 20*184320=
.</div>
        <div dir=3D"ltr" data-setdir=3D"false">We have many X310 USRPs an=
d
          have been using UHD3.10 for a few years. We have been
          capturing signals without extra trailing 0s. There is no
          problem so far. Because it is stable, we don't upgrade UHD
          even though new UHD versions come out.</div>
        <div dir=3D"ltr" data-setdir=3D"false">=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false">Only until recently, we ne=
ed
          to use higher sampling rate for new signals with=C2=A0<span><sp=
an
              style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue,
              Helvetica, Arial, sans-serif;">wider band. I am using N321
              USRP for this. We use the latest UHD for this USRP. Though
              the new system is intended for the new USRP, I also try to
              use it on the old X310 USRP, then I find this capture
              problem. Not all test cases fail with this new UHD. In
              some cases, the EVMs are all good; only in some test
              cases, the last EVM is bad.</span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica,
              Arial, sans-serif;"><br>
            </span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica,
              Arial, sans-serif;">I haven't observed this EVM issue in
              the UHD4.1.0+N321 combination. It only happens in
              UHD4.1.0+X310 sometimes, and it is repeatable. At the
              moment, my workaround is to do 1ms extra capture for
              UHD4.1.0+X310 combination.</span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica,
              Arial, sans-serif;"><br>
            </span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica,
              Arial, sans-serif;">I do have other problem with N321. I
              will start another thread for it. Hope you can continue to
              help.</span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica,
              Arial, sans-serif;"><br>
            </span></span></div>
      </div>
    </blockquote>
    I would suggest that you look at the time-domain signal in raw form
    near the end of your capture, and that might well give you good
    hints about<br>
    =C2=A0 what is going on.=C2=A0 The N321 and X310 are different platfo=
rms, and
    will have slightly-different fine-scale behavior.=C2=A0 <br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:985193204.1564657.1630962787077@mail.yahoo.com">
      <div class=3D"ydp861463e0yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica,
              Arial, sans-serif;"><br>
            </span></span></div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydp98e98598yahoo_quoted_1775407810"
        class=3D"ydp98e98598yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Monday, 6 September 2021, 16:18:00 BST, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydp98e98598yiv3028384882">
              <div>
                <div class=3D"ydp98e98598yiv3028384882moz-cite-prefix">On
                  2021-09-06 10:38 a.m., zhou wrote:<br clear=3D"none">
                </div>
                <blockquote type=3D"cite"> </blockquote>
              </div>
              <div>
                <div
                  class=3D"ydp98e98598yiv3028384882ydpe09f327fyahoo-style=
-wrap"
                  style=3D"font-family:Helvetica Neue, Helvetica, Arial,
                  sans-serif;font-size:13px;">
                  <div dir=3D"ltr">Hi Marcus,</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">Thanks for your comments.</div>
                  <div dir=3D"ltr">What is group-delay in FPGA? I had a
                    guess that there was some delay between the time
                    instance when FPGA issued Rx command and the time
                    instance when ADC started to sample. Does
                    group-delay mean this?</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">I use time-based capture - specify a
                    start time and specify the number of samples to
                    capture,=C2=A0</div>
                  <div dir=3D"ltr">uhd::stream_cmd_t
                    stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_A=
ND_DONE);<br
                      clear=3D"none">
                  </div>
                  <div dir=3D"ltr"><span><span>stream_cmd.time_spec =3D
                        time_spec</span><br clear=3D"none">
                    </span></div>
                  <div dir=3D"ltr"><span><span><span>stream_cmd.num_samps
                          =3D=C2=A0<span>num_requested_samples</span></sp=
an><br
                          clear=3D"none">
                      </span></span></div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">In a while loop, I keep calling=C2=A0<=
span>rx_stream-&gt;recv()
                      to receive samples.=C2=A0</span>When the number of
                    samples are received, capture is done.=C2=A0</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">The samples are saved in buffer when
                    calling recv(); after all samples are received, they
                    will be saved into a file and processed offline.</div=
>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">From the EVM results, I don't think th=
e
                    whole timing is shifted between the two UHD
                    versions, otherwise, the whole EVM should become
                    worse, but we only see the final EVM becomes worse.
                    It looks to me that FPGA is "releasing" ADC earlier
                    than it should. If I increase=C2=A0<span><span
                        style=3D"color:rgb(0, 0, 0);font-family:Helvetica
                        Neue, Helvetica, Arial, sans-serif;">num_requeste=
d_samples,
                        that seems to delay its release.</span></span>=C2=
=A0=C2=A0</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">Look forward to your further comments.=
=C2=A0</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">Many thanks,</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">Hongwei</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                </div>
                Group delay is a property of any filtering element in a
                signal-processing chain.=C2=A0 Whether it's an analog fil=
ter
                or digital filter.=C2=A0 Any SDR=C2=A0 that has an ADC cl=
ock<br
                  clear=3D"none">
                =C2=A0 that is higher than the host-side sample rate will
                need a digital down-converter (DDC) and that involves a
                digital filter.=C2=A0 That digital filter has group delay=
<br
                  clear=3D"none">
                =C2=A0 (usually on the order of 10s of sample times).=C2=A0
                Different versions of UHD might employ slightly
                different versions in the DDC portion of the FPGA,
                leading<br clear=3D"none">
                =C2=A0 to slightly-different group-delay behavior.<br
                  clear=3D"none">
                <br clear=3D"none">
                If you're calculating the number of samples you need
                based on something like:<br clear=3D"none">
                <br clear=3D"none">
                number-of-frames-I-want X number-of-samples-per-frame<br
                  clear=3D"none">
                <br clear=3D"none">
                Then there is ALWAYS the chance that the last frame will
                get cut off.<br clear=3D"none">
                <br clear=3D"none">
                Just as you usually need to "pad" the TX side with a few
                trailing 0s, so too should you extend your receive for a
                few samples beyond what you exactly need.<br
                  clear=3D"none">
                =C2=A0 This has always been true.=C2=A0 That you "got awa=
y" with
                it in UHD 3.10 was likely just a matter of luck.
                <div class=3D"ydp98e98598yiv3028384882yqt5387678254"
                  id=3D"ydp98e98598yiv3028384882yqtfd99070"><br
                    clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                  <blockquote type=3D"cite">
                    <div
                      class=3D"ydp98e98598yiv3028384882ydpe09f327fyahoo-s=
tyle-wrap"
                      style=3D"font-family:Helvetica Neue, Helvetica,
                      Arial, sans-serif;font-size:13px;">
                      <div dir=3D"ltr"><span><span style=3D"color:rgb(0, =
0,
                            0);font-family:Helvetica Neue, Helvetica,
                            Arial, sans-serif;"><br clear=3D"none">
                          </span></span></div>
                      <div><br clear=3D"none">
                      </div>
                    </div>
                    <div
                      class=3D"ydp98e98598yiv3028384882ydpb3a0926yahoo_qu=
oted"
id=3D"ydp98e98598yiv3028384882ydpb3a0926yahoo_quoted_1405315321">
                      <div style=3D"font-family:'Helvetica Neue',
                        Helvetica, Arial,
                        sans-serif;font-size:13px;color:#26282a;">
                        <div> On Sunday, 5 September 2021, 20:47:39 BST,
                          Marcus D. Leech <a shape=3D"rect"
                            class=3D"ydp98e98598yiv3028384882moz-txt-link=
-rfc2396E"
                            href=3D"mailto:patchvonbraun@gmail.com"
                            rel=3D"nofollow" target=3D"_blank"
                            moz-do-not-send=3D"true">&lt;patchvonbraun@gm=
ail.com&gt;</a>
                          wrote: </div>
                        <div><br clear=3D"none">
                        </div>
                        <div><br clear=3D"none">
                        </div>
                        <div>
                          <div
                            id=3D"ydp98e98598yiv3028384882ydpb3a0926yiv57=
83056899">
                            <div
                              class=3D"ydp98e98598yiv3028384882ydpb3a0926=
yiv5783056899yqt3445910838"
id=3D"ydp98e98598yiv3028384882ydpb3a0926yiv5783056899yqt17672">
                              <div>
                                <div
                                  class=3D"ydp98e98598yiv3028384882ydpb3a=
0926yiv5783056899moz-cite-prefix">On
                                  2021-09-05 11:28 a.m., zhou via
                                  USRP-users wrote:<br clear=3D"none">
                                </div>
                                <blockquote type=3D"cite"> </blockquote>
                              </div>
                              <div>
                                <div
                                  class=3D"ydp98e98598yiv3028384882ydpb3a=
0926yiv5783056899yahoo-style-wrap"
                                  style=3D"font-family:Helvetica Neue,
                                  Helvetica, Arial,
                                  sans-serif;font-size:13px;">
                                  <div dir=3D"ltr">Hi All,</div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">I have a problem in
                                    using X310 USRP after upgrading UHD
                                    from 3.10 to 4.1.0. I am using it to
                                    capture NR5G radio signal in UL.
                                    After analyzing the captured signal,
                                    the quality in the last subframe is
                                    worse than the earlier subframes.</di=
v>
                                  <div dir=3D"ltr">EVM =3D</div>
                                  <div dir=3D"ltr"><span><span
                                        style=3D"color:rgb(23, 43,
                                        77);font-family:-apple-system,
                                        BlinkMacSystemFont, Roboto,
                                        Oxygen, Ubuntu,
                                        sans-serif;font-size:14px;backgro=
und-color:rgb(244,
                                        245, 247);">[1.014, 1.08, 1.055,
                                        1.053, 0.954, 1.043, 1.145,
                                        1.112, 1.162, 1.072, 1.131,
                                        1.125, 1.038, 1.08, 1.003, 1.1,
                                        0.972, 0.941, 1.046, 0.917,
                                        1.01, 1.023, 1.025, 0.982,
                                        1.101, 1.044, 1.089, 0.987,
                                        0.923, 1.022, 1.012, 1.009,
                                        1.021, 1.037, 0.998, 1.112,
                                        1.112, 0.981, 0.987,=C2=A0</span>=
<font
style=3D"font-family:-apple-system, BlinkMacSystemFont, Roboto, Oxygen,
                                        Ubuntu,
                                        sans-serif;font-size:14px;backgro=
und-color:rgb(244,
                                        245, 247);" color=3D"#de350b"><b>=
2.785</b></font><span
                                        style=3D"color:rgb(23, 43,
                                        77);font-family:-apple-system,
                                        BlinkMacSystemFont, Roboto,
                                        Oxygen, Ubuntu,
                                        sans-serif;font-size:14px;backgro=
und-color:rgb(244,
                                        245, 247);">]</span></span><br
                                      clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">When using UHD 3.10, I
                                    had no such problem.<br clear=3D"none=
">
                                  </div>
                                  <div dir=3D"ltr"><br clear=3D"none">
                                  </div>
                                  <div dir=3D"ltr">
                                    <div>
                                      <div dir=3D"ltr">If I deliberately
                                        capture one more subframe with
                                        UHD 4.1.0 but ignore it when
                                        analyzing the signals, I will
                                        have good EVM.</div>
                                    </div>
                                    <div dir=3D"ltr"><br clear=3D"none">
                                    </div>
                                    <div dir=3D"ltr">Is this a bug in FPG=
A
                                      for UHD4.1.0 in X310?</div>
                                    <div dir=3D"ltr"><br clear=3D"none">
                                    </div>
                                    <div dir=3D"ltr">Thanks for any input=
.</div>
                                    <div dir=3D"ltr"><br clear=3D"none">
                                    </div>
                                    <div dir=3D"ltr">Hongwei</div>
                                    <div dir=3D"ltr"><br clear=3D"none">
                                    </div>
                                    <br clear=3D"none">
                                  </div>
                                </div>
                                My guess is that there are just slight
                                timing and/or group-delay deifferences
                                between the two FPGA releases, and your
                                capture time is just slightly too short<b=
r
                                  clear=3D"none">
                                =C2=A0 to account for that.<br clear=3D"n=
one">
                                <br clear=3D"none">
                                It is inevitable that going from a
                                quite-old release to very=C2=A0 much newe=
r
                                (latest) release that there will be
                                subtle things like group delay
                                differences between the<br clear=3D"none"=
>
                                =C2=A0 two FPGA implementations.=C2=A0 <b=
r
                                  clear=3D"none">
                                <br clear=3D"none">
                                How do you decide when you are "done"
                                capturing?=C2=A0=C2=A0=C2=A0 How are you =
capturing?=C2=A0 Do
                                you do your processing in real-time, or
                                do you capture to a file then<br
                                  clear=3D"none">
                                =C2=A0 process the file.<br clear=3D"none=
">
                                <br clear=3D"none">
                                <br clear=3D"none">
                              </div>
                            </div>
                          </div>
                          <div
                            class=3D"ydp98e98598yiv3028384882ydpb3a0926yq=
t3445910838"
id=3D"ydp98e98598yiv3028384882ydpb3a0926yqt23932">_______________________=
________________________<br
                              clear=3D"none">
                            USRP-users mailing list -- <a shape=3D"rect"
                              href=3D"mailto:usrp-users@lists.ettus.com"
                              rel=3D"nofollow" target=3D"_blank"
                              moz-do-not-send=3D"true">usrp-users@lists.e=
ttus.com</a><br
                              clear=3D"none">
                            To unsubscribe send an email to <a
                              shape=3D"rect"
                              href=3D"mailto:usrp-users-leave@lists.ettus=
.com"
                              rel=3D"nofollow" target=3D"_blank"
                              moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br
                              clear=3D"none">
                          </div>
                        </div>
                      </div>
                    </div>
                  </blockquote>
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"ydp98e98598yqt5387678254"
              id=3D"ydp98e98598yqtfd52046">______________________________=
_________________<br
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

--------------93881F748F10C1F559EC234D--

--===============6948086816417137389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6948086816417137389==--
