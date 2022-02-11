Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FE44B2D9E
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 20:35:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31189385236
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 14:35:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Tc0k7n7J";
	dkim-atps=neutral
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 5EF3F3850F4
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 14:34:48 -0500 (EST)
Received: by mail-qv1-f51.google.com with SMTP id fh9so9456010qvb.1
        for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 11:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=qMuFx0HqTLQN6OzjbDzF5OhLpTQCv4JUyfybCNUnODA=;
        b=Tc0k7n7JKIx6gGJ5+0GPC9avqr4aiaoWosaktgYqPna6nv9ocJy4K1Kpw8yEaUckKV
         zBTpk49S5AexL3O7SZ4BGRVgeBITZgpeGFeSX7Bs9HhK4dDh/ONNfQXJg2kVsrZAljWy
         qUSfyJR8wPGcnP1xym5lE+lU83oguTZl5Yhu4QNH0L95+p0on70lKJG5mEDsaJcna3eS
         rzngL4AQYS8wFYHgQSoV9rULE0OgmB+CyQAx8oTt0hB5VQk0ZWa8xDPVY6D73N3AU0+o
         gfJZl9JwvftESwA4iiEhXpaste0e3Om7MzDxsAY8PYh6ubl1aiCpEy+d9ukiHA3obff7
         ZWdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=qMuFx0HqTLQN6OzjbDzF5OhLpTQCv4JUyfybCNUnODA=;
        b=cXdBfBQqtASJfkPppxzUKGdShFyRkWErpXTk99Vi8CvVq8sF7oTtcQgBy8UfjgkPfl
         ePl1CZYawj6cSsnsmtwoenqOdZX3L2ZgglkbodNV8eXJkK5HrpeqzvsqlvEbrL1pCZky
         Ucm8oPsHZkcdv+Rnp3TZDd/jpXkHFbid2Lq1odDdBGDXoElBrB57Pqo490b9UJx2oIJw
         4hJNyw9pZZVmx5LpvjVZCX5E3vC2cfMz+pdFVtAoHdmxnPeW1AH3Te2y020gE65njwDE
         KkV3H5Y9Ntpz9/M6oC4acMVyqkR4VycI5UIc7M2ngX4J27q6WVFG+Vm3a+Q/gaI1uI7k
         Qk6Q==
X-Gm-Message-State: AOAM530IiQfrQ2KLR1YE/sxjzTYpx5wrv8Q+PuqS5/PdjSmJeQGUDMyp
	8ZIKsyNPJ4gD0yizKWGxS0qf3jM4hw88tQ==
X-Google-Smtp-Source: ABdhPJyjn8FJzaPdL2oUkCprBCAJZ3rPg5JGeoFck8t+JypGyli1cBOyOKC/anz2YAwZFexM9cA+gg==
X-Received: by 2002:a05:6214:21a1:: with SMTP id t1mr2251322qvc.73.1644608087885;
        Fri, 11 Feb 2022 11:34:47 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id w3sm13607612qta.13.2022.02.11.11.34.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Feb 2022 11:34:47 -0800 (PST)
Message-ID: <056a5299-d57e-306e-11d8-87cb715c70fa@gmail.com>
Date: Fri, 11 Feb 2022 14:34:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: "Kuester, Dan (Fed)" <daniel.kuester@nist.gov>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BY3PR09MB8770D54395EC44842C212446E4309@BY3PR09MB8770.namprd09.prod.outlook.com>
 <28db4f71-42d9-f2cb-3b83-464a5f2407c3@gmail.com>
 <BY3PR09MB87707061D182F8ABD687E5FCE4309@BY3PR09MB8770.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BY3PR09MB87707061D182F8ABD687E5FCE4309@BY3PR09MB8770.namprd09.prod.outlook.com>
Message-ID-Hash: YYV36TRPFZ45QWASMMQPPMDNJPMUV5BX
X-Message-ID-Hash: YYV36TRPFZ45QWASMMQPPMDNJPMUV5BX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC and time vs frequency averaging
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YYV36TRPFZ45QWASMMQPPMDNJPMUV5BX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6670851422393930281=="

This is a multi-part message in MIME format.
--===============6670851422393930281==
Content-Type: multipart/alternative;
 boundary="------------puboBxQuyqvmvajqb2HH5NuY"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------puboBxQuyqvmvajqb2HH5NuY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-11 13:53, Kuester, Dan (Fed) wrote:
>
> Ah, I see - thanks for the insights, Marcus.
>
> Unfortunately, we=E2=80=99re playing a somewhat precarious game near th=
e edge=20
> of the STFT time-bandwidth product limit. On the one hand, we need a=20
> long enough FFT to minimize bleeding between channels. On the other,=20
> we also need to keep most of the FFT packets in any given ~1ms time=20
> window in order to maintain sufficient statistical strength in the=20
> downstream processing, which filters out short pulses that may=20
> sometimes be present in the band.
>
> Unfortunately, as a result the FPGA will probably not be very useful=20
> to us with =E2=80=9CKeep 1 in N.=E2=80=9D However, we might be able to =
get away with=20
> buffering a large number of FFT windows into 1 ms blocks, and then do=20
> the vector sum on the host. Is there a way to =E2=80=9Ctrigger=E2=80=9D=
 bursts like=20
> this? I suppose we could just allow the buffer overflow to do the rate=20
> limiting for us :-)
>
> Dan
>
This sounds like you might want to write your own custom RFNoC block do=20
to some of the things you want to do.

You might also look into the PFB channelizer RFNOC work that others on=20
this list have done--they generally have better
 =C2=A0 side-band performance than a straight FFT.


> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Friday, February 11, 2022 9:33 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: RFNoC and time vs frequency averaging
>
> On 2022-02-11 10:38, Kuester, Dan (Fed) via USRP-users wrote:
>
>     Hi everyone,
>
>     I=E2=80=99m hoping for some advice on using RFNoC for a spectrum an=
alysis
>     application (I have another hardware clocking question that I=E2=80=
=99m
>     going to ask separately).
>
>     Context: we need to continuously stream channel power in a bank of
>     8 contiguous 10 MHz bands on short (a few microseconds) time
>     scales. To manage the initial deluge of IQ, I=E2=80=99d like to use=
 an
>     FPGA to perform a 512-point FFT and then reduce the volume of data
>     by summing up mag^2 across frequency to give channel power. The
>     resulting stream of 8 channel power readings every few
>     microseconds is then pretty manageable for transport and
>     processing on the host.
>
>     After looking at the RFNoC block list, the (wishful thinking? :-))
>     implementation in my head looks like this:
>
>     (Radio) =E2=86=92 Window =E2=86=92 FFT (mag^2 output) =E2=86=92 Vec=
tor IIR to sum across
>     frequency bins =E2=86=92 Keep 1 in N =E2=86=92 (Stream to host)
>
>     Some questions have come up on this:
>
>      1. Does the Vector IIR at the output of an FFT operate across
>         time or frequency? For =E2=80=9CKeep 1 in N,=E2=80=9D there=E2=80=
=99s a clear flag to
>         determine whether the operation is applied by sample or by
>         packet, but I don=E2=80=99t see anything about which of these =E2=
=80=9CMoving
>         Average=E2=80=9D =E2=80=9CVector IIR=E2=80=9D operate on.
>      2. Are there any obvious fixed-point traps in doing this?
>      3. Are there any other pitfalls that I=E2=80=99m missing here?
>
>     Thanks in advance for any ideas!
>
> The vector IIR operates across time, so it cannot be used to reduce=20
> the effective frequency resolution of the FFT, as you suggest.
>
> Why not simply use the smallest FFT possible in the FPGA, with mag**2=20
> outputs, then vector IIR that, then keep-one-in-N, then do the
> =C2=A0 resolution reduction on the host at a now much-more-modest rate?
>
> For example, a 64-point FFT with 100MHz input rate gives you 1.56e6=20
> FFT outputs/second.=C2=A0 IIR and drop this to perhaps 1/8 of that, and=
 even
> =C2=A0 an rPi4 should be able to do the vector sum operation to reduce=20
> effective resolution.
>

--------------puboBxQuyqvmvajqb2HH5NuY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-11 13:53, Kuester, Dan (Fed=
)
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BY3PR09MB87707061D182F8ABD687E5FCE4309@BY3PR09MB8770.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}p.MsoListParagraph, li.MsoListParagrap=
h, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0in;}ul
	{margin-bottom:0in;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Ah, I see - thanks for the insights,
          Marcus. <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Unfortunately, we=E2=80=99re playing a som=
ewhat
          precarious game near the edge of the STFT time-bandwidth
          product limit. On the one hand, we need a long enough FFT to
          minimize bleeding between channels. On the other, we also need
          to keep most of the FFT packets in any given ~1ms time window
          in order to maintain sufficient statistical strength in the
          downstream processing, which filters out short pulses that may
          sometimes be present in the band.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Unfortunately, as a result the FPGA will
          probably not be very useful to us with =E2=80=9CKeep 1 in N.=E2=
=80=9D However,
          we might be able to get away with buffering a large number of
          FFT windows into 1 ms blocks, and then do the vector sum on
          the host. Is there a way to =E2=80=9Ctrigger=E2=80=9D bursts li=
ke this? I
          suppose we could just allow the buffer overflow to do the rate
          limiting for us :-)
          <o:p></o:p></p>
        <div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <p class=3D"MsoNormal">Dan</p>
        </div>
      </div>
    </blockquote>
    This sounds like you might want to write your own custom RFNoC block
    do to some of the things you want to do.<br>
    <br>
    You might also look into the PFB channelizer RFNOC work that others
    on this list have done--they generally have better<br>
    =C2=A0 side-band performance than a straight FFT.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BY3PR09MB87707061D182F8ABD687E5FCE4309@BY3PR09MB8770.namprd09=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <div>
          <p class=3D"MsoNormal"><o:p></o:p></p>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Friday, February 11, 2022 9:33 AM<br>
              <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> [USRP-users] Re: RFNoC and time vs
              frequency averaging<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 2022-02-11 10:38, Kuester, Dan (Fed)
            via USRP-users wrote:<o:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">Hi everyone,<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">I=E2=80=99m hoping for some advice on us=
ing RFNoC
            for a spectrum analysis application (I have another hardware
            clocking question that I=E2=80=99m going to ask separately).
            <o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">Context: we need to continuously stream
            channel power in a bank of 8 contiguous 10 MHz bands on
            short (a few microseconds) time scales. To manage the
            initial deluge of IQ, I=E2=80=99d like to use an FPGA to perf=
orm a
            512-point FFT and then reduce the volume of data by summing
            up mag<sup>2</sup> across frequency to give channel power.
            The resulting stream of 8 channel power readings every few
            microseconds is then pretty manageable for transport and
            processing on the host.
            <o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">After looking at the RFNoC block list,
            the (wishful thinking? :-)) implementation in my head looks
            like this:<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"text-indent:.5in">(Radio) =E2=86=
=92 Window
            =E2=86=92 FFT (mag<sup>2</sup> output) =E2=86=92 Vector IIR t=
o sum across
            frequency bins =E2=86=92 Keep 1 in N =E2=86=92 (Stream to hos=
t)
            <o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">Some questions have come up on this:<o:p=
></o:p></p>
          <ol style=3D"margin-top:0in" type=3D"1" start=3D"1">
            <li class=3D"MsoListParagraph"
              style=3D"margin-left:0in;mso-list:l0 level1 lfo3">Does the
              Vector IIR at the output of an FFT operate across time or
              frequency? For =E2=80=9CKeep 1 in N,=E2=80=9D there=E2=80=99=
s a clear flag to
              determine whether the operation is applied by sample or by
              packet, but I don=E2=80=99t see anything about which of the=
se
              =E2=80=9CMoving Average=E2=80=9D =E2=80=9CVector IIR=E2=80=9D=
 operate on.<o:p></o:p></li>
            <li class=3D"MsoListParagraph"
              style=3D"margin-left:0in;mso-list:l0 level1 lfo3">Are there
              any obvious fixed-point traps in doing this?<o:p></o:p></li=
>
            <li class=3D"MsoListParagraph"
              style=3D"margin-left:0in;mso-list:l0 level1 lfo3">Are there
              any other pitfalls that I=E2=80=99m missing here?<o:p></o:p=
></li>
          </ol>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">Thanks in advance for any ideas!<o:p></o=
:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">The vector =
IIR
          operates across time, so it cannot be used to reduce the
          effective frequency resolution of the FFT, as you suggest.<br>
          <br>
          Why not simply use the smallest FFT possible in the FPGA, with
          mag**2 outputs, then vector IIR that, then keep-one-in-N, then
          do the<br>
          =C2=A0 resolution reduction on the host at a now much-more-mode=
st
          rate?<br>
          <br>
          For example, a 64-point FFT with 100MHz input rate gives you
          1.56e6 FFT outputs/second.=C2=A0 IIR and drop this to perhaps 1=
/8
          of that, and even<br>
          =C2=A0 an rPi4 should be able to do the vector sum operation to
          reduce effective resolution.<br>
          <br>
          <o:p></o:p></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------puboBxQuyqvmvajqb2HH5NuY--

--===============6670851422393930281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6670851422393930281==--
