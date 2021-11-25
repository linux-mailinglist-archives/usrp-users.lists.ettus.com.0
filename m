Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B10BB45DD9B
	for <lists+usrp-users@lfdr.de>; Thu, 25 Nov 2021 16:39:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F33A4384750
	for <lists+usrp-users@lfdr.de>; Thu, 25 Nov 2021 10:39:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="gI+nc3ur";
	dkim-atps=neutral
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 374A23843C7
	for <usrp-users@lists.ettus.com>; Thu, 25 Nov 2021 10:38:20 -0500 (EST)
Received: by mail-io1-f46.google.com with SMTP id m9so8082525iop.0
        for <usrp-users@lists.ettus.com>; Thu, 25 Nov 2021 07:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=Nfm0twCfe+kXlB0CO+ZbdsZdW4HU1d4SCRu/gIbzHXg=;
        b=gI+nc3urTilrcLrRFadeog7pOM1YMQbyLeUpsAM5DiHwJ4hlJEihqlomIiFdXjZeFK
         dkFy81hLh6ouSGQPTjcRytc3WAvfTdlv2exktykWjCscF5qFWS6lneV+rKZkZWaioOrd
         FgEXY+k8T/kUFw1YVIZorLnD9HkW1T/fLRMg6e6BJlY0buEYZXuK7UFj9X2Xf2rNry8s
         zED809Tt/+8BeDAtW9q4cPhbR8PtuwqAMJg2AmCBe2//DyVJnaPn6bulDjL8BGFz2oKu
         dgroj6NbvrGmUMKRdey7CqGMXN9j1rplvzlj9NxMMrPp5MUT0qM8UC8MaiQQ2QdjznMG
         11Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=Nfm0twCfe+kXlB0CO+ZbdsZdW4HU1d4SCRu/gIbzHXg=;
        b=cjfT/Nea1HlNZ5y6eKP+gTW3Zd0zAcq8xRs5GBsOkOejmnJi162MGBH2EdRm1c6Hg2
         5BPvDbFtxKCoQzbrdgFDAsX9F6h0aWJyhrNLA9yZuRflDfpwjEkyS9uW2Zhe+I3xTXwZ
         PIL2HQFca67/rz77/MwhLMEOVaMvphyW3FUId5tiwegPcofTrF9fY99ClAATO5mZxb8Y
         72nlliA5LN5LCD4LZe5fmbEQZDIQl0U6xrpGmvSm1zbKQ8WNylFpx1OboVPj2XARg6yY
         u0ZE9Bzrv60Defo6ZCSebCPCg68dIQsgAVlllqKsVXSA2yDULVTnm2EywELKxjKSTp6W
         qV9Q==
X-Gm-Message-State: AOAM533xEkE9gEQvYaU3FTQGGnPi0zaVBEz9hRY9dggB28amz4u4TWBm
	VHSILtfrRCcC2rqS4lc30WIYjAgbu/+P4ndkg85uiknJQpO2TueJ
X-Google-Smtp-Source: ABdhPJxm/c2twCrC/BtBFhVMWKki1cgf1sZVSU4siOIYIHgf8D3uSxs8F5o1PxJ1F4E+Ps3A6Lik+cmv+4LsAO2Ui3I=
X-Received: by 2002:a5e:c645:: with SMTP id s5mr24907188ioo.154.1637854700352;
 Thu, 25 Nov 2021 07:38:20 -0800 (PST)
MIME-Version: 1.0
References: <360d04b1-759d-69cb-fa01-d400cb592203@virginia.edu>
 <CAL7q81tHRknJhdtNhk+x-3QDDf4ZdeBKwO09J8fsphboTNzUyA@mail.gmail.com> <f6ebd6da-df5f-57f0-1448-ad973762fbad@virginia.edu>
In-Reply-To: <f6ebd6da-df5f-57f0-1448-ad973762fbad@virginia.edu>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 25 Nov 2021 16:38:09 +0100
Message-ID: <CAFOi1A5=fah6s89S_rGYGAKK7R8NFbfW4yPns_N_=VydoiLkeA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: ELAUKENX5ALHGXWPAHU5QDDUDJ5VSMMJ
X-Message-ID-Hash: ELAUKENX5ALHGXWPAHU5QDDUDJ5VSMMJ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 FPGA errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ELAUKENX5ALHGXWPAHU5QDDUDJ5VSMMJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3201480664387485257=="

--===============3201480664387485257==
Content-Type: multipart/alternative; boundary="0000000000009bcb9f05d19ec325"

--0000000000009bcb9f05d19ec325
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dustin,

your application design looks like a pretty normal UHD use case. Like
Marcus says, 4 ms might be tough to achieve, but then again, if you're
connected directly to the device and your computer is not also mining
cryptocurrencies at the same time, it's possible. In any case, you'd see
"late commands" errors if it fails.

Your error tells us that the ZPU firmware is failing to respond. There's
really very little you can do that will crash the ZPU firmware, so I'm
going to guess that's not the case here either. One thing that is maybe a
bit unusual is that you're generating a lot of command packets on top of
the data. I wonder if the ZPU and CHDR packets are getting into each
other's way somehow. If you slow down the loop (say, retune every 50 ms
instead of every 4), does this still happen? I realize this is not what
you're trying to do, but I'm trying to narrow down the source of error here=
.

--m

On Tue, Nov 23, 2021 at 11:42 PM Dustin Widmann <dw2zq@virginia.edu> wrote:

> Jonathon, Marcus
>
> Usually, when something goes wrong, I'm getting an error like this:
>
> [x300_fw_ctrl.cpp:53] [X300] 192.168.40.2: x300 fw communication
> failure #1
> EnvironmentError: IOError: x300 fw poke32 - reply timed out
> [1]    193622 abort (core dumped)
>
> Marcus, I'm not sure which part of the code you might find interesting, t=
his is the portion of my project that interfaces with a radio, for referenc=
e: https://u.pcloud.link/publink/show?code=3DXZ6jaIXZnTM8V7fAKtLbjS7NAlhtxj=
Qm3Dl7
>
> Dustin
>
>
> On 11/23/21 15:02, Jonathon Pendlum wrote:
>
> Hi Dustin,
>
> Can you provide the error message?
>
> Jonathon
>
> On Tue, Nov 23, 2021 at 2:20 PM Dustin Widmann <dw2zq@virginia.edu> wrote=
:
>
>> Hi list,
>>
>> I occasionally, unpredictably, get FPGA-related errors. Usually some
>> sort of FPGA timeouts, so I have to reset the USRP after these errors,
>> which is rather inconvenient.
>>
>> The software is C++ using the UHD 4 multi-usrp API.
>>
>> Without going into too much detail, I wonder if there is anything
>> particular to my *approach* that could make things more prone to FPGA
>> errors of any sorts. I'm also curious about the different =E2=80=9Cstrea=
m_modes=E2=80=9D
>> that are available, their pros and cons / use cases, and more
>> particularly if I'm really using the one best suited to my use case.
>>
>> Before describing that, this is what I'm trying to do. It's fairly
>> simple, but I'm trying to make it tune, collect, and then tune again as
>> quickly as possible without leaving my cozy C++ bed. It's currently
>> doing this >100 times per second.
>> * transmits continuously
>> * in a loop:
>> *** tune the transmitter and receivers and set their gain:
>> *** receive a fixed number of samples
>>
>> How I'm currently going about it:
>>
>>
>> In main object/thread
>> * init the radio
>> * create a tx object and move it to a new thread
>> * give the tx object a streamer
>> * tell the tx object to start streaming
>> * create a rx object and move it to a new thread
>> * give the rx object a streamer
>> * tell the rx object to start streaming
>> * in a loop (forever):
>> *** clear command time
>> *** set command time to now()+0.004
>> *** set_rx_freq to next frequency for both channels
>> *** set_tx_freq to next frequency for channel 0
>> *** set the rx gain
>> *** set the tx gain
>> *** sleep for 4ms
>> *** ask the rx object to save some samples
>>
>> in tx object/thread
>> * in a loop (until asked to stop by main)
>> *** call send on the streamer with max_num_samps samples from a fixed
>> waveform
>> * when killed, send an empty end_of_burst
>>
>> in rx object/thread
>> * issue STREAM_MODE_START_CONTINUOUS, starting 0.25 in the future/_resta=
rt
>> * in a loop (until asked to stop by main)
>> *** recv  max_num_samps from the streamer
>> *** check for/handle errors if they occur (often do at the start of the
>> stream)
>> *** copy the samples  if currently collecting, else discard them
>> * when killed, issue STREAM_MODE_STOP_CONTINOUS
>>
>> I can/will provide more detail/code/etc, but that's not necessarily
>> relevant to the *approach* I wouldn't think. To reiterate the question,
>> I want to know if there is anything about the approach that would make
>> FPGA related errors likely.
>>
>> -Dustin
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009bcb9f05d19ec325
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dustin,</div><div><br></div><div>your application des=
ign looks like a pretty normal UHD use case. Like Marcus says, 4 ms might b=
e tough to achieve, but then again, if you&#39;re connected directly to the=
 device and your computer is not also mining cryptocurrencies at the same t=
ime, it&#39;s possible. In any case, you&#39;d see &quot;late commands&quot=
; errors if it fails.</div><div><br></div><div>Your error tells us that the=
 ZPU firmware is failing to respond. There&#39;s really very little you can=
 do that will crash the ZPU firmware, so I&#39;m going to guess that&#39;s =
not the case here either. One thing that is maybe a bit unusual is that you=
&#39;re generating a lot of command packets on top of the data. I wonder if=
 the ZPU and CHDR packets are getting into each other&#39;s way somehow. If=
 you slow down the loop (say, retune every 50 ms instead of every 4), does =
this still happen? I realize this is not what you&#39;re trying to do, but =
I&#39;m trying to narrow down the source of error here.</div><div><br></div=
><div>--m<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Tue, Nov 23, 2021 at 11:42 PM Dustin Widmann &lt;<a h=
ref=3D"mailto:dw2zq@virginia.edu">dw2zq@virginia.edu</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <p>Jonathon, Marcus<br>
      <br>
      Usually, when something goes wrong, I&#39;m getting an error like
      this:<br>
    </p>
    <pre style=3D"font-size:14px;line-height:19.6px">[x300_fw_ctrl.cpp:53] =
[X300] <a href=3D"http://192.168.40.2" target=3D"_blank">192.168.40.2</a>: =
x300 fw communication
failure #1
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[1]    193622 abort (core dumped)

Marcus, I&#39;m not sure which part of the code you might find interesting,=
 this is the portion of my project that interfaces with a radio, for refere=
nce:=20
<a href=3D"https://u.pcloud.link/publink/show?code=3DXZ6jaIXZnTM8V7fAKtLbjS=
7NAlhtxjQm3Dl7" target=3D"_blank">https://u.pcloud.link/publink/show?code=
=3DXZ6jaIXZnTM8V7fAKtLbjS7NAlhtxjQm3Dl7</a>

Dustin

</pre>
    <div>On 11/23/21 15:02, Jonathon Pendlum
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi Dustin,
        <div><br>
        </div>
        <div>Can you provide the error message?</div>
        <div><br>
        </div>
        <div>Jonathon</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 23, 2021 at 2:20
          PM Dustin Widmann &lt;<a href=3D"mailto:dw2zq@virginia.edu" targe=
t=3D"_blank">dw2zq@virginia.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi
          list,<br>
          <br>
          I occasionally, unpredictably, get FPGA-related errors.
          Usually some <br>
          sort of FPGA timeouts, so I have to reset the USRP after these
          errors, <br>
          which is rather inconvenient.<br>
          <br>
          The software is C++ using the UHD 4 multi-usrp API.<br>
          <br>
          Without going into too much detail, I wonder if there is
          anything <br>
          particular to my *approach* that could make things more prone
          to FPGA <br>
          errors of any sorts. I&#39;m also curious about the different
          =E2=80=9Cstream_modes=E2=80=9D <br>
          that are available, their pros and cons / use cases, and more
          <br>
          particularly if I&#39;m really using the one best suited to my us=
e
          case.<br>
          <br>
          Before describing that, this is what I&#39;m trying to do. It&#39=
;s
          fairly <br>
          simple, but I&#39;m trying to make it tune, collect, and then tun=
e
          again as <br>
          quickly as possible without leaving my cozy C++ bed. It&#39;s
          currently <br>
          doing this &gt;100 times per second.<br>
          * transmits continuously<br>
          * in a loop:<br>
          *** tune the transmitter and receivers and set their gain:<br>
          *** receive a fixed number of samples<br>
          <br>
          How I&#39;m currently going about it:<br>
          <br>
          <br>
          In main object/thread<br>
          * init the radio<br>
          * create a tx object and move it to a new thread<br>
          * give the tx object a streamer<br>
          * tell the tx object to start streaming<br>
          * create a rx object and move it to a new thread<br>
          * give the rx object a streamer<br>
          * tell the rx object to start streaming<br>
          * in a loop (forever):<br>
          *** clear command time<br>
          *** set command time to now()+0.004<br>
          *** set_rx_freq to next frequency for both channels<br>
          *** set_tx_freq to next frequency for channel 0<br>
          *** set the rx gain<br>
          *** set the tx gain<br>
          *** sleep for 4ms<br>
          *** ask the rx object to save some samples<br>
          <br>
          in tx object/thread<br>
          * in a loop (until asked to stop by main)<br>
          *** call send on the streamer with max_num_samps samples from
          a fixed <br>
          waveform<br>
          * when killed, send an empty end_of_burst<br>
          <br>
          in rx object/thread<br>
          * issue STREAM_MODE_START_CONTINUOUS, starting 0.25 in the
          future/_restart<br>
          * in a loop (until asked to stop by main)<br>
          *** recv=C2=A0 max_num_samps from the streamer<br>
          *** check for/handle errors if they occur (often do at the
          start of the <br>
          stream)<br>
          *** copy the samples=C2=A0 if currently collecting, else discard
          them<br>
          * when killed, issue STREAM_MODE_STOP_CONTINOUS<br>
          <br>
          I can/will provide more detail/code/etc, but that&#39;s not
          necessarily <br>
          relevant to the *approach* I wouldn&#39;t think. To reiterate the
          question, <br>
          I want to know if there is anything about the approach that
          would make <br>
          FPGA related errors likely.<br>
          <br>
          -Dustin<br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009bcb9f05d19ec325--

--===============3201480664387485257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3201480664387485257==--
