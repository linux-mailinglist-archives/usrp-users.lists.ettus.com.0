Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D639CF44
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2019 14:16:00 +0200 (CEST)
Received: from [::1] (port=47808 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2Duc-0005Rb-S6; Mon, 26 Aug 2019 08:15:54 -0400
Received: from mail-io1-f41.google.com ([209.85.166.41]:32882)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ssibio2@gmail.com>) id 1i2DuY-0005JG-Qj
 for usrp-users@lists.ettus.com; Mon, 26 Aug 2019 08:15:50 -0400
Received: by mail-io1-f41.google.com with SMTP id z3so36749572iog.0
 for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2019 05:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=BqTQw49jJTku+nThJkZDjL/F1WeM1Cq7r+iSnQo8PNY=;
 b=AGNGTOKgJXDetxVxH0pDeN7XvZmWGzHn++t4MMWM2Bbgn9Mymr40sqyVWMkJ8A7Sdh
 PBCO5D1qCW2/vIGZREOa2cPkP/K3moe6T6P9GqZjlcoLREk1dUFwS6moNDf0MA3ZVXV+
 a4/D/c5bMmK87P2rl6sMDbK1aFFEpwOZndevn6B5GhDB4EJSMxlhJFLHOYK7WWKdtX+U
 RvR+1RzR8rMcnF6YhEdgys55NghjsE8eGQ8X93j/79lLn+Fj9DuHLpnEXOj+osZzpnTv
 VaTXoJkHoGOIDJCuW9eovEbyIqbqjydziYWP7hreviI+HvwQLeWm6oTQnF+RjMvZMoN0
 CRMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=BqTQw49jJTku+nThJkZDjL/F1WeM1Cq7r+iSnQo8PNY=;
 b=SLnP/Azx9ngJnvDxx3oqaf+BJaSpOXgQV3tEaTCDlGmPH9h82KTRjYBYoJnmtgovuj
 aq4+ncf7eubYrTLevBYTMaMGmaWZqtMvG0SMa8njTQP0Dx9e+U13hajvU9Qdy6hAxWbZ
 eiUsNIt7BTRiIMGRYfnJ/L7e9bD2DqkpNCG7AtOdfpsFJt6O4h8+DihGTzCMRT0o2jOs
 4yInhMLoSVAKfsrCa135F81skti9EUG3DlnIMTNWxuN8YixzmM+ArEAgk6KGc3sYTzga
 hU7iD1Bw+GQD23r/5RlD/zSOAp5fAeR8NxjpqVDEI6XDJswdae7HQIuqwJwqK4zv0BHu
 0Amw==
X-Gm-Message-State: APjAAAVSyZjZNb0Y+0Y5K+XcaDOD1nb4W9c9+cK20J5ZcSx7Y3eXJBns
 JDbwvmZUBB4XeM/pppHa4sqSys477rcXBNZrlhJ15XZwzuA=
X-Google-Smtp-Source: APXvYqzxdhAPHH3OoB6rtwJjW9ZvLO4l2Cv6+dmm5O5NSOPQtohfJYEwPsezn7TzqtM3Jh5B3OvVoIh3TLr3M5paixM=
X-Received: by 2002:a6b:7e0b:: with SMTP id i11mr22286863iom.211.1566821709573; 
 Mon, 26 Aug 2019 05:15:09 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.46.1566316802.31127.usrp-users_lists.ettus.com@lists.ettus.com>
In-Reply-To: <mailman.46.1566316802.31127.usrp-users_lists.ettus.com@lists.ettus.com>
Date: Mon, 26 Aug 2019 13:14:53 +0100
Message-ID: <CALSxwQFHDWEnvxjnnOTuatjERVCrzLqJKpD-V5A3J_nYYobWYg@mail.gmail.com>
To: USRP Users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] USRP-users Digest, Vol 108, Issue 18
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Simona Sibio via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Simona Sibio <ssibio2@gmail.com>
Content-Type: multipart/mixed; boundary="===============3104145625549874205=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============3104145625549874205==
Content-Type: multipart/alternative; boundary="0000000000006cf5b00591041b6b"

--0000000000006cf5b00591041b6b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, everyone.

I am doing the estimation angle of arrival by using USRP.

The problem I want to fix is the initial phase offset of each dboards.

From now on, I have searched some knowledge about this issue. But I can not
implement the concept.

those concept I got are below:

   1. Some kinds of dboard=E2=80=99s initial phase offset can remain consta=
nt after
   re-tune by timed command (code)

http://files.ettus.com/manual/page_sync.html 2
<http://files.ettus.com/manual/page_sync.html>

   1. I saw some AOA finding hardware set using another usrp or dboard to
   transmit a reference signal into the USRPs which are receivers connected
   to antenna array elements.
   https://decibel.ni.com/content/docs/DOC-25716 1
   <https://decibel.ni.com/content/docs/DOC-25716>

My simple hardware set is below:

Two usrp N200 (with UBX).

An octoclock to provide the reference signal.

/---/

Theoretically, I would to send and to receive the same signal, I would get
same
waveform (phase). But I get a different offset and I find the offset is not
constant.

Summary of the problems:

   1.

   I do not know where and how to add those =E2=80=98timed commands=E2=80=
=99 which
   taught in the USRP Hardware Driver and USRP Manual.
   (I saw someone said that I can do nothing and the initial offset of UBX
   will remain constant after retuning. But the result tell me it=E2=80=99s=
 not
   true.)
   2.

   Can anybody provide or teach me the code of phase calibration by
   using another USRP?
   I really do not understand how to set the gnuradio blocks to complete
   these work.
   Any example could provide to me or anyone can help me?

Thank you very much for any help.

Simona

Il giorno mar 20 ago 2019 alle ore 17:26 <usrp-users-request@lists.ettus.co=
m>
ha scritto:

> Send USRP-users mailing list submissions to
>         usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m
> or, via email, send a message with subject or body 'help' to
>         usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
>         usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."
>
>
> Today's Topics:
>
>    1. B205 GPIO & UHD Python API (Louis Brown)
>    2. Re: Incorrect RX time_spec values with X300, TwinRX, and
>       v3.14.1.0 (Neel Pandeya)
>    3. Re: Incorrect RX time_spec values with X300, TwinRX, and
>       v3.14.1.0 (Jason Roehm)
>    4. Re: Incorrect RX time_spec values with X300, TwinRX, and
>       v3.14.1.0 (Jason Roehm)
>    5. Re: Incorrect RX time_spec values with X300, TwinRX, and
>       v3.14.1.0 (Neel Pandeya)
>    6. Re: Incorrect RX time_spec values with X300, TwinRX, and
>       v3.14.1.0 (Jason Roehm)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Mon, 19 Aug 2019 11:22:38 -0500
> From: Louis Brown <rfengr00@me.com>
> To: usrp-users@lists.ettus.com
> Subject: [USRP-users] B205 GPIO & UHD Python API
> Message-ID: <353FEC09-C798-47A9-B0F2-77CB3CA98F0F@me.com>
> Content-Type: text/plain;       charset=3Dus-ascii
>
> Are there any examples of accessing B205 GPIO via UHD Python API?  I need
> to control some hardware via SPI and can bit-bang it if needed.
>
> Thanks,
> Lou
>
>
>
>
>
> ------------------------------
>
> Message: 2
> Date: Mon, 19 Aug 2019 11:34:28 -0500
> From: Neel Pandeya <neel.pandeya@ettus.com>
> To: Jason Roehm <jasonr@3db-labs.com>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Incorrect RX time_spec values with X300,
>         TwinRX, and v3.14.1.0
> Message-ID:
>         <
> CACaXmv-XwDKP8ok_325K_hahwWUAuesQJddD8-CkoNrJY7GqfQ@mail.gmail.com>
> Content-Type: text/plain; charset=3D"utf-8"
>
> Hello Jason:
>
> I also would have expected UHD 3.14.1.0 to have resolved this issue.
>
> Would you be able to send me a stand-alone program that I can use to
> reproduce this problem?
>
> Also, I'm curious, do you have a GPSDO installed in your X300?
>
> --Neel Pandeya
>
>
>
> On Sun, 18 Aug 2019 at 13:19, Jason Roehm via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> >
> > On 8/16/19 10:32 PM, Marcus D. Leech via USRP-users wrote:
> > > On 08/16/2019 04:54 PM, Jason Roehm via USRP-users wrote:
> > >> I have a software application that interfaces to an X300 with a
> > >> TwinRX daughterboard installed. We recently upgraded our UHD version
> > >> to v3.14.1.0 in our application. Since then, we've observed that the
> > >> time_spec values on consecutive blocks of data received from the uni=
t
> > >> (i.e. from two sequential calls to rx_streamer::recv()) are not
> > >> consistent with one another. The timecodes reported by the unit seem
> > >> to be moving forward at twice real time.
> > >>
> > >> As an example, assume that I have the X300 configured for a sample
> > >> rate of 100 MSPS, and that I'm getting 1000 samples per call to
> > >> recv() (these are just round numbers to simplify the discussion). I'=
m
> > >> seeing metadata from consecutive recv() calls that look like this:
> > >>
> > >> Block 1:
> > >> - time_spec.get_whole_secs(): 0
> > >> - time_spec.get_frac_secs(): 0
> > >> - 1000 samples @ 100 MHz =3D 10 usec of data
> > >>
> > >> Block 2:
> > >> - time_spec.get_whole_secs(): 0
> > >> - time_spec.get_frac_secs(): 0.000020 (where I would have expected
> > >> 0.000010 instead)
> > >> - 1000 samples @ 100 MHz =3D 10 usec of data
> > >>
> > >> ... and so on.
> > >>
> > >> If you watch the stream of timestamps received from the device, it
> > >> looks like time is passing at twice the appropriate rate. I noticed
> > >> this recent commit that seemed could be related:
> > >>
> > >>
> >
> https://github.com/EttusResearch/uhd/commit/5f75f73f25016958ab32710bb0cbd=
5ce4481041b
> > >>
> > >>
> > >> If I revert that commit, then the timekeeping on the TwinRX channel
> > >> works properly again. However, that isn't a fix that I can work with=
;
> > >> I also use this hardware in a configuration where the X300 has a
> > >> TwinRX and LFRX daughterboard installed simultaneously. Without the
> > >> above commit, then I am unable to stream data from the LFRX; the
> > >> rx_streamer never returns any data for that channel. I previously
> > >> reported that problem
> > >> (
> >
> http://ettus.80997.x6.nabble.com/USRP-users-X300-with-TwinRX-and-LFRX-und=
er-UHD-v3-14-td12749.html
> )
> >
> > >> and never got an answer, but the above commit silently fixed it in
> > >> v3.14.1.0.
> > >>
> > >> How can I get correct timekeeping with the X300/TwinRX, while
> > >> maintaining my ability to stream from a TwinRX and LFRX
> simultaneously?
> > >>
> > >> Jason
> > >>
> > >>
> > > I THINK this is fixed in commit:
> > >
> > > f712d477b97e2ee7cca56d5afcf199f00959eb85
> > >
> > That commit is already included in v3.14.1.0 (and this code was later
> > amended by commit 4eb12b031f9cad3df3e294db466bd26dee6b78e1, see
> >
> >
> https://github.com/EttusResearch/uhd/commit/4eb12b031f9cad3df3e294db466bd=
26dee6b78e1
> ).
> >
> > So, I don't think that is a fix for this problem.
> >
> > Jason
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/2=
0190819/774bc23e/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 3
> Date: Mon, 19 Aug 2019 14:07:58 -0400
> From: Jason Roehm <jasonr@3db-labs.com>
> To: Neel Pandeya <neel.pandeya@ettus.com>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Incorrect RX time_spec values with X300,
>         TwinRX, and v3.14.1.0
> Message-ID: <8608cec5-c191-2872-c2af-b655bc3cbce3@3db-labs.com>
> Content-Type: text/plain; charset=3D"utf-8"; Format=3D"flowed"
>
>
> On 8/19/19 12:34 PM, Neel Pandeya wrote:
> > Hello Jason:
> >
> > I also would have expected UHD 3.14.1.0 to have resolved this issue.
> >
> > Would you be able to send me a stand-alone program that I can use to
> > reproduce this problem?
> >
> > Also, I'm curious, do you have a GPSDO installed in your X300?
> >
> > --Neel Pandeya
>
> Neel,
>
> I don't have a standalone reproducer at the moment. I will generate one
> when I get a chance, but it may be a little while before I can get back
> to you with one. We do have a GPSDO installed in the X300. Would you
> expect any differences in behavior without it?
>
> Thanks.
>
> Jason
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/2=
0190819/fc814874/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 4
> Date: Mon, 19 Aug 2019 14:33:22 -0400
> From: Jason Roehm <jasonr@3db-labs.com>
> To: usrp-users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Incorrect RX time_spec values with X300,
>         TwinRX, and v3.14.1.0
> Message-ID: <8a61a15c-6018-c30b-2cd3-15220e2ea1e6@3db-labs.com>
> Content-Type: text/plain; charset=3D"utf-8"; Format=3D"flowed"
>
>
> On 8/19/19 12:34 PM, Neel Pandeya wrote:
> > Hello Jason:
> >
> > I also would have expected UHD 3.14.1.0 to have resolved this issue.
> >
> > Would you be able to send me a stand-alone program that I can use to
> > reproduce this problem?
> >
> > Also, I'm curious, do you have a GPSDO installed in your X300?
> >
> > --Neel Pandeya
> >
> Neel,
>
> Also, if it helps, I had traced the problem down a bit further when I
> was originally debugging it last week. I found that the code in
> super_recv_packet_handler.hpp, which translates the packets from the
> device into samples and metadata that are passed to the UHD client,
> thought that the tick rate was 100 MHz (recv_packet_handler::_tick_rate
> was equal to 100e6). However, the X300 with a TwinRX installed must
> always use a master clock rate of 200 MHz per the documentation. So the
> effect was that the timestamps received in the packets from the X300
> were ticking up at a rate of 200 MHz, but the code in
> recv_packet_handler believed that the tick rate was 100 MHz instead;
> hence the 2x real-time rate. I was not able to find out how that tick
> rate was actually getting to the recv_packet_handler, however.
>
> Jason
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/2=
0190819/df7cd97e/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 5
> Date: Mon, 19 Aug 2019 17:52:35 -0500
> From: Neel Pandeya <neel.pandeya@ettus.com>
> To: Jason Roehm <jasonr@3db-labs.com>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Incorrect RX time_spec values with X300,
>         TwinRX, and v3.14.1.0
> Message-ID:
>         <
> CACaXmv87s56ttKCk4io8Z5nJq3DjyhzL6Qv1PgTMUvahmSad7A@mail.gmail.com>
> Content-Type: text/plain; charset=3D"utf-8"
>
> Hello Jason:
>
> Thanks for all the detailed feedback!  No worries about not having a
> stand-alone reproducing program at the moment.  Could you please try usin=
g
> the head of the "UHD-3.14" branch?  We just tagged v3.14.1.1-rc1 with som=
e
> bug fixes, which we think should address the issue.  Please let me know
> your results running with that, and we'll go from there.
>
> --Neel Pandeya
>
>
>
> On Mon, 19 Aug 2019 at 13:34, Jason Roehm via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> >
> > On 8/19/19 12:34 PM, Neel Pandeya wrote:
> >
> > Hello Jason:
> >
> > I also would have expected UHD 3.14.1.0 to have resolved this issue.
> >
> > Would you be able to send me a stand-alone program that I can use to
> > reproduce this problem?
> >
> > Also, I'm curious, do you have a GPSDO installed in your X300?
> >
> > --Neel Pandeya
> >
> > Neel,
> >
> > Also, if it helps, I had traced the problem down a bit further when I w=
as
> > originally debugging it last week. I found that the code in
> > super_recv_packet_handler.hpp, which translates the packets from the
> device
> > into samples and metadata that are passed to the UHD client, thought th=
at
> > the tick rate was 100 MHz (recv_packet_handler::_tick_rate was equal to
> > 100e6). However, the X300 with a TwinRX installed must always use a
> master
> > clock rate of 200 MHz per the documentation. So the effect was that the
> > timestamps received in the packets from the X300 were ticking up at a
> rate
> > of 200 MHz, but the code in recv_packet_handler believed that the tick
> rate
> > was 100 MHz instead; hence the 2x real-time rate. I was not able to fin=
d
> > out how that tick rate was actually getting to the recv_packet_handler,
> > however.
> >
> > Jason
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/2=
0190819/a281cbf4/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 6
> Date: Tue, 20 Aug 2019 07:40:04 -0400
> From: Jason Roehm <jasonr@3db-labs.com>
> To: Neel Pandeya <neel.pandeya@ettus.com>
> Cc: usrp-users <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Incorrect RX time_spec values with X300,
>         TwinRX, and v3.14.1.0
> Message-ID: <d551a3fe-5f6a-147a-6bf3-0be3aaa86bcd@3db-labs.com>
> Content-Type: text/plain; charset=3D"utf-8"; Format=3D"flowed"
>
>
> On 8/19/19 6:52 PM, Neel Pandeya wrote:
> > Hello Jason:
> >
> > Thanks for all the detailed feedback!? No worries about not having a
> > stand-alone reproducing program at the moment.? Could you please try
> > using the head of the "UHD-3.14" branch?? We just tagged v3.14.1.1-rc1
> > with some bug fixes, which we think should address the issue.? Please
> > let me know your results running with that, and we'll go from there.
> >
> > --Neel Pandeya
> >
> Neel,
>
> I saw the same behavior with the UHD-3.14 branch. I was able to take the
> time to put together a self-contained reproducer; see the attached
> source file. It's just a simple C++ program that initializes the USRP,
> streams a few blocks of data in, and checks the timestamps of
> consecutive blocks for continuity. When I run it, I see the following
> output:
>
> [jasonr@host:~/test_uhd]$ LD_LIBRARY_PATH=3D~/git/sceptre/deps/lib
> ./test_uhd
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106900;
> UHD_3.14.1.HEAD-0-g98c7c986
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1303 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1312 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001=
)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001=
)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> [WARNING] [X300] Cannot update master clock rate! X300 Series does not
> allow changing the clock rate during runtime.
> Block 1: 16384 samples @ 100 MSPS
>  ??? Timestamp:?????????? 1.96557
> Block 2: 16384 samples @ 100 MSPS
>  ??? Timestamp:?????????? 1.9659
>  ??? Last timestamp:????? 1.96557
>  ??? Difference:????????? 0.00032352
>  ??? Expected difference: 0.00016384
> Block 3: 16384 samples @ 100 MSPS
>  ??? Timestamp:?????????? 1.96622
>  ??? Last timestamp:????? 1.9659
>  ??? Difference:????????? 0.00032352
>  ??? Expected difference: 0.00016384
> Block 4: 16384 samples @ 100 MSPS
>  ??? Timestamp:?????????? 1.96654
>  ??? Last timestamp:????? 1.96622
>  ??? Difference:????????? 0.00032352
>  ??? Expected difference: 0.00016384
> Block 5: 16384 samples @ 100 MSPS
>  ??? Timestamp:?????????? 1.96687
>  ??? Last timestamp:????? 1.96654
>  ??? Difference:????????? 0.00032352
>  ??? Expected difference: 0.00016384
> Block 6: 16384 samples @ 100 MSPS
>  ??? Timestamp:?????????? 1.96721
>  ??? Last timestamp:????? 1.96687
>  ??? Difference:????????? 0.00034348
>  ??? Expected difference: 0.00016384
> Block 7: 16384 samples @ 100 MSPS
>  ??? Timestamp:?????????? 1.96753
>  ??? Last timestamp:????? 1.96721
>  ??? Difference:????????? 0.00032352
>  ??? Expected difference: 0.00016384
> Block 8: 16384 samples @ 100 MSPS
>  ??? Timestamp:?????????? 1.96786
>  ??? Last timestamp:????? 1.96753
>  ??? Difference:????????? 0.00032352
>  ??? Expected difference: 0.00016384
> Block 9: 16384 samples @ 100 MSPS
>  ??? Timestamp:?????????? 1.96818
>  ??? Last timestamp:????? 1.96786
>  ??? Difference:????????? 0.00032352
>  ??? Expected difference: 0.00016384
> Block 10: 16384 samples @ 100 MSPS
>  ??? Timestamp:?????????? 1.96851
>  ??? Last timestamp:????? 1.96818
>  ??? Difference:????????? 0.00032352
>  ??? Expected difference: 0.00016384
> [jasonr@gauss:~/git/sceptre/test/test_uhd]$
>
> Thanks for your help.
>
> Jason
>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/2=
0190820/c6d115dd/attachment-0001.html
> >
> -------------- next part --------------
> A non-text attachment was scrubbed...
> Name: test_uhd.cc
> Type: text/x-c++src
> Size: 2089 bytes
> Desc: not available
> URL: <
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/2=
0190820/c6d115dd/attachment-0001.cc
> >
>
> ------------------------------
>
> Subject: Digest Footer
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> ------------------------------
>
> End of USRP-users Digest, Vol 108, Issue 18
> *******************************************
>

--0000000000006cf5b00591041b6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"margin-top:0px;font-family:Helvetica,Arial,san=
s-serif;font-size:15px">Hi, everyone.</p><p style=3D"margin-top:0px;font-fa=
mily:Helvetica,Arial,sans-serif;font-size:15px">I am doing the estimation a=
ngle of arrival by using USRP.</p><p style=3D"font-family:Helvetica,Arial,s=
ans-serif;font-size:15px">The problem I want to fix is the initial phase of=
fset of each dboards.</p><p style=3D"font-family:Helvetica,Arial,sans-serif=
;font-size:15px">From now on, I have searched some knowledge about this iss=
ue. But I can not implement the concept.</p><p style=3D"font-family:Helveti=
ca,Arial,sans-serif;font-size:15px">those concept I got are below:</p><ol s=
tyle=3D"clear:both;font-family:Helvetica,Arial,sans-serif;font-size:15px"><=
li>Some kinds of dboard=E2=80=99s initial phase offset can remain constant =
after<br>re-tune by timed command (code)</li></ol><p style=3D"font-family:H=
elvetica,Arial,sans-serif;font-size:15px"><a href=3D"http://files.ettus.com=
/manual/page_sync.html" class=3D"gmail-onebox" target=3D"_blank" style=3D"b=
ackground:transparent;color:rgb(0,136,204);text-decoration-line:none">http:=
//files.ettus.com/manual/page_sync.html=C2=A0<span class=3D"gmail-badge gma=
il-badge-notification gmail-clicks" title=3D"2 clicks" style=3D"display:inl=
ine-block;white-space:nowrap;border-radius:10px;padding:0.21em 0.42em;min-w=
idth:0.5em;color:rgb(145,145,145);font-size:0.7579em;line-height:1;text-ali=
gn:center;background-color:rgb(233,233,233);border:none">2</span></a></p><o=
l start=3D"2" style=3D"clear:both;font-family:Helvetica,Arial,sans-serif;fo=
nt-size:15px"><li>I saw some AOA finding hardware set using another usrp or=
 dboard to<br>transmit a reference signal into the USRPs which are receiver=
s connected<br>to antenna array elements.<br><a href=3D"https://decibel.ni.=
com/content/docs/DOC-25716" style=3D"background:transparent;color:rgb(0,136=
,204);text-decoration-line:none">https://decibel.ni.com/content/docs/DOC-25=
716=C2=A0<span class=3D"gmail-badge gmail-badge-notification gmail-clicks" =
title=3D"1 click" style=3D"display:inline-block;white-space:nowrap;border-r=
adius:10px;padding:0.21em 0.42em;min-width:0.5em;color:rgb(145,145,145);fon=
t-size:0.7579em;line-height:1;text-align:center;background-color:rgb(233,23=
3,233);border:none">1</span></a></li></ol><p style=3D"font-family:Helvetica=
,Arial,sans-serif;font-size:15px">My simple hardware set is below:<br></p><=
p style=3D"font-family:Helvetica,Arial,sans-serif;font-size:15px">Two usrp =
N200 (with UBX).</p><p style=3D"font-family:Helvetica,Arial,sans-serif;font=
-size:15px">An octoclock to provide the reference signal.</p><p style=3D"fo=
nt-family:Helvetica,Arial,sans-serif;font-size:15px">/---/</p><p style=3D"f=
ont-family:Helvetica,Arial,sans-serif;font-size:15px">Theoretically, I woul=
d to send and to receive the same signal, I would get same<br>waveform (pha=
se). But I get a different offset and I find the offset is not<br>constant.=
</p><p style=3D"font-family:Helvetica,Arial,sans-serif;font-size:15px">Summ=
ary of the problems:</p><ol style=3D"clear:both;font-family:Helvetica,Arial=
,sans-serif;font-size:15px"><li><p>I do not know where and how to add those=
 =E2=80=98timed commands=E2=80=99 which<br>taught in the USRP Hardware Driv=
er and USRP Manual.<br>(I saw someone said that I can do nothing and the in=
itial offset of UBX<br>will remain constant after retuning. But the result =
tell me it=E2=80=99s not<br>true.)</p></li><li><p>Can anybody provide or te=
ach me the code of phase calibration by<br>using another USRP?=C2=A0<br>I r=
eally do not understand how to set the gnuradio blocks to complete<br>these=
 work.<br>Any example could provide to me or anyone can help me?<br></p></l=
i></ol><div><font face=3D"Helvetica, Arial, sans-serif"><span style=3D"font=
-size:15px">Thank you very much for any help.</span></font></div><div><font=
 face=3D"Helvetica, Arial, sans-serif"><span style=3D"font-size:15px"><br><=
/span></font></div><div><font face=3D"Helvetica, Arial, sans-serif"><span s=
tyle=3D"font-size:15px">Simona</span></font></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno mar 20 ago 2019=
 alle ore 17:26 &lt;<a href=3D"mailto:usrp-users-request@lists.ettus.com">u=
srp-users-request@lists.ettus.com</a>&gt; ha scritto:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">Send USRP-users mailing list submissi=
ons to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http:/=
/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-request@lists.ettu=
s.com" target=3D"_blank">usrp-users-request@lists.ettus.com</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-owner@lists.ettus.=
com" target=3D"_blank">usrp-users-owner@lists.ettus.com</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. B205 GPIO &amp; UHD Python API (Louis Brown)<br>
=C2=A0 =C2=A02. Re: Incorrect RX time_spec values with X300, TwinRX, and<br=
>
=C2=A0 =C2=A0 =C2=A0 v3.14.1.0 (Neel Pandeya)<br>
=C2=A0 =C2=A03. Re: Incorrect RX time_spec values with X300, TwinRX, and<br=
>
=C2=A0 =C2=A0 =C2=A0 v3.14.1.0 (Jason Roehm)<br>
=C2=A0 =C2=A04. Re: Incorrect RX time_spec values with X300, TwinRX, and<br=
>
=C2=A0 =C2=A0 =C2=A0 v3.14.1.0 (Jason Roehm)<br>
=C2=A0 =C2=A05. Re: Incorrect RX time_spec values with X300, TwinRX, and<br=
>
=C2=A0 =C2=A0 =C2=A0 v3.14.1.0 (Neel Pandeya)<br>
=C2=A0 =C2=A06. Re: Incorrect RX time_spec values with X300, TwinRX, and<br=
>
=C2=A0 =C2=A0 =C2=A0 v3.14.1.0 (Jason Roehm)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Mon, 19 Aug 2019 11:22:38 -0500<br>
From: Louis Brown &lt;<a href=3D"mailto:rfengr00@me.com" target=3D"_blank">=
rfengr00@me.com</a>&gt;<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: [USRP-users] B205 GPIO &amp; UHD Python API<br>
Message-ID: &lt;<a href=3D"mailto:353FEC09-C798-47A9-B0F2-77CB3CA98F0F@me.c=
om" target=3D"_blank">353FEC09-C798-47A9-B0F2-77CB3CA98F0F@me.com</a>&gt;<b=
r>
Content-Type: text/plain;=C2=A0 =C2=A0 =C2=A0 =C2=A0charset=3Dus-ascii<br>
<br>
Are there any examples of accessing B205 GPIO via UHD Python API?=C2=A0 I n=
eed to control some hardware via SPI and can bit-bang it if needed.<br>
<br>
Thanks,<br>
Lou<br>
<br>
<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Mon, 19 Aug 2019 11:34:28 -0500<br>
From: Neel Pandeya &lt;<a href=3D"mailto:neel.pandeya@ettus.com" target=3D"=
_blank">neel.pandeya@ettus.com</a>&gt;<br>
To: Jason Roehm &lt;<a href=3D"mailto:jasonr@3db-labs.com" target=3D"_blank=
">jasonr@3db-labs.com</a>&gt;<br>
Cc: usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] Incorrect RX time_spec values with X300,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TwinRX, and v3.14.1.0<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CACaXmv-XwDKP8ok_325K_hah=
wWUAuesQJddD8-CkoNrJY7GqfQ@mail.gmail.com" target=3D"_blank">CACaXmv-XwDKP8=
ok_325K_hahwWUAuesQJddD8-CkoNrJY7GqfQ@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hello Jason:<br>
<br>
I also would have expected UHD 3.14.1.0 to have resolved this issue.<br>
<br>
Would you be able to send me a stand-alone program that I can use to<br>
reproduce this problem?<br>
<br>
Also, I&#39;m curious, do you have a GPSDO installed in your X300?<br>
<br>
--Neel Pandeya<br>
<br>
<br>
<br>
On Sun, 18 Aug 2019 at 13:19, Jason Roehm via USRP-users &lt;<br>
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br>
<br>
&gt;<br>
&gt; On 8/16/19 10:32 PM, Marcus D. Leech via USRP-users wrote:<br>
&gt; &gt; On 08/16/2019 04:54 PM, Jason Roehm via USRP-users wrote:<br>
&gt; &gt;&gt; I have a software application that interfaces to an X300 with=
 a<br>
&gt; &gt;&gt; TwinRX daughterboard installed. We recently upgraded our UHD =
version<br>
&gt; &gt;&gt; to v3.14.1.0 in our application. Since then, we&#39;ve observ=
ed that the<br>
&gt; &gt;&gt; time_spec values on consecutive blocks of data received from =
the unit<br>
&gt; &gt;&gt; (i.e. from two sequential calls to rx_streamer::recv()) are n=
ot<br>
&gt; &gt;&gt; consistent with one another. The timecodes reported by the un=
it seem<br>
&gt; &gt;&gt; to be moving forward at twice real time.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; As an example, assume that I have the X300 configured for a s=
ample<br>
&gt; &gt;&gt; rate of 100 MSPS, and that I&#39;m getting 1000 samples per c=
all to<br>
&gt; &gt;&gt; recv() (these are just round numbers to simplify the discussi=
on). I&#39;m<br>
&gt; &gt;&gt; seeing metadata from consecutive recv() calls that look like =
this:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Block 1:<br>
&gt; &gt;&gt; - time_spec.get_whole_secs(): 0<br>
&gt; &gt;&gt; - time_spec.get_frac_secs(): 0<br>
&gt; &gt;&gt; - 1000 samples @ 100 MHz =3D 10 usec of data<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Block 2:<br>
&gt; &gt;&gt; - time_spec.get_whole_secs(): 0<br>
&gt; &gt;&gt; - time_spec.get_frac_secs(): 0.000020 (where I would have exp=
ected<br>
&gt; &gt;&gt; 0.000010 instead)<br>
&gt; &gt;&gt; - 1000 samples @ 100 MHz =3D 10 usec of data<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; ... and so on.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; If you watch the stream of timestamps received from the devic=
e, it<br>
&gt; &gt;&gt; looks like time is passing at twice the appropriate rate. I n=
oticed<br>
&gt; &gt;&gt; this recent commit that seemed could be related:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; <a href=3D"https://github.com/EttusResearch/uhd/commit/5f75f73f2501695=
8ab32710bb0cbd5ce4481041b" rel=3D"noreferrer" target=3D"_blank">https://git=
hub.com/EttusResearch/uhd/commit/5f75f73f25016958ab32710bb0cbd5ce4481041b</=
a><br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; If I revert that commit, then the timekeeping on the TwinRX c=
hannel<br>
&gt; &gt;&gt; works properly again. However, that isn&#39;t a fix that I ca=
n work with;<br>
&gt; &gt;&gt; I also use this hardware in a configuration where the X300 ha=
s a<br>
&gt; &gt;&gt; TwinRX and LFRX daughterboard installed simultaneously. Witho=
ut the<br>
&gt; &gt;&gt; above commit, then I am unable to stream data from the LFRX; =
the<br>
&gt; &gt;&gt; rx_streamer never returns any data for that channel. I previo=
usly<br>
&gt; &gt;&gt; reported that problem<br>
&gt; &gt;&gt; (<br>
&gt; <a href=3D"http://ettus.80997.x6.nabble.com/USRP-users-X300-with-TwinR=
X-and-LFRX-under-UHD-v3-14-td12749.html" rel=3D"noreferrer" target=3D"_blan=
k">http://ettus.80997.x6.nabble.com/USRP-users-X300-with-TwinRX-and-LFRX-un=
der-UHD-v3-14-td12749.html</a>)<br>
&gt;<br>
&gt; &gt;&gt; and never got an answer, but the above commit silently fixed =
it in<br>
&gt; &gt;&gt; v3.14.1.0.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; How can I get correct timekeeping with the X300/TwinRX, while=
<br>
&gt; &gt;&gt; maintaining my ability to stream from a TwinRX and LFRX simul=
taneously?<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Jason<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt; I THINK this is fixed in commit:<br>
&gt; &gt;<br>
&gt; &gt; f712d477b97e2ee7cca56d5afcf199f00959eb85<br>
&gt; &gt;<br>
&gt; That commit is already included in v3.14.1.0 (and this code was later<=
br>
&gt; amended by commit 4eb12b031f9cad3df3e294db466bd26dee6b78e1, see<br>
&gt;<br>
&gt; <a href=3D"https://github.com/EttusResearch/uhd/commit/4eb12b031f9cad3=
df3e294db466bd26dee6b78e1" rel=3D"noreferrer" target=3D"_blank">https://git=
hub.com/EttusResearch/uhd/commit/4eb12b031f9cad3df3e294db466bd26dee6b78e1</=
a>).<br>
&gt;<br>
&gt; So, I don&#39;t think that is a fix for this problem.<br>
&gt;<br>
&gt; Jason<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190819/774bc23e/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190819/774bc23e/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Mon, 19 Aug 2019 14:07:58 -0400<br>
From: Jason Roehm &lt;<a href=3D"mailto:jasonr@3db-labs.com" target=3D"_bla=
nk">jasonr@3db-labs.com</a>&gt;<br>
To: Neel Pandeya &lt;<a href=3D"mailto:neel.pandeya@ettus.com" target=3D"_b=
lank">neel.pandeya@ettus.com</a>&gt;<br>
Cc: usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] Incorrect RX time_spec values with X300,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TwinRX, and v3.14.1.0<br>
Message-ID: &lt;<a href=3D"mailto:8608cec5-c191-2872-c2af-b655bc3cbce3@3db-=
labs.com" target=3D"_blank">8608cec5-c191-2872-c2af-b655bc3cbce3@3db-labs.c=
om</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;; Format=3D&quot;flowe=
d&quot;<br>
<br>
<br>
On 8/19/19 12:34 PM, Neel Pandeya wrote:<br>
&gt; Hello Jason:<br>
&gt;<br>
&gt; I also would have expected UHD 3.14.1.0 to have resolved this issue.<b=
r>
&gt;<br>
&gt; Would you be able to send me a stand-alone program that I can use to <=
br>
&gt; reproduce this problem?<br>
&gt;<br>
&gt; Also, I&#39;m curious, do you have a GPSDO installed in your X300?<br>
&gt;<br>
&gt; --Neel Pandeya<br>
<br>
Neel,<br>
<br>
I don&#39;t have a standalone reproducer at the moment. I will generate one=
 <br>
when I get a chance, but it may be a little while before I can get back <br=
>
to you with one. We do have a GPSDO installed in the X300. Would you <br>
expect any differences in behavior without it?<br>
<br>
Thanks.<br>
<br>
Jason<br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190819/fc814874/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190819/fc814874/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Mon, 19 Aug 2019 14:33:22 -0400<br>
From: Jason Roehm &lt;<a href=3D"mailto:jasonr@3db-labs.com" target=3D"_bla=
nk">jasonr@3db-labs.com</a>&gt;<br>
To: usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] Incorrect RX time_spec values with X300,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TwinRX, and v3.14.1.0<br>
Message-ID: &lt;<a href=3D"mailto:8a61a15c-6018-c30b-2cd3-15220e2ea1e6@3db-=
labs.com" target=3D"_blank">8a61a15c-6018-c30b-2cd3-15220e2ea1e6@3db-labs.c=
om</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;; Format=3D&quot;flowe=
d&quot;<br>
<br>
<br>
On 8/19/19 12:34 PM, Neel Pandeya wrote:<br>
&gt; Hello Jason:<br>
&gt;<br>
&gt; I also would have expected UHD 3.14.1.0 to have resolved this issue.<b=
r>
&gt;<br>
&gt; Would you be able to send me a stand-alone program that I can use to <=
br>
&gt; reproduce this problem?<br>
&gt;<br>
&gt; Also, I&#39;m curious, do you have a GPSDO installed in your X300?<br>
&gt;<br>
&gt; --Neel Pandeya<br>
&gt;<br>
Neel,<br>
<br>
Also, if it helps, I had traced the problem down a bit further when I <br>
was originally debugging it last week. I found that the code in <br>
super_recv_packet_handler.hpp, which translates the packets from the <br>
device into samples and metadata that are passed to the UHD client, <br>
thought that the tick rate was 100 MHz (recv_packet_handler::_tick_rate <br=
>
was equal to 100e6). However, the X300 with a TwinRX installed must <br>
always use a master clock rate of 200 MHz per the documentation. So the <br=
>
effect was that the timestamps received in the packets from the X300 <br>
were ticking up at a rate of 200 MHz, but the code in <br>
recv_packet_handler believed that the tick rate was 100 MHz instead; <br>
hence the 2x real-time rate. I was not able to find out how that tick <br>
rate was actually getting to the recv_packet_handler, however.<br>
<br>
Jason<br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190819/df7cd97e/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190819/df7cd97e/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 5<br>
Date: Mon, 19 Aug 2019 17:52:35 -0500<br>
From: Neel Pandeya &lt;<a href=3D"mailto:neel.pandeya@ettus.com" target=3D"=
_blank">neel.pandeya@ettus.com</a>&gt;<br>
To: Jason Roehm &lt;<a href=3D"mailto:jasonr@3db-labs.com" target=3D"_blank=
">jasonr@3db-labs.com</a>&gt;<br>
Cc: usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] Incorrect RX time_spec values with X300,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TwinRX, and v3.14.1.0<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CACaXmv87s56ttKCk4io8Z5nJ=
q3DjyhzL6Qv1PgTMUvahmSad7A@mail.gmail.com" target=3D"_blank">CACaXmv87s56tt=
KCk4io8Z5nJq3DjyhzL6Qv1PgTMUvahmSad7A@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hello Jason:<br>
<br>
Thanks for all the detailed feedback!=C2=A0 No worries about not having a<b=
r>
stand-alone reproducing program at the moment.=C2=A0 Could you please try u=
sing<br>
the head of the &quot;UHD-3.14&quot; branch?=C2=A0 We just tagged v3.14.1.1=
-rc1 with some<br>
bug fixes, which we think should address the issue.=C2=A0 Please let me kno=
w<br>
your results running with that, and we&#39;ll go from there.<br>
<br>
--Neel Pandeya<br>
<br>
<br>
<br>
On Mon, 19 Aug 2019 at 13:34, Jason Roehm via USRP-users &lt;<br>
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br>
<br>
&gt;<br>
&gt; On 8/19/19 12:34 PM, Neel Pandeya wrote:<br>
&gt;<br>
&gt; Hello Jason:<br>
&gt;<br>
&gt; I also would have expected UHD 3.14.1.0 to have resolved this issue.<b=
r>
&gt;<br>
&gt; Would you be able to send me a stand-alone program that I can use to<b=
r>
&gt; reproduce this problem?<br>
&gt;<br>
&gt; Also, I&#39;m curious, do you have a GPSDO installed in your X300?<br>
&gt;<br>
&gt; --Neel Pandeya<br>
&gt;<br>
&gt; Neel,<br>
&gt;<br>
&gt; Also, if it helps, I had traced the problem down a bit further when I =
was<br>
&gt; originally debugging it last week. I found that the code in<br>
&gt; super_recv_packet_handler.hpp, which translates the packets from the d=
evice<br>
&gt; into samples and metadata that are passed to the UHD client, thought t=
hat<br>
&gt; the tick rate was 100 MHz (recv_packet_handler::_tick_rate was equal t=
o<br>
&gt; 100e6). However, the X300 with a TwinRX installed must always use a ma=
ster<br>
&gt; clock rate of 200 MHz per the documentation. So the effect was that th=
e<br>
&gt; timestamps received in the packets from the X300 were ticking up at a =
rate<br>
&gt; of 200 MHz, but the code in recv_packet_handler believed that the tick=
 rate<br>
&gt; was 100 MHz instead; hence the 2x real-time rate. I was not able to fi=
nd<br>
&gt; out how that tick rate was actually getting to the recv_packet_handler=
,<br>
&gt; however.<br>
&gt;<br>
&gt; Jason<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190819/a281cbf4/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190819/a281cbf4/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 6<br>
Date: Tue, 20 Aug 2019 07:40:04 -0400<br>
From: Jason Roehm &lt;<a href=3D"mailto:jasonr@3db-labs.com" target=3D"_bla=
nk">jasonr@3db-labs.com</a>&gt;<br>
To: Neel Pandeya &lt;<a href=3D"mailto:neel.pandeya@ettus.com" target=3D"_b=
lank">neel.pandeya@ettus.com</a>&gt;<br>
Cc: usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"=
_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Subject: Re: [USRP-users] Incorrect RX time_spec values with X300,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TwinRX, and v3.14.1.0<br>
Message-ID: &lt;<a href=3D"mailto:d551a3fe-5f6a-147a-6bf3-0be3aaa86bcd@3db-=
labs.com" target=3D"_blank">d551a3fe-5f6a-147a-6bf3-0be3aaa86bcd@3db-labs.c=
om</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;; Format=3D&quot;flowe=
d&quot;<br>
<br>
<br>
On 8/19/19 6:52 PM, Neel Pandeya wrote:<br>
&gt; Hello Jason:<br>
&gt;<br>
&gt; Thanks for all the detailed feedback!? No worries about not having a <=
br>
&gt; stand-alone reproducing program at the moment.? Could you please try <=
br>
&gt; using the head of the &quot;UHD-3.14&quot; branch?? We just tagged v3.=
14.1.1-rc1 <br>
&gt; with some bug fixes, which we think should address the issue.? Please =
<br>
&gt; let me know your results running with that, and we&#39;ll go from ther=
e.<br>
&gt;<br>
&gt; --Neel Pandeya<br>
&gt;<br>
Neel,<br>
<br>
I saw the same behavior with the UHD-3.14 branch. I was able to take the <b=
r>
time to put together a self-contained reproducer; see the attached <br>
source file. It&#39;s just a simple C++ program that initializes the USRP, =
<br>
streams a few blocks of data in, and checks the timestamps of <br>
consecutive blocks for continuity. When I run it, I see the following <br>
output:<br>
<br>
[jasonr@host:~/test_uhd]$ LD_LIBRARY_PATH=3D~/git/sceptre/deps/lib ./test_u=
hd<br>
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106900; <br>
UHD_3.14.1.HEAD-0-g98c7c986<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 8000 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a<br>
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1303 MB/s)<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1312 MB/s)<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
[WARNING] [X300] Cannot update master clock rate! X300 Series does not <br>
allow changing the clock rate during runtime.<br>
Block 1: 16384 samples @ 100 MSPS<br>
=C2=A0??? Timestamp:?????????? 1.96557<br>
Block 2: 16384 samples @ 100 MSPS<br>
=C2=A0??? Timestamp:?????????? 1.9659<br>
=C2=A0??? Last timestamp:????? 1.96557<br>
=C2=A0??? Difference:????????? 0.00032352<br>
=C2=A0??? Expected difference: 0.00016384<br>
Block 3: 16384 samples @ 100 MSPS<br>
=C2=A0??? Timestamp:?????????? 1.96622<br>
=C2=A0??? Last timestamp:????? 1.9659<br>
=C2=A0??? Difference:????????? 0.00032352<br>
=C2=A0??? Expected difference: 0.00016384<br>
Block 4: 16384 samples @ 100 MSPS<br>
=C2=A0??? Timestamp:?????????? 1.96654<br>
=C2=A0??? Last timestamp:????? 1.96622<br>
=C2=A0??? Difference:????????? 0.00032352<br>
=C2=A0??? Expected difference: 0.00016384<br>
Block 5: 16384 samples @ 100 MSPS<br>
=C2=A0??? Timestamp:?????????? 1.96687<br>
=C2=A0??? Last timestamp:????? 1.96654<br>
=C2=A0??? Difference:????????? 0.00032352<br>
=C2=A0??? Expected difference: 0.00016384<br>
Block 6: 16384 samples @ 100 MSPS<br>
=C2=A0??? Timestamp:?????????? 1.96721<br>
=C2=A0??? Last timestamp:????? 1.96687<br>
=C2=A0??? Difference:????????? 0.00034348<br>
=C2=A0??? Expected difference: 0.00016384<br>
Block 7: 16384 samples @ 100 MSPS<br>
=C2=A0??? Timestamp:?????????? 1.96753<br>
=C2=A0??? Last timestamp:????? 1.96721<br>
=C2=A0??? Difference:????????? 0.00032352<br>
=C2=A0??? Expected difference: 0.00016384<br>
Block 8: 16384 samples @ 100 MSPS<br>
=C2=A0??? Timestamp:?????????? 1.96786<br>
=C2=A0??? Last timestamp:????? 1.96753<br>
=C2=A0??? Difference:????????? 0.00032352<br>
=C2=A0??? Expected difference: 0.00016384<br>
Block 9: 16384 samples @ 100 MSPS<br>
=C2=A0??? Timestamp:?????????? 1.96818<br>
=C2=A0??? Last timestamp:????? 1.96786<br>
=C2=A0??? Difference:????????? 0.00032352<br>
=C2=A0??? Expected difference: 0.00016384<br>
Block 10: 16384 samples @ 100 MSPS<br>
=C2=A0??? Timestamp:?????????? 1.96851<br>
=C2=A0??? Last timestamp:????? 1.96818<br>
=C2=A0??? Difference:????????? 0.00032352<br>
=C2=A0??? Expected difference: 0.00016384<br>
[jasonr@gauss:~/git/sceptre/test/test_uhd]$<br>
<br>
Thanks for your help.<br>
<br>
Jason<br>
<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190820/c6d115dd/attachment-0001.html" rel=3D"noreferrer"=
 target=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.=
com/attachments/20190820/c6d115dd/attachment-0001.html</a>&gt;<br>
-------------- next part --------------<br>
A non-text attachment was scrubbed...<br>
Name: test_uhd.cc<br>
Type: text/x-c++src<br>
Size: 2089 bytes<br>
Desc: not available<br>
URL: &lt;<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus=
.com/attachments/20190820/c6d115dd/attachment-0001.cc" rel=3D"noreferrer" t=
arget=3D"_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.co=
m/attachments/20190820/c6d115dd/attachment-0001.cc</a>&gt;<br>
<br>
------------------------------<br>
<br>
Subject: Digest Footer<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
------------------------------<br>
<br>
End of USRP-users Digest, Vol 108, Issue 18<br>
*******************************************<br>
</blockquote></div>

--0000000000006cf5b00591041b6b--


--===============3104145625549874205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3104145625549874205==--

