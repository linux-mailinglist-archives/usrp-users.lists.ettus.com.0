Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E383A855C
	for <lists+usrp-users@lfdr.de>; Tue, 15 Jun 2021 17:53:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00A23383E12
	for <lists+usrp-users@lfdr.de>; Tue, 15 Jun 2021 11:53:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FVZpKNA+";
	dkim-atps=neutral
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id C3A8A380C0A
	for <usrp-users@lists.ettus.com>; Tue, 15 Jun 2021 11:52:12 -0400 (EDT)
Received: by mail-qv1-f52.google.com with SMTP id l3so15611810qvl.0
        for <usrp-users@lists.ettus.com>; Tue, 15 Jun 2021 08:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=5a6E9WvQ6I1e8f8XA/y2wrfPZMUUE3NvmZfzb9jMoC4=;
        b=FVZpKNA+YyE4+VmV5CJuwR/Xcje6kISNIubxafFf8Fx6Q7wLhGm+cv6KxHM0AemXJk
         av080LN82/9TEwJe5ARtiPRaOgvL2pyWZ1CK98/fv9u8UR1Gq06OK8EJ3nzMMRkVqmuS
         ZPb7AmGJGUAHGbfESgat3n7CBAwJ49e04D0V9Zuri10KLd2y2IIzVn9PnmJxerlNHvHe
         dLDoQXCnXZQXCu2BBdImHE8Gop0DAmDuHOhqc+mrze8UnmHVpLn214Qi3HjraPTnf5Ip
         hc4kcAMRcn1UTk9wop8aHwwMV085Pj0fno1RmIs1htAiTfuXeVRzXgHv5akDXNwKbPFV
         hD1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=5a6E9WvQ6I1e8f8XA/y2wrfPZMUUE3NvmZfzb9jMoC4=;
        b=h1MXv9yTyWjJN6jTlmxE5qboglRfMFkIgh+FKFPH7sWH/ZBtoHdIoror/fIUA5u9pD
         ypRkwG9MkBJgBg69tMBHO+FrO5KNd+rxOZJUw9cHDiJFrwTtwWnzWWg8MMkJaTW7ksoE
         LqGhd45EVTnna+5NgUiORS8OotNh4Spp8u+pg2Bicg1cMqqPJi+J27TIf/uX298YXLgb
         ArwT1geOX3gF78RHrQ+22+n0H7oIGO9j9cE5ROmOUpZCZc+OMLxg4GrKRUy53fSzjK4Y
         T8HD2R9vJuhNMGh8ScgYhd5Az7crvk0+3IxGTyf/KKnDKLPdxMsdv/X5ARuaaMXDUjjJ
         qYGA==
X-Gm-Message-State: AOAM532AtrEGs7DbnDi83u5VwijwpJIuPr6Wkyp/9DJJL/QPTCxKDH+b
	YWyWH2v3x1nYBEQyV3npUXfD4vrT5MJwZg==
X-Google-Smtp-Source: ABdhPJwYVMyj9Y2tfw+sjes/mY7rRXDh1njiXb9InAoynzE72zeN76YJpz7IuVf+PNU1UTcCaCTXcg==
X-Received: by 2002:ad4:4e2e:: with SMTP id dm14mr6034953qvb.33.1623772331944;
        Tue, 15 Jun 2021 08:52:11 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id l18sm11943328qtq.85.2021.06.15.08.52.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Jun 2021 08:52:11 -0700 (PDT)
Message-ID: <60C8CCAA.50501@gmail.com>
Date: Tue, 15 Jun 2021 11:52:10 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Skyvalakis Konstantinos <kskyvalakis@isc.tuc.gr>
References: <03824504-546f-4482-a811-20ac1282c77d@email.android.com>,<1623763142151.45052@isc.tuc.gr> <1623764061783.94891@isc.tuc.gr>,<60C8C884.6050605@gmail.com> <1623771793253.4675@isc.tuc.gr>
In-Reply-To: <1623771793253.4675@isc.tuc.gr>
Message-ID-Hash: RODRGIUHOCQZ5WFDQF3DS2QKL3WWIVHT
X-Message-ID-Hash: RODRGIUHOCQZ5WFDQF3DS2QKL3WWIVHT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Phase Synchronize 2 USRP N200 w/ SBX cards
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RODRGIUHOCQZ5WFDQF3DS2QKL3WWIVHT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3013870266804438022=="

This is a multi-part message in MIME format.
--===============3013870266804438022==
Content-Type: multipart/alternative;
 boundary="------------080105000900000407000609"

This is a multi-part message in MIME format.
--------------080105000900000407000609
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06/15/2021 11:43 AM, Skyvalakis Konstantinos wrote:
>
> I am so baffled as to why I am observing these 4 phase offsets.
>
>
> I checked and the 2 devices are indeed successfully time synchronized.
>
>
> I literally have no clue why this is happening.
>
>
> You're sure there is no other workaround?
>
>
> Many thanks.
>
My guess is an ambiguity in the external reference clock PLL, but i have=20
yet to confirm that.

If this were my problem, I'd stick some cheap 20dB directional couplers=20
on the RX inputs, and feed a small TX signal into both
   of them during start-up and determine what the phase offsets are and=20
compensate as appropriate.

This is how it's done in things like phased-array radar.  Because=20
precise phasing isn't generally repeatable in large systems with
   lots of cable runs, even when they are carefully manufactured to be=20
phase-equal.  Heating affects a cables effective length, and
   since in larger systems, you cannot guarantee that heating-cooling=20
will be totally uniform across the system, they do phase-cal
   at system startup, and periodically during operations. Phased-array=20
radio telescopes do the same thing.


>
> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Tuesday, June 15, 2021 6:34 PM
> *To:* Skyvalakis Konstantinos
> *Cc:* Discuss-gnuradio@gnu.org
> *Subject:* Re: Phase Synchronize 2 USRP N200 w/ SBX cards
> On 06/15/2021 09:34 AM, Skyvalakis Konstantinos wrote:
>>
>> I just thought, that the time difference I observed might be because=20
>> of the time difference in the execution of my python commands.
>>
>>
>> So, is there a way to validate my time synchronization between the 2=20
>> devices?
>>
>>
>> Thanks.
>>
>
> You could do a get_time_last_pps() on your two devices.  They would be=20
> the same except during a tiny window across the
>   1PPS boundary.
>
>
>> ----------------------------------------------------------------------=
--
>> *From:* Discuss-gnuradio=20
>> <discuss-gnuradio-bounces+kskyvalakis=3Disc.tuc.gr@gnu.org> on behalf=20
>> of Skyvalakis Konstantinos <kskyvalakis@isc.tuc.gr>
>> *Sent:* Tuesday, June 15, 2021 4:19 PM
>> *To:* Marcus D Leech
>> *Cc:* Discuss-gnuradio@gnu.org
>> *Subject:* Re: Phase Synchronize 2 USRP N200 w/ SBX cards
>>
>> Hi again
>>
>>
>> I would like to ask you the following and I am also attaching the=20
>> code for clarity:
>>
>>
>>     self.sink =3D uhd.usrp_sink(
>> ",".join(("addr0=3D192.168.10.2,addr1=3D192.168.10.3", "")),
>>     uhd.stream_args(
>>     cpu_format=3D"fc32",
>>     channels=3Drange(2),
>>     ),
>>     )
>>
>>     self.source =3D uhd.usrp_source(
>> ",".join(("addr0=3D192.168.10.2,addr1=3D192.168.10.3", "")),
>>     uhd.stream_args(
>>     cpu_format=3D"fc32",
>>     channels=3Drange(2),
>>     ),
>>     )
>>
>>     self.source.set_clock_source('external', 0)
>>     self.source.set_time_source('external', 0)
>>     self.source.set_clock_source('external', 1)
>>     self.source.set_time_source('external', 1)
>>     self.sink.set_clock_source('external',0)
>>     self.sink.set_time_source('external',0)
>>     # self.sink.set_clock_source('external',1)
>>     # self.sink.set_time_source('external',1)
>>
>> self.source.set_time_unknown_pps(uhd.time_spec(0.0))
>> self.sink.set_time_unknown_pps(uhd.time_spec(0.0))
>>     self.source.set_samp_rate(self.adc_rate)
>>     self.source.set_gain(self.rx_gain0,0)
>>     self.source.set_gain(self.rx_gain1,1)
>>     self.source.set_antenna("RX2")
>>     self.sink.set_samp_rate(self.dac_rate)
>>     self.sink.set_gain(self.tx_gain0, 0)
>>     self.sink.set_gain(self.tx_gain1, 1)
>>     self.sink.set_antenna("TX/RX")
>>
>>     t1 =3D self.sink.get_time_now(0)
>>     t2 =3D self.sink.get_time_now(1)
>>     t3 =3D self.source.get_time_now(0)
>>     t4 =3D self.source.get_time_now(1)
>>
>>     print(uhd.time_spec_t.get_real_secs(t1))
>>     print(uhd.time_spec_t.get_real_secs(t2))
>>     print(uhd.time_spec_t.get_real_secs(t3))
>>     print(uhd.time_spec_t.get_real_secs(t4))
>>
>>
>>
>> Shouldn't t1 be equal with t2 and t3 equal with t4?
>>
>> In my application they are never equal.
>>
>> As an example of a single run of my code the output of the above=20
>> print commands is the following:
>>
>> 0.00439223
>> 0.00546809
>> 0.00621017
>> 0.00697208
>>
>> Thank you for your help.
>>
>> K.=E2=80=8B
>>
>>
>> ----------------------------------------------------------------------=
--
>> *From:* Skyvalakis Konstantinos
>> *Sent:* Sunday, June 13, 2021 11:02 PM
>> *To:* Marcus D Leech
>> *Cc:* Discuss-gnuradio@gnu.org
>> *Subject:* Re: Phase Synchronize 2 USRP N200 w/ SBX cards
>> Agreed. The compensation part is not the one I worry about. What=20
>> worries me the most is the angle-in-radians part.
>>
>> Let's say that from the time sink plot I observe that I have pi/2=20
>> radians phase offset between channel 1 and channel 2. How do I know=20
>> it's pi/2 radians and not -3pi/2?
>>
>> To be precise, I am also dumping the 2 channels complex data to 2=20
>> file sinks, which I then import on matlab for easier and faster=20
>> experimentation.
>>
>> In other words, how can I precisely calculate the 4 discrete phase=20
>> shifts I am observing in my application?
>>
>> Should I use cross correlation?
>>
>> Should I use Hilbert transform?
>>
>> I don't have a very noisy application, in case that plays a very=20
>> crucial role.
>>
>> Thanks.
>>
>> On Jun 13, 2021 22:06, Marcus D Leech <patchvonbraun@gmail.com> wrote:
>>
>>     Phase *correction* is easy once you know what that correction
>>     should be. Just a complex multiply-const by
>>
>>     Complex(math.cos(angle-in-radians),math.sin(angle-in-radians))
>>
>>     Or the equivalent in complex exponential notation.
>>
>>
>>
>>     Sent from my iPhone
>>
>>         On Jun 13, 2021, at 1:52 PM, Skyvalakis Konstantinos
>>         <kskyvalakis@isc.tuc.gr> wrote:
>>
>>         =EF=BB=BF
>>         Understandable. However, if you eventually hear anything
>>         about it please let me know.
>>
>>         Can I contact you again tomorrow for some questions I have
>>         about the phase correction block I need to make? (I mean
>>         through discuss-gnuradio)
>>
>>         Thank you very much.
>>
>>         On Jun 13, 2021 19:37, Marcus D Leech
>>         <patchvonbraun@gmail.com> wrote:
>>         I haven=E2=80=99t heard fro R&D on it. Part of the problem is =
the
>>         N200 was designed over a decade ago, and the original
>>         engineering team have long since departed=E2=80=A6
>>
>>         Sent from my iPhone
>>
>>             On Jun 13, 2021, at 6:25 AM, Skyvalakis Konstantinos
>>             <kskyvalakis@isc.tuc.gr> wrote:
>>
>>             =EF=BB=BF
>>             Hi Marcus and sorry for bothering you again, but I'd like
>>             to ask if you have any news regarding my problem.
>>
>>             Thank you.
>>
>>             On Jun 11, 2021 16:15, Skyvalakis Konstantinos
>>             <kskyvalakis@isc.tuc.gr> wrote:
>>
>>             =E2=80=8BYes it kind of helps, because if I manage to appl=
y a
>>             phase shifting/correction technique, then all 4 scenarios
>>             could produce sensible data.
>>
>>
>>             I am trying to build a phase correction block now, that
>>             will compare the 2 received signals, to see which phase
>>             shift out of the possible 4, minimizes the absolute phase
>>             difference between the 2 channels.
>>
>>
>>             After I figure out which phase offset is the correct one,
>>             out of all 4, then I can run the rest of my
>>             DoA application. It is a bit of a pain in the a**, but it
>>             will have to do in case it never gets fixed.
>>
>>
>>             Let me know if you have any news from Ettus.
>>
>>
>>             Thanks again.
>>
>>
>>             ----------------------------------------------------------=
--------------
>>             *From:* Marcus D Leech <patchvonbraun@gmail.com>
>>             *Sent:* Friday, June 11, 2021 4:05 PM
>>             *To:* Skyvalakis Konstantinos
>>             *Subject:* Re: Phase Synchronize 2 USRP N200 w/ SBX cards
>>             Also does knowing that there are only 4 possible phase
>>             relationships help in your application at all? Like only
>>             one of the 4 possible phase assumptions can produce
>>             =E2=80=9Csensible=E2=80=9D data? Just a thought.
>>
>>             Sent from my iPhone
>>
>>                 On Jun 11, 2021, at 9:03 AM, Marcus D Leech
>>                 <patchvonbraun@gmail.com> wrote:
>>
>>                 =EF=BB=BFI am an Ettus support contractor. I have a di=
rect
>>                 channel to R&D so I will relay any insights I receive
>>                 here since any such feedback would be generally useful=
.
>>
>>                 Sent from my iPhone
>>
>>                     On Jun 11, 2021, at 8:15 AM, Skyvalakis
>>                     Konstantinos <kskyvalakis@isc.tuc.gr> wrote:
>>
>>                     =EF=BB=BF
>>
>>                     =E2=80=8BI also tried contacting Ettus Support but=
 they
>>                     are not replying to my e-mails.
>>
>>
>>                     I will try to implement the phase calibration for
>>                     now.
>>
>>
>>                     Thank you for your effort.
>>
>>                     --------------------------------------------------=
----------------------
>>                     *From:* Marcus D Leech <patchvonbraun@gmail.com>
>>                     *Sent:* Friday, June 11, 2021 2:23 PM
>>                     *To:* Skyvalakis Konstantinos
>>                     *Cc:* Discuss-gnuradio@gnu.org
>>                     *Subject:* Re: Phase Synchronize 2 USRP N200 w/
>>                     SBX cards
>>                     I have a query in to Ettus R&D about possible
>>                     causes.
>>
>>                     But you might need, for now to do an initial
>>                     phase Calibration when you start up.
>>
>>                     Sent from my iPhone
>>
>>                         On Jun 11, 2021, at 3:39 AM, Skyvalakis
>>                         Konstantinos <kskyvalakis@isc.tuc.gr> wrote:
>>
>>                         =EF=BB=BF
>>
>>                         I repeated the experiments once again today
>>                         and I got once again the same results. I
>>                         still keep on randomly getting these 4 cases
>>                         I attached on a previous message.
>>
>>
>>                         I observed that cases 1.png and 3.png have a
>>                         phase difference of  +/- 180 degrees
>>
>>                         and cases 2.png and 4.png also have a phase
>>                         difference of  +/- 180 degrees.
>>
>>
>>                         Do you reckon you could help me any further
>>                         with my problem? I really need to achieve
>>                         this synchronization for my thesis.
>>
>>
>>                         Thank you very much.
>>
>>                         ----------------------------------------------=
--------------------------
>>                         *From:* Discuss-gnuradio
>>                         <discuss-gnuradio-bounces+kskyvalakis=3Disc.tu=
c.gr@gnu.org>
>>                         on behalf of Skyvalakis Konstantinos
>>                         <kskyvalakis@isc.tuc.gr>
>>                         *Sent:* Friday, June 11, 2021 12:39 AM
>>                         *To:* Marcus D. Leech
>>                         *Cc:* Discuss-gnuradio@gnu.org
>>                         *Subject:* Re: Phase Synchronize 2 USRP N200
>>                         w/ SBX cards
>>                         Exactly my thoughts as well, I mean regarding
>>                         the phase ambiguity of the WBX
>>                         daughterboards, from what I've read on the
>>                         Ettus website.
>>
>>                         I am 100% sure the daughterboards are SBX.
>>
>>
>>                         On Jun 11, 2021 00:26, "Marcus D. Leech"
>>                         <patchvonbraun@gmail.com> wrote:
>>
>>                             On 06/10/2021 01:00 PM, Skyvalakis
>>                             Konstantinos wrote:
>>
>>                                 In addition to my last message
>>                                 regarding the INTEGER_N tuning=E2=80=8B=
, =E2=80=8BI
>>                                 repeated the experiment multiple
>>                                 times. I even restarted the USRPs and
>>                                 the signal generator multiple times.
>>
>>
>>                                 What I observed was, that there were
>>                                 only 4 different recurring phase
>>                                 offsets (Blue =3D RX2 of SBX1, Red =3D
>>                                 RX2 of SBX2).
>>
>>
>>                                 I am attaching the 4 screenshots I
>>                                 captured.
>>
>>
>>                                 Thank you so much for your help. I
>>                                 feel like we're getting there.
>>
>>
>>                                 --------------------------------------=
----------------------------------
>>
>>                             You're sure that you have SBX cards and
>>                             not WBX cards?  Sorry for the
>>                             apparently-stupid question, but the WBX
>>                             uses almost the
>>                               same hardware as the SBX, but uses a
>>                             2XLO mixer that has fixed phase
>>                             ambiguity--which would look like what you
>>                             have here.
>>
>>
>>
>>
>


--------------080105000900000407000609
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 06/15/2021 11:43 AM, Skyvalakis
      Konstantinos wrote:<br>
    </div>
    <blockquote cite=3D"mid:1623771793253.4675@isc.tuc.gr" type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      <style type=3D"text/css" style=3D"display:none"><!-- p { margin-top=
: 0px; margin-bottom: 0px; }--></style>
      <p>I am so baffled as to why I am observing these 4 phase offsets.<=
br>
      </p>
      <p><br>
      </p>
      <p>I checked and the 2 devices are indeed successfully time
        synchronized.=C2=A0<br>
      </p>
      <p><br>
      </p>
      <p>I literally have no clue why this is happening.<br>
      </p>
      <p><br>
      </p>
      <p>You're sure there is no other workaround?<br>
      </p>
      <p><br>
      </p>
      <p>Many thanks.<br>
      </p>
    </blockquote>
    My guess is an ambiguity in the external reference clock PLL, but i
    have yet to confirm that.<br>
    <br>
    If this were my problem, I'd stick some cheap 20dB directional
    couplers on the RX inputs, and feed a small TX signal into both<br>
    =C2=A0 of them during start-up and determine what the phase offsets a=
re
    and compensate as appropriate.<br>
    <br>
    This is how it's done in things like phased-array radar.=C2=A0 Becaus=
e
    precise phasing isn't generally repeatable in large systems with<br>
    =C2=A0 lots of cable runs, even when they are carefully manufactured =
to
    be phase-equal.=C2=A0 Heating affects a cables effective length, and<=
br>
    =C2=A0 since in larger systems, you cannot guarantee that heating-coo=
ling
    will be totally uniform across the system, they do phase-cal<br>
    =C2=A0 at system startup, and periodically during operations.=C2=A0
    Phased-array radio telescopes do the same thing.<br>
    <br>
    <br>
    <blockquote cite=3D"mid:1623771793253.4675@isc.tuc.gr" type=3D"cite">
      <p>
      </p>
      <p><br>
      </p>
      <div style=3D"color: rgb(33, 33, 33);">
        <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
        <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11=
pt"
            color=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b>
            Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"ma=
ilto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
            <b>Sent:</b> Tuesday, June 15, 2021 6:34 PM<br>
            <b>To:</b> Skyvalakis Konstantinos<br>
            <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mail=
to:Discuss-gnuradio@gnu.org">Discuss-gnuradio@gnu.org</a><br>
            <b>Subject:</b> Re: Phase Synchronize 2 USRP N200 w/ SBX
            cards</font>
          <div>=C2=A0</div>
        </div>
        <div>
          <div class=3D"moz-cite-prefix">On 06/15/2021 09:34 AM,
            Skyvalakis Konstantinos wrote:<br>
          </div>
          <blockquote type=3D"cite">
            <style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0px;
	margin-bottom:0px}
-->
</style>
            <p>I just thought, that the=C2=A0time difference I observed=C2=
=A0might
              be because of the time difference in the execution of=C2=A0=
my
              python commands.<br>
            </p>
            <p><br>
            </p>
            <p>So, is there a way to validate my time synchronization
              between the 2 devices?<br>
            </p>
            <p><br>
            </p>
            <p>Thanks.<br>
            </p>
          </blockquote>
          <br>
          You could do a get_time_last_pps() on your two devices.=C2=A0 T=
hey
          would be the same except during a tiny window across the<br>
          =C2=A0 1PPS boundary.<br>
          <br>
          <br>
          <blockquote type=3D"cite">
            <div dir=3D"ltr" style=3D"font-size:12pt; color:#000000;
              background-color:#FFFFFF;
              font-family:Calibri,Arial,Helvetica,sans-serif">
              <hr tabindex=3D"-1" style=3D"display:inline-block; width:98=
%">
              <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font
                  style=3D"font-size:11pt" color=3D"#000000" face=3D"Cali=
bri,
                  sans-serif"><b>From:</b> Discuss-gnuradio
                  <a moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-rfc2396E"
                    href=3D"mailto:discuss-gnuradio-bounces+kskyvalakis=3D=
isc.tuc.gr@gnu.org">
&lt;discuss-gnuradio-bounces+kskyvalakis=3Disc.tuc.gr@gnu.org&gt;</a> on
                  behalf of Skyvalakis Konstantinos
                  <a moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-rfc2396E"
                    href=3D"mailto:kskyvalakis@isc.tuc.gr">&lt;kskyvalaki=
s@isc.tuc.gr&gt;</a><br>
                  <b>Sent:</b> Tuesday, June 15, 2021 4:19 PM<br>
                  <b>To:</b> Marcus D Leech<br>
                  <b>Cc:</b> <a moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-abbreviated"
                    href=3D"mailto:Discuss-gnuradio@gnu.org">
                    Discuss-gnuradio@gnu.org</a><br>
                  <b>Subject:</b> Re: Phase Synchronize 2 USRP N200 w/
                  SBX cards</font>
                <div>=C2=A0</div>
              </div>
              <div>
                <p>Hi again<br>
                </p>
                <p><br>
                </p>
                <p>I would like to ask you the following and I am also
                  attaching the code for clarity:<br>
                </p>
                <p><br>
                </p>
                <div>=C2=A0 =C2=A0 self.sink =3D uhd.usrp_sink(</div>
                <div>=C2=A0 =C2=A0
                  ",".join(("addr0=3D192.168.10.2,addr1=3D192.168.10.3",
                  "")),</div>
                <div>=C2=A0 =C2=A0 uhd.stream_args(</div>
                <div>=C2=A0 =C2=A0 cpu_format=3D"fc32",</div>
                <div>=C2=A0 =C2=A0 channels=3Drange(2),</div>
                <div>=C2=A0 =C2=A0 ),</div>
                <div>=C2=A0 =C2=A0 )</div>
                <div><br>
                </div>
                <div>=C2=A0 =C2=A0 self.source =3D uhd.usrp_source(</div>
                <div>=C2=A0 =C2=A0
                  ",".join(("addr0=3D192.168.10.2,addr1=3D192.168.10.3",
                  "")),</div>
                <div>=C2=A0 =C2=A0 uhd.stream_args(</div>
                <div>=C2=A0 =C2=A0 cpu_format=3D"fc32",</div>
                <div>=C2=A0 =C2=A0 channels=3Drange(2),</div>
                <div>=C2=A0 =C2=A0 ),</div>
                <div>=C2=A0 =C2=A0 )</div>
                <div><br>
                </div>
                <div>=C2=A0 =C2=A0 self.source.set_clock_source('external=
', 0)</div>
                <div>=C2=A0 =C2=A0 self.source.set_time_source('external'=
, 0)</div>
                <div>=C2=A0 =C2=A0 self.source.set_clock_source('external=
', 1)</div>
                <div>=C2=A0 =C2=A0 self.source.set_time_source('external'=
, 1)=C2=A0 =C2=A0=C2=A0</div>
                <div>=C2=A0 =C2=A0 self.sink.set_clock_source('external',=
0)</div>
                <div>=C2=A0 =C2=A0 self.sink.set_time_source('external',0=
)</div>
                <div>=C2=A0 =C2=A0 # self.sink.set_clock_source('external=
',1)</div>
                <div>=C2=A0 =C2=A0 # self.sink.set_time_source('external'=
,1)</div>
                <div><br>
                </div>
                <div>=C2=A0 =C2=A0
                  self.source.set_time_unknown_pps(uhd.time_spec(0.0))</d=
iv>
                <div>=C2=A0 =C2=A0
                  self.sink.set_time_unknown_pps(uhd.time_spec(0.0))</div=
>
                <div>=C2=A0 =C2=A0 self.source.set_samp_rate(self.adc_rat=
e)</div>
                <div>=C2=A0 =C2=A0 self.source.set_gain(self.rx_gain0,0)<=
/div>
                <div>=C2=A0 =C2=A0 self.source.set_gain(self.rx_gain1,1)<=
/div>
                <div>=C2=A0 =C2=A0 self.source.set_antenna("RX2")</div>
                <div>=C2=A0 =C2=A0 self.sink.set_samp_rate(self.dac_rate)=
</div>
                <div>=C2=A0 =C2=A0 self.sink.set_gain(self.tx_gain0, 0)</=
div>
                <div>=C2=A0 =C2=A0 self.sink.set_gain(self.tx_gain1, 1)</=
div>
                <div>=C2=A0 =C2=A0 self.sink.set_antenna("TX/RX")</div>
                <div><br>
                </div>
                <div>=C2=A0 =C2=A0 t1 =3D self.sink.get_time_now(0)</div>
                <div>=C2=A0 =C2=A0 t2 =3D self.sink.get_time_now(1)</div>
                <div>=C2=A0 =C2=A0 t3 =3D self.source.get_time_now(0)</di=
v>
                <div>=C2=A0 =C2=A0 t4 =3D self.source.get_time_now(1)<br>
                </div>
                <div><br>
                </div>
                <div>=C2=A0 =C2=A0 print(uhd.time_spec_t.get_real_secs(t1=
))</div>
                <div>=C2=A0 =C2=A0 print(uhd.time_spec_t.get_real_secs(t2=
))</div>
                <div>=C2=A0 =C2=A0 print(uhd.time_spec_t.get_real_secs(t3=
))</div>
                <div>=C2=A0 =C2=A0 print(uhd.time_spec_t.get_real_secs(t4=
))<br>
                </div>
                <p><br>
                </p>
                <div><br>
                </div>
                <div>Shouldn't t1 be equal with t2 and t3 equal with t4?<=
br>
                </div>
                <div><br>
                </div>
                <div>In my application=C2=A0they are never equal.<br>
                </div>
                <div><br>
                </div>
                <div>As an example of a single run of my code the output
                  of the above print commands is the following:</div>
                <div><br>
                </div>
                <div>
                  <div>0.00439223</div>
                  <div>0.00546809</div>
                  <div>0.00621017</div>
                  <div>0.00697208<br>
                  </div>
                  <div><br>
                  </div>
                  <div>Thank you for your help.<br>
                  </div>
                  <div><br>
                  </div>
                  <div>K.<span style=3D"font-size:12pt">=E2=80=8B</span><=
/div>
                </div>
                <p><br>
                </p>
                <div style=3D"color:rgb(33,33,33)">
                  <hr tabindex=3D"-1" style=3D"display:inline-block;
                    width:98%">
                  <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font
                      style=3D"font-size:11pt" color=3D"#000000"
                      face=3D"Calibri, sans-serif"><b>From:</b> Skyvalaki=
s
                      Konstantinos<br>
                      <b>Sent:</b> Sunday, June 13, 2021 11:02 PM<br>
                      <b>To:</b> Marcus D Leech<br>
                      <b>Cc:</b> <a moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-abbreviated"
                        href=3D"mailto:Discuss-gnuradio@gnu.org">
                        Discuss-gnuradio@gnu.org</a><br>
                      <b>Subject:</b> Re: Phase Synchronize 2 USRP N200
                      w/ SBX cards</font>
                    <div>=C2=A0</div>
                  </div>
                  <div>
                    <div dir=3D"auto">
                      <div>Agreed. The compensation part is not the one
                        I worry about. What worries me the most is the
                        angle-in-radians part.</div>
                      <div dir=3D"auto"><br>
                      </div>
                      <div dir=3D"auto">Let's say that from the time sink
                        plot I observe that I have pi/2 radians phase
                        offset between channel 1 and channel 2. How do I
                        know it's pi/2 radians and not -3pi/2?</div>
                      <div dir=3D"auto"><br>
                      </div>
                      <div dir=3D"auto">To be precise, I am also dumping
                        the 2 channels complex data to 2 file sinks,
                        which I then import on matlab for easier and
                        faster experimentation.</div>
                      <div dir=3D"auto"><br>
                      </div>
                      <div dir=3D"auto">In other words, how can I
                        precisely calculate the 4 discrete phase shifts
                        I am observing in my application?</div>
                      <div dir=3D"auto"><br>
                      </div>
                      <div dir=3D"auto">Should I use cross correlation?</=
div>
                      <div dir=3D"auto"><br>
                      </div>
                      <div dir=3D"auto">Should I use Hilbert transform?</=
div>
                      <div dir=3D"auto"><br>
                      </div>
                      <div dir=3D"auto">I don't have a very noisy
                        application, in case that plays a very crucial
                        role.</div>
                      <div dir=3D"auto"><br>
                      </div>
                      <div dir=3D"auto">Thanks.</div>
                      <div dir=3D"auto">
                        <div class=3D"gmail_extra" dir=3D"auto"><br>
                          <div class=3D"gmail_quote">On Jun 13, 2021
                            22:06, Marcus D Leech <a
                              moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-rfc2396E"
                              href=3D"mailto:patchvonbraun@gmail.com">
                              &lt;patchvonbraun@gmail.com&gt;</a> wrote:<=
br
                              type=3D"attribution">
                            <blockquote class=3D"quote" style=3D"margin:0=
 0
                              0 .8ex; border-left:1px #ccc solid;
                              padding-left:1ex">
                              <div dir=3D"auto">Phase *correction* is eas=
y
                                once you know what that correction
                                should be. Just a complex multiply-const
                                by=C2=A0
                                <div><br>
                                </div>
                                <div>Complex(math.cos(angle-in-radians),m=
ath.sin(angle-in-radians))</div>
                                <div><br>
                                </div>
                                <div>Or the equivalent in complex
                                  exponential notation.=C2=A0</div>
                                <div><br>
                                </div>
                                <div><br>
                                  <div><br>
                                    <div dir=3D"ltr">Sent from my iPhone<=
/div>
                                    <div dir=3D"ltr"><br>
                                      <blockquote>On Jun 13, 2021, at
                                        1:52 PM, Skyvalakis Konstantinos
                                        <a moz-do-not-send=3D"true"
                                          class=3D"moz-txt-link-rfc2396E"
href=3D"mailto:kskyvalakis@isc.tuc.gr">
                                          &lt;kskyvalakis@isc.tuc.gr&gt;<=
/a>
                                        wrote:<br>
                                        <br>
                                      </blockquote>
                                    </div>
                                    <blockquote>
                                      <div dir=3D"ltr">=EF=BB=BF
                                        <div dir=3D"auto">Understandable.
                                          However, if you eventually
                                          hear anything about it please
                                          let me know.
                                          <div dir=3D"auto"><br>
                                          </div>
                                          <div dir=3D"auto">Can I contact
                                            you again tomorrow for some
                                            questions I have about the
                                            phase correction block I
                                            need to make? (I mean
                                            through discuss-gnuradio)</di=
v>
                                          <div dir=3D"auto"><br>
                                          </div>
                                          <div dir=3D"auto">Thank you ver=
y
                                            much.</div>
                                        </div>
                                        <div><br>
                                          <div class=3D"elided-text">On
                                            Jun 13, 2021 19:37, Marcus D
                                            Leech <a
                                              moz-do-not-send=3D"true"
                                              class=3D"moz-txt-link-rfc23=
96E"
href=3D"mailto:patchvonbraun@gmail.com">
&lt;patchvonbraun@gmail.com&gt;</a> wrote:<br type=3D"attribution">
                                          </div>
                                        </div>
                                        <div>I haven=E2=80=99t heard fro =
R&amp;D
                                          on it. Part of the problem is
                                          the N200 was designed over a
                                          decade ago, and the original
                                          engineering team have long
                                          since departed=E2=80=A6<br>
                                          <br>
                                          <div dir=3D"ltr">Sent from my
                                            iPhone</div>
                                          <div dir=3D"ltr"><br>
                                            <blockquote>On Jun 13, 2021,
                                              at 6:25 AM, Skyvalakis
                                              Konstantinos <a
                                                moz-do-not-send=3D"true"
                                                class=3D"moz-txt-link-rfc=
2396E"
href=3D"mailto:kskyvalakis@isc.tuc.gr">
&lt;kskyvalakis@isc.tuc.gr&gt;</a> wrote:<br>
                                              <br>
                                            </blockquote>
                                          </div>
                                          <blockquote>
                                            <div dir=3D"ltr">=EF=BB=BF
                                              <div dir=3D"auto">Hi Marcus
                                                and sorry for bothering
                                                you again, but I'd like
                                                to ask if you have any
                                                news regarding my
                                                problem.
                                                <div dir=3D"auto"><br>
                                                </div>
                                                <div dir=3D"auto">Thank
                                                  you.</div>
                                              </div>
                                              <div><br>
                                                <div class=3D"elided-text=
">On
                                                  Jun 11, 2021 16:15,
                                                  Skyvalakis
                                                  Konstantinos <a
                                                    moz-do-not-send=3D"tr=
ue"
class=3D"moz-txt-link-rfc2396E" href=3D"mailto:kskyvalakis@isc.tuc.gr">
&lt;kskyvalakis@isc.tuc.gr&gt;</a> wrote:<br type=3D"attribution">
                                                </div>
                                              </div>
                                              <div>
                                                <p
                                                  style=3D"font-family:'c=
alibri'
                                                  ,'arial' ,'helvetica'
                                                  ,sans-serif;
                                                  font-size:16px">
                                                  =E2=80=8BYes it kind of=
 helps,
                                                  because if I manage to
                                                  apply a phase
                                                  shifting/correction
                                                  technique, then all 4
                                                  scenarios
                                                  could=C2=A0produce sens=
ible
                                                  data.<br>
                                                </p>
                                                <p
                                                  style=3D"font-family:'c=
alibri'
                                                  ,'arial' ,'helvetica'
                                                  ,sans-serif;
                                                  font-size:16px">
                                                  <br>
                                                </p>
                                                <p
                                                  style=3D"font-family:'c=
alibri'
                                                  ,'arial' ,'helvetica'
                                                  ,sans-serif;
                                                  font-size:16px">
                                                  I am trying to build a
                                                  phase correction block
                                                  now, that will compare
                                                  the 2
                                                  received=C2=A0signals, =
to
                                                  see which phase
                                                  shift=C2=A0out of the
                                                  possible 4, minimizes
                                                  the absolute=C2=A0phase
                                                  difference between the
                                                  2 channels.<br>
                                                </p>
                                                <p
                                                  style=3D"font-family:'c=
alibri'
                                                  ,'arial' ,'helvetica'
                                                  ,sans-serif;
                                                  font-size:16px">
                                                  <br>
                                                </p>
                                                <p
                                                  style=3D"font-family:'c=
alibri'
                                                  ,'arial' ,'helvetica'
                                                  ,sans-serif;
                                                  font-size:16px">
                                                  After I figure out
                                                  which phase offset is
                                                  the correct one, out
                                                  of all 4, then I can
                                                  run the rest of my
                                                  DoA=C2=A0application. I=
t is
                                                  a bit of a pain in the
                                                  a**, but it will have
                                                  to do in case it never
                                                  gets fixed.<br>
                                                </p>
                                                <p
                                                  style=3D"font-family:'c=
alibri'
                                                  ,'arial' ,'helvetica'
                                                  ,sans-serif;
                                                  font-size:16px">
                                                  <br>
                                                </p>
                                                <p
                                                  style=3D"font-family:'c=
alibri'
                                                  ,'arial' ,'helvetica'
                                                  ,sans-serif;
                                                  font-size:16px">
                                                  Let me know if you
                                                  have any news from
                                                  Ettus.<br>
                                                </p>
                                                <p
                                                  style=3D"font-family:'c=
alibri'
                                                  ,'arial' ,'helvetica'
                                                  ,sans-serif;
                                                  font-size:16px">
                                                  <br>
                                                </p>
                                                <p
                                                  style=3D"font-family:'c=
alibri'
                                                  ,'arial' ,'helvetica'
                                                  ,sans-serif;
                                                  font-size:16px">
                                                  Thanks again.<br>
                                                </p>
                                                <p><br>
                                                </p>
                                                <div dir=3D"auto"
                                                  style=3D"color:rgb(33
                                                  ,33 ,33)">
                                                  <hr
                                                    style=3D"display:inli=
ne-block;
                                                    width:98%">
                                                  <div dir=3D"ltr"><font
                                                      style=3D"font-size:=
11pt"
                                                      color=3D"#000000"
                                                      face=3D"Calibri,
                                                      sans-serif"><b>From=
:</b>
                                                      Marcus D Leech
                                                      <a
                                                        moz-do-not-send=3D=
"true"
class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com">&=
lt;patchvonbraun@gmail.com&gt;</a><br>
                                                      <b>Sent:</b>
                                                      Friday, June 11,
                                                      2021 4:05 PM<br>
                                                      <b>To:</b>
                                                      Skyvalakis
                                                      Konstantinos<br>
                                                      <b>Subject:</b>
                                                      Re: Phase
                                                      Synchronize 2 USRP
                                                      N200 w/ SBX cards</=
font>
                                                    <div>=C2=A0</div>
                                                  </div>
                                                  <div>Also does knowing
                                                    that there are only
                                                    4 possible phase
                                                    relationships help
                                                    in your application
                                                    at all? Like only
                                                    one of the 4
                                                    possible phase
                                                    assumptions can
                                                    produce =E2=80=9Csens=
ible=E2=80=9D
                                                    data? Just a
                                                    thought.=C2=A0<br>
                                                    <br>
                                                    <div dir=3D"ltr">Sent
                                                      from my iPhone</div=
>
                                                    <div dir=3D"ltr"><br>
                                                      <blockquote>On Jun
                                                        11, 2021, at
                                                        9:03 AM, Marcus
                                                        D Leech <a
                                                          moz-do-not-send=
=3D"true"
class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com">
&lt;patchvonbraun@gmail.com&gt;</a> wrote:<br>
                                                        <br>
                                                      </blockquote>
                                                    </div>
                                                    <blockquote>
                                                      <div dir=3D"ltr">=EF=
=BB=BFI
                                                        am an Ettus
                                                        support
                                                        contractor. I
                                                        have a direct
                                                        channel to
                                                        R&amp;D so I
                                                        will relay any
                                                        insights I
                                                        receive here
                                                        since any such
                                                        feedback would
                                                        be generally
                                                        useful.=C2=A0
                                                        <div><br>
                                                          <div dir=3D"ltr=
">Sent
                                                          from my iPhone<=
/div>
                                                          <div dir=3D"ltr=
"><br>
                                                          <blockquote>On
                                                          Jun 11, 2021,
                                                          at 8:15 AM,
                                                          Skyvalakis
                                                          Konstantinos <a
moz-do-not-send=3D"true" class=3D"moz-txt-link-rfc2396E"
                                                          href=3D"mailto:=
kskyvalakis@isc.tuc.gr">
&lt;kskyvalakis@isc.tuc.gr&gt;</a> wrote:<br>
                                                          <br>
                                                          </blockquote>
                                                          </div>
                                                          <blockquote>
                                                          <div dir=3D"ltr=
">=EF=BB=BF
                                                          <p>=E2=80=8BI a=
lso
                                                          tried
                                                          contacting
                                                          Ettus Support
                                                          but they are
                                                          not replying
                                                          to my e-mails.<=
br>
                                                          </p>
                                                          <p><br>
                                                          </p>
                                                          <p>I will try
                                                          to implement
                                                          the phase
                                                          calibration
                                                          for now.<br>
                                                          </p>
                                                          <p><br>
                                                          </p>
                                                          <p>Thank
                                                          you=C2=A0for yo=
ur
                                                          effort.<br>
                                                          </p>
                                                          <div
                                                          dir=3D"auto"
                                                          style=3D"color:=
rgb(33
                                                          ,33 ,33)">
                                                          <hr
                                                          style=3D"displa=
y:inline-block;
                                                          width:98%">
                                                          <div dir=3D"ltr=
"><font
style=3D"font-size:11pt" color=3D"#000000" face=3D"Calibri, sans-serif"><=
b>From:</b>
                                                          Marcus D Leech
                                                          <a
                                                          moz-do-not-send=
=3D"true"
class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com">&=
lt;patchvonbraun@gmail.com&gt;</a><br>
                                                          <b>Sent:</b>
                                                          Friday, June
                                                          11, 2021 2:23
                                                          PM<br>
                                                          <b>To:</b>
                                                          Skyvalakis
                                                          Konstantinos<br=
>
                                                          <b>Cc:</b> <a
moz-do-not-send=3D"true" class=3D"moz-txt-link-abbreviated"
                                                          href=3D"mailto:=
Discuss-gnuradio@gnu.org">
Discuss-gnuradio@gnu.org</a><br>
                                                          <b>Subject:</b>
                                                          Re: Phase
                                                          Synchronize 2
                                                          USRP N200 w/
                                                          SBX cards</font=
>
                                                          <div>=C2=A0</di=
v>
                                                          </div>
                                                          <div>I have a
                                                          query in to
                                                          Ettus R&amp;D
                                                          about possible
                                                          causes.=C2=A0
                                                          <div><br>
                                                          </div>
                                                          <div>But you
                                                          might need,
                                                          for now to do
                                                          an initial
                                                          phase
                                                          Calibration
                                                          when you start
                                                          up.=C2=A0</div>
                                                          <div><br>
                                                          <div dir=3D"ltr=
">Sent
                                                          from my iPhone<=
/div>
                                                          <div dir=3D"ltr=
"><br>
                                                          <blockquote>On
                                                          Jun 11, 2021,
                                                          at 3:39 AM,
                                                          Skyvalakis
                                                          Konstantinos <a
moz-do-not-send=3D"true" class=3D"moz-txt-link-rfc2396E"
                                                          href=3D"mailto:=
kskyvalakis@isc.tuc.gr">
&lt;kskyvalakis@isc.tuc.gr&gt;</a> wrote:<br>
                                                          <br>
                                                          </blockquote>
                                                          </div>
                                                          <blockquote>
                                                          <div dir=3D"ltr=
">=EF=BB=BF
                                                          <p>I repeated
                                                          the
                                                          experiments
                                                          once again
                                                          today and I
                                                          got once again
                                                          the same
                                                          results. I
                                                          still keep on
                                                          randomly=C2=A0g=
etting
                                                          these 4 cases
                                                          I attached on
                                                          a=C2=A0previous
                                                          message.<br>
                                                          </p>
                                                          <p><br>
                                                          </p>
                                                          <p>I observed
                                                          that=C2=A0cases
                                                          1.png and
                                                          3.png have a
                                                          phase
                                                          difference
                                                          of=C2=A0=C2=A0+=
/- 180
                                                          degrees<br>
                                                          </p>
                                                          <p>and cases
                                                          2.png and
                                                          4.png also
                                                          have a phase
                                                          difference
                                                          of=C2=A0=C2=A0+=
/- 180
                                                          degrees.<br>
                                                          </p>
                                                          <p><br>
                                                          </p>
                                                          <p>Do you
                                                          reckon you
                                                          could help me
                                                          any further
                                                          with my
                                                          problem?=C2=A0I
                                                          really need to
                                                          achieve this
                                                          synchronization
                                                          for my thesis.<=
br>
                                                          </p>
                                                          <p><br>
                                                          </p>
                                                          <p>Thank you
                                                          very much.<br>
                                                          </p>
                                                          <div
                                                          style=3D"color:=
rgb(33
                                                          ,33 ,33)">
                                                          <hr
                                                          style=3D"displa=
y:inline-block;
                                                          width:98%">
                                                          <div dir=3D"ltr=
"><font
style=3D"font-size:11pt" color=3D"#000000" face=3D"Calibri, sans-serif"><=
b>From:</b>
Discuss-gnuradio
                                                          <a
                                                          moz-do-not-send=
=3D"true"
class=3D"moz-txt-link-rfc2396E"
                                                          href=3D"mailto:=
discuss-gnuradio-bounces+kskyvalakis=3Disc.tuc.gr@gnu.org">
&lt;discuss-gnuradio-bounces+kskyvalakis=3Disc.tuc.gr@gnu.org&gt;</a> on
                                                          behalf of
                                                          Skyvalakis
                                                          Konstantinos
                                                          <a
                                                          moz-do-not-send=
=3D"true"
class=3D"moz-txt-link-rfc2396E" href=3D"mailto:kskyvalakis@isc.tuc.gr">&l=
t;kskyvalakis@isc.tuc.gr&gt;</a><br>
                                                          <b>Sent:</b>
                                                          Friday, June
                                                          11, 2021 12:39
                                                          AM<br>
                                                          <b>To:</b>
                                                          Marcus D.
                                                          Leech<br>
                                                          <b>Cc:</b> <a
moz-do-not-send=3D"true" class=3D"moz-txt-link-abbreviated"
                                                          href=3D"mailto:=
Discuss-gnuradio@gnu.org">
Discuss-gnuradio@gnu.org</a><br>
                                                          <b>Subject:</b>
                                                          Re: Phase
                                                          Synchronize 2
                                                          USRP N200 w/
                                                          SBX cards</font=
>
                                                          <div>=C2=A0</di=
v>
                                                          </div>
                                                          <div>
                                                          <div
                                                          dir=3D"auto">
                                                          <div>Exactly
                                                          my thoughts as
                                                          well, I mean
                                                          regarding the
                                                          phase
                                                          ambiguity of
                                                          the WBX
                                                          daughterboards,
                                                          from what I've
                                                          read on the
                                                          Ettus website.
                                                          <div
                                                          dir=3D"auto"><b=
r>
                                                          </div>
                                                          <div
                                                          dir=3D"auto">I
                                                          am 100% sure
                                                          the
                                                          daughterboards
                                                          are SBX.</div>
                                                          <br>
                                                          <div><br>
                                                          <div
                                                          class=3D"elided=
-text">On
                                                          Jun 11, 2021
                                                          00:26, "Marcus
                                                          D. Leech" <a
moz-do-not-send=3D"true" class=3D"moz-txt-link-rfc2396E"
                                                          href=3D"mailto:=
patchvonbraun@gmail.com">
&lt;patchvonbraun@gmail.com&gt;</a> wrote:<br type=3D"attribution">
                                                          <blockquote
                                                          style=3D"margin=
:0
                                                          0 0 0.8ex;
                                                          border-left:1px
                                                          #ccc solid;
                                                          padding-left:1e=
x">
                                                          <div>
                                                          <div>On
                                                          06/10/2021
                                                          01:00 PM,
                                                          Skyvalakis
                                                          Konstantinos
                                                          wrote:<br>
                                                          </div>
                                                          <blockquote>
                                                          <p>In addition
                                                          to my last
                                                          message
                                                          regarding=C2=A0=
the
                                                          INTEGER_N
                                                          tuning=E2=80=8B=
,=C2=A0<span
style=3D"font-size:12pt">=E2=80=8BI repeated the experiment multiple time=
s. I even
                                                          restarted the
                                                          USRPs and the
                                                          signal
                                                          generator
                                                          multiple
                                                          times.</span></=
p>
                                                          <p><span
                                                          style=3D"font-s=
ize:12pt"><br>
                                                          </span></p>
                                                          <p><span
                                                          style=3D"font-s=
ize:12pt">What
                                                          I observed
                                                          was, that
                                                          there were
                                                          only 4
                                                          different
                                                          recurring
                                                          phase offsets
                                                          (Blue =3D RX2 o=
f
                                                          SBX1, Red =3D
                                                          RX2 of SBX2).</=
span></p>
                                                          <p><span
                                                          style=3D"font-s=
ize:12pt"><br>
                                                          </span></p>
                                                          <p><span
                                                          style=3D"font-s=
ize:12pt">I
                                                          am attaching
                                                          the 4
                                                          screenshots I
                                                          captured.</span=
></p>
                                                          <p><span
                                                          style=3D"font-s=
ize:12pt"><br>
                                                          </span></p>
                                                          <p><span
                                                          style=3D"font-s=
ize:12pt">Thank
                                                          you so
                                                          much=C2=A0for y=
our
                                                          help. I feel
                                                          like we're
                                                          getting there.<=
/span></p>
                                                          <p><span
                                                          style=3D"font-s=
ize:12pt"><br>
                                                          </span></p>
                                                          <div dir=3D"ltr=
"
                                                          style=3D"font-s=
ize:12pt;
                                                          color:#000000;
                                                          background-colo=
r:#ffffff;
                                                          font-family:'ca=
libri'

                                                          ,'arial'
                                                          ,'helvetica'
                                                          ,sans-serif">
                                                          <hr
                                                          style=3D"displa=
y:inline-block;
                                                          width:98%">
                                                          <br>
                                                          </div>
                                                          </blockquote>
                                                          You're sure
                                                          that you have
                                                          SBX cards and
                                                          not WBX
                                                          cards?=C2=A0 So=
rry
                                                          for the
                                                          apparently-stup=
id
                                                          question, but
                                                          the WBX uses
                                                          almost the<br>
                                                          =C2=A0 same
                                                          hardware as
                                                          the SBX, but
                                                          uses a 2XLO
                                                          mixer that has
                                                          fixed phase
                                                          ambiguity--whic=
h
                                                          would look
                                                          like what you
                                                          have here.<br>
                                                          <br>
                                                          <br>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                        </div>
                                                      </div>
                                                    </blockquote>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </blockquote>
                                        </div>
                                      </div>
                                    </blockquote>
                                  </div>
                                </div>
                              </div>
                            </blockquote>
                          </div>
                          <br>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </blockquote>
          <br>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------080105000900000407000609--

--===============3013870266804438022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3013870266804438022==--
