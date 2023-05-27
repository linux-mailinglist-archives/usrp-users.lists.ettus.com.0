Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 573D67134CF
	for <lists+usrp-users@lfdr.de>; Sat, 27 May 2023 14:42:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1BE3380F80
	for <lists+usrp-users@lfdr.de>; Sat, 27 May 2023 08:42:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685191336; bh=6fFT6/XWPxVDIxk27uB8QU+9GL7s1OnUx42WEmm4SUo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nToJqavb7UlfWvrRXrO2Di8k/YlL1K9JuZg905YhL6lK57rdIcVXtDZ2Yregm38JT
	 aE0VOcOSkDTaRXCXAYWTnD0BFD/8GsSWfLnI+xYANbGCbVw8S94kphKZu0PIhrzM6e
	 +FoEduPSN/DEY/qYpMVv1HFz0/vKqEGk5A+/rbYaVBnEX8tGaLlSLUtsWD7Ny5unbw
	 9M80rkbTNRMjs0tmbpCwh3hr6nDfm20xxInZhc7Gi1wtg40SpqUQmmILye/9XsV+Ei
	 TZzH0hTL9OEBzsktfTzYS7BOgVfKtD12MOlkKK27jfszpTwV/tTjX5c6bPCLXikO97
	 B2UDgulkfrBhg==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id EB59E380B8B
	for <usrp-users@lists.ettus.com>; Sat, 27 May 2023 08:41:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WKRHO44S";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6260a9ef126so6629266d6.2
        for <usrp-users@lists.ettus.com>; Sat, 27 May 2023 05:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685191279; x=1687783279;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L7JLrf67pNKVQWozW71nvJZvpGRrxlHF0hnNCbmyGF4=;
        b=WKRHO44SShxgfOkHv7g5RyjMGHUWPvukE2QmE7+nROkTJsEVlMfMLN4MNMpcVP1bWO
         BqzmgjUtn9Bo6HwNi2uajw3RyZqvjuuRMb/evZobhhVoh2xSWpkYf4ETT5UsMp/n4L/N
         bmSKHv1dBDBqU04P/+KNYxpcffHQrGjIqcWGAHi9lVAlsC5ETxFR2DdQ14h93KuOqNmL
         fDB7heVFhWmG7dQLqc7hzaZ2Hin7A0pbxtfvShxHbT0AkrB8N1oVHNU1H3yl3b9kik3+
         ym3LPWnyHpqFcOO3QcrI/ZwuMGvl9gb5cgywUVCV21/iYA0UM/zJGbMXcD2X/rF87SHE
         hsiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685191279; x=1687783279;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=L7JLrf67pNKVQWozW71nvJZvpGRrxlHF0hnNCbmyGF4=;
        b=VN5Z4dgeEn/foHv9i5NFb37QUtNe+hcIAwxswrsQL/HRfkPEPByQu9KQPrraH8Shfn
         vZXIkFORx9uZENgKFlQK7MzlqxaqdpPUcX0MKp8fzfpk8DKkHfZFfEXbjOo10xanYPj2
         gfec1g/wN3lZ/6IWJIaaTF0EG0X5XZSV3oLiM31KHa0wDm5o/vN9JMwXv9YMaZFZcrUZ
         Lo+h1Faf6n3+gzzX+ZkcpwAvfErZLATVTgQn2fBIqJwJ2URpJwP2TVfzK6jvFDNKq+8b
         jSqzarfwbGuU76DtB9NwaHDzJ3O3m/QHi7zn3K3b6gyQHFxCnv18Url7YkpA9wVKUmPS
         sUdw==
X-Gm-Message-State: AC+VfDwRSzimzP7iebmnVcH1F4X2xLQV/G1LLqi3qOtF/khRlUbhEA6I
	SjgjpdjT6jcsHBnHQ3TBt/QOQtig8kQ+Xg==
X-Google-Smtp-Source: ACHHUZ6v/WmxcCLgMGrxfwZOTVuakx/YYGsIjS4B5s3Ts/tmA7+oJkkUUDbuZsK/vYzuMBatNjuG4Q==
X-Received: by 2002:a05:6214:5185:b0:5f4:357c:3bf5 with SMTP id kl5-20020a056214518500b005f4357c3bf5mr4751746qvb.13.1685191279072;
        Sat, 27 May 2023 05:41:19 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id jy3-20020a0562142b4300b00621430707f7sm1999719qvb.83.2023.05.27.05.41.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 May 2023 05:41:18 -0700 (PDT)
Message-ID: <58481401-5240-6c86-20ef-c131fa009d8d@gmail.com>
Date: Sat, 27 May 2023 08:41:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8@lists.ettus.com>
 <CAFche=gYq5ctyMW7_GVrCzhr8WxcjQz3ydNkV6geHAUS72K=bQ@mail.gmail.com>
 <DB4P189MB2440C719A5A6A88A67B4F7608D7C9@DB4P189MB2440.EURP189.PROD.OUTLOOK.COM>
 <936520968.215976.1684620209911@mail.yahoo.com>
 <3a73567e-d3c6-83cc-b3ac-0004226581b0@gmail.com>
 <17799965.336600.1684709874320@mail.yahoo.com>
 <d8fd2fe9-5449-e2b4-452e-4453045bb21e@gmail.com>
 <593975973.1685186.1685124691584@mail.yahoo.com>
 <8c35be79-3e61-b671-6bf0-7c05941eb3ee@gmail.com>
 <1226646462.1779766.1685182942468@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1226646462.1779766.1685182942468@mail.yahoo.com>
Message-ID-Hash: BNUKIN6NOFBHEICE4L5TE6YNLX3CUGKB
X-Message-ID-Hash: BNUKIN6NOFBHEICE4L5TE6YNLX3CUGKB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Receive with UHD4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BNUKIN6NOFBHEICE4L5TE6YNLX3CUGKB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2426734300329367110=="

This is a multi-part message in MIME format.
--===============2426734300329367110==
Content-Type: multipart/alternative;
 boundary="------------WVYZxOdUnC8WDN7htFpmH5Uu"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------WVYZxOdUnC8WDN7htFpmH5Uu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/05/2023 06:22, zhou wrote:
> Hi Marcus,
>
> The sampling rate can be 30.72MHz or 184,32MHz. It can vary in=20
> different test cases.
> Below are the final parts of the pass and failed captures (fs=3D30.72MH=
z):
> Inline imagemichael york
> With eye, we can hardly see difference between these two captures. EVM=20
> is not bad in the failed case but CRC failed.
> I am not too worried about this problem because I have the solution. I=20
> reported it as a possible issue in usrp.
>
> Have a nice weekend,
>
>
>
> On Friday, 26 May 2023 at 20:05:28 BST, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 26/05/2023 14:11, zhou wrote:
> Hi Marcus,
>
> Sorry for the late response.
> My system setup:
> - UHD 4.4
> - Ubuntu 22.04 server version
> - USRP: X310
>
> The capture code:
> uhd::usrp::multi_usrp::sptr usrp =3D=20
> uhd::usrp::multi_usrp::make("addr=3D192.168.12.2,=20
> second_addr=3D192.168.13.2, master_clock_rate=3D184.32e6");
> uhd::stream_args_t stream_args_rx("sc16", "sc16");
> stream_args_rx.channels.push_back(0);
> stream_args_rx.channels.push_back(1);
> uhd::rx_streamer::sptr rx_stream =3D usrp->get_rx_stream(stream_args_rx=
);
> uhd::stream_cmd_t=20
> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
> stream_cmd.num_samps =3D num_requested_samples;
> stream_cmd.stream_now =3D false;
> stream_cmd.time_spec =3D uhd::time_spec_t(ul_time_spec);
> rx_stream->issue_stream_cmd(stream_cmd);
> size_t num_rx_samps;
> unsigned long num_total_samps =3D 0;
> while(num_requested_samples !=3D num_total_samps)
> {
> =C2=A0 =C2=A0num_rx_samps =3D rx_stream->recv(buff, num_requested_sampl=
es, md, 5.0);
> =C2=A0 =C2=A0num_total_samps +=3D num_rx_samps;
> }
>
> If I capture exactly num_requested_samples, then the final part of the=20
> capture will not be good. I have to capture 1ms more. In UHD 3.10, I=20
> don't see this problem.
>
> Thanks for any feedback.
>
>
> I don't see where you set the sample rate--what is your sample rate?
>
> Can you perhaps share a time-domain plot of the last samples in the=20
> case where it doesn't work right?
>
Between UHD 3.10 and UHD 4.4, there have been a considerable number of=20
changes to the device implementation, including
 =C2=A0 restructuring of the DDC and DUC filters -- which will have chang=
ed=20
their group-delay.=C2=A0=C2=A0=C2=A0 This is probably what you're seeing.
 =C2=A0 It's likely that simply asking for a few *microseconds* more data=
=20
would work fine.


--------------WVYZxOdUnC8WDN7htFpmH5Uu
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/05/2023 06:22, zhou wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1226646462.1779766.1685182942468@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp32ecd0f9yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">The sampling rate can be
          30.72MHz or 184,32MHz. It can vary in different test cases.</di=
v>
        <div dir=3D"ltr" data-setdir=3D"false">Below are the final parts =
of
          the pass and failed captures (fs=3D30.72MHz):</div>
        <div dir=3D"ltr" data-setdir=3D"false"><span></span><span></span>=
<img
            title=3D"Inline image" alt=3D"Inline image"
            src=3D"cid:8a765a10-d87b-b353-eb41-dd67903a2d82@yahoo.com"
            class=3D"yahoo-inline-image" draggable=3D"false"
            style=3D"max-width: 689px; width: 100%;"
            data-id=3D"&lt;8a765a10-d87b-b353-eb41-dd67903a2d82@yahoo.com=
&gt;"
            moz-do-not-send=3D"true">michael york</div>
        <div dir=3D"ltr" data-setdir=3D"false">With eye, we can hardly se=
e
          difference between these two captures. EVM is not bad in the
          failed case but CRC failed.</div>
        <div dir=3D"ltr" data-setdir=3D"false">I am not too worried about
          this problem because I have the solution. I reported it as a
          possible issue in usrp.</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Have a nice weekend,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydp558e8d4fyahoo_quoted_5920007757"
        class=3D"ydp558e8d4fyahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Friday, 26 May 2023 at 20:05:28 BST, Marcus D. Leech
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonbra=
un@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydp558e8d4fyiv1273537711">
              <div>
                <div id=3D"ydp558e8d4fyiv1273537711yqtfd05105"
                  class=3D"ydp558e8d4fyiv1273537711yqt9864199667">
                  <div class=3D"ydp558e8d4fyiv1273537711moz-cite-prefix">=
On
                    26/05/2023 14:11, zhou wrote:<br clear=3D"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
              </div>
              <div>
                <div style=3D"font-family:Helvetica Neue, Helvetica,
                  Arial, sans-serif;font-size:13px;"
                  class=3D"ydp558e8d4fyiv1273537711ydp361dbc4yahoo-style-=
wrap">
                  <div id=3D"ydp558e8d4fyiv1273537711yqtfd69564"
                    class=3D"ydp558e8d4fyiv1273537711yqt9864199667">
                    <div dir=3D"ltr">Hi Marcus,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Sorry for the late response.</div>
                    <div dir=3D"ltr">My system setup:=C2=A0</div>
                    <div dir=3D"ltr">- UHD 4.4</div>
                    <div dir=3D"ltr">- Ubuntu 22.04 server version</div>
                    <div dir=3D"ltr">- USRP: X310<br clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">The capture code:</div>
                    <div dir=3D"ltr">
                      <div>
                        <div>uhd::usrp::multi_usrp::sptr usrp =3D
                          uhd::usrp::multi_usrp::make("addr=3D192.168.12.=
2,
                          second_addr=3D192.168.13.2,
                          master_clock_rate=3D184.32e6");</div>
                        <div>uhd::stream_args_t stream_args_rx("sc16",
                          "sc16");</div>
                        <div>stream_args_rx.channels.push_back(0);</div>
                        <div>stream_args_rx.channels.push_back(1);</div>
                        <div>uhd::rx_streamer::sptr rx_stream =3D
                          usrp-&gt;get_rx_stream(stream_args_rx);</div>
                        <div>uhd::stream_cmd_t
                          stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_S=
AMPS_AND_DONE);</div>
                        <div>stream_cmd.num_samps =3D
                          num_requested_samples;</div>
                        <div>stream_cmd.stream_now =3D false;</div>
                        <div>stream_cmd.time_spec =3D
                          uhd::time_spec_t(ul_time_spec);</div>
                        <div>rx_stream-&gt;issue_stream_cmd(stream_cmd);<=
/div>
                        <div>size_t num_rx_samps;</div>
                        <div>unsigned long num_total_samps =3D 0;</div>
                        <div>while(num_requested_samples !=3D
                          num_total_samps)</div>
                        <div>{</div>
                        <div>=C2=A0 =C2=A0num_rx_samps =3D rx_stream-&gt;=
recv(buff,
                          num_requested_samples, md, 5.0);</div>
                        <div>=C2=A0 =C2=A0num_total_samps +=3D num_rx_sam=
ps;</div>
                        <div>}</div>
                      </div>
                      <br clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0,
                          0);font-family:Helvetica Neue, Helvetica,
                          Arial, sans-serif;">If I capture exactly
                          num_requested_samples, then the final part of
                          the capture will not be good. I have to
                          capture 1ms more. In UHD 3.10, I don't see
                          this problem.</span></span><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Thanks for any feedback.</div>
                  </div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <br clear=3D"none">
                </div>
                I don't see where you set the sample rate--what is your
                sample rate?<br clear=3D"none">
                <br clear=3D"none">
                Can you perhaps share a time-domain plot of the last
                samples in the case where it doesn't work right?
                <div id=3D"ydp558e8d4fyiv1273537711yqtfd66592"
                  class=3D"ydp558e8d4fyiv1273537711yqt9864199667"><br>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Between UHD 3.10 and UHD 4.4, there have been a considerable number
    of changes to the device implementation, including<br>
    =C2=A0 restructuring of the DDC and DUC filters -- which will have
    changed their group-delay.=C2=A0=C2=A0=C2=A0 This is probably what yo=
u're seeing.<br>
    =C2=A0 It's likely that simply asking for a few *microseconds* more d=
ata
    would work fine.<br>
    <br>
    <br>
  </body>
</html>

--------------WVYZxOdUnC8WDN7htFpmH5Uu--

--===============2426734300329367110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2426734300329367110==--
